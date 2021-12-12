Frontend for Node.js
====================

Usage
-----

For an up to date list of available command line options, see:

```
$> asc --help
```

API
---

The API accepts the same options as the CLI but also lets you override stdout and stderr. Example:

```js
import asc from "assemblyscript/asc";

const { error, stdout } = await asc.main([
  "myModule.ts",
  "--binaryFile", "myModule.wasm",
  "--optimize",
  "--sourceMap",
  "--stats"
]);
if (error) {
  console.log("Compilation failed: " + error.message);
} else {
  console.log(stdout.toString());
}
```

The result has the following structure:

| Property | Description
|----------|-------------
| error    | Encountered error, if any
| stdout   | Standard output stream
| stderr   | Standard error stream
| stats    | Statistics

You can also compile a single source string directly (note that this API has limited functionality):

```js
import asc from "assemblyscript/asc";
const { binary, text, stdout, stderr } = await asc.compileString(`...`, { optimize: 2 });
...
```


Available command line options can also be obtained programmatically:

```js
import { options } from "assemblyscript/asc";
...
```
