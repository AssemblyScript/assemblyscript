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
}

@unmanaged
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
