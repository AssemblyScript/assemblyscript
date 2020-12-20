import { compareImpl } from "./string";

// @ts-ignore: decorator
@inline
export function COMPARATOR<T>(): (a: T, b: T) => i32 {
  if (isInteger<T>()) {
    if (isSigned<T>() && sizeof<T>() <= 4) {
      return (a: T, b: T): i32 => (i32(a) - i32(b));
    } else {
      return (a: T, b: T): i32 => (i32(a > b) - i32(a < b));
    }
  } else if (isFloat<T>()) {
    if (sizeof<T>() == 4) {
      return (a: T, b: T): i32 => {
        var ia = reinterpret<i32>(f32(a));
        var ib = reinterpret<i32>(f32(b));
        ia ^= (ia >> 31) >>> 1;
        ib ^= (ib >> 31) >>> 1;
        return i32(ia > ib) - i32(ia < ib);
      };
    } else {
      return (a: T, b: T): i32 => {
        var ia = reinterpret<i64>(f64(a));
        var ib = reinterpret<i64>(f64(b));
        ia ^= (ia >> 63) >>> 1;
        ib ^= (ib >> 63) >>> 1;
        return i32(ia > ib) - i32(ia < ib);
      };
    }
  } else if (isString<T>()) {
    return (a: T, b: T): i32 => {
      if (a === b || a === null || b === null) return 0;
      var alen = changetype<string>(a).length;
      var blen = changetype<string>(b).length;
      if (!(alen | blen)) return 0;
      if (!alen) return -1;
      if (!blen) return  1;
      let res = compareImpl(changetype<string>(a), 0, changetype<string>(b), 0, <usize>min(alen, blen));
      return res ? res : alen - blen;
    };
  } else {
    return (a: T, b: T): i32 => (i32(a > b) - i32(a < b));
  }
}

// @ts-ignore: decorator
@inline
export function SORT<T>(
  dataStart: usize,
  length: i32,
  comparator: (a: T, b: T) => i32
): void {
  if (isReference<T>()) {
    // TODO replace this to faster stable sort (TimSort) when it implemented
    insertionSort<T>(dataStart, length, comparator);
  } else {
    if (length < 256) {
      insertionSort<T>(dataStart, length, comparator);
    } else {
      weakHeapSort<T>(dataStart, length, comparator);
    }
  }
}

function insertionSort<T>(
  dataStart: usize,
  length: i32,
  comparator: (a: T, b: T) => i32
): void {
  for (let i = 0; i < length; i++) {
    let a: T = load<T>(dataStart + (<usize>i << alignof<T>())); // a = arr[i]
    let j = i - 1;
    while (j >= 0) {
      let b: T = load<T>(dataStart + (<usize>j << alignof<T>())); // b = arr[j]
      if (comparator(a, b) < 0) {
        store<T>(dataStart + (<usize>(j-- + 1) << alignof<T>()), b); // arr[j + 1] = b
      } else break;
    }
    store<T>(dataStart + (<usize>(j + 1) << alignof<T>()), a); // arr[j + 1] = a
  }
}

function weakHeapSort<T>(
  dataStart: usize,
  length: i32,
  comparator: (a: T, b: T) => i32
): void {
  const shift32 = alignof<u32>();

  var bitsetSize = (<usize>length + 31) >> 5 << shift32;
  var bitset = __alloc(bitsetSize); // indexed in 32-bit chunks below
  memory.fill(bitset, 0, bitsetSize);

  // see: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.21.1863&rep=rep1&type=pdf

  for (let i = length - 1; i > 0; i--) {
    let j = i;
    while ((j & 1) == (load<u32>(bitset + (<usize>j >> 6 << shift32)) >> (j >> 1 & 31) & 1)) j >>= 1;

    let p = j >> 1;
    let a: T = load<T>(dataStart + (<usize>p << alignof<T>())); // a = arr[p]
    let b: T = load<T>(dataStart + (<usize>i << alignof<T>())); // b = arr[i]
    if (comparator(a, b) < 0) {
      store<u32>(
        bitset + (<usize>i >> 5 << shift32),
        load<u32>(bitset + (<usize>i >> 5 << shift32)) ^ (1 << (i & 31))
      );
      store<T>(dataStart + (<usize>i << alignof<T>()), a); // arr[i] = a
      store<T>(dataStart + (<usize>p << alignof<T>()), b); // arr[p] = b
    }
  }

  for (let i = length - 1; i >= 2; i--) {
    let a: T = load<T>(dataStart); // a = arr[0]
    store<T>(dataStart, load<T>(dataStart + (<usize>i << alignof<T>()))); // arr[0] = arr[i]
    store<T>(dataStart + (<usize>i << alignof<T>()), a); // arr[i] = a

    let x = 1, y: i32;
    while ((y = (x << 1) + ((load<u32>(bitset + (<usize>x >> 5 << shift32)) >> (x & 31)) & 1)) < i) x = y;

    while (x > 0) {
      a = load<T>(dataStart); // a = arr[0]
      let b: T = load<T>(dataStart + (<usize>x << alignof<T>())); // b = arr[x]

      if (comparator(a, b) < 0) {
        store<u32>(
          bitset + (<usize>x >> 5 << shift32),
          load<u32>(bitset + (<usize>x >> 5 << shift32)) ^ (1 << (x & 31))
        );
        store<T>(dataStart + (<usize>x << alignof<T>()), a); // arr[x] = a
        store<T>(dataStart, b); // arr[0] = b
      }
      x >>= 1;
    }
  }

  __free(bitset);

  var t: T = load<T>(dataStart, sizeof<T>()); // t = arr[1]
  store<T>(dataStart, load<T>(dataStart), sizeof<T>()); // arr[1] = arr[0]
  store<T>(dataStart, t); // arr[0] = t
}
