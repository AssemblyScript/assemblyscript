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

Getting started
---------------

If you'd like to try out NEXT today or even plan to contribute, this is how you do it:

```
$> git clone https://github.com/AssemblyScript/next.git
$> cd next
$> npm install
$> node bin\asc yourModule.ts
```

Building an UMD bundle to `dist/assemblyscript.js` (does not bundle [binaryen.js](https://github.com/AssemblyScript/binaryen.js):

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
