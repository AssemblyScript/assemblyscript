![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) AssemblyScript Loader
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

* **instantiate**<`T`>(moduleOrBuffer: `WebAssembly.Module | BufferSource | Response | PromiseLike<WebAssembly.Module | BufferSource | Response>`, imports?: `WasmImports`): `Promise<ASUtil & T>`<br />
  Asynchronously instantiates an AssemblyScript module from anything that can be instantiated.

* **instantiateSync**<`T`>(moduleOrBuffer: `WebAssembly.Module | BufferSource`, imports?: `WasmImports`): `ASUtil & T`<br />
  Synchronously instantiates an AssemblyScript module from a WebAssembly.Module or binary buffer.

* **instantiateStreaming**<`T`>(response: `Response | PromiseLike<Response>`, imports?: `WasmImports`): `Promise<ASUtil & T>`<br />
  Asynchronously instantiates an AssemblyScript module from a response, i.e. as obtained by `fetch`.

* **demangle**<`T`>(exports: `WasmExports`, baseModule?: `Object`): `T`<br />
  Demangles an AssemblyScript module's exports to a friendly object structure. You usually don't have to call this manually as instantiation does this implicitly.

**Note** that `T` above can either be omitted if the structure of the module is unknown, or can reference a `.d.ts` (i.e. `typeof MyModule`) as produced by the compiler with the `-d` option.

Besides demangling classes exported from your entry file to a handy object structure one can use like JS objects, instances are automatically populated with useful utility:

* **_start**(): `void`<br />
  Explicit start function if the `--explicitStart` option is used. Must be called before any other exports if present.

* **__allocString**(str: `string`): `number`<br />
  Allocates a new string in the module's memory and returns a reference (pointer) to it.

  ```ts
  var ptr = module.__retain(module.__allocString("hello world"));
  ...
  module.__release(ptr);
  ```

* **__getString**(ptr: `number`): `string`<br />
  Copies a string's value from the module's memory.

  ```ts
  var str = module.__getString(ptr);
  ...
  ```

* **__getArrayBuffer**(ptr: `number`): `ArrayBuffer`<br />
  Copies an ArrayBuffer's value from the module's memory.

* **__getArray**(ptr: `number`): `number[]`<br />
  Copies an array's values from the module's memory. Infers the array type from RTTI.

  ```ts
  var arr = module.__getArray(ptr);
  ...
  ```

  If the type of the array is known beforehand, the following slightly faster helpers that don't infer the type can be used:

  **__getInt8Array**(ptr: `number`): `Int8Array`<br />
  **__getUint8Array**(ptr: `number`): `Uint8Array`<br />
  **__getUint8ClampedArray**(ptr: `number`): `Uint8ClampedArray`<br />
  **__getInt16Array**(ptr: `number`): `Int16Array`<br />
  **__getUint16Array**(ptr: `number`): `Uint16Array`<br />
  **__getInt32Array**(ptr: `number`): `Int32Array`<br />
  **__getUint32Array**(ptr: `number`): `Uint32Array`<br />
  **__getInt64Array**(ptr: `number`): `BigInt64Array`<br />
  **__getUint64Array**(ptr: `number`): `BigUint64Array`<br />
  **__getFloat32Array**(ptr: `number`): `Float32Array`<br />
  **__getFloat64Array**(ptr: `number`): `Float64Array`

* **__getArrayView**(ptr: `number`): `TypedArray`<br />
  Gets a live view on the values of an array in the module's memory. Infers the array type from RTTI.
  
  This differs from `__getArray` in that the data isn't copied but remains *live* in both directions. That's faster but also unsafe because if the array grows or becomes released, the view will no longer represent the correct memory region and modifying its values in this state will most likely corrupt memory. Use, but use with care.

  If the type of the array is known beforehand, the following slightly faster helpers that don't infer the type can be used:

  **__getInt8ArrayView**(ptr: `number`): `Int8Array`<br />
  **__getUint8ArrayView**(ptr: `number`): `Uint8Array`<br />
  **__getUint8ClampedArrayView**(ptr: `number`): `Uint8ClampedArray`<br />
  **__getInt16ArrayView**(ptr: `number`): `Int16Array`<br />
  **__getUint16ArrayView**(ptr: `number`): `Uint16Array`<br />
  **__getInt32ArrayView**(ptr: `number`): `Int32Array`<br />
  **__getUint32ArrayView**(ptr: `number`): `Uint32Array`<br />
  **__getInt64ArrayView**(ptr: `number`): `BigInt64Array`<br />
  **__getUint64ArrayView**(ptr: `number`): `BigUint64Array`<br />
  **__getFloat32ArrayView**(ptr: `number`): `Float32Array`<br />
  **__getFloat64ArrayView**(ptr: `number`): `Float64Array`

