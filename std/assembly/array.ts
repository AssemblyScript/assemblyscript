// Multiple options:
// 1. C-like with no 'length' or 'push'
// 2. Descriptors that can be constructed from lower level arrays

class Array<T> {

  readonly capacity: i32;
  length: i32;
  ptr: usize;

  static fromPtr<T>(ptr: usize, capacity: i32): Array<T> {
    assert(capacity >= 0);
    const arr: Array<T> = new Array(0);
    store<i32>(changetype<Array<T>, usize>(arr), capacity);
    arr.length = ptr;
    arr.ptr = ptr;
    return arr;
  }

  constructor(capacity: i32 = 0) {
    assert(capacity >= 0);
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
}
