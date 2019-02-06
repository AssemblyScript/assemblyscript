import {
  LOAD,
  STORE
} from "./arraybuffer";

import {
  compareUnsafe
} from "./string";

/** Obtains the default comparator for the specified value type. */
@inline
export function COMPARATOR<T>(): (a: T, b: T) => i32 {
  if (isInteger<T>()) {
    if (isSigned<T>() && sizeof<T>() <= 4) {
      return (a: T, b: T): i32 => (<i32>(a - b));
    } else {
      return (a: T, b: T): i32 => (<i32>(a > b) - <i32>(a < b));
    }
  } else if (isFloat<T>()) {
    if (sizeof<T>() == 4) {
      return (a: T, b: T): i32 => {
        var ia = reinterpret<i32>(a);
        var ib = reinterpret<i32>(b);
        ia ^= (ia >> 31) >>> 1;
        ib ^= (ib >> 31) >>> 1;
        return <i32>(ia > ib) - <i32>(ia < ib);
      };
    } else {
      return (a: T, b: T): i32 => {
        var ia = reinterpret<i64>(a);
        var ib = reinterpret<i64>(b);
        ia ^= (ia >> 63) >>> 1;
        ib ^= (ib >> 63) >>> 1;
        return <i32>(ia > ib) - <i32>(ia < ib);
      };
    }
  } else if (isString<T>()) {
    return (a: T, b: T): i32 => {
      if (a === b || a === null || b === null) return 0;
      var alen = (<string>a).length;
      var blen = (<string>b).length;
      if (!alen && !blen) return 0;
      if (!alen) return -1;
      if (!blen) return  1;
      return compareUnsafe(<string>a, 0, <string>b, 0, <usize>min(alen, blen));
    };
  } else {
    return (a: T, b: T): i32 => (<i32>(a > b) - <i32>(a < b));
  }
}

@inline
export function SORT<T>(
  buffer: ArrayBuffer,
  byteOffset: i32,
  length: i32,
  comparator: (a: T, b: T) => i32
): void {
  if (isReference<T>()) {
    // TODO replace this to faster stable sort (TimSort) when it implemented
    insertionSort<T>(buffer, byteOffset, length, comparator);
  } else {
    if (length < 256) {
      insertionSort<T>(buffer, byteOffset, length, comparator);
    } else {
      weakHeapSort<T>(buffer, byteOffset, length, comparator);
    }
  }
}

/** Sorts an Array with the 'Insertion Sort' algorithm. */
function insertionSort<T>(
  buffer: ArrayBuffer,
  byteOffset: i32,
  length: i32,
  comparator: (a: T, b: T) => i32
): void {
  for (let i = 0; i < length; i++) {
    let a = LOAD<T>(buffer, i, byteOffset);       // a = arr[i]
    let j = i - 1;
    while (j >= 0) {
      let b = LOAD<T>(buffer, j, byteOffset);     // b = arr[j]
      if (comparator(a, b) < 0) {
        STORE<T>(buffer, j-- + 1, b, byteOffset); // arr[j + 1] = b
      } else break;
    }
    STORE<T>(buffer, j + 1, a, byteOffset);       // arr[j + 1] = a
  }
}

/** Sorts an Array with the 'Weak Heap Sort' algorithm. */
function weakHeapSort<T>(
  buffer: ArrayBuffer,
  byteOffset: i32,
  length: i32,
  comparator: (a: T, b: T) => i32
): void {
  const shift32 = alignof<u32>();

  var bitsetSize = (length + 31) >> 5 << shift32;
  var bitset = memory.allocate(bitsetSize); // indexed in 32-bit chunks below
  memory.fill(bitset, 0, bitsetSize);

  // see: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.21.1863&rep=rep1&type=pdf

  for (let i = length - 1; i > 0; i--) {
    let j = i;
    while ((j & 1) == (load<u32>(bitset + (j >> 6 << shift32)) >> (j >> 1 & 31) & 1)) j >>= 1;

    let p = j >> 1;
    let a = LOAD<T>(buffer, p, byteOffset);  // a = arr[p]
    let b = LOAD<T>(buffer, i, byteOffset);  // b = arr[i]
    if (comparator(a, b) < 0) {
      store<u32>(
        bitset + (i >> 5 << shift32),
        load<u32>(bitset + (i >> 5 << shift32)) ^ (1 << (i & 31))
      );
      STORE<T>(buffer, i, a, byteOffset);    // arr[i] = a
      STORE<T>(buffer, p, b, byteOffset);    // arr[p] = b
    }
  }

  for (let i = length - 1; i >= 2; i--) {
    let a = LOAD<T>(buffer, 0, byteOffset);
    STORE<T>(buffer, 0, LOAD<T>(buffer, i, byteOffset), byteOffset);
    STORE<T>(buffer, i, a, byteOffset);

    let x = 1, y: i32;
    while ((y = (x << 1) + ((load<u32>(bitset + (x >> 5 << shift32)) >> (x & 31)) & 1)) < i) x = y;

    while (x > 0) {
      a = LOAD<T>(buffer, 0, byteOffset);     // a = arr[0]
      let b = LOAD<T>(buffer, x, byteOffset); // b = arr[x]

      if (comparator(a, b) < 0) {
        store<u32>(
          bitset + (x >> 5 << shift32),
          load<u32>(bitset + (x >> 5 << shift32)) ^ (1 << (x & 31))
        );
        STORE<T>(buffer, x, a, byteOffset);    // arr[x] = a
        STORE<T>(buffer, 0, b, byteOffset);    // arr[0] = b
      }
      x >>= 1;
    }
  }

  memory.free(bitset);

  var t = LOAD<T>(buffer, 1, byteOffset); // t = arr[1]
  STORE<T>(buffer, 1, LOAD<T>(buffer, 0, byteOffset), byteOffset);
  STORE<T>(buffer, 0, t, byteOffset); // arr[0] = t
}
