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
- MacBook Pro (Retina, 15-inch, Late 2013)
- macOS 10.14.6
- node.js v12.10.0
- rustc 1.40.0-nightly (37538aa13 2019-09-25)

***Results:***

|        Target           |  Time, ***ms*** | Size, ***KB*** |
|-------------------------|-----------------|----------------|
| **AssemblyScript WASM** | **2821**        | **1.6**        |
| AssemblyScript ASMJS    | 3972            | 19*            |
| JavaScript              | 2656            | 5*             |
| Rust WASM               | 2560            | 2              |

___* unminified___
