import { runtime } from "./runtime";

/** Garbage collector interface. */
export namespace gc {

  /** Whether the garbage collector interface is implemented. */
  // @ts-ignore: decorator
  @lazy
  export const implemented: bool = isDefined(
    // @ts-ignore: stub
    __gc_register
  );

  /** Gets the computed unique class id of a class type. */
  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function classId<T>(): u32;

  /** Iterates reference root objects. */
  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function iterateRoots(fn: (ref: usize) => void): void;

  /** Registers a managed object to be tracked by the garbage collector. */
  // @ts-ignore: decorator
  @unsafe @inline
  export function register<T>(ref: usize): T {
    runtime.unrefUnregistered(ref).classId = classId<T>();
    // @ts-ignore: stub
    if (isDefined(__gc_register)) __gc_register(ref);
    return changetype<T>(ref);
  }

  /** Links a registered object with the registered object now referencing it. */
  // @ts-ignore: decorator
  @unsafe @inline
  export function link<T, TParent>(ref: T, parentRef: TParent): void {
    assert(changetype<usize>(ref) >= HEAP_BASE + runtime.Header.SIZE); // must be a heap object
    var header = changetype<runtime.Header>(changetype<usize>(ref) - runtime.Header.SIZE);
    assert(header.classId != runtime.Header.MAGIC && header.gc1 != 0 && header.gc2 != 0); // must be registered
    // @ts-ignore: stub
    if (isDefined(__gc_link)) __gc_link(ref, parentRef);
  }

  /** Marks an object as being reachable. */
  // @ts-ignore: decorator
  @unsafe
  export function mark(ref: usize): void {
    // @ts-ignore: stub
    if (isDefined(__gc_mark)) __gc_mark(ref);
    else ERROR("missing implementation: gc.mark");
  }

  /** Performs a full garbage collection cycle. */
  export function collect(): void {
    // @ts-ignore: stub
    if (isDefined(__gc_collect)) __gc_collect();
    else WARNING("missing implementation: gc.collect");
  }
}

// TODO: move marking into userspace using builtins like iterateFields?
