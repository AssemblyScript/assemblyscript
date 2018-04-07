import {
  defaultComparator,
  insertionSort,
  weakHeapSort
} from "./internal/array";

export class Array<T> {

  __memory: usize;
  __capacity: i32;  // capped to [0, 0x7fffffff]
  __length: i32;    // capped to [0, __capacity]

  private __grow(newCapacity: i32): void {
    var oldMemory = this.__memory;
    var oldCapacity = this.__capacity;
    assert(newCapacity > oldCapacity);
    var newMemory = allocate_memory(<usize>newCapacity * sizeof<T>());
    if (oldMemory) {
      move_memory(newMemory, oldMemory, <usize>oldCapacity * sizeof<T>());
      free_memory(oldMemory);
    }
    this.__memory = newMemory;
    this.__capacity = newCapacity;
  }

  constructor(capacity: i32 = 0) {
    if (capacity < 0) throw new RangeError("Invalid array length");
    this.__memory = capacity
      ? allocate_memory(<usize>capacity * sizeof<T>())
      : 0;
    this.__capacity = capacity;
    this.__length = capacity;
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
    if (length < 0) throw new RangeError("Invalid array length");
    if (length > this.__capacity) this.__grow(max(length, this.__capacity << 1));
    this.__length = length;
  }

  @operator("[]")
  private __get(index: i32): T {
    if (<u32>index >= <u32>this.__capacity) throw new Error("Index out of bounds");
    return load<T>(this.__memory + <usize>index * sizeof<T>());
  }

  @operator("[]=")
  private __set(index: i32, value: T): void {
    if (index < 0) throw new Error("Index out of bounds");
    var capacity = this.__capacity;
    if (index >= capacity) this.__grow(max(index + 1, capacity << 1));
    store<T>(this.__memory + <usize>index * sizeof<T>(), value);
  }

  includes(searchElement: T, fromIndex: i32 = 0): bool {
    var length = this.__length;
    if (length == 0 || fromIndex >= length) return false;
    if (fromIndex < 0) {
      fromIndex = length + fromIndex;
      if (fromIndex < 0) {
        fromIndex = 0;
      }
    }
    while (fromIndex < length) {
      if (load<T>(this.__memory + <usize>fromIndex * sizeof<T>()) == searchElement) return true;
      ++fromIndex;
    }
    return false;
  }

  indexOf(searchElement: T, fromIndex: i32 = 0): i32 {
    var length = this.__length;
    if (length == 0 || fromIndex >= length) {
      return -1;
    }
    if (fromIndex < 0) {
      fromIndex = length + fromIndex;
      if (fromIndex < 0) {
        fromIndex = 0;
      }
    }
    var memory = this.__memory;
    while (fromIndex < length) {
      if (load<T>(memory + <usize>fromIndex * sizeof<T>()) == searchElement) return fromIndex;
      ++fromIndex;
    }
    return -1;
  }

  lastIndexOf(searchElement: T, fromIndex: i32 = this.__length): i32 {
    var length = this.__length;
    if (length == 0) return -1;
    if (fromIndex < 0) {
      fromIndex = length + fromIndex;
    } else if (fromIndex >= length) {
      fromIndex = length - 1;
    }
    var memory = this.__memory;
    while (fromIndex >= 0) {
      if (load<T>(memory + <usize>fromIndex * sizeof<T>()) == searchElement) return fromIndex;
      --fromIndex;
    }
    return -1;
  }

  push(element: T): i32 {
    var capacity = this.__capacity;
    var length = this.__length;
    if (length == capacity) {
      this.__grow(capacity ? capacity << 1 : 1);
    }
    store<T>(this.__memory + <usize>length * sizeof<T>(), element);
    this.__length = ++length;
    return length;
  }

  pop(): T {
    var length = this.__length;
    if (length < 1) throw new RangeError("Array is empty");
    var element = load<T>(this.__memory + <usize>--length * sizeof<T>());
    this.__length = length;
    return element;
  }

