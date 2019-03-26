/// <reference path="./collector/index.d.ts" />

/** Garbage collector interface. */
export namespace gc {

  /** Whether the garbage collector interface is implemented. */
  // @ts-ignore: decorator
  @lazy
  export const IMPLEMENTED: bool = isDefined(__ref_collect);

  /** Performs a full garbage collection cycle. */
  export function collect(): void {
    if (isDefined(__ref_collect)) __ref_collect();
    else WARNING("missing implementation: gc.collect");
  }
}
