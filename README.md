![](https://s.gravatar.com/avatar/f105de3decfafc734b8eabe9a960b25d?size=64) AssemblyScript NEXT
=================

[![Build Status](https://travis-ci.org/AssemblyScript/assemblyscript.svg?branch=master)](https://travis-ci.org/AssemblyScript/assemblyscript)

**AssemblyScript** compiles strictly typed [TypeScript](http://www.typescriptlang.org) to [WebAssembly](http://webassembly.org) using [Binaryen](https://github.com/WebAssembly/binaryen). Unlike other toolchains, `asc` generates minimal WebAssembly modules while being just an `npm install` away.

Examples
--------

A few early examples to get an idea:

* **[Conway's Game of Life](./examples/game-of-life)**<br />
  Continuously updates the cellular automaton and visualizes its state on a canvas.

* **[i64 polyfill](./examples/i64-polyfill)**<br />
  Exposes WebAssembly's i64 operations to JavaScript using 32-bit integers (low and high bits).

* **[PSON decoder](./examples/pson)**<br />
  A PSON decoder implemented in AssemblyScript.

* **[TLSF memory allocator](./examples/tlsf)**<br />
  An early port of TLSF to AssemblyScript.

Or browse the [compiler tests](./tests/compiler) for a more in-depth overview of what's supported already. One of them is a [showcase](./tests/compiler/showcase.ts).

Getting started
---------------

Note that this version of the compiler is relatively new and does not yet support some features a TypeScript programmer might expect, e.g., strings, arrays and classes. It is not on [npm](https://www.npmjs.com/package/assemblyscript), yet, but you can already try it out today:

```
$> git clone https://github.com/AssemblyScript/assemblyscript.git
$> cd assemblyscript
$> npm install
$> npm link
```

Author your module using either

* the [assembly definitions](./std/assembly.d.ts) ([base config](./std/assembly.json)) if all you care about is targeting WebAssembly/asm.js or
* the [portable definitions](./std/portable.d.ts) ([base config](./std/portable.json)) if you also want to compile to JavaScript using `tsc`

and run:

```
$> asc yourModule.ts
```

See [the AssemblyScript wiki](https://github.com/AssemblyScript/assemblyscript/wiki) for additional documentation.

Building
--------

Building an UMD bundle to `dist/assemblyscript.js` ([binaryen.js](https://github.com/AssemblyScript/binaryen.js) remains an external dependency):

```
$> npm run build
```

Running the [tests](./tests):

```
$> npm test
```