  reduce<U>(
    callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U,
    initialValue: U
  ): U {
    var accumulator: U = initialValue;
    var toIndex: i32 = this.__length;
    var i: i32 = 0;
    while (i < toIndex && i < /* might change */ this.__length) {
      accumulator = callbackfn(accumulator, load<T>(this.__memory + <usize>i * sizeof<T>()), i, this);
      i += 1;
    }
    return accumulator;
  }

  shift(): T {
    var length = this.__length;
    if (length < 1) throw new RangeError("Array is empty");
    var memory = this.__memory;
    var capacity = this.__capacity;
    var element = load<T>(memory);
    move_memory(
      memory,
      memory + sizeof<T>(),
      <usize>(capacity - 1) * sizeof<T>()
    );
    set_memory(
      memory + <usize>(capacity - 1) * sizeof<T>(),
      0,
      sizeof<T>()
    );
    this.__length = length - 1;
    return element;
  }

  some(callbackfn: (element: T, index: i32, array: Array<T>) => bool): bool {
    var toIndex: i32 = this.__length;
    var i: i32 = 0;
    while (i < toIndex && i < /* might change */ this.__length) {
      if (callbackfn(load<T>(this.__memory + <usize>i * sizeof<T>()), i, this)) return true;
      i += 1;
    }
    return false;
  }

  unshift(element: T): i32 {
    var memory = this.__memory;
    var capacity = this.__capacity;
    var length = this.__length;
    if (this.__length == capacity) {
      // inlined __grow (avoids moving twice)
      let newCapacity: i32 = capacity ? capacity << 1 : 1;
      assert(newCapacity > capacity);
      let newMemory = allocate_memory(<usize>newCapacity * sizeof<T>());
      if (memory) {
        move_memory(
          newMemory + sizeof<T>(),
          memory,
          <usize>capacity * sizeof<T>()
        );
        free_memory(memory);
      }
      this.__memory = newMemory;
      this.__capacity = newCapacity;
      memory = newMemory;
    } else {
      move_memory(
        memory + sizeof<T>(),
        memory,
        <usize>capacity * sizeof<T>()
      );
    }
    store<T>(memory, element);
    this.__length = ++length;
    return length;
  }

  slice(begin: i32 = 0, end: i32 = i32.MAX_VALUE): Array<T> {
    var length = this.__length;
    if (begin < 0) {
      begin = length + begin;
      if (begin < 0) {
        begin = 0;
      }
    } else if (begin > length) {
      begin = length;
    }
    if (end < 0) {
      end = length + end;
    } else if (end > length) {
      end = length;
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
    var length = this.__length;
    if (start < 0) {
      start = length + start;
      if (start < 0) {
        start = 0;
      } else if (start >= length) {
        return;
      }
    } else if (start >= length) {
      return;
    }
    deleteCount = min(deleteCount, length - start);
    var memory = this.__memory;
    move_memory(
      memory + <usize>start * sizeof<T>(),
      memory + <usize>(start + deleteCount) * sizeof<T>(),
      <usize>deleteCount * sizeof<T>()
    );
    this.__length = length - deleteCount;
  }

  reverse(): Array<T> {
    var memory = this.__memory;
    for (let front: usize = 0, back: usize = <usize>this.__length - 1; front < back; ++front, --back) {
      let temp = load<T>(memory + front * sizeof<T>());
      store<T>(memory + front * sizeof<T>(), load<T>(memory + back * sizeof<T>()));
      store<T>(memory + back * sizeof<T>(), temp);
    }
    return this;
  }

  sort(comparator: (a: T, b: T) => i32 = defaultComparator<T>()): Array<T> {
    var len = this.length;
    if (len <= 1) return this;
    if (len == 2) {
      let memory = this.__memory;
      let a = load<T>(memory, sizeof<T>()); // var a = <T>arr[1];
      let b = load<T>(memory, 0);           // var b = <T>arr[0];
      if (comparator(a, b) < 0) {
        store<T>(memory, b, sizeof<T>()); // arr[1] = b;
        store<T>(memory, a, 0);           // arr[0] = a;
      }
      return this;
    }
    return len <= 256
      ? insertionSort<T>(this, comparator)
      : weakHeapSort<T>(this, comparator);
  }
}
