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
  "--binaryFile", "myModule.wasm",
  "--optimize",
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

You can also compile a source string directly, eg. in a browser environment:

```js
const asc = require('assemblyscript/dist/asc')

const input = '...'
const args = { optimize: 2 }

asc.compileString(input, args)
  .then(({ wasm, wast, stdout, stderr }) => {
    // ...
  })
  .catch(({ err, stdout, stderr }) => {
    // ...
  })
```
