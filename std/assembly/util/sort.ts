import { compareImpl } from "./string";

type Comparator<T> = (a: T, b: T) => i32;

// @ts-ignore: decorator
@lazy @inline const EMPTY = u32.MAX_VALUE;
// @ts-ignore: decorator
@inline const INSERTION_SORT_THRESHOLD = 48;
// @ts-ignore: decorator
@inline const MIN_RUN_LENGTH = 32;

// @ts-ignore: decorator
@inline
function log2u(n: u32): u32 {
  return 31 - clz(n);
}

// @ts-ignore: decorator
@inline
export function COMPARATOR<T>(): Comparator<T> {
  if (isInteger<T>()) {
    if (isSigned<T>() && sizeof<T>() <= 4) {
      return (a, b) => i32(a) - i32(b);
    } else {
      return (a, b) => i32(a > b) - i32(a < b);
    }
  } else if (isFloat<T>()) {
    if (sizeof<T>() == 4) {
      return (a, b) => {
        var ia = reinterpret<i32>(f32(a));
        var ib = reinterpret<i32>(f32(b));
        ia ^= ia >> 31 >>> 1;
        ib ^= ib >> 31 >>> 1;
        return i32(ia > ib) - i32(ia < ib);
      };
    } else {
      return (a, b) => {
        var ia = reinterpret<i64>(f64(a));
        var ib = reinterpret<i64>(f64(b));
        ia ^= ia >> 63 >>> 1;
        ib ^= ib >> 63 >>> 1;
        return i32(ia > ib) - i32(ia < ib);
      };
    }
  } else if (isString<T>()) {
    return (a, b) => {
      if (a === b || a === null || b === null) return 0;
      var alen = changetype<string>(a).length;
      var blen = changetype<string>(b).length;
      if (!(alen | blen)) return 0;
      if (!alen) return -1;
      if (!blen) return  1;
      let res = compareImpl(
        changetype<string>(a), 0,
        changetype<string>(b), 0,
        <usize>min(alen, blen)
      );
      return res ? res : alen - blen;
    };
  } else {
    return (a, b) => i32(a > b) - i32(a < b);
  }
}

// Power Sort implementation (stable) from paper "Nearly-Optimal Mergesorts"
// https://arxiv.org/pdf/1805.04154.pdf
// This method usually outperform TimSort.
// TODO: refactor c >>> 31 to c < 0 when binaryen will support this opt
export function SORT<T>(
  ptr: usize,
  len: i32,
  comparator: Comparator<T>
): void {
  if (len <= INSERTION_SORT_THRESHOLD) {
    if (len <= 1) return;
    if (ASC_SHRINK_LEVEL < 1) {
      switch (len) {
        case 3: {
          let a = load<T>(ptr, 0);
          let b = load<T>(ptr, 1 << alignof<T>());
          let c = comparator(a, b) > 0;
          store<T>(ptr, select<T>(b, a, c), 0);
          a = select<T>(a, b, c);
          b = load<T>(ptr, 2 << alignof<T>());
          c = comparator(a, b) > 0;
          store<T>(ptr, select<T>(b, a, c), 1 << alignof<T>());
          store<T>(ptr, select<T>(a, b, c), 2 << alignof<T>());
        }
        case 2: {
          let a = load<T>(ptr, 0);
          let b = load<T>(ptr, 1 << alignof<T>());
          let c = comparator(a, b) > 0;
          store<T>(ptr, select<T>(b, a, c), 0);
          store<T>(ptr, select<T>(a, b, c), 1 << alignof<T>());
          return;
        }
      }
    }
    insertionSort<T>(ptr, 0, len - 1, 0, comparator);
    return;
  }

  var lgPlus2         = log2u(len) + 2;
  var lgPlus2Size     = lgPlus2 << alignof<u32>();
  var leftRunStartBuf = __alloc(lgPlus2Size << 1);
  var leftRunEndBuf   = leftRunStartBuf + lgPlus2Size;

  for (let i: u32 = 0; i < lgPlus2; ++i) {
    store<u32>(leftRunStartBuf + (<usize>i << alignof<u32>()), EMPTY);
  }

  var buffer = __alloc(len << alignof<T>());

  var hi   = len - 1;
  var endA = extendRunRight<T>(ptr, 0, hi, comparator);
  var lenA = endA + 1;

  if (lenA < MIN_RUN_LENGTH) {
    endA = min(hi, MIN_RUN_LENGTH - 1);
    insertionSort<T>(ptr, 0, endA, lenA, comparator);
  }

  var top: u32 = 0, startA = 0;
  while (endA < hi) {
    let startB = endA + 1;
    let endB = extendRunRight<T>(ptr, startB, hi, comparator);
    let lenB = endB - startB + 1;

    if (lenB < MIN_RUN_LENGTH) {
      endB = min(hi, startB + MIN_RUN_LENGTH - 1);
      insertionSort<T>(ptr, startB, endB, lenB, comparator);
    }

    let k = nodePower(0, hi, startA, startB, endB);

    for (let i = top; i > k; --i) {
      let start = load<u32>(leftRunStartBuf + (<usize>i << alignof<u32>()));
      if (start != EMPTY) {
        mergeRuns<T>(
          ptr,
          start,
          load<u32>(leftRunEndBuf + (<usize>i << alignof<u32>())) + 1,
          endA,
          buffer,
          comparator
        );
        startA = start;
        store<u32>(leftRunStartBuf + (<usize>i << alignof<u32>()), EMPTY);
      }
    }

    store<u32>(leftRunStartBuf + (<usize>k << alignof<u32>()), startA);
    store<u32>(leftRunEndBuf   + (<usize>k << alignof<u32>()), endA);
    startA = startB;
    endA = endB;
    top = k;
  }

  for (let i = top; i != 0; --i) {
    let start = load<u32>(leftRunStartBuf + (<usize>i << alignof<u32>()));
    if (start != EMPTY) {
      mergeRuns<T>(
        ptr,
        start,
        load<u32>(leftRunEndBuf + (<usize>i << alignof<u32>())) + 1,
        hi,
        buffer,
        comparator
      );
    }
  }
  // dealloc aux buffers
  __free(buffer);
  __free(leftRunStartBuf);
}

