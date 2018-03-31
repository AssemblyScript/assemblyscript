
export class Array<T> {

  private __memory: usize;
  private __capacity: i32;  // capped to [0, 0x7fffffff]
  private __length: i32;    // capped to [0, __capacity]

  private __grow(newCapacity: i32): void {
    assert(newCapacity > this.__capacity);
    var newMemory = allocate_memory(<usize>newCapacity * sizeof<T>());
    if (this.__memory) {
      move_memory(newMemory, this.__memory, <usize>this.__capacity * sizeof<T>());
      free_memory(this.__memory);
    }
    this.__memory = newMemory;
    this.__capacity = newCapacity;
  }

  constructor(capacity: i32 = 0) {
    if (capacity < 0) {
      throw new RangeError("Invalid array length");
    }
    this.__memory = capacity
      ? allocate_memory(<usize>capacity * sizeof<T>())
      : 0;
    this.__capacity = this.__length = capacity;
  }

  every(callbackfn: (element: T, index: i32, array: Array<T>) => bool): bool {
    var toIndex: i32 = this.__length;
    var i: i32 = 0;
    while (i < toIndex && i < this.__length) {
      if (!callbackfn(load<T>(this.__memory + <usize>i * sizeof<T>()), i, this)) {
        return false;
      }
      i += 1;
    }
    return true;
  }

