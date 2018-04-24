![](https://avatars1.githubusercontent.com/u/28916798?s=64) AssemblyScript
=================

[![npm](https://img.shields.io/npm/v/assemblyscript.svg)](https://www.npmjs.com/package/assemblyscript)
[![Build Status](https://travis-ci.org/AssemblyScript/assemblyscript.svg?branch=master)](https://travis-ci.org/AssemblyScript/assemblyscript)
[![Snap Status](https://build.snapcraft.io/badge/AssemblyScript/assemblyscript.svg)](https://build.snapcraft.io/user/AssemblyScript/assemblyscript)

**AssemblyScript** compiles strictly typed [TypeScript](http://www.typescriptlang.org) (basically JavaScript with types) to [WebAssembly](http://webassembly.org) using [Binaryen](https://github.com/WebAssembly/binaryen). It generates lean and mean WebAssembly modules while being just an `npm install` away.

See [the AssemblyScript wiki](https://github.com/AssemblyScript/assemblyscript/wiki) for instructions and documentation. You can also try it out in [WebAssembly Studio](https://webassembly.studio)!

Motivation
----------

> Being able to write C-performance code in TypeScript feels so good – Ari on [Slack](https://assemblyscript.slack.com) (Apr 19, 2018)

> Perhaps the fundamental issue [to get a small .wasm file] is that JavaScript is the only language for which the Web runtime is a perfect fit. Close relatives that were designed to compile to it, like TypeScript, can be very efficient as well. But languages like C, C++, Rust, and so forth were not originally designed for that purpose. – Alon Zakai, [Small WebAssembly Binaries with Rust + Emscripten](https://kripken.github.io/blog/binaryen/2018/04/18/rust-emscripten.html) (Apr 18, 2018)

> JavaScript's heyday as the only browser language is over, but most web developers are used to writing JavaScript, and learning a new syntax just to get access to WebAssembly is not (always) ideal. If only there was something in to bridge the gap… – Jani Tarvainen, [TypeScript is the bridge between JavaScript and WebAssembly](https://malloc.fi/typescript-bridge-javascript-webassembly) (Feb 20, 2018)

> I do think [compiling TypeScript into WASM] is tremendously useful. It allows JavaScript developers to create WASM modules without having to learn C. – Colin Eberhardt, [Exploring different approaches to building WebAssembly modules](http://blog.scottlogic.com/2017/10/17/wasm-mandelbrot.html) (Oct 17, 2017)

Examples
--------

* **[Conway's Game of Life](./examples/game-of-life)** [ [demo](https://rawgit.com/AssemblyScript/assemblyscript/master/examples/game-of-life/index.html) | [fiddle](https://webassembly.studio/?f=gvuw4enb3qk) ]<br />
  Continuously updates the cellular automaton and visualizes its state on a canvas.

* **[Mandelbrot Set](./examples/mandelbrot)** [ [demo](https://rawgit.com/AssemblyScript/assemblyscript/master/examples/mandelbrot/index.html) ]<br />
  Renders the Mandelbrot set to a canvas.

* **[i64 polyfill](./examples/i64-polyfill)**<br />
  Exposes WebAssembly's i64 operations to JavaScript using 32-bit integers (low and high bits).

* **[PSON decoder](./examples/pson)**<br />
  A simple decoder for the PSON binary format.

* **[WASM parser](./lib/parse)**<br />
  A WebAssembly binary parser in WebAssembly.

Or browse the [compiler tests](./tests/compiler) for a more in-depth overview of what's supported already. One of them is a [showcase](./tests/compiler/showcase.ts).

Installation
------------

Note that this version of the compiler is relatively new and that some features a TypeScript programmer might expect are [still in the works](https://github.com/AssemblyScript/assemblyscript/wiki/Status-and-Roadmap) (see also: [Limitations](https://github.com/AssemblyScript/assemblyscript/wiki/Limitations)). Therefore, it's not on [npm](https://www.npmjs.com/package/assemblyscript), yet, but you can already try it out today:

```
$> git clone https://github.com/AssemblyScript/assemblyscript.git
$> cd assemblyscript
$> npm install
$> npm link
```

Alternatively, it's also possible to point npm to the GitHub repository for now:

```
$> npm install AssemblyScript/assemblyscript
```

Afterwards, once [your project is configured](https://github.com/AssemblyScript/assemblyscript/wiki/Configuring-a-project), it's just a matter of using your existing [TypeScript tooling](https://code.visualstudio.com) while coding, and [running the CLI](https://github.com/AssemblyScript/assemblyscript/wiki/Using-the-CLI) to build to WebAssembly:

```
$> asc myModule.ts -o myModule.wasm --optimize --validate --sourceMap
```

Building
--------

To build an UMD bundle to `dist/assemblyscript.js` (depends on [binaryen.js](https://github.com/AssemblyScript/binaryen.js)):

```
$> npm run build
```

This also builds a browser version of [asc](./bin) to `dist/asc.js` (depends on assemblyscript.js).

Running the [tests](./tests):

```
$> npm test
```

**Note** that freshly cloned copies of the compiler will use the distribution files, but it can also run [the sources](./src) directly through ts-node after an `npm run clean`, which is useful in development. This condition can also be checked by running `asc -v` (it is running the sources if it states `-dev`).
