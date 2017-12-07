/// <reference path="../../assembly.d.ts" />

/** A C-compatible Array class. */
@global()
class CArray<T> {

  /** Constructs a new C-Array of the specified capacity. */
  constructor(capacity: usize) {
    return unsafe_cast<usize,this>(Memory.allocate(capacity * sizeof<T>()));
  }

  /** Gets the element at the specified index using bracket notation. */
  @inline()
  "[]"(index: usize): T {
    return load<T>(unsafe_cast<this,usize>(this) + index * sizeof<T>());
  }

  /** Sets the element at the specified index using bracket notation. */
  @inline()
  "[]="(index: usize, value: T): T {
    store<T>(unsafe_cast<this,usize>(this) + index * sizeof<T>(), value);
    return value;
  }

  /** Disposes this instance and the memory associated with it. */
  dispose(): void {
    Memory.dispose(unsafe_cast<this,usize>(this));
  }
}
