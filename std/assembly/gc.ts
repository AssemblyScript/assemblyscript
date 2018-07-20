@builtin export declare function iterateRoots(fn: (ref: usize) => void): void; // tslint:disable-line

export namespace gc {

  export function allocate(size: usize, visitFn: (ref: usize) => void): usize {
    if (isDefined(__gc_allocate)) return __gc_allocate(size, visitFn); // tslint:disable-line
    WARNING("Calling 'gc.allocate' requires a garbage collector to be present.");
    return <usize>unreachable();
  }

  export function collect(): void {
    if (isDefined(__gc_collect)) { __gc_collect(); return; } // tslint:disable-line
    WARNING("Calling 'gc.collect' requires a garbage collector to be present.");
    unreachable();
  }

  export function link(parentRef: usize, childRef: usize): void {
    if (isDefined(__gc_link)) { __gc_link(parentRef, childRef); return; } // tslint:disable-line
    WARNING("Calling 'gc.link' requires a garbage collector to be present.");
    unreachable();
  }

  export function mark(ref: usize): void {
    if (isDefined(__gc_mark)) { __gc_mark(ref); return; } // tslint:disable-line
    WARNING("Calling 'gc.mark' requires a garbage collector to be present.");
    unreachable();
  }
}
