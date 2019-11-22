
Sample project that links a C program with a rust cdylib no_std dynamic library.

This works on OSX.

The tricky bits are in cdy/.cargo/config - we need to build the dylib with a name that doesn't include the absolute path to the cargo target/ directory. instead we make the name be `@executable_path/libcdy.dylib` which means the linker will look for the library next to the binary `foo`.  


