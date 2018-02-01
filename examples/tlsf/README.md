![](https://s.gravatar.com/avatar/f105de3decfafc734b8eabe9a960b25d?size=48) TLSF
=================

An implementation of the [Two Level Segregate Fit](http://www.gii.upv.es/tlsf/main/docs)
memory allocator in AssemblyScript.

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
