i64 polyfill
============

An [AssemblyScript](http://assemblyscript.org) example. Exposes i64 operations to JS using 32-bit integers (low and high bits).

Instructions
------------

To build [assembly/i64.ts](./assembly/i64.ts) to an untouched and an optimized `.wasm` including their respective `.wast` representations, run:

```
$> npm run build
```

Afterwards, `require` the node module as usual (CommonJS entry point is [index.js](./index.js)).
