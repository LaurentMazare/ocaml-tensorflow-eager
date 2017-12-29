ALL = examples/hello_world.exe

.FORCE:

%.exe: .FORCE
	jbuilder build --dev $@

src/ops/generated: src/gen_ops/gen.exe
	_build/default/src/gen_ops/gen.exe

all:
	jbuilder build --dev $(ALL)

clean:
	rm -Rf _build/
