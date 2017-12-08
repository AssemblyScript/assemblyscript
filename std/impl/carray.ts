/// <reference path="../../assembly.d.ts" />

@global()
@struct()
class CArray<T> {

  constructor(capacity: usize) {
    return changetype<usize, this>(Heap.allocate(capacity * sizeof<T>()));
  }

  @inline()
  "[]"(index: usize): T {
    return load<T>(changetype<this, usize>(this) + index * sizeof<T>());
  }

  @inline()
  "[]="(index: usize, value: T): T {
    store<T>(changetype<this, usize>(this) + index * sizeof<T>(), value);
    return value;
  }

  dispose(): void {
    Heap.dispose(changetype<this, usize>(this));
  }
}
