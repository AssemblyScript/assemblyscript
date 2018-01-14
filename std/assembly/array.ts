export class Array<T> {

  private __memory: usize;
  private __capacity: i32;
  length: i32;

  constructor(capacity: i32 = 0) {
    if (capacity < 0)
      throw new RangeError("invalid array length");
    this.__capacity = this.length = capacity;
    this.__memory = capacity > 0 ? allocate_memory(<usize>capacity * sizeof<T>()) : 0;
  }

  @operator("[]")
  private __get(index: i32): T {
    if (<u32>index >= this.__capacity)
      throw new RangeError("index out of range");
    return load<T>(this.__memory + <usize>index * sizeof<T>());
  }

  @operator("[]=")
  private __set(index: i32, value: T): void {
    if (<u32>index >= this.__capacity)
      throw new RangeError("index out of range");
    store<T>(this.__memory + <usize>index * sizeof<T>(), value);
  }

  indexOf(searchElement: T, fromIndex: i32 = 0): i32 {
    if (<u32>fromIndex >= this.__capacity)
      throw new RangeError("fromIndex out of range");
    for (var index: usize = <usize>fromIndex, length: usize = min<u32>(this.length, this.__capacity); index < length; ++index)
      if (load<T>(this.__memory + index * sizeof<T>()) == searchElement)
        return index;
    return -1;
  }

  private __grow(newCapacity: i32): void {
    assert(newCapacity > this.__capacity);
    var newMemory = allocate_memory(<usize>newCapacity * sizeof<T>());
    if (this.__memory) {
      move_memory(newMemory, this.__memory, this.__capacity * sizeof<T>());
      free_memory(this.__memory);
    }
    this.__memory = newMemory;
    this.__capacity = newCapacity;
  }

  push(element: T): i32 {
    if (<u32>this.length >= this.__capacity)
      this.__grow(max(this.length + 1, this.__capacity << 1));
    store<T>(this.__memory + <usize>this.length * sizeof<T>(), element);
    return ++this.length;
  }

  pop(): T {
    if (this.length < 1 || <u32>this.length > this.__capacity)
      throw new RangeError("index out of range");
    --this.length;
    return load<T>(this.__memory + <usize>this.length * sizeof<T>());
  }

  shift(): T {
    if (this.length < 1 || <u32>this.length > this.__capacity)
      throw new RangeError("index out of range");
    var element = load<T>(this.__memory);
    move_memory(this.__memory, this.__memory + sizeof<T>(), (this.__capacity - 1) * sizeof<T>());
    set_memory(this.__memory + (this.__capacity - 1) * sizeof<T>(), 0, sizeof<T>());
    --this.length;
    return element;
  }

  unshift(element: T): i32 {
    var oldCapacity = this.__capacity;
    if (<u32>this.length >= oldCapacity)
      this.__grow(max(this.length + 1, oldCapacity * 2));

    // FIXME: this is inefficient because of two copies, one in __grow and one here
    // move_memory(this.__memory + sizeof<T>(), this.__memory, oldCapacity * sizeof<T>());

    if (oldCapacity)
      for (var index: usize = oldCapacity; index > 0; --index)
        store<T>(this.__memory + index * sizeof<T>(), load<T>(this.__memory + (index - 1) * sizeof<T>()));

    store<T>(this.__memory, element);
    return ++this.length;
  }
}

@explicit
export class CArray<T> {

  private constructor() {}

  @operator("[]")
  private __get(index: i32): T {
    if (index < 0)
      throw new RangeError("index out of range");
    return load<T>(changetype<usize>(this) + <usize>index * sizeof<T>());
  }

  @operator("[]=")
  private __set(index: i32, value: T): void {
    if (index < 0)
      throw new RangeError("index out of range");
    store<T>(changetype<usize>(this) + <usize>index * sizeof<T>(), value);
  }
}
