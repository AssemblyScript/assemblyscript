![](https://s.gravatar.com/avatar/f105de3decfafc734b8eabe9a960b25d?size=64) webpack
=================

[webpack](https://webpack.js.org/) loader for [AssemblyScript](http://assemblyscript.org) modules.

Usage
-----

```js
import Module from "@assemblyscript/webpack!module.wasm";

var myModule = Module({ imports: { ... }});
```
