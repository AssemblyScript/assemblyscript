![](https://avatars1.githubusercontent.com/u/28916798?s=64) AssemblyScript
=================

[![Actions Status](https://github.com/AssemblyScript/assemblyscript/workflows/CI/badge.svg)](https://github.com/AssemblyScript/assemblyscript/actions) [![npm](https://img.shields.io/npm/v/assemblyscript.svg?color=0074C1)](https://www.npmjs.com/package/assemblyscript) [![npm@nightly](https://img.shields.io/npm/v/assemblyscript/nightly.svg?color=0074C1)](https://www.npmjs.com/package/assemblyscript)

**AssemblyScript** compiles a strict subset of [TypeScript](http://www.typescriptlang.org) (basically JavaScript with types) to [WebAssembly](http://webassembly.org) using [Binaryen](https://github.com/WebAssembly/binaryen). It generates lean and mean WebAssembly modules while being just an `npm install` away.

Check out the [documentation](https://docs.assemblyscript.org) or try it out in [WebAssembly Studio](https://webassembly.studio)!

---

<h3 align="center">Our Sponsors</h3>
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
<h3 align="center">Our Backers</h3>
<p align="center">
  <a href="https://opencollective.com/assemblyscript#backers" target="_blank"><img src="https://opencollective.com/assemblyscript/backer.svg?avatarHeight=44" /></a>
</p>

The core team members and most contributors do this open source work in their free time. If you use AssemblyScript for a serious task or plan to do so, and you'd like us to invest more time on it, [please donate to our OpenCollective](https://opencollective.com/assemblyscript). By sponsoring this project, your logo will show up above. Thank you so much for your support!

---

Motivation
----------

> You are now able to write WebAssembly, without learning a new language, and harness all these benefits WebAssembly might offer you. I think that is kind of powerful. [...] It [AssemblyScript] is absolutely usable, and very enjoyable! - Surma, [WebAssembly for Web Developers (Google I/O ’19)](https://youtu.be/njt-Qzw0mVY) (May 8th, 2019) 

> AssemblyScript was frictionless. Not only does it allow you to use TypeScript to write WebAssembly, [...] it also produces glue-free WebAssembly modules that are very small with decent performance. – Surma, [Replacing a hot path in your app's JavaScript with WebAssembly](https://developers.google.com/web/updates/2019/02/hotpath-with-wasm) (Feb 16, 2019)

> Perhaps the fundamental issue [to get a small .wasm file] is that JavaScript is the only language for which the Web runtime is a perfect fit. Close relatives that were designed to compile to it, like TypeScript, can be very efficient as well. But languages like C, C++, Rust, and so forth were not originally designed for that purpose. – Alon Zakai, [Small WebAssembly Binaries with Rust + Emscripten](https://kripken.github.io/blog/binaryen/2018/04/18/rust-emscripten.html) (Apr 18, 2018)

> JavaScript's heyday as the only browser language is over, but most web developers are used to writing JavaScript, and learning a new syntax just to get access to WebAssembly is not (always) ideal. If only there was something in to bridge the gap… – Jani Tarvainen, [TypeScript is the bridge between JavaScript and WebAssembly](https://malloc.fi/typescript-bridge-javascript-webassembly) (Feb 20, 2018)

> I do think [compiling TypeScript into WASM] is tremendously useful. It allows JavaScript developers to create WASM modules without having to learn C. – Colin Eberhardt, [Exploring different approaches to building WebAssembly modules](http://blog.scottlogic.com/2017/10/17/wasm-mandelbrot.html) (Oct 17, 2017)

Further resources
-----------------

* [Documentation](https://docs.assemblyscript.org)<br />
  Introduction, quick start, examples and general usage instructions.

* [Development instructions](https://docs.assemblyscript.org/details/development)<br />
  How to set up a development environment (to submit a pull request).

* [Project governance](https://github.com/AssemblyScript/meta)<br />
  Meta information related to the AssemblyScript project.

* [Media files](./media)<br />
  Various media files, like logos etc.
