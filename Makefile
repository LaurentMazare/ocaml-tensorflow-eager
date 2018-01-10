ALL = examples/hello_world.exe examples/resnet50.exe examples/vgg19.exe examples/gradients.exe examples/variable.exe

.FORCE:

%.exe: .FORCE
	jbuilder build --dev $@

src/ops/generated: src/gen_ops/gen.exe
	_build/default/src/gen_ops/gen.exe

all:
	jbuilder build --dev $(ALL)

clean:
	rm -Rf _build/
