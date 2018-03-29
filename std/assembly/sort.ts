/* Weak Heap Sort implementation based on paper:
  http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.21.1863&rep=rep1&type=pdf
*/

export type Comparator<T> = (a: T, b: T) => i32;

function conditionalSwap<T>(arr: Array<T>, i: i32, j: i32, comparator: Comparator<T>): Array<T> {
  var a = arr[i];
  var b = arr[j];
  if (comparator(a, b) < 0) {
    arr[i] = b;
    arr[j] = a;
  }
  return arr;
}

function insertionSort<T>(arr: Array<T>, comparator: Comparator<T>): Array<T> {
  var a: T, b: T, j: i32;
  for (let i: i32 = 0, len: i32 = arr.length; i < len; i++) {
    a = arr[i];
    j = i - 1;
    while (j >= 0) {
      b = arr[j];
      if (comparator(a, b) < 0) {
        arr[j + 1] = b;
        j--;
      } else break;
    }

    arr[j + 1] = a;
  }

  return arr;
}

function weakHeapSort<T>(arr: Array<T>, comparator: Comparator<T>): Array<T> {
  var len: i32 = arr.length;
  var i: i32, j: i32, y: i32, p: i32, a: T, b: T;

  if (len > 1) {
    let blen = (len + 7) >>> 3;
    let bitset = new Array<i32>(blen);

    for (i = 0; i < blen; ++i) bitset[i] = 0;

    for (i = len - 1; i > 0; i--) {
      j = i;
      while ((j & 1) === ((bitset[j >>> 4] >>> ((j >>> 1) & 7)) & 1)) {
        j >>>= 1;
      }

      p = j >>> 1;
      a = arr[p];
      b = arr[i];
      if (comparator(a, b) < 0) {
        bitset[i >>> 3] ^= 1 << (i & 7);
        arr[i] = a;
        arr[p] = b;
      }
    }

    for (i = len - 1; i >= 2; i--) {
      a      = arr[0];
      arr[0] = arr[i];
      arr[i] = a;

      let x = 1;
      while ((y = (x << 1) + ((bitset[x >>> 3] >>> (x & 7)) & 1)) < i) {
        x = y;
      }

      while (x > 0) {
        a = arr[0];
        b = arr[x];
        if (comparator(a, b) < 0) {
          bitset[i >>> 3] ^= 1 << (x & 7);
          arr[x] = a;
          arr[0] = b;
        }
        x >>>= 1;
      }
    }

    let t  = arr[1];
    arr[1] = arr[0];
    arr[0] = t;
  }

  return arr;
}

export function sort<T>(arr: Array<T>, comparator: Comparator<T>): Array<T> {
  var len = arr.length;

  if (len <= 1)   return arr;
  if (len == 2)   return conditionalSwap<T>(arr, 1, 0, comparator);
  if (len <= 256) return insertionSort<T>(arr, comparator);

  return weakHeapSort<T>(arr, comparator);
}
