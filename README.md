![](https://s.gravatar.com/avatar/f105de3decfafc734b8eabe9a960b25d?size=64) AssemblyScript
=================

[![Build Status](https://travis-ci.org/AssemblyScript/assemblyscript.svg?branch=master)](https://travis-ci.org/AssemblyScript/assemblyscript)

**AssemblyScript** compiles strictly typed [TypeScript](http://www.typescriptlang.org) to [WebAssembly](http://webassembly.org) using [Binaryen](https://github.com/WebAssembly/binaryen). It generates minimal WebAssembly modules while being just an `npm install` away.

See [the AssemblyScript wiki](https://github.com/AssemblyScript/assemblyscript/wiki) for further instructions and documentation. You can also try it out in [Web Assembly Studio](https://webassembly.studio)!

Examples
--------

A few early examples to get an idea:

* **[Conway's Game of Life](./examples/game-of-life)**<br />
  Continuously updates the cellular automaton and visualizes its state on a canvas.

* **[i64 polyfill](./examples/i64-polyfill)**<br />
  Exposes WebAssembly's i64 operations to JavaScript using 32-bit integers (low and high bits).

* **[PSON decoder](./examples/pson)**<br />
  A simple decoder for the PSON binary format.

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

To build an UMD bundle to `dist/assemblyscript.js` ([binaryen.js](https://github.com/AssemblyScript/binaryen.js) remains an external dependency):

```
$> npm run build
```

Running the [tests](./tests):

```
$> npm test
```

**Note** that freshly cloned copies of the compiler will use ts-node to run [the sources](./src) directly, which is useful in development. Once built, `asc` will use the distribution files instead. This can also be checked by running `asc -v` (it is running the sources if it states `-dev`).
