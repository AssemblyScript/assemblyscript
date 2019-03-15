/** Garbage collector interface. */
export namespace gc {

  /** Whether the garbage collector interface is implemented. */
  // @ts-ignore: decorator
  @lazy
  export const IMPLEMENTED: bool = isDefined(
    // @ts-ignore: stub
    __gc_register
  );

  /** Registers a managed object to be tracked by the garbage collector. */
  // @ts-ignore: decorator
  @unsafe @inline
  export function register(ref: usize): void {
    // @ts-ignore: stub
    if (isDefined(__gc_register)) __gc_register(ref);
    else ERROR("missing implementation: gc.register");
  }

  /** Links a registered object with the registered object now referencing it. */
  // @ts-ignore: decorator
  @unsafe @inline
  export function link(ref: usize, parentRef: usize): void {
    // @ts-ignore: stub
    if (isDefined(__gc_link)) __gc_link(ref, parentRef);
    else ERROR("missing implementation: gc.link");
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
