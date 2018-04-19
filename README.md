![](https://avatars1.githubusercontent.com/u/28916798?s=64) AssemblyScript
=================

[![npm](https://img.shields.io/npm/v/assemblyscript.svg)](https://www.npmjs.com/package/assemblyscript)
[![Build Status](https://travis-ci.org/AssemblyScript/assemblyscript.svg?branch=master)](https://travis-ci.org/AssemblyScript/assemblyscript)
[![Snap Status](https://build.snapcraft.io/badge/AssemblyScript/assemblyscript.svg)](https://build.snapcraft.io/user/AssemblyScript/assemblyscript)

**AssemblyScript** compiles strictly typed [TypeScript](http://www.typescriptlang.org) (basically JavaScript with types) to [WebAssembly](http://webassembly.org) using [Binaryen](https://github.com/WebAssembly/binaryen). It generates lean and mean WebAssembly modules while being just an `npm install` away.

See [the AssemblyScript wiki](https://github.com/AssemblyScript/assemblyscript/wiki) for instructions and documentation. You can also try it out in [WebAssembly Studio](https://webassembly.studio)!

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
