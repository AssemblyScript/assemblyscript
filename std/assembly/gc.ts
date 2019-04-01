/// <reference path="./collector/index.d.ts" />

import { E_NOTIMPLEMENTED } from "./util/error";

// @ts-ignore
@lazy
var GC_ROOT = new Set<usize>();

/** Garbage collector interface. */
export namespace gc {

  /** Whether the garbage collector interface is implemented. */
  // @ts-ignore: decorator
  @lazy
  export const implemented: bool = isDefined(__ref_collect);

  /** Performs a full garbage collection cycle. */
  export function collect(): void {
    if (isDefined(__ref_collect)) __ref_collect();
    else throw new Error(E_NOTIMPLEMENTED);
  }

  /** Retains a managed object externally, making sure that it doesn't become collected. */
  // @ts-ignore: decorator
  @unsafe
  export function retain(ref: usize): void {
    var root = GC_ROOT;
    if (!root.has(ref)) {
      root.add(ref);
      if (implemented) {
        if (isDefined(__ref_link)) __ref_link(ref, changetype<usize>(root));
        else if (isDefined(__ref_retain)) __ref_retain(ref);
      }
    }
  }

  /** Releases a managed object externally, allowing it to become collected. */
  // @ts-ignore: decorator
  @unsafe
  export function release(ref: usize): void {
    var root = GC_ROOT;
    if (root.has(ref)) {
      root.delete(ref);
      if (implemented) {
        if (isDefined(__ref_unlink)) __ref_unlink(ref, changetype<usize>(root));
        else if (isDefined(__ref_release)) __ref_release(ref);
      }
    }
  }
}
