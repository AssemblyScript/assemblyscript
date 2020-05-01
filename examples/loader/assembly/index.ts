// Example 1: Passing a string from WebAssembly to JavaScript.

// Under the hood, the following yields a WebAssembly function export returning
// the pointer to a string within the module's memory. To obtain its contents,
// we are going to read it from memory on the JavaScript side.

// see: tests/index.js "Test for Example 1"

export function getHello(): string {
  return "Hello world (I am a WebAssembly string)";
}

// Example 2: Passing a string from JavaScript to WebAssembly.

// Similarly, we'll call the following function with a pointer to a string in
// the module's memory from JavaScript. To do so, the string will first be
// allocated on the JavaScript side, while holding on to a reference to it.

// see: tests/index.js "Test for Example 2"

export function sayHello(s: string): void {
  console.log("  " + s); // see Example 3
}

// Example 3: Calling a JavaScript import with a WebAssembly string.

// see: assembly/myConsole.ts

import * as console from "./myConsole";

// Example 4: Passing an array from WebAssembly to JavaScript.

// Analogous to the examples above working with strings, the following function
// will return a pointer to an array within the module's memory. We can either
// get a live view on it to modify, or obtain a copy.

// see: tests/index.js "Test for Example 4"

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

// see: tests/index.js "Test for Example 5"

export function computeSum(a: Int32Array): i32 {
  console.time("sum"); // see Example 3
  var sum = 0;
  for (let i = 0, k = a.length; i < k; ++i) {
    sum += a[i];
  }
  console.timeEnd("sum"); // see Example 3
  return sum;
}

// See the comments in test/index.js "Test for Example 5" for why this is
// necessary, and how to perform an Int32Array allocation using its runtime id.
export const Int32Array_ID = idof<Int32Array>();

// Example 6: WebAssembly arrays of WebAssembly strings.

// Let's get a little more serious with a combined example. We'd like to pass an
// array of strings from JavaScript to WebAssembly, create a new array with all
// strings converted to upper case, return it to JavaScript and print its contents.

// see: tests/index.js "Test for Example 6"

export function capitalize(a: string[]): string[] {
  var length = a.length;
  var b = new Array<string>(length);
  for (let i = 0; i < length; ++i) {
    b[i] = a[i].toUpperCase();
  }
  return b;
}

export const ArrayOfStrings_ID = idof<string[]>();

// Example 7: Using custom classes.

// The loader also understands exports of entire classes, and with the knowledge
// obtained in the previous examples it becomes possible to interface with a
// more complex program like the following in a nearly natural way.

// see: tests/index.js "Test for Example 7"

export namespace Game {
  export class Player {
    name: string;
    position: Position | null;
    constructor(name: string) {
      this.name = name;
      this.position = new Position();
    }
    move(x: i32, y: i32): void {
      var position = assert(this.position);
      position.x += x;
      position.y += y;
    }
    kill(): void {
      this.position = null;
    }
    toString(): string {
      var position = this.position;
      if (position) {
        return this.name + " @ " + position.toString();
      } else {
        return this.name + " @ AWAITING ASSIGNMENT";
      }
    }
  }
  export class Position {
    x: i32 = 0;
    y: i32 = 0;
    toString(): string {
      return this.x.toString() + "/" + this.y.toString();
    }
  }
}
