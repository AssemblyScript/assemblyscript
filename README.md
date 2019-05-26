![](https://avatars1.githubusercontent.com/u/28916798?s=64) AssemblyScript
=================

[![Build Status](https://travis-ci.org/AssemblyScript/assemblyscript.svg?branch=master)](https://travis-ci.org/AssemblyScript/assemblyscript)

**AssemblyScript** compiles strictly typed [TypeScript](http://www.typescriptlang.org) (basically JavaScript with types) to [WebAssembly](http://webassembly.org) using [Binaryen](https://github.com/WebAssembly/binaryen). It generates lean and mean WebAssembly modules while being just an `npm install` away.

Try it out in [WebAssembly Studio](https://webassembly.studio)!

---

<h3 align="center">Our Sponsors</h2>
<p align="center">
  <a href="https://opencollective.com/assemblyscript/tiers/sponsor/0/website" target="_blank"><img src="https://opencollective.com/assemblyscript/tiers/sponsor/0/avatar.svg"></a>
  <a href="https://opencollective.com/assemblyscript/tiers/sponsor/1/website" target="_blank"><img src="https://opencollective.com/assemblyscript/tiers/sponsor/1/avatar.svg"></a>
  <a href="https://opencollective.com/assemblyscript/tiers/sponsor/2/website" target="_blank"><img src="https://opencollective.com/assemblyscript/tiers/sponsor/2/avatar.svg"></a>
  <a href="https://opencollective.com/assemblyscript/tiers/sponsor/3/website" target="_blank"><img src="https://opencollective.com/assemblyscript/tiers/sponsor/3/avatar.svg"></a>
  <a href="https://opencollective.com/assemblyscript/tiers/sponsor/4/website" target="_blank"><img src="https://opencollective.com/assemblyscript/tiers/sponsor/4/avatar.svg"></a>
  <a href="https://opencollective.com/assemblyscript/tiers/sponsor/5/website" target="_blank"><img src="https://opencollective.com/assemblyscript/tiers/sponsor/5/avatar.svg"></a>
  <a href="https://opencollective.com/assemblyscript/tiers/sponsor/6/website" target="_blank"><img src="https://opencollective.com/assemblyscript/tiers/sponsor/6/avatar.svg"></a>
  <a href="https://opencollective.com/assemblyscript/tiers/sponsor/7/website" target="_blank"><img src="https://opencollective.com/assemblyscript/tiers/sponsor/7/avatar.svg"></a>
  <a href="https://opencollective.com/assemblyscript/tiers/sponsor/8/website" target="_blank"><img src="https://opencollective.com/assemblyscript/tiers/sponsor/8/avatar.svg"></a>
  <a href="https://opencollective.com/assemblyscript/tiers/sponsor/9/website" target="_blank"><img src="https://opencollective.com/assemblyscript/tiers/sponsor/9/avatar.svg"></a>
</p>
<br />
<h3 align="center">Our Backers</h2>
<p align="center">
  <a href="https://opencollective.com/assemblyscript#backers" target="_blank"><img src="https://opencollective.com/assemblyscript/backer.svg?avatarHeight=44" /></a>
</p>

The core team members and most contributors do this open source work in their free time. If you use AssemblyScript for a serious task or plan to do so, and you'd like us to invest more time on it, [please donate to our OpenCollective](https://opencollective.com/assemblyscript). By sponsoring this project, your logo will show up above. Thank you so much for your support!

---

Motivation
----------

> AssemblyScript was frictionless. Not only does it allow you to use TypeScript to write WebAssembly, [...] it also produces glue-free WebAssembly modules that are very small with decent performance. – Surma, [Replacing a hot path in your app's JavaScript with WebAssembly](https://developers.google.com/web/updates/2019/02/hotpath-with-wasm) (Feb 16, 2019)

> Perhaps the fundamental issue [to get a small .wasm file] is that JavaScript is the only language for which the Web runtime is a perfect fit. Close relatives that were designed to compile to it, like TypeScript, can be very efficient as well. But languages like C, C++, Rust, and so forth were not originally designed for that purpose. – Alon Zakai, [Small WebAssembly Binaries with Rust + Emscripten](https://kripken.github.io/blog/binaryen/2018/04/18/rust-emscripten.html) (Apr 18, 2018)

> JavaScript's heyday as the only browser language is over, but most web developers are used to writing JavaScript, and learning a new syntax just to get access to WebAssembly is not (always) ideal. If only there was something in to bridge the gap… – Jani Tarvainen, [TypeScript is the bridge between JavaScript and WebAssembly](https://malloc.fi/typescript-bridge-javascript-webassembly) (Feb 20, 2018)

> I do think [compiling TypeScript into WASM] is tremendously useful. It allows JavaScript developers to create WASM modules without having to learn C. – Colin Eberhardt, [Exploring different approaches to building WebAssembly modules](http://blog.scottlogic.com/2017/10/17/wasm-mandelbrot.html) (Oct 17, 2017)

Getting started
---------------

All the details are provided in the [AssemblyScript wiki](https://github.com/AssemblyScript/assemblyscript/wiki) - make sure to pay it a visit. With that being said, the easiest way to get started with AssemblyScript is to point npm at the GitHub repository (for now)

```
$> npm install --save-dev AssemblyScript/assemblyscript
```

followed by [scaffolding](https://github.com/AssemblyScript/assemblyscript/wiki/Using-the-CLI#scaffolding-with-asinit) a new project including the necessary configuration files, for example in the current directory:

```
$> npx asinit .
```

Once the project is set up, it's just a matter of using your existing [TypeScript tooling](https://code.visualstudio.com) while coding, and [using the CLI](https://github.com/AssemblyScript/assemblyscript/wiki/Using-the-CLI) to build to WebAssembly, either manually, or using (and maybe modifying) the generated build task in the generated `package.json`:

```
$> npm run asbuild
```

The CLI API can also [be used programmatically](./cli).

If you rather prefer an installation suitable for development, pretty much the same can be achieved by cloning the GitHub repository instead:

```
$> git clone https://github.com/AssemblyScript/assemblyscript.git
$> cd assemblyscript
$> npm install
$> npm link
```

**Note** that a fresh clone of the compiler will use the distribution files in `dist/`, but it can also run [the sources](./src) directly through ts-node after an `npm run clean`, which is useful in development. This condition can also be checked by running `asc -v` (it is running the sources if it states `-dev`).

Examples
--------

* **[Conway's Game of Life](./examples/game-of-life)** [ [demo](https://assemblyscript.github.io/assemblyscript/examples/game-of-life) | [fiddle](https://webassembly.studio/?f=gvuw4enb3qk) ]<br />
  Continuously updates the cellular automaton and visualizes its state on a canvas.

* **[Mandelbrot Set](./examples/mandelbrot)** [ [demo](https://assemblyscript.github.io/assemblyscript/examples/mandelbrot) | [fiddle](https://webassembly.studio/?f=m6hbiw9wyq) ]<br />
  Renders the Mandelbrot set to a canvas.

* **[i64 polyfill](./examples/i64-polyfill)**<br />
  Exposes WebAssembly's i64 operations to JavaScript using 32-bit integers (low and high bits).

* **[PSON decoder](./examples/pson)**<br />
  A simple decoder for the PSON binary format.

* **[WASM parser](./lib/parse)**<br />
  A WebAssembly binary parser in WebAssembly.

* **[N-body system](./examples/n-body)** [ [demo](https://assemblyscript.github.io/assemblyscript/examples/n-body) ]<br />
  An implementation of the N-body system from the [Computer Language Benchmarks Game](https://benchmarksgame-team.pages.debian.net/benchmarksgame/).

Building
--------

To build an UMD bundle to `dist/assemblyscript.js` (depends on [binaryen.js](https://github.com/AssemblyScript/binaryen.js)), including a browser version of asc to `dist/asc.js` (depends on assemblyscript.js):

```
$> npm run build
```

Cleaning the distribution files (again):

```
$> npm run clean
```

Linting potential changes:

```
$> npm run check
```

Running the [tests](./tests):

```
$> npm test
```

Running everything in order (lint, clean, test, build, test):

```
$> npm run all
```
