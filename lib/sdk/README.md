# Browser SDK

An SDK to use the AssemblyScript compiler on the web. This is built to distribution files using the exact versions of the compiler and its dependencies.

Expects [require.js](https://requirejs.org) (or compatible) on the web, primarily targeting [WebAssembly Studio](https://webassembly.studio). Note that consuming the source file in this directory directly does not solve any versioning issues - use `dist/sdk.js` instead. Do not try to bundle this.

Exports
-------

* **binaryen**<br />
  The version of binaryen required by the compiler.

* **long**<br />
  The version of long.js required by the compiler.

* **assemblyscript**<br />
  The AssemblyScript compiler as a library.

* **asc**<br />
  AssemblyScript compiler frontend that one will interact with
  ([see](https://github.com/AssemblyScript/assemblyscript/tree/master/cli)).

Example usage
-------------

```js
require(
  ["https://cdn.jsdelivr.net/npm/assemblyscript@latest/dist/sdk"],
  function(sdk) {
    const { asc } = sdk;
    asc.ready.then(() => {
      asc.main(...);
    });
  }
);
```

There is also the [SDK example](https://github.com/AssemblyScript/examples/tree/master/sdk) showing how to compile some actual code.
