# CS50 Minimal Setup for macOS and Linux

## Getting Started

First, clone git repository and build:

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

## Option 1. Using Dynamic Linking

Place `libcs50-11.0.2.dylib` in your CS50 project directory. The contents of the project directory will look like:

```console
 $ ls
cs50.h        test.c        libcs50-11.0.2.dylib
```

Build `test.c` as follows:

```sh
cc -o test test.c -lcs50
```

## Option 2. Using Static Linking

Place `libcs50.a` in your CS50 project directory. The contents of the project directory will be:

```console
 $ ls
cs50.h        test.c        libcs50.a
```

Build `test.c` as follows:

```sh
cc -o test test.c libcs50.a
```

## Why?

1. A minimal setup will lower the barrier to C programming.
2. You don't want to mess up the system's `lib` directory with a library that will never be reused.
3. In macOS, there are some problems with `dyld` (Dynamic Link Editor). For example, if you have disabled SIP (System Integrity Protection), you might encounter issues when following the methods described in official guides.

## Reference

- [cs50/libcs50: This is CS50's Library for C.](https://github.com/cs50/libcs50)