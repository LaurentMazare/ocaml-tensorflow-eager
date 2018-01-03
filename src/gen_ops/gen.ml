open Base
open Stdio
module Op_type = Tf_core.Operation.Type
exception Not_supported of string

let ops_file = "src/gen_ops/ops.pb"
let output_file = "src/ops/generated"
let do_not_generate_these_ops =
  Set.of_list (module String)
    [ "Const"
    ]

let p out_channel s =
  Printf.ksprintf (fun line ->
    Out_channel.output_string out_channel line;
    Out_channel.output_char out_channel '\n') s

let types_to_string type_ =
  "`" ^ String.uncapitalize (Op_type.to_string type_)

module Type = struct
  type t =
    | Polymorphic of string * [ `allow_only of Op_type.p list | `allow_all ]
    | Fixed of Op_type.p

  let to_string = function
    | Polymorphic (alpha, `allow_all) -> alpha
    | Polymorphic (alpha, `allow_only types) ->
      List.map types ~f:types_to_string
      |> String.concat ~sep:" | "
      |> fun types -> Printf.sprintf "([< %s ] as %s)" types alpha
    | Fixed type_ -> Printf.sprintf "[ %s ]" (types_to_string type_)
end

module Input = struct
  type t =
    { name : string
    ; type_ : Type.t
    ; type_name : string option
    (* When [number_attr] is present, the input is a list of tensors. *)
    ; number_attr : string option
    }

  let caml_name t =
    match t.name with
    | "begin" -> "begin__"
    | "end" -> "end__"
    | "in" -> "in__"
    | "inputs" -> "inputs__"
    | name -> name

  let caml_comp_name t =
    let name = caml_name t in
    if Option.is_none t.number_attr then name
    else Printf.sprintf "(List.hd_exn %s)" name
end

