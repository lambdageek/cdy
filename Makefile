
foo: main.c libcdy.dylib
	clang -o foo main.c -L. -lcdy

main.c: foo.h


libcdy.dylib: cdy/target/debug/libcdy.dylib
	cp $< $@

cdy/target/debug/libcdy.dylib:
	pushd cdy && cargo +nightly build && popd

run: 
	./foo

.PHONY: run clean

clean:
	pushd cdy && cargo clean && popd
	-rm -f libcdy.dylib foo
