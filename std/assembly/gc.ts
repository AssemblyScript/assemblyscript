/** Garbage collector interface. */
export namespace gc {

  /** Gets the computed unique class id of a class type. */
  @builtin @unsafe export declare function classId<T>(): u32;

  /** Iterates reference root objects. */
  @builtin @unsafe export declare function iterateRoots(fn: (ref: usize) => void): void;

  /** Registers a managed object to be tracked by the garbage collector. */
  @stub @unsafe export function register(ref: usize): void {
    ERROR("stub: missing garbage collector");
  }

  /** Links a registered object with the registered object now referencing it. */
  @stub @unsafe export function link(ref: usize, parentRef: usize): void {
    ERROR("stub: missing garbage collector");
  }

  /** Marks an object as being reachable. */
  @stub @unsafe export function mark(ref: usize): void {
    ERROR("stub: missing garbage collector");
  }

  /** Performs a full garbage collection cycle. */
  @stub export function collect(): void {
    WARNING("stub: missing garbage collector");
  }
}

// TODO: move marking into userspace using builtins like iterateFields?
