# AssemblyScript Rtrace

A tiny utility to sanitize the AssemblyScript runtime. Records allocations and frees performed by the runtime and emits an error if something is off. Also checks for leaks.

Instructions
------------

Compile your module that uses the full or half runtime with `-use ASC_RTRACE=1 --explicitStart` and include an instance of this module as the import named `rtrace`.

```js
const rtrace = new Rtrace({
  onerror(err, info) {
    // handle error
  },
  oninfo(msg) {
    // print message, optional
  },
  getMemory() {
    // obtain the module's memory,
    // e.g. with --explicitStart:
    return instance.exports.memory;
  }
});

const { module, instance } = await WebAssembly.instantiate(...,
  rtrace.install({
    ...imports...
  })
);
instance.exports._start();
...

if (rtrace.active) {
  let leakCount = rtr.check();
  if (leakCount) {
    // handle error
  }
}
```

Note that references in globals which are not cleared before collection is performed appear as leaks, including their inner members. A TypedArray would leak itself and its backing ArrayBuffer in this case for example. This is perfectly normal and clearing all globals avoids this.
