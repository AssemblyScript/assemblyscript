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
- macOS 10.14.3
- node.js v11.9.0
- rustc 1.33.0-nightly (2aa4c46cf 2019-02-28)

***Results:***

|        Target           |  Time, ***ms*** | Size, ***KB*** |
|-------------------------|-----------------|----------------|
| **AssemblyScript WASM** | **2901**        | **2**          |
| AssemblyScript ASMJS    | 3720            | 19*            |
| JavaScript              | 2716            | 5*             |
| Rust WASM               | 2883            | 1.4*           |

___* unminified___
