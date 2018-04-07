Conway's Game of Life
=====================

An [AssemblyScript](http://assemblyscript.org) example. Continuously updates the cellular automaton and visualizes its state on a canvas.

Instructions
------------

You have to install the 'opn' package to be able to run the `npm browser` command

```
$> npm install
```

To build [assembly/game-of-life.ts](./assembly/game-of-life.ts) to an untouched and an optimized `.wasm` including their respective `.wat` representations, run:

```
$> npm run build
```

Afterwards, open [game-of-life.html](./game-of-life.html) in a browser (ideally one that allows `fetch`ing the `.wasm` from the local filesystem).
