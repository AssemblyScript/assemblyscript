AssemblyScript NEXT
===================

[![Build Status](https://travis-ci.org/AssemblyScript/next.svg?branch=master)](https://travis-ci.org/AssemblyScript/next)

This repository contains compiler components for the next iteration of the AssemblyScript compiler written in AssemblyScript itself.

Note that the code uses some features and standard library components that are not yet supported by any version of asc. To account for this, the code has been written in "portable AssemblyScript", a TypeScript-compatible subset of a subset of a superset of JavaScript, that also compiles to JavaScript using TSC.

Why is this necessary?
----------------------

Well, it isn't, but: In order to be able to compile the AssemblyScript compiler itself to WebAssembly eventually, we cannot depend on TypeScript because it is written in vanilla TypeScript and makes use of quite a few non-AOT-compatible dynamic features of JavaScript.

Cons:
- A lot of work
- Dealing with TypeScript compatibility issues

Pros:
- One day compiling to WebAssembly for performance
- Necessary features only, reducing binary size
- Linking against Binaryen compiled to WebAssembly, reducing overhead

Side effects:
- Good fire test for the compiler
- Good benchmark when comparing both versions
- Benefits standard library design ideas

How does it work?
-----------------

AssemblyScript NEXT compiles a subset (or variant) of TypeScript to [Binaryen](https://github.com/WebAssembly/binaryen) IR. The resulting module can then be optimized, emitted in text or binary format or converted to [asm.js](http://asmjs.org) as a polyfill.

Getting started
---------------

If you'd like to try out NEXT today or even plan to contribute, this is how you do it:

```
$> git clone https://github.com/AssemblyScript/next.git
$> cd next
$> npm install
$> node bin\asc yourModule.ts
```

Building an UMD bundle to `dist/assemblyscript.js` (does not bundle [binaryen.js](https://github.com/AssemblyScript/binaryen.js)):

```
$> npm run build
```

Running the [tests](./tests):

```
$> npm test
```

Development status
------------------

For now, see the [compiler tests](https://github.com/AssemblyScript/next/tree/master/tests/compiler) for an overview of what's supposed to be working already.

Using the CLI
-------------

```
Syntax:   asc [options] [file ...]

Examples: asc hello.ts

Options:
 -v, --version      Prints the compiler's version.
 -h, --help         Prints this message.
 -O, --optimize     Optimizes the module.
 -c, --validate     Validates the module.
 -o, --outFile      Specifies the output file. Format is determined by file extension.
 -b, --binaryFile   Specifies the binary format output file (.wasm).
 -t, --textFile     Specifies the text format output file (.wast).
 -a, --asmjsFile    Specifies the asm.js format output file (.js).
 --noTreeShaking    Disables tree-shaking.
 --noDebug          Disables assertions.
 --trapMode         Sets the trap mode to use.
                    none   Do not modify trapping operations. This is the default.
                    clamp  Replace trapping operations with clamping semantics.
                    js     Replace trapping operations with JS semantics.
```

Unless a bundle has been built to `dist/`, `asc` runs the TypeScript sources directly via [ts-node](https://www.npmjs.com/package/ts-node). Useful for development.