module Attribute = struct
  type attr_type =
    | String
    | Shape
    | Int
    | Float
    | Bool
    | List of [ `float | `int | `shape | `type_ ]

  type t =
    { name : string
    ; attr_type : attr_type
    ; default_value : string option
    ; match_input_length : Input.t option
    }

  let caml_name t =
    match String.uncapitalize t.name with
    | "method" -> "method_"
    | otherwise -> otherwise

  let caml_type = function
    | String -> "string"
    | Shape -> "int list"
    | Int -> "int"
    | Float -> "float"
    | Bool -> "bool"
    | List `float -> "float list"
    | List `int -> "int list"
    | List `shape -> "int list list"
    | List `type_ -> "Type.p list"

  let of_dtype = function
    | "string" -> Some String
    | "shape" -> Some Shape
    | "int" -> Some Int
    | "float" -> Some Float
    | "bool" -> Some Bool
    | "list(float)" -> Some (List `float)
    | "list(int)" -> Some (List `int)
    | "list(shape)" -> Some (List `shape)
    | "list(type)" -> Some (List `type_)
    | _str -> None

  let setter = function
    | String -> "set_attr_string"
    | Shape -> "set_attr_shape"
    | Int -> "set_attr_int"
    | Float -> "set_attr_float"
    | Bool -> "set_attr_bool"
    | List `float -> "set_attr_float_list"
    | List `int -> "set_attr_int_list"
    | List `shape -> "set_attr_shape_list"
    | List `type_ -> "set_attr_type_list"

  let mli t (p : ('a, unit, string, unit) format4 -> 'a) =
    match t.match_input_length with
    | None ->
      p "  %s%s:%s ->"
        (if Option.is_some t.default_value then "?" else "")
        (caml_name t)
        (caml_type t.attr_type)
    | Some _ -> ()

  let ml_def t out_channel =
    let p s = p out_channel s in
    match t.match_input_length with
    | Some _ -> ()
    | None ->
      match t.default_value with
      | None -> p "    ~%s" (caml_name t)
      | Some default_value -> p "    ?(%s=%s)" (caml_name t) default_value

  let caml_eval_name t =
    let caml_name = caml_name t in
    match t.match_input_length with
    | None -> caml_name
    | Some input -> Printf.sprintf "(List.length %s)" (Input.caml_name input)

  let ml_apply t out_channel =
    let p s = p out_channel s in
    let caml_name = caml_eval_name t in
    p "  Op.%s op \"%s\" %s;" (setter t.attr_type) t.name caml_name
end

module Op = struct
  type output_type =
    { name : string option
    ; type_ : Type.t
    ; number_attr : string option
    }

  type t =
    { name : string
    ; inputs : Input.t list
    ; output_types : output_type list
    ; attributes : Attribute.t list
    ; summary : string option
    ; description : string option
    }

  let read_type types (arg : Op_def_piqi.op_def_arg_def) =
    match arg.type_attr with
    | Some type_attr ->
      let alpha =
        let type_attr = String.uncapitalize type_attr in
        if String.(=) type_attr "type"
        then "'type__"
        else "'" ^ type_attr
      in
      let type_ =
        match List.Assoc.find ~equal:String.equal types type_attr with
        | None -> Type.Polymorphic (alpha, `allow_all)
        | Some types ->
          Polymorphic (alpha, `allow_only types)
      in
      Some type_attr, type_
    | None ->
      let raise_not_supported msg =
        let name = Option.value arg.name ~default:"unknown" in
        raise (Not_supported (Printf.sprintf "%s: %s" msg name))
      in
      match arg.type_ with
      | None -> raise_not_supported "no input/output type"
      | Some dt_type ->
        match Op_type.of_dt_type dt_type with
        | Some p -> None, Fixed p
        | None -> raise_not_supported "unknown input/output type"

  let extract_types (attrs : Op_def_piqi.op_def_attr_def list) =
    List.filter_map attrs ~f:(fun (attr : Op_def_piqi.op_def_attr_def) ->
      match attr.name, attr.type_ with
      | Some name, Some "type" ->
        let allowed_values =
          match attr.allowed_values with
          | None -> []
          | Some allowed_values ->
            match allowed_values.list with
            | None -> []
            | Some allowed_values ->
              List.filter_map allowed_values.type_ ~f:Op_type.of_dt_type
        in
        if List.is_empty allowed_values
        then None
        else Some (name, allowed_values)
      | _ -> None)

  let float_to_string f =
    match Float.classify f with
    | Normal | Subnormal | Zero -> Float.to_string f
    | Nan -> "Float.nan"
    | Infinite when Float.(<) f 0. -> "Float.neg_infinity"
    | Infinite -> "Float.infinity"

  let attr_value_string (attr_value : Op_def_piqi.Attr_value.t) =
    match attr_value with
    | { i = Some value; _ } when Int64.(value >= zero) -> Int64.to_string value
    | { i = Some value; _ } -> Printf.sprintf "(%s)" (Int64.to_string value)
    | { f = Some value; _ } when Float.(value >= zero) -> float_to_string value
    | { f = Some value; _ } -> Printf.sprintf "(%s)" (float_to_string value)
    | { s = Some s; _ } -> Printf.sprintf "\"%s\"" s
    | { b = Some true; _ } -> "true"
    | { b = Some false; _ } -> "false"
    (* TODO: this is likely to be incorrect as a default value. *)
    | { shape = Some _; _ } -> "[]"
    | { list = Some { s = []; i = []; f = []; b = []; type_ = []; shape = []; tensor = []; func = [] } ; _ } -> "[]"
    | _ -> raise (Not_supported "unsupported attr value")

  let get_attr (attr : Op_def_piqi.Op_def_attr_def.t) ~inputs =
    Option.bind attr.type_ ~f:Attribute.of_dtype
    |> Option.map ~f:(fun attr_type ->
      let name = Option.value_exn attr.name in
      let match_input_length =
        List.find inputs ~f:(fun (input : Input.t) ->
          match input.number_attr with
          | Some number when String.(=) number name -> true
          | _ -> false)
      in
      { Attribute.name
      ; attr_type
      ; default_value = Option.map ~f:attr_value_string attr.default_value
      ; match_input_length
      })

  let create (op : Op_def_piqi.Op_def.t) =
    let name = Option.value_exn op.name in
    try
      let types = extract_types op.attr in
      let inputs =
        List.mapi op.input_arg ~f:(fun idx input_arg ->
          let type_name, type_ = read_type types input_arg in
          let name =
            match input_arg.name with
            | None -> Printf.sprintf "x%d" idx
            | Some name -> name
          in
          { Input.name
          ; type_
          ; type_name
          ; number_attr = input_arg.number_attr
          })
      in
      let output_types =
        List.map op.output_arg ~f:(fun output_arg ->
          let name, type_ = read_type types output_arg in
          { name; type_; number_attr = output_arg.number_attr })
      in
      let has_output_list =
        List.exists output_types ~f:(fun output_type ->
          Option.is_some output_type.number_attr)
      in
      if has_output_list && 1 < List.length output_types
      then raise (Not_supported "output list are only supported for a single output");
      Ok
        { name
        ; inputs
        ; output_types
        ; attributes = List.filter_map op.attr ~f:(get_attr ~inputs)
        ; summary = op.summary
        ; description = op.description
        }
    with
    | Not_supported str ->
      Error (Printf.sprintf "%s: %s" name str)

  let caml_name t =
    match t.name with
    | "Mod" -> "mod_"
    | otherwise -> String.uncapitalize otherwise
end

let same_input_and_output_type (op : Op.t) ~alpha =
  List.find_map op.inputs ~f:(fun input ->
    match input.type_ with
    | Polymorphic (alpha', _) when String.(=) alpha alpha' -> Some input
    | _ -> None)

let type_variable ~alpha =
  Printf.sprintf "type_%s" (String.filter alpha ~f:(Char.(<>) '\''))

let output_type_string op output_type =
  match (output_type : Type.t) with
  | Fixed p -> "Type." ^ Op_type.to_string p
  | Polymorphic (alpha, _) ->
    match same_input_and_output_type op ~alpha with
    | Some input -> Printf.sprintf "(Op.Tensor_handle.data_type %s)" (Input.caml_comp_name input)
    | None -> Printf.sprintf "Operation.Type.(to_data_type (P %s))" (type_variable ~alpha)

let needs_variable_for_output_type op output_type =
  match (output_type : Type.t) with
  | Fixed _ -> None
  | Polymorphic (alpha, _) ->
    if same_input_and_output_type op ~alpha |> Option.is_none
    then Some (alpha, output_type)
    else None

let automatically_generated_file =
  "(* THIS FILE HAS BEEN AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND! *)"

let escape_comment s =
  String.substr_replace_all s ~pattern:"{|" ~with_:"{ |"
  |> String.substr_replace_all ~pattern:"|}" ~with_:"| }"
  |> String.tr ~target:'"' ~replacement:'\''

let output_type_str (op : Op.t) =
  match op.output_types with
  | [] -> "unit"
  | output_types ->
    List.map op.output_types ~f:(fun output_type ->
      Printf.sprintf "%s t%s"
        (Type.to_string output_type.type_)
        (if Option.is_some output_type.number_attr then " list" else "")
    ) |> String.concat ~sep:" * "

let gen_mli ops =
  let out_channel = Out_channel.create (Printf.sprintf "%s.mli" output_file) in
  let p s = p out_channel s in
  let handle_one_op (op : Op.t) =
    Option.iter op.summary ~f:(fun summary -> p "(* %s *)" (escape_comment summary));
    Option.iter op.description ~f:(fun description -> p "(* %s *)" (escape_comment description));
    p "val %s:" (Op.caml_name op);
    let alphas =
      List.filter_map op.output_types ~f:(fun output_type ->
        needs_variable_for_output_type op output_type.type_)
      |> List.dedup_and_sort
    in
    List.iter alphas ~f:(fun (alpha, output_type) ->
      p "  %s:%s Type.t ->" (type_variable ~alpha) (Type.to_string output_type));
    List.iter op.attributes ~f:(fun attribute ->
      Attribute.mli attribute p);
    List.iter op.inputs ~f:(fun input ->
      let maybe_list = if Option.is_some input.number_attr then " list" else "" in
      p "  %s t%s ->" (Type.to_string input.type_) maybe_list);
    if List.is_empty op.inputs
    then p "  unit ->";
    p "    %s" (output_type_str op);
    p "";
  in
  p "%s" automatically_generated_file;
  p "";
  p "open Tf_core";
  p "";
  p "type 'a t = 'a Op.Tensor_handle.t";
  p "module Dim = Operation.Dim";
  p "module Type = Operation.Type";
  p "";
  List.iter ops ~f:handle_one_op;
  Out_channel.close out_channel

let handle_one_op (op : Op.t) out_channel =
  let p s = p out_channel s in
  p "let %s" (Op.caml_name op);
  let alphas =
    List.filter_map op.output_types ~f:(fun output_type ->
      needs_variable_for_output_type op output_type.type_)
    |> List.dedup_and_sort
  in
  List.iter alphas ~f:(fun (alpha, _output_type) ->
    p "    ~%s" (type_variable ~alpha));
  List.iter op.attributes ~f:(fun attribute ->
    Attribute.ml_def attribute out_channel);
  List.iter op.inputs ~f:(fun input ->
    let name = Input.caml_name input in
    let maybe_list = if Option.is_some input.number_attr then " list" else "" in
    p "    (%s : %s t%s)" name (Type.to_string input.type_) maybe_list);
  if List.is_empty op.inputs
  then p "    ()";
  p "  =";
  p "  let op =";
  p "    Op.create context \"%s\"" op.name;
  List.iter op.inputs ~f:(fun input ->
    if Option.is_some input.number_attr
    then p "    |> fun init -> List.fold %s ~init ~f:Op.add_input" (Input.caml_name input)
    else p "    |> fun op -> Op.add_input op %s" (Input.caml_name input));
  p "  in";
  let attr_names = Hash_set.create (module String) () in
  List.iter op.output_types ~f:(fun output_type ->
    Option.iter output_type.name ~f:(fun output_type_name ->
      let output_type_string = output_type_string op output_type.type_ in
      if not (Hash_set.mem attr_names output_type_name)
      then begin
        Hash_set.add attr_names output_type_name;
        p "  Op.set_attr_data_type op \"%s\" %s;" output_type_name output_type_string
      end));
  List.iter op.inputs ~f:(fun (input : Input.t) ->
    Option.iter input.type_name ~f:(fun type_name ->
      let name = Input.caml_comp_name input in
      let type_string = Printf.sprintf "(Op.Tensor_handle.data_type %s)" name in
      if not (Hash_set.mem attr_names type_name)
      then begin
        Hash_set.add attr_names type_name;
        p "  Op.set_attr_data_type op \"%s\" %s;" type_name type_string
      end));
  List.iter op.attributes ~f:(fun attribute -> Attribute.ml_apply attribute out_channel);
  begin
    match op.output_types with
    | [ { number_attr = Some attr; _ } ] ->
      let attr =
        List.find_exn op.attributes ~f:(fun attribute -> String.(=) attribute.name attr)
      in
      p "  Op.execute op ~output_len:%s" (Attribute.caml_eval_name attr)
    | _ -> p "  Op.execute%d op" (List.length op.output_types)
  end;
  p ""

let gen_ml ops =
  let out_channel = Out_channel.create (Printf.sprintf "%s.ml" output_file) in
  let p s = p out_channel s in
  p "%s" automatically_generated_file;
  p "open Base";
  p "open Tf_core";
  p "";
  p "type 'a t = 'a Op.Tensor_handle.t";
  p "module Dim = Operation.Dim";
  p "module Type = Operation.Type";
  p "";
  p "let context = Op.default_context ()";
  p "";
  List.iter ops ~f:(fun op -> handle_one_op op out_channel);
  Out_channel.close out_channel

let run () =
  let ops =
    Stdio.In_channel.create ops_file
    |> Piqirun.init_from_channel
    |> Op_def_piqi.parse_op_list
    |> fun op_list -> op_list.op
  in
  printf "Found %d ops.\n%!" (List.length ops);
  let ops =
    List.filter_map ops ~f:(fun op ->
      match Op.create op with
      | Ok op ->
          if Set.mem do_not_generate_these_ops op.name
          then None
          else Some op
      | Error err -> printf "Error %s\n" err; None)
  in
  gen_mli ops;
  gen_ml ops

let () = run ()