* **__retain**(ptr: `number`): `number`<br />
  Retains a reference to a managed object externally, making sure that it doesn't become collected prematurely. Returns the pointer.

* **__release**(ptr: `number`): `void`<br />
  Releases a previously retained reference to a managed object, allowing the runtime to collect it once its reference count reaches zero.

* **__alloc**(size: `number`, id: `number`): `number`<br />
  Allocates an instance of the class represented by the specified id. If you are using `MyClass` for example, the best way to know the id and the necessary size is an `export const MYCLASS_ID = idof<MyClass>()` and an `export const MYCLASS_SIZE = offsetof<MyClass>()`. Afterwards, use the respective views to assign values to the class's memory while making sure to retain interior references to other managed objects once. When done with the class, make sure to release it, which will automatically release any interior references once the class becomes collected.

  ```ts
  var ptr = module.__retain(module.__alloc(module.MYCLASS_SIZE, module.MYCLASS_ID));
  const F32 = new Float32Array(module.memory.buffer);
  F32[ptr + MYCLASS_BASICFIELD1_OFFSET >>> 2] = field1_value_f32;
  const U32 = new Uint32Array(module.memory.buffer);
  U32[ptr + MYCLASS_MANAGEDFIELD2_OFFSET >>> 2] = module.__retain(field2_value_ptr);
  ...
  module.__release(ptr);
  ```

* **__allocArray**(id: `number`, values: `number[]`): `number`<br />
  Allocates a new array in the module's memory and returns a reference (pointer) to it.
  Automatically retains interior pointers. The `id` is the unique runtime id of the respective array class. If you are using `Int32Array` for example, the best way to know the id is an `export const INT32ARRAY_ID = idof<Int32Array>()`. When done with the array, make sure to release it.

  ```ts
  var ptr = module.__retain(module.__allocArray(module.INT32ARRAY, [1, 2, 3]));
  ...
  module.__release(ptr);
  ```

* **__instanceof**(ptr: `number`, baseId: `number`): `boolean`<br />
  Tests whether an object is an instance of the class represented by the specified base id.

  ```ts
  if (module.__instanceof(ptr, module.MYCLASS_ID)) {
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

The **asynchronous API** is analogous to [WebAssembly.instantiate](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiate) and [WebAssembly.instantiateStreaming](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiateStreaming)

```js
const myModule = await loader.instantiate(myModuleBuffer, myImports);
const myModule = await loader.instantiateStreaming(fetch("myModule.wasm"), myImports);
```

with `loader.instantiate` actually accepting anything that can be instantiated for convenience:

```js
const myModule = await loader.instantiate(fs.promises.readFile("myModule.wasm"), myImports);
const myModule = await loader.instantiate(fetch("myModule.wasm"), myImports);
...
```

If `WebAssembly.instantiateStreaming` is not supported by the environment a fallback is applied.

The **synchronous API** utilizes [new WebAssembly.Instance](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Instance#Constructor_Syntax) and [new WebAssembly.Module](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Module#Constructor_Syntax), which is useful if the goal is to immediately re-export as a node module for example:

```js
module.exports = loader.instantiateSync(fs.readFileSync("myModule.wasm"), myImports);
```

Note, though, that browsers have relatively tight limits for synchronous compilation and instantiation because these block the main thread, hence it is recommended to use the asynchronous API in browsers.

### Usage with TypeScript definitions produced by the compiler

The compiler is able to emit definitions using the `-d` command line option that are compatible with modules demangled by the loader, and these can be used for proper typings in development:

```ts
import MyModule from "myModule"; // pointing at the d.ts

const myModule = await loader.instatiate<typeof MyModule>(fs.promises.readFile("myModule.wasm"), myImports);
```
