// const prime1: u32 = 73;
// const prime2: u32 = 5009;

export class Set<T> {

  private __memory: usize;
  private __capacity: u32;
  private __size: u32;

  constructor() {
    this.__memory = 0;
    this.__capacity = this.__size = 0;
  }

  get size(): i32 {
    return <i32>this.__size;
  }

  // FIXME: not a proper set implementation, just a filler

  has(value: T): bool {
    assert(this != null);

    for (let index: usize = 0, limit: usize = this.__size; index < limit; ++index) {
      if (load<T>(this.__memory + index * sizeof<T>()) == value) {
        return true;
      }
    }
    return false;
  }

  add(value: T): Set<T> {
    assert(this != null);

    if (this.__size >= this.__capacity) {
      let newCapacity = max(this.__capacity << 1, 8);
      let newMemory = allocate_memory(<usize>newCapacity * sizeof<T>());
      if (this.__memory) {
        move_memory(newMemory, this.__memory, <usize>this.__capacity * sizeof<T>());
        free_memory(this.__memory);
      }
      this.__capacity = newCapacity;
      this.__memory = newMemory;
    }
    store<T>(this.__memory + <usize>this.__size * sizeof<T>(), value);
    ++this.__size;
    return this;
  }

  delete(value: T): bool {
    assert(this != null);

    for (let index: usize = 0, limit: usize = this.__size; index < limit; ++index) {
      if (load<T>(this.__memory + index * sizeof<T>()) == value) {
        if (index + 1 < limit) {
          move_memory(
            this.__memory + index * sizeof<T>(),
            this.__memory + (index + 1) * sizeof<T>(),
            limit - index - 1
          );
        }
        --this.__size;
        return true;
      }
    }
    return false;
  }

  clear(): void {
    assert(this != null);

    this.__size = 0;
  }

  // TODO: think about iterators
}

// class SetIterator<T> extends Iterator<T> {

//   get done(): bool {
//     throw new Error("not implemented");
//   }

//   next(): T {
//     throw new Error("not implemented");
//   }
// }
