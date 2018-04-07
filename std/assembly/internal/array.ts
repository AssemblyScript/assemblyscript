import { Array } from "../array";

/** Obtains the default comparator for the specified type. */
export function defaultComparator<T>(): (a: T, b: T) => i32 {
  return (a: T, b: T): i32 => (<i32>(a > b) - <i32>(a < b)); // compiles to a constant function index
}

/** Sorts an Array with the 'Insertion Sort' algorithm. */
export function insertionSort<T>(arr: Array<T>, comparator: (a: T, b: T) => i32): Array<T> {
  var a: T, b: T, j: i32;
  const typeShift = alignof<T>();

  for (let i: i32 = 0, len: i32 = arr.length; i < len; i++) {
    a = load<T>(arr.__memory + (i << typeShift)); // a = <T>arr[i];
    j = i - 1;
    while (j >= 0) {
      b = load<T>(arr.__memory + (j << typeShift));  // b = <T>arr[j];
      if (comparator(a, b) < 0) {
        store<T>(arr.__memory + ((j + 1) << typeShift), b); // arr[j + 1] = b;
        j--;
      } else break;
    }

    store<T>(arr.__memory + ((j + 1) << typeShift), a); // arr[j + 1] = a;
  }

  return arr;
}

/** Sorts an Array with the 'Weak Heap Sort' algorithm. */
export function weakHeapSort<T>(arr: Array<T>, comparator: (a: T, b: T) => i32): Array<T> {
  // see: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.21.1863&rep=rep1&type=pdf
  var len: i32 = arr.length;
  var i: i32, j: i32, y: i32, p: i32, a: T, b: T;

  const typeShift = alignof<T>();
  const intShift  = alignof<i32>();

  var blen = (len + 7) >> 3;
  var bitset = allocate_memory(blen << intShift);

  set_memory(bitset, 0, blen << intShift);

  for (i = len - 1; i > 0; i--) {
    j = i;
    while ((j & 1) == ((load<i32>(bitset + ((j >> 4) << intShift)) >> ((j >> 1) & 7)) & 1)) {
      j >>= 1;
    }

    p = j >> 1;

    a = load<T>(arr.__memory + (p << typeShift)); // a = <T>arr[p];
    b = load<T>(arr.__memory + (i << typeShift)); // b = <T>arr[i];

    if (comparator(a, b) < 0) {
      store<i32>(
        bitset + ((i >> 3) << intShift),
        load<i32>(bitset + ((i >> 3) << intShift)) ^ (1 << (i & 7))
      );
      store<T>(arr.__memory + (i << typeShift), a); // arr[i] = a;
      store<T>(arr.__memory + (p << typeShift), b); // arr[p] = b;
    }
  }

  for (i = len - 1; i >= 2; i--) {
    /*
    a      = <T>arr[0];
    arr[0] = <T>arr[i];
    arr[i] = a;
    */
    a = load<T>(arr.__memory, 0);
    store<T>(arr.__memory, load<T>(arr.__memory + (i << typeShift)), 0);
    store<T>(arr.__memory + (i << typeShift), a);

    let x = 1;
    while ((y = (x << 1) + ((load<i32>(bitset + ((x >> 3) << intShift)) >> (x & 7)) & 1)) < i) {
      x = y;
    }

    while (x > 0) {
      a = load<T>(arr.__memory, 0);                 // a = <T>arr[0];
      b = load<T>(arr.__memory + (x << typeShift)); // b = <T>arr[x];

      if (comparator(a, b) < 0) {
        store<i32>(
          bitset + ((x >> 3) << intShift),
          load<i32>(bitset + ((x >> 3) << intShift)) ^ (1 << (x & 7))
        );

        store<T>(arr.__memory + (x << typeShift), a); // arr[x] = a;
        store<T>(arr.__memory, b, 0);                 // arr[0] = b;
      }
      x >>= 1;
    }
  }

  free_memory(bitset);

  /*
  let t  = <T>arr[1];
  arr[1] = <T>arr[0];
  arr[0] = t;
  */
  var t = load<T>(arr.__memory, sizeof<T>());
  store<T>(arr.__memory, load<T>(arr.__memory, 0), sizeof<T>());
  store<T>(arr.__memory, t, 0);

  return arr;
}
