// Example 1: Passing a string from WebAssembly to JavaScript.

// Under the hood, the following yields a WebAssembly function export returning
// the pointer to a string within the module's memory. To obtain its contents,
// we are going to read it from memory on the JavaScript side.

// see: loader-basics/test/index.js "Test for Example 1"

export function getHello(): string {
  return "Hello world (I am a WebAssembly string)";
}

// Example 2: Passing a string from JavaScript to WebAssembly.

// Similarly, we'll call the following function with a pointer to a string in
// the module's memory from JavaScript. To do so, the string will first be
// allocated on the JavaScript side, while holding on to a reference to it.

// see: loader-basics/test/index.js "Test for Example 2"

export function sayHello(s: string): void {
  console.log("  " + s); // see Example 3
}

// Example 3: Calling a JavaScript import with a WebAssembly string.

// see: loader-basics/assembly/myConsole.ts

import * as console from "./myConsole";

// Example 4: Passing an array from WebAssembly to JavaScript.

// Analogous to the examples above working with strings, the following function
// will return a pointer to an array within the module's memory. We can either
// get a live view on it to modify, or obtain a copy.

// see: loader-basics/tests/index.js "Test for Example 4"

export function getMyArray(size: i32): Int32Array {
  var arr = new Int32Array(size);
  for (let i = 0; i < size; ++i) {
    arr[i] = i;
  }
  return arr;
}

// Example 5: Passing an array from JavaScript to WebAssembly.

// Likewise, we can also allocate an array on the JavaScript side and pass it
// its pointer to WebAssembly, then doing something with it.

// see: loader-basics/tests/index.js "Test for Example 5"

export function computeSum(a: Int32Array): i32 {
  console.time("sum"); // see Example 3
  var sum = 0;
  for (let i = 0, k = a.length; i < k; ++i) {
    sum += a[i];
  }
  console.timeEnd("sum"); // see Example 3
  return sum;
}

// See the comments in loader-basics/test/index.js "Test for Example 5" for
// why this is necessary, and how to perform an Array<i32> allocation with it.

export const Int32Array_ID = idof<Int32Array>();

// Note that the above also works with normal arrays, i.e. i32[], but since
// normal arrays can grow dynamically when pushed to, one must be more careful
// to obtain the relevant views at the right times. So using Int32Array here.
