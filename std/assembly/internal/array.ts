import {
  loadUnsafe,
  storeUnsafe
} from "./arraybuffer";

import {
  Array
} from "../array";

/** Obtains the default comparator for the specified type. */
@inline
export function defaultComparator<T>(): (a: T, b: T) => i32 {
  return (a: T, b: T): i32 => (<i32>(a > b) - <i32>(a < b)); // compiles to a constant table index
}

/** Sorts an Array with the 'Insertion Sort' algorithm. */
export function insertionSort<T>(arr: Array<T>, comparator: (a: T, b: T) => i32): Array<T> {
  var buffer = arr.buffer_;
  for (let i: i32 = 0, length: i32 = arr.length; i < length; i++) {
    let a = loadUnsafe<T,T>(buffer, i);       // a = arr[i]
    let j = i - 1;
    while (j >= 0) {
      let b = loadUnsafe<T,T>(buffer, j);     // b = arr[j]
      if (comparator(a, b) < 0) {
        storeUnsafe<T,T>(buffer, j-- + 1, b); // arr[j + 1] = b
      } else break;
    }
    storeUnsafe<T,T>(buffer, j + 1, a);       // arr[j + 1] = a
  }
  return arr;
}

/** Sorts an Array with the 'Weak Heap Sort' algorithm. */
export function weakHeapSort<T>(arr: Array<T>, comparator: (a: T, b: T) => i32): Array<T> {
  const shift32 = alignof<u32>();

  var length = arr.length;
  var bitsetSize = (length + 31) >> 5 << shift32;
  var bitset = memory.allocate(bitsetSize); // indexed in 32-bit chunks below
  memory.fill(bitset, 0, bitsetSize);

  // see: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.21.1863&rep=rep1&type=pdf

  var buffer = arr.buffer_;
  for (let i = length - 1; i > 0; i--) {
    let j = i;
    while ((j & 1) == (load<u32>(bitset + (j >> 6 << shift32)) >> (j >> 1 & 31) & 1)) j >>= 1;

    let p = j >> 1;
    let a = loadUnsafe<T,T>(buffer, p);                       // a = arr[p]
    let b = loadUnsafe<T,T>(buffer, i);                       // b = arr[i]
    if (comparator(a, b) < 0) {
      store<u32>(
        bitset + (i >> 5 << shift32),
        load<u32>(bitset + (i >> 5 << shift32)) ^ (1 << (i & 31))
      );
      storeUnsafe<T,T>(buffer, i, a);                         // arr[i] = a
      storeUnsafe<T,T>(buffer, p, b);                         // arr[p] = b
    }
  }

  for (let i = length - 1; i >= 2; i--) {
    let a = loadUnsafe<T,T>(buffer, 0);                       // a = arr[0]
    storeUnsafe<T,T>(buffer, 0, loadUnsafe<T,T>(buffer, i));  // arr[0] = arr[i]
    storeUnsafe<T,T>(buffer, i, a);                           // arr[i] = a

    let x = 1, y: i32;
    while ((y = (x << 1) + ((load<u32>(bitset + (x >> 5 << shift32)) >> (x & 31)) & 1)) < i) x = y;

    while (x > 0) {
      a = loadUnsafe<T,T>(buffer, 0);                         // a = arr[0]
      let b = loadUnsafe<T,T>(buffer, x);                     // b = arr[x]

      if (comparator(a, b) < 0) {
        store<u32>(
          bitset + (x >> 5 << shift32),
          load<u32>(bitset + (x >> 5 << shift32)) ^ (1 << (x & 31))
        );
        storeUnsafe<T,T>(buffer, x, a);                       // arr[x] = a
        storeUnsafe<T,T>(buffer, 0, b);                       // arr[0] = b
      }
      x >>= 1;
    }
  }

  memory.free(bitset);

  var t = loadUnsafe<T,T>(buffer, 1);                         // t = arr[1]
  storeUnsafe<T,T>(buffer, 1, loadUnsafe<T,T>(buffer, 0));    // arr[1] = arr[0]
  storeUnsafe<T,T>(buffer, 0, t);                             // arr[0] = t
  return arr;
}
