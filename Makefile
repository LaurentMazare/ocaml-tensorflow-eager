ALL = examples/hello_world.exe

all:
	jbuilder build --dev $(ALL)

clean:
	rm -Rf _build/
