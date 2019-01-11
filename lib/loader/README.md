![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) loader
======================

A convenient loader for AssemblyScript modules. Demangles module exports to a friendly object structure compatible with WebIDL and TypeScript definitions and provides some useful utility to read/write data from/to memory.

Usage
-----

```js
const loader = require("@assemblyscript/loader");
...
```

API
---

* **instantiate**<`T`>(module: `WebAssembly.Module`, imports?: `WasmImports`): `ASUtil & T`<br />
  Instantiates an AssemblyScript module using the specified imports.

* **instantiateBuffer**<`T`>(buffer: `Uint8Array`, imports?: `WasmImports`): `ASUtil & T`<br />
  Instantiates an AssemblyScript module from a buffer using the specified imports.

* **instantiateStreaming**<`T`>(response: `Response`, imports?: `WasmImports`): `Promise<ASUtil & T>`<br />
  Instantiates an AssemblyScript module from a response using the specified imports.

* **demangle**<`T`>(exports: `WasmExports`, baseModule?: `Object`): `T`<br />
  Demangles an AssemblyScript module's exports to a friendly object structure. You usually don't have to call this manually as instantiation does this implicitly.

**Note:** `T` above can either be omitted if the structure of the module is unknown, or can reference a `.d.ts` (i.e. `typeof MyModule`) as produced by the compiler with the `-d` option.

Instances are automatically populated with useful utility:

* **I8**: `Int8Array`<br />
  An 8-bit signed integer view on the memory.

* **U8**: `Uint8Array`<br />
  An 8-bit unsigned integer view on the memory.

* **I16**: `Int16Array`<br />
  A 16-bit signed integer view on the memory.

* **U16**: `Uint16Array`<br />
  A 16-bit unsigned integer view on the memory.

* **I32**: `Int32Array`<br />
  A 32-bit signed integer view on the memory.

* **U32**: `Uint32Array`<br />
  A 32-bit unsigned integer view on the memory.

* **I64**: `BigInt64Array`<br />
  A 64-bit signed integer view on the memory<sup>1</sup>.

* **U64**: `BigUint64Array`<br />
  A 64-bit unsigned integer view on the memory<sup>1</sup>.

* **F32**: `Float32Array`<br />
  A 32-bit float view on the memory.

* **F64**: `Float64Array`<br />
  A 64-bit float view on the memory.

* **newString**(str: `string`): `number`<br />
  Allocates a new string in the module's memory and returns its pointer.<sup>2</sup>

* **getString**(ptr: `number`): `string`<br />
  Gets a string from the module's memory by its pointer.

* **newArray**(view: `TypedArray`, length?: `number`, unsafe?: `boolean`): `number`<br />
  Copies a typed array into the module's memory and returns its pointer.<sup>2</sup>

* **newArray**(ctor: `TypedArrayConstructor`, length: `number`, unsafe?: `boolean`): `number`<br />
  Creates a typed array in the module's memory and returns its pointer.<sup>2</sup>

* **getArray**(ctor: `TypedArrayConstructor`, ptr: `number`): `TypedArray`<br />
  Gets a view on a typed array in the module's memory by its pointer.

* **freeArray**(ptr: `number`): `void`<br />
  Frees a typed array in the module's memory. Must not be accessed anymore afterwards.

* **getFunction**(ptr: `number`): `function`<br />
  Gets a function by its pointer.

* **newFunction**(fn: `function`): `number`<br />
  Creates a new function in the module's table and returns its pointer. Note that only actual
  WebAssembly functions, i.e. as exported by the module, are supported.

<sup>1</sup> This feature has not yet landed in any VM as of this writing.<br />
<sup>2</sup> Requires that memory utilities have been exported through `export { memory }` within the entry file.

Examples
--------

### Instantiating a module

```js
// From a module provided as a buffer, i.e. as returned by fs.readFileSync
const myModule = loader.instantiateBuffer(fs.readFileSync("myModule.wasm"), myImports);

// From a response object, i.e. as returned by window.fetch
const myModule = await loader.instantiateStreaming(fetch("myModule.wasm"), myImports);
```

### Reading/writing basic values to/from memory

```js
var ptrToInt8 = ...;
var value = myModule.I8[ptrToInt8]; // alignment of log2(1)=0

var ptrToInt16 = ...;
var value = myModule.I16[ptrToInt16 >>> 1]; // alignment of log2(2)=1

var ptrToInt32 = ...;
var value = myModule.I32[ptrToInt32 >>> 2]; // alignment of log2(4)=2

var ptrToInt64 = ...;
var value = myModule.I64[ptrToInt64 >>> 3]; // alignment of log2(8)=3

var ptrToFloat32 = ...;
var value = myModule.F32[ptrToFloat32 >>> 2]; // alignment of log2(4)=2

var ptrToFloat64 = ...;
var value = myModule.F64[ptrToFloat64 >>> 3]; // alignment of log2(8)=3

// Likewise, for writing
myModule.I8[ptrToInt8] = newValue;
myModule.I16[ptrToInt16 >>> 1] = newValue;
myModule.I32[ptrToInt32 >>> 2] = newValue;
myModule.I64[ptrToInt64 >>> 3] = newValue;
myModule.F32[ptrToFloat32 >>> 2] = newValue;
myModule.F64[ptrToFloat64 >>> 3] = newValue;
```

**Note:** Make sure to reference the views as shown above as these will automatically be updated when the module's memory grows.

### Working with strings and arrays

Strings and arrays cannot yet flow in and out of WebAssembly naturally, hence it is necessary to create them in the module's memory using the `newString` and `newArray` helpers. Afterwards, instead of passing the string or array directly, the resulting reference (pointer) is provided instead:

```js
var str = "Hello world!";
var ptr = module.newString(str);

// ... do something with ptr, i.e. call a WebAssembly export ...
```

Similarly, when a string or array is returned from a WebAssembly function, a reference (pointer) is received on the JS side and the `getString` and `getArray` helpers can be used to obtain their values:

```js
var ptrToString = ...;
var str = module.getString(ptrToString);

// ... do something with str ...
```

### Usage with TypeScript definitions produced by the compiler

```ts
import MyModule from "myModule"; // pointing at the d.ts

const myModule = loader.instatiateBuffer<typeof MyModule>(fs.readFileSync("myModule.wasm"), myImports);
```
