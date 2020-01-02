N-body system
=============

An [AssemblyScript](http://assemblyscript.org) example. This is actually a benchmark - visualizing it just so happened.

Instructions
------------

First, install the development dependencies:

```
$> npm install
```

Now, to build [assembly/index.ts](./assembly/index.ts) to an untouched and an optimized `.wasm` including their respective `.wat` representations, run:

```
$> npm run asbuild
```

Afterwards, run `npm run server` to start a <a href="http://localhost:9080">local server</a>. Should also automatically launch a browser.

To run the benchmark:

```
$> npm run test [steps=1000000]
```

Benchmark
=========

***Environment:***
- MacBook Pro (15-inch, 2019)
- macOS 10.14.6
- node.js v13.5.0
- rustc 1.42.0-nightly (3a3f4a7cb 2019-12-28)

***Results:***

|        Target           |  Time, ***ms*** | Size, ***KB*** |
|-------------------------|-----------------|----------------|
| **AssemblyScript WASM** | **1650**        | **1.6**        |
| AssemblyScript ASMJS    | 2558            | 10*            |
| JavaScript              | 1596            | 5*             |
| Rust WASM               | 1570            | 2              |

___* unminified___
