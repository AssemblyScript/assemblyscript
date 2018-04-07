import { Array } from "../array";

/** Obtains the default comparator for the specified type. */
export function defaultComparator<T>(): (a: T, b: T) => i32 {
  return (a: T, b: T): i32 => (<i32>(a > b) - <i32>(a < b)); // compiles to a constant table index
}

/** Sorts an Array with the 'Insertion Sort' algorithm. */
export function insertionSort<T>(arr: Array<T>, comparator: (a: T, b: T) => i32): Array<T> {
  const shiftT = alignof<T>();

  var memory = arr.__memory;
  for (let i: i32 = 0, len: i32 = arr.length; i < len; i++) {
    let a = load<T>(memory + (i << shiftT));              // a = arr[i]
    let j = i - 1;
    while (j >= 0) {
      let b = load<T>(memory + (j << shiftT));            // b = arr[j]
      if (comparator(a, b) < 0) {
        store<T>(memory + ((j-- + 1) << shiftT), b);      // arr[j + 1] = b
      } else break;
    }
    store<T>(memory + ((j + 1) << shiftT), a);            // arr[j + 1] = a
  }
  return arr;
}

/** Sorts an Array with the 'Weak Heap Sort' algorithm. */
export function weakHeapSort<T>(arr: Array<T>, comparator: (a: T, b: T) => i32): Array<T> {
  const shiftT  = alignof<T>();
  const shift32 = alignof<i32>();

  var length = arr.length;
  var bitsetSize = (length + 31) >> 5 << shift32;
  var bitset = allocate_memory(bitsetSize); // indexed in 32-bit chunks below
  set_memory(bitset, 0, bitsetSize);

  // see: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.21.1863&rep=rep1&type=pdf

  var memory = arr.__memory;
  for (let i = length - 1; i > 0; i--) {
    let j = i;
    while ((j & 1) == (load<i32>(bitset + (j >> 6 << shift32)) >> (j >> 1 & 31) & 1)) j >>= 1;

    let p = j >> 1;
    let a = load<T>(memory + (p << shiftT));              // a = arr[p]
    let b = load<T>(memory + (i << shiftT));              // b = arr[i]
    if (comparator(a, b) < 0) {
      store<i32>(
        bitset + (i >> 5 << shift32),
        load<i32>(bitset + (i >> 5 << shift32)) ^ (1 << (i & 31))
      );
      store<T>(memory + (i << shiftT), a);                // arr[i] = a
      store<T>(memory + (p << shiftT), b);                // arr[p] = b
    }
  }

  for (let i = length - 1; i >= 2; i--) {
    let a = load<T>(memory, 0);                           // a = arr[0]
    store<T>(memory, load<T>(memory + (i << shiftT)), 0); // arr[0] = arr[1]
    store<T>(memory + (i << shiftT), a);                  // arr[1] = a

    let x = 1, y: i32;
    while ((y = (x << 1) + ((load<i32>(bitset + (x >> 5 << shift32)) >> (x & 31)) & 1)) < i) x = y;

    while (x > 0) {
      a = load<T>(memory, 0);                             // a = arr[0]
      let b = load<T>(memory + (x << shiftT));            // b = arr[x]

      if (comparator(a, b) < 0) {
        store<i32>(
          bitset + (x >> 5 << shift32),
          load<i32>(bitset + (x >> 5 << shift32)) ^ (1 << (x & 31))
        );
        store<T>(memory + (x << shiftT), a);              // arr[x] = a
        store<T>(memory, b, 0);                           // arr[0] = b
      }
      x >>= 1;
    }
  }

  free_memory(bitset);

  var t = load<T>(memory, sizeof<T>());                   // t = arr[1]
  store<T>(memory, load<T>(memory, 0), sizeof<T>());      // arr[1] = arr[0]
  store<T>(memory, t, 0);                                 // arr[0] = t
  return arr;
}
