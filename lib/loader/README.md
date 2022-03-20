# AssemblyScript Loader

A tiny module loader that makes working with AssemblyScript modules as convenient as it gets without sacrificing efficiency. It about mirrors the relevant parts of the WebAssembly API while also providing utility to allocate and read strings, arrays and classes.

**DEPRECATION NOTICE:** The loader has been deprecated in AssemblyScript 0.20. It will likely continue to work for a while, but it is recommended to switch to the new [static bindings](https://www.assemblyscript.org/compiler.html#host-bindings) generation.

## Example

```ts
import loader from "@assemblyscript/loader"; // or require
loader.instantiate(
  // Binary to instantiate
  fetch("optimized.wasm"), // or fs.readFileSync
                           // or fs.promises.readFile
                           // or just a buffer
  // Additional imports
  { ... }
).then(({ exports }) => {
  ...
})
```

The loader basically instantiates the module using `WebAssembly` APIs, but also adds additional utility.

## Installation

The loader can be installed from [npm](https://www.npmjs.com/package/@assemblyscript/loader):

```sh
npm install --save @assemblyscript/loader
```

On the web:

```html
<!-- ESM -->
<script type="module" src="https://cdn.jsdelivr.net/npm/@assemblyscript/loader/index.js"></script>
<!-- UMD -->
<script src="https://cdn.jsdelivr.net/npm/@assemblyscript/loader/umd/index.js"></script>
```

## Usage

One task the loader does not perform is to implicitly translate between WebAssembly pointers and JavaScript objects, and that's where the mixed in utility comes into play. For example, if one has

```ts
// AssemblyScript
export function concat(a: string, b: string): string {
  return a + b
}
```

and then wants to call `concat` externally, the string arguments cannot just be JavaScript strings but must first be allocated in the module's memory with their lifetime tracked, like so:

```js
// JavaScript
const { concat } = myModule.exports
const { __newString, __getString } = myModule.exports

function doConcat(aStr, bStr) {
  let aPtr = __newString(aStr)
  let bPtr = __newString(bStr)
  let cPtr = concat(aPtr, bPtr)
  let cStr = __getString(cPtr)
  return cStr
}

console.log(doConcat("Hello ", "world!"))
```

### Creating arrays

Arrays (or more advanced classes for that matter) require a bit more cooperation because we need to know their value type in order to work with them properly. To achieve this, every class has a unique id internally, and a chunk of runtime type information (RTTI) is shipped with the module to evaluate class types. Here's an example of working with an `Int32Array`:

```ts
// AssemblyScript
export function sum(arr: Int32Array): i32 {
  let sum = 0
  for (let i = 0, k = arr.length; i < k; ++i) {
    sum += unchecked(arr[i])
  }
  return sum
}
export const Int32Array_ID = idof<Int32Array>()
```

```js
// JavaScript
const { sum, Int32Array_ID } = myModule.exports
const { __newArray } = myModule.exports

function doSum(values) {
  const arrPtr = __newArray(Int32Array_ID, values)
  return sum(arrPtr)
}

console.log(doSum([1, 2, 3]))
```

This works with all kinds of arrays, except that ids are different and values are interpreted differently, of course.

### Reading arrays

If one is instead interested in the values of an array being returned by the module, there are two approaches to this. Let's say we have the following module:

```ts
// AssemblyScript
export function getRandomArray(len: i32): Int32Array {
  const arr = new Int32Array(len)
  // fill with random values
  return arr
}
```

The first is, obviously, to read the array's values from the module's memory by essentially copying them to a JS array

```js
// JavaScript
const { getRandomArray } = myModule.exports
const { __getArray } = myModule.exports

function doGetRandomArray(len) {
  const arrPtr = getRandomArray(len)
  const values = __getArray(arrPtr)
  return values
}

console.log(doGetRandomArray(10))
```

which is always safe, while the second is to create a live view on the array, enabling two-way modification of its values:

```js
// JavaScript
const { getRandomArray } = myModule.exports
const { __getArrayView, __pin, __unpin } = myModule.exports

function doGetRandomArrayView(len) {
  const arrPtr = __pin(getRandomArray(len)) // pin if necessary
  const view = __getArrayView(arrPtr)
  return { ptr, view }
}

const randomArray = doGetRandomArrayView(10)
console.log(randomArray.view)
__unpin(randomArray.ptr) // unpin if necessary
```

The latter variant can be more efficient (and useful) but is a little dangerous because the view may become detached from the module's memory when memory automatically grows. Also, the viewed array can grow automatically when pushed to, with the view then referencing random memory. Pushing to an array can be avoided quite easily, yet it is notoriously hard to predict when module memory grows - but one can try to set a sufficiently large size of `--initialMemory` or defensively trigger a sufficiently large dynamic allocation being freed immediately before dealing with potentially problematic views.

### Custom classes

As mentioned earlier, the loader understands how to make a nice object structure of a module's exports, and it is possible to utilize it to work with classes in a more natural way. For example, when calling the following function externally

```ts
// AssemblyScript
export class Foo {
  constructor(public str: string) {}
  getString(): string {
    return this.str
  }
}

export function getFoo(): Foo { // this one
  return new Foo("Hello world!")
}
```

one can wrap the received pointer in a `myModule.exports.Foo` instance:

```js
// JavaScript
const { Foo, getFoo } = myModule.exports
const { __getString, __pin, __unpin } = myModule.exports

const fooPtr = __pin(getFoo()) // pin if necessary
const foo = Foo.wrap(fooPtr)
const strPtr = foo.getString()
console.log(__getString(strPtr))
__unpin(fooPtr) // unpin if necessary
```

## API

For reference, here comes the full API provided by the loader.

::: tip
Copying from and extending the examples above is typically sufficient.
:::

### Static members

* ```ts
  function instantiate<T>(
    moduleOrBuffer: WasmInstantiable,
    imports?: WasmImports
  ): Promise<ASUtil & T>
  ```
  Asynchronously instantiates an AssemblyScript module from anything that can be instantiated.

* ```ts
  function instantiateSync<T>(
    moduleOrBuffer: WasmInstantiable,
    imports?: WasmImports
  ): ASUtil & T
  ```
  Synchronously instantiates an AssemblyScript module from a WebAssembly.Module or binary buffer. Not recommended.

* ```ts
  function instantiateStreaming<T>(
    response: Response | PromiseLike<Response>,
    imports?: WasmImports
  ): Promise<ASUtil & T>
  ```
  Asynchronously instantiates an AssemblyScript module from a response, i.e. as obtained by fetch.

* ```ts
  function demangle<T>(
    exports: WasmExports,
    baseModule?: Object
  ): T
  ```
  Demangles an AssemblyScript module's exports to a friendly object structure. You usually don't have to call this manually as instantiation does this implicitly.

Note that `T` above can either be omitted if the shape of the module is unknown, or can reference a `.d.ts` (i.e. `typeof MyModule`) as produced by the compiler with the `-d` option.

### Module instance utility

The following utility functions are mixed into the module's exports.

* ```ts
  function __newString(str: string): number
  ```
  Allocates a new string in the module's memory and returns a pointer to it. Requires `--exportRuntime` for access to `__new`.

* ```ts
  function __newArray(
    id: number,
    values: valuesOrCapacity?: number[] | ArrayBufferView | number
  ): number
  ```
  Allocates a new array in the module's memory and returns a pointer to it. The `id` is the unique runtime id of the respective array class. If you are using `Int32Array` for example, the best way to know the id is an `export const Int32Array_ID = idof<Int32Array>()`. Requires `--exportRuntime` for access to `__new`. The `values` parameter сan also be used to pre-allocate an otherwise empty array of a certain capacity. 

* ```ts
  function __getString(ptr: number): string
  ```
  Copies a string's value from the module's memory to a JavaScript string. `ptr` must not be zero.

* ```ts
  function __getFunction(ptr: number): ((...args: unknown[]) => unknown) | null
  ```
  Gets a callable function object from the module's memory containing its table index. `ptr` must not be zero.

* ```ts
  function __getArrayBuffer(ptr: number): ArrayBuffer
  ```
  Copies an ArrayBuffer's value from the module's memory to a JavaScript buffer. `ptr` must not be zero.

* ```ts
  function __getArray(ptr: number): number[]
  ```
  Copies an array's values from the module's memory to a JavaScript array. Infers the array type from RTTI. `ptr` must not be zero.

* ```ts
  function __getArrayView(ptr: number): TypedArray
  ```
  Gets a live view on the values of an array in the module's memory. Infers the array type from RTTI. `ptr` must not be zero.

  This differs from `__getArray` in that the data isn't copied but remains live in both directions. That's faster but also unsafe because if the array grows or becomes garbage collected, the view will no longer represent the correct memory region and modifying its values in this state will most likely corrupt memory or otherwise explode. Use, but use with care.

* ```ts
  function __getInt8ArrayView(ptr: number): Int8Array
  function __getUint8ArrayView(ptr: number): Uint8Array
  function __getUint8ClampedArrayView(ptr: number): Uint8ClampedArray
  function __getInt16ArrayView(ptr: number): Int16Array
  function __getUint16ArrayView(ptr: number): Uint16Array
  function __getInt32ArrayView(ptr: number): Int32Array
  function __getUint32ArrayView(ptr: number): Uint32Array
  function __getInt64ArrayView(ptr: number): BigInt64Array
  function __getUint64ArrayView(ptr: number): BigUint64Array
  function __getFloat32ArrayView(ptr: number): Float32Array
  function __getFloat64ArrayView(ptr: number): Float64Array
  ```
  Slightly more efficient variants of `__getArrayView` where the type of the array is know beforehand. Doesn't try to infer the type.

### Module instance runtime interface

When compiling with `--exportRuntime`, the loader will expose the runtime interface (`__new`, `__pin`, `__unpin`, `__collect`) as well.

## Convenience vs. efficiency

Making the loader's API any more convenient has its tradeoffs. One would either have to include extended type information with the module itself or generate an additional JavaScript file of glue code that does (and hides) all the lifting. As such, one can consider the loader as a small and efficient building block that can do it all, yet does not sacrifice efficiency. If that's not exactly what you are looking for, take a look at more convenient tools below. Just remember that these have tradeoffs.

### More convenient tools

* [as-bind](https://github.com/torch2424/as-bind) is a library, built on top of the loader, to make passing high-level data structures between AssemblyScript and JavaScript more convenient.

## Advanced usage

### Direct memory access

All of the above can be mixed with direct memory accesses on `myModule.exports.memory.buffer`, for instance by adhering to class layout.

### TypeScript definitions

The compiler is able to emit definitions using the `-d` command line option that are compatible with modules demangled by the loader, and these can be used for proper typings in development:

```ts
// TypeScript
import type * as MyModule from "myModule"; // pointing at the generated d.ts

loader.instantiate<typeof MyModule>(
  fetch("myModule.wasm"),
  { ... }
).then(({ exports }) => {
  ...
})
```
