/// <reference path="../../assembly.d.ts" />

@global()
class Array<T> {

  length: i32;
  readonly capacity: i32;
  readonly data: usize;

  constructor(capacity: i32) {
    if (capacity < 0)
      throw new RangeError("capacity out of bounds");
    this.length = capacity;
    this.capacity = capacity;
    this.data = Memory.allocate(sizeof<T>() * capacity);
  }
}
