[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)

<p align="center">
  <a href="https://assemblyscript.org" target="_blank" rel="noopener"><img width="100" src="https://avatars1.githubusercontent.com/u/28916798?s=200&v=4" alt="AssemblyScript logo"></a>
</p>

<p align="center">
  <a href="https://github.com/AssemblyScript/assemblyscript/actions?query=workflow%3ATest"><img src="https://img.shields.io/github/actions/workflow/status/AssemblyScript/assemblyscript/test.yml?branch=main&label=test&logo=github" alt="Test status" /></a>
  <a href="https://github.com/AssemblyScript/assemblyscript/actions?query=workflow%3APublish"><img src="https://img.shields.io/github/actions/workflow/status/AssemblyScript/assemblyscript/publish.yml?branch=main&label=publish&logo=github" alt="Publish status" /></a>
  <a href="https://www.npmjs.com/package/assemblyscript"><img src="https://img.shields.io/npm/v/assemblyscript.svg?label=compiler&color=007acc&logo=npm" alt="npm compiler version" /></a>
  <a href="https://www.npmjs.com/package/@assemblyscript/loader"><img src="https://img.shields.io/npm/v/@assemblyscript/loader.svg?label=loader&color=007acc&logo=npm" alt="npm loader version" /></a>
  <a href="https://discord.gg/assemblyscript"><img src="https://img.shields.io/discord/721472913886281818.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2" alt="Discord online" /></a>
</p>

<p align="justify"><strong>AssemblyScript</strong> compiles a variant of <a href="http://www.typescriptlang.org">TypeScript</a> (basically JavaScript with types) to <a href="http://webassembly.org">WebAssembly</a> using <a href="https://github.com/WebAssembly/binaryen">Binaryen</a>. It generates lean and mean WebAssembly modules while being just an <code>npm install</code> away.</p>

<h3 align="center">
  <a href="https://assemblyscript.org">About</a> &nbsp;·&nbsp;
  <a href="https://assemblyscript.org/introduction.html">Introduction</a> &nbsp;·&nbsp;
  <a href="https://assemblyscript.org/quick-start.html">Quick&nbsp;start</a> &nbsp;·&nbsp;
  <a href="https://assemblyscript.org/examples.html">Examples</a> &nbsp;·&nbsp;
  <a href="https://assemblyscript.org/development.html">Development&nbsp;instructions</a>
</h3>
<br>

<h2 align="center">Contributors</h2>

<p align="center">
  <a href="https://assemblyscript.org/#contributors"><img src="https://assemblyscript.org/contributors.svg" alt="Contributor logos" width="720" /></a>
</p>

<h2 align="center">Thanks to our sponsors!</h2>

<p align="justify">Most of the maintainers and contributors do this open source work in their free time. If you use AssemblyScript for a serious task or plan to do so, and you'd like us to invest more time on it, <a href="https://opencollective.com/assemblyscript/donate" target="_blank" rel="noopener">please donate</a> to our <a href="https://opencollective.com/assemblyscript" target="_blank" rel="noopener">OpenCollective</a>. By sponsoring this project, your logo will show up below. Thank you so much for your support!</p>

<p align="center">
  <a href="https://assemblyscript.org/#sponsors"><img src="https://assemblyscript.org/sponsors.svg" alt="Sponsor logos" width="720" /></a>
</p>

## Development instructions

A development environment can be set up by cloning the repository:

```sh
git clone https://github.com/AssemblyScript/assemblyscript.git
cd assemblyscript
npm install
npm link
```

The link step is optional and makes the development instance available globally. The full process is documented as part of the repository:

* [Compiler instructions](./src)
* [Runtime instructions](./std/assembly/rt)
* [Test instructions](./tests)
