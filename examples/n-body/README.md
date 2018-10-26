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
- macOS 10.14
- node.js v10.11.0
- rustc 1.31.0-nightly (4bd4e4130 2018-10-25)

***Results:***

|        Target           |  Time, ***ms*** | Size, ***KB*** |
|-------------------------|-----------------|----------------|
| **AssemblyScript WASM** | **3167**        | **2**          |
| AssemblyScript ASMJS    | 3633            | 21*            |
| JavaScript              | 2628            | 5*             |
| Rust WASM               | 3876            | 13             |

___* unminified___
