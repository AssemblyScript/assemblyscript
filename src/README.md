Compiler
========

Portable compiler sources that compile to both JavaScript using `tsc` and, eventually, WebAssembly using `asc`.

Architecture
------------

![](https://assemblyscript.github.io/assemblyscript/media/architecture.svg)

Usage
-----

Note that using the compiler as a library requires awaiting Binaryen ready state, like so:

```js
const binaryen = require("binaryen");
const assemblyscript = require("assemblyscript");
binaryen.ready.then(() => {
  // do something with assemblyscript
});
```
