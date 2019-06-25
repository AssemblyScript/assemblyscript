Conway's Game of Life
=====================

An [AssemblyScript](http://assemblyscript.org) example. Continuously updates the cellular automaton and visualizes its state on a canvas. Compiles to ~940 bytes of optimized WASM.

Instructions
------------

First, install the development dependencies:

```
$> npm install
```

Now, to build [assembly/index.ts](./assembly/index.ts) to an untouched and an optimized `.wasm` including their respective `.wat` representations, run:

```
$> npm run asbuild
```

Afterwards, run `npm run server` to start a <a href="http://localhost:9080">local server</a>. Should also automatically launch a browser.
