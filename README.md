AssemblyScript NEXT
===================

[![Build Status](https://travis-ci.org/AssemblyScript/next.svg?branch=master)](https://travis-ci.org/AssemblyScript/next)

**AssemblyScript** is a new compiler targeting [WebAssembly](http://webassembly.org) while utilizing [TypeScript](http://www.typescriptlang.org)'s syntax and [node](https://nodejs.org)'s vibrant ecosystem. Instead of requiring complex toolchains to set up, you can simply `npm install` it - or run it in a browser.

By compiling syntactially (not necessarily semantically) valid TypeScript to [Binaryen](https://github.com/WebAssembly/binaryen) IR, the resulting module can be validated, optimized, emitted in WebAssembly text or binary format and converted to [asm.js](http://asmjs.org) as a polyfill.

Note, though, that this version of the compiler (0.5.0, NEXT) is relatively new and does not yet support some features a TypeScript programmer might expect, e.g., strings, arrays and classes.

See [the AssemblyScript wiki](https://github.com/AssemblyScript/assemblyscript/wiki) for additional information and documentation.

Examples
--------

A few early examples to get an idea:

* **[Conway's Game of Life](./examples/game-of-life)** as seen on dcode.io<br />
* **[i64 polyfill](./examples/i64-polyfill)** using 32-bit integers<br />

Getting started
---------------

If you'd like to try it today or even plan to contribute, this is how you do it:

```
$> git clone https://github.com/AssemblyScript/next.git
$> cd next
$> npm install
```

Author your module using either

* the [assembly definitions](./std/assembly.d.ts) ([base config](./std/assembly.json)) if all you care about is targeting WebAssembly/asm.js or
* the [portable definitions](./std/portable.d.ts) ([base config](./std/portable.json)) if you also want to compile to JavaScript using `tsc`

and run:

```
$> node bin/asc yourModule.ts
```

Building
--------

Building an UMD bundle to `dist/assemblyscript.js` (does not bundle [binaryen.js](https://github.com/AssemblyScript/binaryen.js)):

```
$> npm run build
```

Running the [tests](./tests):

```
$> npm test
```
