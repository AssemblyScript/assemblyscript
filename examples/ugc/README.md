μgc garbage collector
=====================

A port of [Bach Le's μgc garbage collector library](https://github.com/bullno1/ugc) to AssemblyScript.

Instructions
------------

To build [assembly/ugc.ts](./assembly/ugc.ts) to an untouched and an optimized `.wasm` including their respective `.wast` representations, run:

```
$> npm run build
```

Afterwards, to run the included [test](./tests/index.js):

```
$> npm install
$> npm test
```
