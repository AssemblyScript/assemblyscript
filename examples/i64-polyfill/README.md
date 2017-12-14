i64 polyfill
============

An AssemblyScript example.

Instructions
------------

To build [assembly/i64.ts](./assembly/i64.ts) to an untouched and an optimized `.wasm` including their respective `.wast` representations, run:

```
$> npm run build
```

Afterwards, `require` the node module as usual (CommonJS entry point is [index.js](./index.js)).
