Utility
=======

Various utility functions shared accross the codebase.

| Utility  | Description
|----------|-------------------------------------------
| cpu      | Obtains information about the CPU
| find     | Provides support for finding files etc.
| node     | Minimal polyfills for Node.js builtins
| options  | Support for command line options parsing
| terminal | Provides support for terminal colors
| text     | Utility for text processing
| web      | Minimal polyfills for browser builtins

It is possible to reuse the utility in your own project like so:

```ts
import { ... } from "assemblyscript/util/terminal.js";
...
```

Keep in mind, however, that utility can change at any time.