function insertionSort<T>(
  ptr: usize,
  left: i32,
  right: i32,
  presorted: i32,
  comparator: Comparator<T>
): void {
  if (ASC_SHRINK_LEVEL >= 1) {
    // slightly improved original insertion sort
    for (let i = left + presorted; i <= right; ++i) {
      let j = i - 1;
      let a = load<T>(ptr + (<usize>i << alignof<T>()));
      while (j >= left) {
        let b = load<T>(ptr + (<usize>j << alignof<T>()));
        if (comparator(a, b) < 0) {
          store<T>(ptr + (<usize>j << alignof<T>()), b, 1 << alignof<T>()); --j;
        } else break;
      }
      store<T>(ptr + (<usize>j << alignof<T>()), a, 1 << alignof<T>());
    }
  } else {
    // even-odd two-way insertion sort which allow increase minRunLen
    let range = right - left + 1;
    let i = left + select(range & 1, presorted - ((range - presorted) & 1), presorted == 0);
    for (; i <= right; i += 2) {
      let a = load<T>(ptr + (<usize>i << alignof<T>()), 0);
      let b = load<T>(ptr + (<usize>i << alignof<T>()), 1 << alignof<T>());
      let min = b, max = a;
      if (comparator(a, b) <= 0) {
        min = a, max = b;
      }
      let j = i - 1;
      while (j >= left) {
        a = load<T>(ptr + (<usize>j << alignof<T>()));
        if (comparator(a, max) > 0) {
          store<T>(ptr + (<usize>j << alignof<T>()), a, 2 << alignof<T>()); --j;
        } else break;
      }
      store<T>(ptr + (<usize>j << alignof<T>()), max, 2 << alignof<T>());
      while (j >= left) {
        a = load<T>(ptr + (<usize>j << alignof<T>()));
        if (comparator(a, min) > 0) {
          store<T>(ptr + (<usize>j << alignof<T>()), a, 1 << alignof<T>()); --j;
        } else break;
      }
      store<T>(ptr + (<usize>j << alignof<T>()), min, 1 << alignof<T>());
    }
  }
}

function nodePower(left: u32, right: u32, startA: u32, startB: u32, endB: u32): u32 {
  var n: u64 = right - left + 1;
  var s = startB - (left << 1);
  var l = startA + s;
  var r = endB   + s + 1;
  var a = (<u64>l << 30) / n;
  var b = (<u64>r << 30) / n;
  return clz(<u32>(a ^ b));
}

function extendRunRight<T>(
  ptr: usize,
  i: i32,
  right: i32,
  comparator: Comparator<T>
): i32 {
  if (i == right) return i;
  var j = i;
  if (comparator(
    load<T>(ptr + (<usize>  j << alignof<T>())),
    load<T>(ptr + (<usize>++j << alignof<T>()))
  ) > 0) {
    while (
      j < right &&
      (comparator(
        load<T>(ptr + (<usize>j << alignof<T>()), 1 << alignof<T>()),
        load<T>(ptr + (<usize>j << alignof<T>()))
      ) >>> 31) // < 0
    ) ++j;
    // reverse
    let k = j;
    while (i < k) {
      let tmp = load<T>(ptr + (<usize>i << alignof<T>()));
      store<T>(ptr + (<usize>i << alignof<T>()), load<T>(ptr + (<usize>k << alignof<T>()))); ++i;
      store<T>(ptr + (<usize>k << alignof<T>()), tmp); --k;
    }
  } else {
    while (
      j < right &&
      comparator(
        load<T>(ptr + (<usize>j << alignof<T>()), 1 << alignof<T>()),
        load<T>(ptr + (<usize>j << alignof<T>()))
      ) >= 0
    ) ++j;
  }
  return j;
}

// Merges arr[l..m - 1] and arr[m..r]
function mergeRuns<T>(
  ptr: usize,
  l: i32,
  m: i32,
  r: i32,
  buffer: usize,
  comparator: Comparator<T>
): void {
  --m;
  var i: i32, j: i32, t = r + m;
  for (i = m + 1; i > l; --i) {
    store<T>(
      buffer + (<usize>(i - 1) << alignof<T>()),
      load<T>(ptr + (<usize>(i - 1) << alignof<T>()))
    );
  }
  for (j = m; j < r; ++j) {
    store<T>(
      buffer + (<usize>(t - j) << alignof<T>()),
      load<T>(ptr + (<usize>j << alignof<T>()), 1 << alignof<T>())
    );
  }
  for (let k = l; k <= r; ++k) {
    let a = load<T>(buffer + (<usize>j << alignof<T>()));
    let b = load<T>(buffer + (<usize>i << alignof<T>()));
    if (comparator(a, b) < 0) {
      store<T>(ptr + (<usize>k << alignof<T>()), a);
      --j;
    } else {
      store<T>(ptr + (<usize>k << alignof<T>()), b);
      ++i;
    }
  }
}
