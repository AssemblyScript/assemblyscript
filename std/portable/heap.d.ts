/** A static class representing the heap. */
declare class Heap {

  /** Allocates a chunk of memory and returns a pointer to it. */
  static allocate(size: usize): usize;

  /** Disposes a chunk of memory by its pointer. */
  static dispose(ptr: usize): void;

  /** Gets the amount of used heap space, in bytes. */
  static readonly used: usize;

  /** Gets the amount of free heap space, in bytes. */
  static readonly free: usize;

  /** Gets the size of the heap, in bytes. */
  static readonly size: usize;

  /** Copies a chunk of memory from one location to another. */
  static copy(dest: usize, src: usize, n: usize): usize;
}
