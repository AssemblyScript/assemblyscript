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
const asc = require("assemblyscript/bin/asc.js");
asc.main([
  "myModule.ts",
  "-b", "myModule.wasm",
  "-O",
  "--sourceMap",
  "--measure"
], {
  stdout: process.stdout,
  stderr: process.stderr
}, function(err) {
  if (err)
    throw err;
  ...
});
```

Available command line options can also be obtained programmatically:

```js
const options = require("assemblyscript/bin/asc.json");
...
```
