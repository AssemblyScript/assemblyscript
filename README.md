<p align="center">
  <a href="https://www.assemblyscript.org" target="_blank" rel="noopener"><img width="100" src="https://avatars1.githubusercontent.com/u/28916798?s=200&v=4" alt="AssemblyScript logo"></a>
</p>

<p align="center">
  <a href="https://www.npmjs.com/package/toilscript"><img src="https://img.shields.io/npm/v/toilscript.svg?color=007acc&logo=npm" alt="npm version" /></a>
  <a href="https://github.com/dacely-cloud/toilscript/releases"><img src="https://img.shields.io/github/v/release/dacely-cloud/toilscript?color=green&logo=github" alt="GitHub release" /></a>
</p>

---

## ToilScript

**ToilScript is a fork of [AssemblyScript](https://github.com/AssemblyScript/assemblyscript)** that tracks the latest upstream and adds language features not yet available in the official release.

### Added features

- **Closures** — full closure support with captured variables
- **Try-catch-finally** — exception handling (a `throw` must be an `Error` or a subclass)

### How it's built

ToilScript is the latest AssemblyScript `main` (Binaryen `129.0.0-nightly`, BigInt-based i64) with the closure and exception-handling work — originally from the [btc-vision](https://github.com/btc-vision/assemblyscript) fork — merged on top. The compiler's config file defaults to `toilconfig.json` (instead of `asconfig.json`).

---

## Installation

```sh
npm install toilscript
```

### Usage

This fork is a drop-in replacement for AssemblyScript. Simply replace your import:

```json
{
  "dependencies": {
    "toilscript": "^0.1.0"
  }
}
```

Or if migrating from official AssemblyScript:

```sh
npm uninstall assemblyscript
npm install toilscript
```

The CLI commands remain the same:

```sh
npx asc your-file.ts --outFile output.wasm
```

---

## Original README

<p align="justify"><strong>AssemblyScript</strong> compiles a variant of <a href="http://www.typescriptlang.org">TypeScript</a> (basically JavaScript with types) to <a href="http://webassembly.org">WebAssembly</a> using <a href="https://github.com/WebAssembly/binaryen">Binaryen</a>. It generates lean and mean WebAssembly modules while being just an <code>npm install</code> away.</p>

<h3 align="center">
  <a href="https://www.assemblyscript.org">About</a> &nbsp;·&nbsp;
  <a href="https://www.assemblyscript.org/getting-started.html">Getting&nbsp;started</a> &nbsp;·&nbsp;
  <a href="https://www.assemblyscript.org/examples.html">Examples</a> &nbsp;·&nbsp;
  <a href="https://www.assemblyscript.org/built-with-assemblyscript.html">Built with AssemblyScript</a>
</h3>
<br>

<h2 align="center">Contributors</h2>

<p align="center">
  <a href="https://www.assemblyscript.org/#contributors"><img src="https://www.assemblyscript.org/contributors.svg" alt="Contributor logos" width="720" /></a>
</p>

<h2 align="center">Thanks to our sponsors!</h2>

<p align="justify">Most of the maintainers and contributors do this open source work in their free time. If you use AssemblyScript for a serious task or plan to do so, and you'd like us to invest more time on it, <a href="https://opencollective.com/assemblyscript/donate" target="_blank" rel="noopener">please donate</a> to our <a href="https://opencollective.com/assemblyscript" target="_blank" rel="noopener">OpenCollective</a>. By sponsoring this project, your logo will show up below. Thank you so much for your support!</p>

<p align="center">
  <a href="https://www.assemblyscript.org/#sponsors"><img src="https://www.assemblyscript.org/sponsors.svg" alt="Sponsor logos" width="720" /></a>
</p>

## Development instructions

A development environment can be set up by cloning the repository:

```sh
git clone https://github.com/dacely-cloud/toilscript.git
cd toilscript
npm install
npm link
```

The link step is optional and makes the development instance available globally. The full process is documented as part of the repository:

* [Compiler instructions](./src)
* [Runtime instructions](./std/assembly/rt)
* [Test instructions](./tests)
