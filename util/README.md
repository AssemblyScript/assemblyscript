Utility
=======

Various utility functions shared accross the codebase.

| Utility | Description
|---------|-------------------------------------------
| colors  | Provides support for terminal colors
| cpu     | Obtains information about the CPU
| diff    | Computes the difference between two texts
| fetch   | Simple Node.js polyfill for the Fetch API
| find    | Provides support for finding files etc.
| node    | Minimal polyfills for Node.js builtins
| options | Support for command line options parsing
| utf8    | Utility for UTF-8 text processing

It is possible to reuse the utility in your own project like so:

```ts
import * as colorsUtil from "assemblyscript/util/colors.js";
...
```

Keep in mind, however, that utility can change at any time.
