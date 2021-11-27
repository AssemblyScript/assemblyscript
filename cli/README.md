Compiler frontend for node.js
=============================

Usage
-----

For an up to date list of available command line options, see:

```
$> asc --help
```

API
---

The API accepts the same options as the CLI but also lets you override stdout and stderr and/or provide a callback. Example:

```js
import asc from "assemblyscript/asc";
asc.main([
  "myModule.ts",
  "--binaryFile", "myModule.wasm",
  "--optimize",
  "--sourceMap",
  "--measure"
], {
  stdout: process.stdout,
  stderr: process.stderr
}, function(err) {
  if (err) throw err;
  ...
});
```

You can also compile a source string directly, for example in a browser environment:

```js
import asc from "assemblyscript/asc";
const { binary, text, stdout, stderr } = asc.compileString(`...`, { optimize: 2 });
...
```


Available command line options can also be obtained programmatically:

```js
import { options } from "assemblyscript/asc";
...
```
