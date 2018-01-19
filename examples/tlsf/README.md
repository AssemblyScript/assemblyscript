TLSF memory allocator
=====================

A port of [Matt Conte's implementation](https://github.com/mattconte/tlsf) of the [TLSF](http://www.gii.upv.es/tlsf/) memory allocator to AssemblyScript.

Instructions
------------

To build [assembly/tlsf.ts](./assembly/tlsf.ts) to an untouched and an optimized `.wasm` including their respective `.wast` representations, run:

```
$> npm run build
```

Afterwards, to run the included [test](./tests/index.js):

```
$> npm install
$> npm test
```
