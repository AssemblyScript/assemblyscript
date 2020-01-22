# ![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) SDK

An overly simple SDK to use the AssemblyScript compiler on the web. This is built
to distribution files using the exact versions of the compiler and its
dependencies.

Expects [require.js](https://requirejs.org) (or compatible) on the web,
primarily targeting [WebAssembly Studio](https://webassembly.studio). Note that
consuming the source file in this directory directly does not solve any
versioning issues - use `dist/sdk.js` instead. Do not try to bundle this.

Exports
-------

* **binaryen**<br />
  The version of binaryen required by the compiler.

* **assemblyscript**<br />
  The AssemblyScript compiler as a library.

* **asc**<br />
  AssemblyScript compiler frontend that one will interact with
  ([see](https://github.com/AssemblyScript/assemblyscript/tree/master/cli)).

Example usage
-------------

```js
require(
  ["https://cdn.jsdelivr.net/npm/assemblyscript@nightly/dist/sdk"],
  function(sdk) {
    const { binaryen, assemblyscript, asc } = sdk;
    asc.ready.then(() => {
      asc.main(...);
    });
  }
);
```
