export namespace gc {

  @builtin export declare function iterateRoots(fn: (ref: usize) => void): void; // tslint:disable-line

  export function allocate(size: usize, visitFn: (ref: usize) => void): usize {
    if (isDefined(__gc_allocate)) return __gc_allocate(size, visitFn); // tslint:disable-line
    WARNING("Calling 'gc.allocate' requires a garbage collector to be present.");
    return <usize>unreachable();
  }

  export function mark(ref: usize): void {
    if (isDefined(__gc_mark)) return __gc_mark(ref); // tslint:disable-line
    WARNING("Calling 'gc.mark' requires a garbage collector to be present.");
    unreachable();
  }

  export function link(parentRef: usize, childRef: usize): void {
    if (isDefined(__gc_link)) return __gc_link(parentRef, childRef); // tslint:disable-line
    WARNING("Calling 'gc.link' requires a garbage collector to be present.");
    unreachable();
  }

  export function collect(): void {
    if (isDefined(__gc_collect)) return __gc_collect(); // tslint:disable-line
    WARNING("Calling 'gc.collect' requires a garbage collector to be present.");
    unreachable();
  }
}
