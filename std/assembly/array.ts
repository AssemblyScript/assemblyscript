@global()
export class Array<T> {

  readonly capacity: i32;
  length: i32;
  ptr: usize;

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

  dispose(): void {
    store<i64>(changetype<this,usize>(this), 0);
    Heap.dispose(this.ptr);
    this.ptr = 0;
    Heap.dispose(changetype<this,usize>(this));
  }

  // TODO
}
