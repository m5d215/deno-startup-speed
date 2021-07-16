test: build
	@hyperfine \
		'./bin/deno' \
		'./bin/c'

build: bin/deno bin/c

.PHONY: build test

bin/deno: src/main.ts
	@mkdir -p bin
	@deno compile --output bin/deno src/main.ts

bin/c: src/main.c
	@mkdir -p bin
	@gcc -O3 -o bin/c src/main.c