  findIndex(predicate: (element: T, index: i32, array: Array<T>) => bool): i32 {
    var toIndex: i32 = this.__length;
    var i: i32 = 0;
    while (i < toIndex && i < this.__length) {
      if (predicate(load<T>(this.__memory + <usize>i * sizeof<T>()), i, this)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }

  get length(): i32 {
    return this.__length;
  }

  set length(length: i32) {
    if (length < 0) {
      throw new RangeError("Invalid array length");
    }
    if (length > this.__capacity) {
      this.__grow(max(length, this.__capacity << 1));
    }
    this.__length = length;
  }

  @operator("[]")
  private __get(index: i32): T {
    if (<u32>index >= <u32>this.__capacity) {
      throw new Error("Index out of bounds"); // return changetype<T>(0) ?
    }
    return load<T>(this.__memory + <usize>index * sizeof<T>());
  }

  @operator("[]=")
  private __set(index: i32, value: T): void {
    if (index < 0) {
      throw new Error("Index out of bounds");
    }
    if (index >= this.__capacity) {
      this.__grow(max(index + 1, this.__capacity << 1));
    }
    store<T>(this.__memory + <usize>index * sizeof<T>(), value);
  }

  includes(searchElement: T, fromIndex: i32 = 0): bool {
    if (this.__length == 0 || fromIndex >= this.__length) {
      return false;
    }
    if (fromIndex < 0) {
      fromIndex = this.__length + fromIndex;
      if (fromIndex < 0) {
        fromIndex = 0;
      }
    }
    while (<u32>fromIndex < <u32>this.__length) {
      if (load<T>(this.__memory + <usize>fromIndex * sizeof<T>()) == searchElement) {
        return true;
      }
      ++fromIndex;
    }
    return false;
  }

  indexOf(searchElement: T, fromIndex: i32 = 0): i32 {
    if (this.__length == 0 || fromIndex >= this.__length) {
      return -1;
    }
    if (fromIndex < 0) {
      fromIndex = this.__length + fromIndex;
      if (fromIndex < 0) {
        fromIndex = 0;
      }
    }
    while (<u32>fromIndex < <u32>this.__length) {
      if (load<T>(this.__memory + <usize>fromIndex * sizeof<T>()) == searchElement) {
        return fromIndex;
      }
      ++fromIndex;
    }
    return -1;
  }

  lastIndexOf(searchElement: T, fromIndex: i32 = this.__length): i32 {
    if (this.__length == 0) {
      return -1;
    }
    if (fromIndex < 0) {
      fromIndex = this.__length + fromIndex;
    } else if (fromIndex >= this.__length) {
      fromIndex = this.__length - 1;
    }
    while (fromIndex >= 0) {
      if (load<T>(this.__memory + <usize>fromIndex * sizeof<T>()) == searchElement) {
        return fromIndex;
      }
      --fromIndex;
    }
    return -1;
  }

  push(element: T): i32 {
    if (this.__length == this.__capacity) {
      this.__grow(this.__capacity ? this.__capacity << 1 : 1);
    }
    store<T>(this.__memory + <usize>this.__length * sizeof<T>(), element);
    return ++this.__length;
  }

  pop(): T {
    if (this.__length < 1) {
      throw new RangeError("Array is empty"); // return changetype<T>(0) ?
    }
    return load<T>(this.__memory + <usize>--this.__length * sizeof<T>());
  }

  reduce<U>(
    callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accumulator: U = initialValue;
    var toIndex: i32 = this.__length;
    var i: i32 = 0;
    while (i < toIndex && i < this.__length) {
      accumulator = callbackfn(accumulator, load<T>(this.__memory + <usize>i * sizeof<T>()), i, this);
      i += 1;
    }
    return accumulator;
  }

  shift(): T {
    if (this.__length < 1) {
      throw new RangeError("Array is empty"); // return changetype<T>(0) ?
    }
    var element = load<T>(this.__memory);
    move_memory(
      this.__memory,
      this.__memory + sizeof<T>(),
      <usize>(this.__capacity - 1) * sizeof<T>()
    );
    set_memory(
      this.__memory + <usize>(this.__capacity - 1) * sizeof<T>(),
      0,
      sizeof<T>()
    );
    --this.__length;
    return element;
  }

  some(callbackfn: (element: T, index: i32, array: Array<T>) => bool): bool {
    var toIndex: i32 = this.__length;
    var i: i32 = 0;
    while (i < toIndex && i < this.__length) {
      if (callbackfn(load<T>(this.__memory + <usize>i * sizeof<T>()), i, this)) {
        return true;
      }
      i += 1;
    }
    return false;
  }

  unshift(element: T): i32 {
    var oldCapacity = this.__capacity;
    if (this.__length == oldCapacity) {
      // inlined __grow (avoids moving twice)
      let newCapacity: i32 = oldCapacity ? oldCapacity << 1 : 1;
      assert(newCapacity > this.__capacity);
      let newMemory = allocate_memory(<usize>newCapacity * sizeof<T>());
      if (this.__memory) {
        move_memory(
          newMemory + sizeof<T>(),
          this.__memory,
          <usize>oldCapacity * sizeof<T>()
        );
        free_memory(this.__memory);
      }
      this.__memory = newMemory;
      this.__capacity = newCapacity;
    } else {
      move_memory(
        this.__memory + sizeof<T>(),
        this.__memory,
        <usize>oldCapacity * sizeof<T>()
      );
    }
    store<T>(this.__memory, element);
    return ++this.__length;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Array<T> {
    if (begin < 0) {
      begin = this.__length + begin;
      if (begin < 0) {
        begin = 0;
      }
    } else if (begin > this.__length) {
      begin = this.__length;
    }
    if (end < 0) {
      end = this.__length + end;
    } else if (end > this.__length) {
      end = this.__length;
    }
    if (end < begin) {
      end = begin;
    }
    var capacity = end - begin;
    assert(capacity >= 0);
    var sliced = new Array<T>(capacity);
    if (capacity) {
      move_memory(
        sliced.__memory,
        this.__memory + <usize>begin * sizeof<T>(),
        <usize>capacity * sizeof<T>()
      );
    }
    return sliced;
  }

  splice(start: i32, deleteCount: i32 = i32.MAX_VALUE): void {
    if (deleteCount < 1) {
      return;
    }
    if (start < 0) {
      start = this.__length + start;
      if (start < 0) {
        start = 0;
      } else if (start >= this.__length) {
        return;
      }
    } else if (start >= this.__length) {
      return;
    }
    deleteCount = min(deleteCount, this.__length - start);
    move_memory(
      this.__memory + <usize>start * sizeof<T>(),
      this.__memory + <usize>(start + deleteCount) * sizeof<T>(),
      <usize>deleteCount * sizeof<T>()
    );
    this.__length -= deleteCount;
  }

  reverse(): Array<T> {
    for (let front: usize = 0, back: usize = <usize>this.__length - 1; front < back; ++front, --back) {
      let temp = load<T>(this.__memory + front * sizeof<T>());
      store<T>(this.__memory + front * sizeof<T>(), load<T>(this.__memory + back * sizeof<T>()));
      store<T>(this.__memory + back * sizeof<T>(), temp);
    }
    return this;
  }

  sort(comparator: (a: T, b: T) => i32 = createDefaultComparator<T>()): Array<T> {
    return sort<T>(this, comparator);
  }
}

@unmanaged
@sealed
export class CArray<T> {

  private constructor() {}

  @operator("[]")
  private __get(index: i32): T {
    if (index < 0) {
      throw new RangeError("Index out of range");
    }
    return load<T>(changetype<usize>(this) + <usize>index * sizeof<T>());
  }

  @operator("[]=")
  private __set(index: i32, value: T): void {
    if (index < 0) {
      throw new RangeError("Index out of range");
    }
    store<T>(changetype<usize>(this) + <usize>index * sizeof<T>(), value);
  }
}

/*
 * Internal methods
 */

// TODO remove this wrapper when indirect table landed
function createDefaultComparator<T>(): (a: T, b: T) => i32 {
  return (a: T, b: T): i32 => (
    <i32>(a > b) - <i32>(a < b)
  );
}

function insertionSort<T>(arr: Array<T>, comparator: (a: T, b: T) => i32): Array<T> {
  var a: T, b: T, j: i32;
  for (let i: i32 = 0, len: i32 = arr.length; i < len; i++) {
    a = load<T>(arr.__memory + i * sizeof<T>()); // a = <T>arr[i];
    j = i - 1;
    while (j >= 0) {
      b = load<T>(arr.__memory + j * sizeof<T>());  // b = <T>arr[j];
      if (comparator(a, b) < 0) {
        store<T>(arr.__memory + (j + 1) * sizeof<T>(), b); // arr[j + 1] = b;
        j--;
      } else break;
    }

    store<T>(arr.__memory + (j + 1) * sizeof<T>(), a); // arr[j + 1] = a;
  }

  return arr;
}

/* Weak Heap Sort implementation based on paper:
  http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.21.1863&rep=rep1&type=pdf
*/
function weakHeapSort<T>(arr: Array<T>, comparator: (a: T, b: T) => i32): Array<T> {
  var len: i32 = arr.length;
  var i: i32, j: i32, y: i32, p: i32, a: T, b: T;

  var blen = (len + 7) >> 3;
  var bitset = allocate_memory(blen * sizeof<i32>());

  // for (i = 0; i < blen; ++i) bitset[i] = 0;
  set_memory(bitset, 0, blen * sizeof<i32>());

  for (i = len - 1; i > 0; i--) {
    j = i;
    while ((j & 1) == ((load<i32>(bitset + (j >> 4) * sizeof<i32>()) >> ((j >> 1) & 7)) & 1)) {
      j >>= 1;
    }

    p = j >> 1;
    // a = <T>arr[p];
    // b = <T>arr[i];
    a = load<T>(arr.__memory + p * sizeof<T>());
    b = load<T>(arr.__memory + i * sizeof<T>());
    if (comparator(a, b) < 0) {
      // bitset[i >> 3] = <i32>bitset[i >> 3] ^ (1 << (i & 7));
      store<i32>(
        bitset + (i >> 3) * sizeof<i32>(),
        load<i32>(bitset + (i >> 3) * sizeof<i32>()) ^ (1 << (i & 7))
      );
      // arr[i] = a;
      // arr[p] = b;
      store<T>(arr.__memory + i * sizeof<T>(), a);
      store<T>(arr.__memory + p * sizeof<T>(), b);
    }
  }

  for (i = len - 1; i >= 2; i--) {
    /*
    a      = <T>arr[0];
    arr[0] = <T>arr[i];
    arr[i] = a;
    */
    a = load<T>(arr.__memory, 0);
    store<T>(arr.__memory, load<T>(arr.__memory + i * sizeof<T>()), 0);
    store<T>(arr.__memory + i * sizeof<T>(), a);

    let x = 1;
    // while ((y = (x << 1) + ((<i32>bitset[x >> 3] >> (x & 7)) & 1)) < i) {
    while ((y = (x << 1) + ((load<i32>(bitset + (x >> 3) * sizeof<i32>()) >> (x & 7)) & 1)) < i) {
      x = y;
    }

    while (x > 0) {
      // a = <T>arr[0];
      // b = <T>arr[x];
      a = load<T>(arr.__memory, 0);
      b = load<T>(arr.__memory + x * sizeof<T>());

      if (comparator(a, b) < 0) {
        // bitset[x >> 3] = <i32>bitset[x >> 3] ^ (1 << (x & 7));
        store<i32>(
          bitset + (x >> 3) * sizeof<i32>(),
          load<i32>(bitset + (x >> 3) * sizeof<i32>()) ^ (1 << (x & 7))
        );
        // arr[x] = a;
        // arr[0] = b;
        store<T>(arr.__memory + x * sizeof<T>(), a);
        store<T>(arr.__memory, b, 0);
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
  var t = load<T>(arr.__memory, 1 * sizeof<T>());
  store<T>(arr.__memory, load<T>(arr.__memory, 0), 1 * sizeof<T>());
  store<T>(arr.__memory, t, 0);

  return arr;
}

function sort<T>(arr: Array<T>, comparator: (a: T, b: T) => i32): Array<T> {
  var len = arr.length;

  if (len <= 1) return arr;

  if (len == 2) {
    let a = load<T>(arr.__memory, sizeof<T>()); // var a = <T>arr[1];
    let b = load<T>(arr.__memory, 0);           // var b = <T>arr[0];
    if (comparator(a, b) < 0) {
      store<T>(arr.__memory, b, sizeof<T>()); // arr[1] = b;
      store<T>(arr.__memory, a, 0);           // arr[0] = a;
    }
    return arr;
  }

  if (len <= 256) {
    return insertionSort<T>(arr, comparator);
  }

  return weakHeapSort<T>(arr, comparator);
}
