PSON decoder in WebAssembly
===========================

An [AssemblyScript](http://assemblyscript.org) example. Decodes a [PSON](https://github.com/dcodeIO/PSON) encoded buffer.

Instructions
------------

To build [assembly/pson.ts](./assembly/pson.ts) to an untouched and an optimized `.wasm` including their respective `.wast` representations, run:

```
$> npm run build
```

Afterwards, to run the included test, do:

```
$> npm test
```
