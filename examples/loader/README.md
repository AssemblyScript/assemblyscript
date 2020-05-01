Loader Basics
=============

An [AssemblyScript](http://assemblyscript.org) example. Utilizes the [loader](https://docs.assemblyscript.org/basics/loader) to perform various common tasks on the WebAssembly/JavaScript boundary, like passing along strings and arrays.

Instructions
------------

Install the dependencies, build the WebAssembly module and verify that everything works:

```
$> npm install
$> npm run asbuild
$> npm test
```

The example consists of several files showing the different perspectives, in recommended reading order:

* [assembly/index.ts](./assembly/index.ts)<br />
  The AssemblyScript sources we are going to compile to a WebAssembly module.
  Contains the implementations we are going to call from JavaScript.

* [tests/index.js](./tests/index.js)<br />
  A test loading our WebAssembly node module that will utilize the loader to
  pass strings and arrays between WebAssembly and JavaScript.

* [index.js](./index.js)<br />
  Instantiates the WebAssembly module and exposes it as a node module. Also
  provides the imported functions used in Example 3.

* [assembly/myConsole.ts](./assembly/myConsole.ts)<br />
  The import declarations of our custom console API used in Example 3.

To rerun the tests:

```
$> npm test
```
