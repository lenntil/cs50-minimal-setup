# CS50 Minimal Setup for macOS and Linux

## Prerequisites

- [Git - Installing Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Getting started

First, clone the `libcs50` git repository and build:

```sh
git clone https://github.com/cs50/libcs50.git
cd libcs50
make
```

Your build directory will then look like this:

```console
$ cd build
$ tree
.
├── include
│   └── cs50.h
├── lib
│   ├── libcs50-11.0.2.dylib
│   ├── libcs50.a
│   └── libcs50.dylib -> libcs50-11.0.2.dylib
└── src
    └── cs50.c
```

To build a C program, you need `cs50.h` and either `libcs50-11.0.2.dylib` (for Dynamic Linking) or `libcs50.a` (for Static Linking).

## Option 1. Using flags to link libraries

Use the following flags in your compile command:

- `-I` for include files.
- `-L` for library files.
- `-l` for library name.

Build `test.c` as follows:

```sh
cc -o test test.c -I./libcs50/build/include -L./libcs50/build/lib -lcs50
```

For an enhanced version, see [Build Script](./build.sh).

## Option 2. Using dynamic linking

Place `libcs50-11.0.2.dylib` in your CS50 project directory. The contents of the project directory will look like:

```console
$ ls
cs50.h        test.c        libcs50-11.0.2.dylib
```

Build `test.c` as follows:

```sh
cc -o test test.c -lcs50
```

## Option 3. Using static linking

Place `libcs50.a` in your CS50 project directory. The contents of the project directory will be:

```console
$ ls
cs50.h        test.c        libcs50.a
```

Build `test.c` as follows:

```sh
cc -o test test.c libcs50.a
```

## Running the program

After building, you can run the `test` binary file with:

```sh
./test
```

## Why?

1. A minimal setup will lower the barrier to C programming.
2. You don't want to mess up the system's `lib` directory with a library that will never be reused.
3. In macOS, there are some problems with `dyld` (Dynamic Link Editor). For example, if you have disabled SIP (System Integrity Protection), you might encounter issues when following the methods described in official guides.

## References

- [cs50/libcs50: This is CS50's Library for C.](https://github.com/cs50/libcs50)

## See also

- [Mac make install error: No such file or directory · Issue #142 · cs50/libcs50](https://github.com/cs50/libcs50/issues/142)
- [How to use cs50.h in my local VSCode environment? · Issue #189 · cs50/libcs50](https://github.com/cs50/libcs50/issues/189)
