/* tslint:disable */

@builtin export declare function iterateRoots(fn: (ref: usize) => void): void;

export namespace gc {

  export function collect(): void {
    if (isDefined(__gc_collect)) { __gc_collect(); return; }
    WARNING("Calling 'gc.collect' requires a garbage collector to be present.");
    unreachable();
  }
}
