# ![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) rtrace

A tiny utility that records allocations, retains, releases and frees performed by the runtime and emits an error if something is off. Also checks for leaks.

Instructions
------------

Compile your module that uses the full or half runtime with `-use ASC_RTRACE=1` and include an instance of this module as the import named `rtrace`.

```js
var rtr = rtrace(e => {
  // handle error
});

WebAssembly.instantiate(..., { rtrace: rtr, ... });
...

if (rtr.active) {
  let leakCount = rtr.check();
  if (leakCount) {
    // handle error
  }
}
```

Note that references retained in globals which are not cleared before execution concludes appear as leaks, including their inner members. A TypedArray would leak itself and its backing ArrayBuffer in this case for example. This is perfectly normal and clearing all globals avoids this.
