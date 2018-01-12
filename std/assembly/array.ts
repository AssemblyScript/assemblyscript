export class Array<T> {

  private ptr: usize;

  readonly capacity: i32;
  length: i32;

  constructor(capacity: i32 = 0) {
    if (capacity < 0)
      throw new RangeError("invalid array length");
    this.capacity = this.length = capacity;
    if (capacity > 0) {
      this.ptr = Heap.allocate(<usize>capacity);
    } else {
      this.ptr = 0;
    }
  }

  @operator("[]")
  private __get(index: i32): T {
    assert(index > 0 && index < this.capacity);
    throw new Error("not implemented");
  }

  @operator("[]=")
  private __set(index: i32, value: T): void {
    assert(index > 0 && index < this.capacity);
    throw new Error("not implemented");
  }

  dispose(): void {
    store<i64>(changetype<usize>(this), 0);
    Heap.dispose(this.ptr);
    this.ptr = 0;
    Heap.dispose(changetype<usize>(this));
  }

  // TODO
}

@struct
export class CArray<T> {

  private constructor() {}

  @operator("[]")
  private __get(index: usize): T {
    return load<T>(changetype<usize>(this) + index * sizeof<T>());
  }

  @operator("[]=")
  private __set(index: usize, value: T): void {
    store<T>(changetype<usize>(this) + index * sizeof<T>(), value);
  }
}
