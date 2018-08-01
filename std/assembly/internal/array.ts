import {
  loadUnsafeWithOffset,
  storeUnsafeWithOffset
} from "./arraybuffer";

/** Obtains the default comparator for the specified type. */
@inline
export function defaultComparator<T>(): (a: T, b: T) => i32 {
  if (isInteger<T>() && isSigned<T>()) {
    return (a: T, b: T): i32 => {
      // JavaScript by default casting all values to string
      // so for emulate this we use trick below
      // TODO can we do better?
      var t = a - b;
      return select<T>(-t, t, a & b & (1 << 8 * sizeof<T>() - 1));
    };
  } else if (isFloat<T>()) {
    if (sizeof<T>() == 4) {
      return (a: T, b: T): i32 => {
        // JavaScript by default casting all values to string
        // so for emulate this we use trick below
        var ia = reinterpret<i32>(a);
        var ib = reinterpret<i32>(b);
        return <i32>(ia > ib) - <i32>(ia < ib);
      };
    } else {
      return (a: T, b: T): i32 => {
        // JavaScript by default casting all values to string
        // so for emulate this we use trick below
        var ia = reinterpret<i64>(a);
        var ib = reinterpret<i64>(b);
        return <i32>(ia > ib) - <i32>(ia < ib);
      };
    }
  } else {
    return (a: T, b: T): i32 => (<i32>(a > b) - <i32>(a < b));
  }
}

/** Obtains the default comparator for the typed arrays which behave differently. */
@inline
export function defaultComparatorTyped<T>(): (a: T, b: T) => i32 {
  if (isFloat<T>()) {
    if (sizeof<T>() == 4) {
      return (a: T, b: T): i32 => {
        var ia = reinterpret<i32>(a);
        var ib = reinterpret<i32>(b);
        ia ^= (ia >> 31) & 0x7FFFFFFF;
        ib ^= (ib >> 31) & 0x7FFFFFFF;
        return <i32>(ia > ib) - <i32>(ia < ib);
      };
    } else {
      return (a: T, b: T): i32 => {
        var ia = reinterpret<i64>(a);
        var ib = reinterpret<i64>(b);
        ia ^= (ia >> 63) & 0x7FFFFFFFFFFFFFFF;
        ib ^= (ib >> 63) & 0x7FFFFFFFFFFFFFFF;
        return <i32>(ia > ib) - <i32>(ia < ib);
      };
    }
  } else {
    if (isInteger<T>() && isSigned<T>() && sizeof<T>() <= 4) {
      return (a: T, b: T): i32 => (<i32>(a - b));
    }
    return (a: T, b: T): i32 => (<i32>(a > b) - <i32>(a < b));
  }
}

/** Sorts an Array with the 'Insertion Sort' algorithm. */
export function insertionSort<T>(
  buffer: ArrayBuffer,
  byteOffset: i32,
  length: i32,
  comparator: (a: T, b: T) => i32
): void {
  for (let i = 0; i < length; i++) {
    let a = loadUnsafeWithOffset<T,T>(buffer, i, byteOffset);       // a = arr[i]
    let j = i - 1;
    while (j >= 0) {
      let b = loadUnsafeWithOffset<T,T>(buffer, j, byteOffset);     // b = arr[j]
      if (comparator(a, b) < 0) {
        storeUnsafeWithOffset<T,T>(buffer, j-- + 1, b, byteOffset); // arr[j + 1] = b
      } else break;
    }
    storeUnsafeWithOffset<T,T>(buffer, j + 1, a, byteOffset);       // arr[j + 1] = a
  }
}

/** Sorts an Array with the 'Weak Heap Sort' algorithm. */
export function weakHeapSort<T>(
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
    let a = loadUnsafeWithOffset<T,T>(buffer, p, byteOffset);  // a = arr[p]
    let b = loadUnsafeWithOffset<T,T>(buffer, i, byteOffset);  // b = arr[i]
    if (comparator(a, b) < 0) {
      store<u32>(
        bitset + (i >> 5 << shift32),
        load<u32>(bitset + (i >> 5 << shift32)) ^ (1 << (i & 31))
      );
      storeUnsafeWithOffset<T,T>(buffer, i, a, byteOffset);    // arr[i] = a
      storeUnsafeWithOffset<T,T>(buffer, p, b, byteOffset);    // arr[p] = b
    }
  }

  for (let i = length - 1; i >= 2; i--) {
    let a = loadUnsafeWithOffset<T,T>(buffer, 0, byteOffset);
    storeUnsafeWithOffset<T,T>(buffer, 0, loadUnsafeWithOffset<T,T>(buffer, i, byteOffset), byteOffset);
    storeUnsafeWithOffset<T,T>(buffer, i, a, byteOffset);

    let x = 1, y: i32;
    while ((y = (x << 1) + ((load<u32>(bitset + (x >> 5 << shift32)) >> (x & 31)) & 1)) < i) x = y;

    while (x > 0) {
      a = loadUnsafeWithOffset<T,T>(buffer, 0, byteOffset);     // a = arr[0]
      let b = loadUnsafeWithOffset<T,T>(buffer, x, byteOffset); // b = arr[x]

      if (comparator(a, b) < 0) {
        store<u32>(
          bitset + (x >> 5 << shift32),
          load<u32>(bitset + (x >> 5 << shift32)) ^ (1 << (x & 31))
        );
        storeUnsafeWithOffset<T,T>(buffer, x, a, byteOffset);    // arr[x] = a
        storeUnsafeWithOffset<T,T>(buffer, 0, b, byteOffset);    // arr[0] = b
      }
      x >>= 1;
    }
  }

  memory.free(bitset);

  var t = loadUnsafeWithOffset<T,T>(buffer, 1, byteOffset); // t = arr[1]
  storeUnsafeWithOffset<T,T>(buffer, 1, loadUnsafeWithOffset<T,T>(buffer, 0, byteOffset), byteOffset);
  storeUnsafeWithOffset<T,T>(buffer, 0, t, byteOffset); // arr[0] = t
}
