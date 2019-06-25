![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) loader
======================

A convenient loader for AssemblyScript modules. Demangles module exports to a friendly object structure compatible with WebIDL and TypeScript definitions and provides some useful utility to read/write data from/to memory.

Usage
-----

```js
const loader = require("assemblyscript/lib/loader");
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

**Note** that `T` above can either be omitted if the structure of the module is unknown, or can reference a `.d.ts` (i.e. `typeof MyModule`) as produced by the compiler with the `-d` option.

Besides demangling classes exported from your entry file to a handy object structure one can use like JS objects, instances are automatically populated with useful utility:

* **I8**: `Int8Array`<br />
  An 8-bit signed integer view on the memory.

  ```ts
  var value = module.I8[ptr];
  ```

* **U8**: `Uint8Array`<br />
  An 8-bit unsigned integer view on the memory.

  ```ts
  var value = module.U8[ptr];
  ```

* **I16**: `Int16Array`<br />
  A 16-bit signed integer view on the memory.

  ```ts
  var value = module.I16[ptr >>> 1];
  ```

* **U16**: `Uint16Array`<br />
  A 16-bit unsigned integer view on the memory.

  ```ts
  var value = module.U16[ptr >>> 1];
  ```

* **I32**: `Int32Array`<br />
  A 32-bit signed integer view on the memory.

  ```ts
  var value = module.I32[ptr >>> 2];
  ```

* **U32**: `Uint32Array`<br />
  A 32-bit unsigned integer view on the memory.

  ```ts
  var value = module.U32[ptr >>> 2];
  ```

* **I64**: `BigInt64Array`<br />
  A 64-bit signed integer view on the memory, if supported by the VM.

  ```ts
  var value = module.I64[ptr >>> 3];
  ```

* **U64**: `BigUint64Array`<br />
  A 64-bit unsigned integer view on the memory, if supported by the VM.

  ```ts
  var value = module.U64[ptr >>> 3];
  ```

* **F32**: `Float32Array`<br />
  A 32-bit float view on the memory.

  ```ts
  var value = module.I32[ptr >>> 2];
  ```

* **F64**: `Float64Array`<br />
  A 64-bit float view on the memory.

  ```ts
  var value = module.F64[ptr >>> 3];
  ```

* **__start**(): `void`<br />
  Explicit start function if the `--explicitStart` option is used. Must be called before any other exports if present.

* **__allocString**(str: `string`): `number`<br />
  Allocates a new string in the module's memory and returns a reference (pointer) to it.

  ```ts
  var ref = module.__retain(module.__allocString("hello world"));
  ...
  module.__release(ref);
  ```

* **__getString**(ref: `number`): `string`<br />
  Reads (copies) the value of a string from the module's memory.

  ```ts
  var str = module.__getString(ref);
  ...
  ```

* **__allocArray**(id: `number`, values: `number[]`): `number`<br />
  Allocates a new array in the module's memory and returns a reference (pointer) to it.
  Automatically retains interior pointers. The `id` is the unique runtime id of the respective array class. If you are using `Int32Array` for example, the best way to know the id is an `export const INT32ARRAY_ID = idof<Int32Array>()`. When done with the array, make sure to release it.

  ```ts
  var ref = module.__retain(module.__allocArray(module.INT32ARRAY, [1, 2, 3]));
  ...
  module.__release(ref);
  ```

* **__getArray**(ref: `number`): `number[]`<br />
  Reads (copies) the values of an array from the module's memory.

  ```ts
  var arr = module.__getArray(ref);
  ...
  ```

* **__getArrayView**(ref: `number`): `TypedArray`<br />
  Gets a view on the values of an array in the module's memory. This differs from `__getArray` in that the data isn't copied but remains *live* in both directions. That's faster but also unsafe because if the array grows or becomes released, the view will no longer represent the correct memory region and modifying its values in this state will most likely corrupt memory. Use, but use with care.

* **__retain**(ref: `number`): `number`<br />
  Retains a reference externally, making sure that it doesn't become collected prematurely. Returns the reference.

* **__release**(ref: `number`): `void`<br />
  Releases a previously retained reference to an object, allowing the runtime to collect it once its reference count reaches zero.

* **__alloc**(size: `number`, id: `number`): `number`<br />
  Allocates an instance of the class represented by the specified id. If you are using `MyClass` for example, the best way to know the id and the necessary size is an `export const MYCLASS_ID = idof<MyClass>()` and an `export const MYCLASS_SIZE = offsetof<MyClass>()`. Afterwards, use the respective views to assign values to the class's memory while making sure to retain interior references to other managed objects once. When done with the class, make sure to release it, which will automatically release any interior references once the class becomes collected.

  ```ts
  var ref = module.__retain(module.__alloc(module.MYCLASS_SIZE, module.MYCLASS_ID));
  F32[ref + MYCLASS_BASICFIELD1_OFFSET >>> 2] = field1_value_f32;
  U32[ref + MYCLASS_MANAGEDFIELD2_OFFSET >>> 2] = module.__retain(field2_value_ref);
  ...
  module.__release(ref);
  ```

* **__instanceof**(ref: `number`, baseId: `number`): `boolean`<br />
  Tests whether an object is an instance of the class represented by the specified base id.

  ```ts
  if (module.__instanceof(ref, module.MYCLASS_ID)) {
    ...
  }
  ```

* **__collect**(): `void`<br />
  Forces a cycle collection. Only relevant if objects potentially forming reference cycles are used.

**Note** that the views like `I32` above will automatically be updated when the module's memory grows. Don't cache these if this can happen.

**Note** that the allocation and ownership features above require the `full` (this is the default) or the `stub` runtime to be present in your module. Other runtime variations do not export this functionality without further ado (so the compiler can eliminate what's dead code).

**Note** that references returned from exported functions have already been retained for you and the runtime expects that you release them once not needed anymore. This is also true for constructors and getters.

**Beware that your module is likely going to explode with seemingly random errors when using the allocation and ownership features incorrectly!**

* Use the correct ids, sizes and layouts (C-style non-packed, export `offsetof<MyClass>("myField")` in case of doubt)
* Clear unused memory to zero
* Retain what you allocate
* Retain interior pointers (except in `__allocArray`)
* Don't retain what's returned (is already retained for you)
* Release when you're done with something and don't ever use it again

Examples
--------

### Instantiating a module

```js
// From a module provided as a buffer, i.e. as returned by fs.readFileSync
const myModule = loader.instantiateBuffer(fs.readFileSync("myModule.wasm"), myImports);

// From a response object, i.e. as returned by window.fetch
const myModule = await loader.instantiateStreaming(fetch("myModule.wasm"), myImports);
```

### Usage with TypeScript definitions produced by the compiler

```ts
import MyModule from "myModule"; // pointing at the d.ts

const myModule = loader.instatiateBuffer<typeof MyModule>(fs.readFileSync("myModule.wasm"), myImports);
```
