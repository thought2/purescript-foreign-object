clean:
	rm -rf .spago output

build:
	spago build --config lib.dhall

tests:
	spago build --config tests.dhall && \
	nix-build -E '(import ./output/Test.Main/default.nix).main null'

docs:
	spago docs