N-Body-System
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
- macOS 10.13.5
- node.js v10.6.0
- rustc 1.29.0-nightly (254f8796b 2018-07-13)

***Performance Results:***

|        Target           |  Time, ***ms*** |
|-------------------------|-----------------|
| **AssemblyScript WASM** | **3195**        |
| AssemblyScript ASMJS    | 3696            |
| JavaScript              | 2642            |
| Rust WASM               | 3968            |

***Binary/Bundle Size Results:***

|        Target           |  Size, ***KB*** |
|-------------------------|-----------------|
| **AssemblyScript WASM** | **2**           |
| AssemblyScript ASMJS*   | 21              |
| JavaScript*             | 5               |
| Rust WASM               | 15              |

___* unminified___
