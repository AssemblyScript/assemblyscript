![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) demangle
======================

Demangles AssemblyScript module exports to a friendly object structure compatible with WebIDL and TypeScript definitions.

Usage
-----

```js
var module = require("@assemblyscript/demangle")(myWasmModule.instance.exports);
// use module as defined in the .d.ts
```

Converting a memory offset (`this` value) to a class instance, i.e. where a class instance is returned by a WebAssembly function:

```js

var thisValue = wasmFunctionReturningAClassInstance();
var myClass = MyClass.wrap(thisValue);
```

Converting a class instance to a memory offset (`this` value), i.e. where calling a WebAssembly function that expects a class instance:

```js
var thisValue = myClass.this;
wasmFunctionExpectingAClassInstance(thisValue);
```

How does it work?
-----------------

AssemblyScript modules expose their exported elements by their internal name, which is a JSDoc-style fully qualified name indicating layers of nesting, and this module is able to recreate the original object structure from those names.

* A `.` seperates a parent from a static child
* A `#` separates a parent from an instance child
* The `get:` prefix indicates a getter
* The `set:` prefix indicates a setter

Note that the compiler generates implicit getters and setters for instance fields for convenience. Support for instance members is achieved by generating wrappers that prepend the `this` value (offset of the instance in memory returned by the constructor) as the first argument when calling an instance method, getter or setter.
