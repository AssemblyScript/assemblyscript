Compiler
========

Portable compiler sources that compile to both JavaScript using `tsc` and WebAssembly using `asc`.

Architecture
------------

![](https://raw.githubusercontent.com/AssemblyScript/assemblyscript/master/media/architecture.svg)

Usage
-----

Note that using the compiler as a library requires awaiting Binaryen ready state, like so:

```js
const binaryen = require("binaryen");
const assemblyscript = require("assemblyscript");
binaryen.ready.then(() => {
  // do something with assemblyscript
});
```

Building
--------

Note that building the compiler is not necessary if you only want to run it (in development). If not built, `ts-node` is used to run the sources directly.

### Building to JavaScript

To build the compiler to a JavaScript bundle, run:

```sh
npm run build
```

Uses webpack under the hood, building to `dist/`.

### Building to WebAssembly

To build the compiler to a WebAssembly binary, run:

```sh
npm run bootstrap
```

Uses the AssemblyScript compiler compiled to JavaScript to compile itself to WebAssembly, building to WebAssembly again using itself compiled to WebAssembly. Builds to `out/`. Performs a `git diff` to make sure that both the initial and the final artifacts are the same. Note that this builds the compiler as a library, while the `asc` frontend setting it up and feeding it source files is JavaScript for now.

Running `asc` with the WebAssembly variant:

```ts
asc [options...] --wasm out/assemblyscript.optimized-bootstrap.wasm
```

Running the compiler tests with the WebAssembly variant:

```ts
npm run test:compiler -- --wasm out/assemblyscript.optimized-bootstrap.wasm
```
