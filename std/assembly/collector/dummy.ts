// A dummy GC for looking at generated GC code without actually implementing it.

// @ts-ignore: decorator
@inline
const TRACE = false;

// @ts-ignore: decorator
@global @unsafe
function __gc_register(ref: usize): void {
  if (TRACE) trace("gc.register", 1, ref);
}

// @ts-ignore: decorator
@global @unsafe
function __gc_retain(ref: usize, parentRef: usize): void {
  if (TRACE) trace("gc.retain", 2, ref, parentRef);
}

// @ts-ignore: decorator
@global @unsafe
function __gc_release(ref: usize, parentRef: usize): void {
  if (TRACE) trace("gc.release", 2, ref, parentRef);
}

// @ts-ignore: decorator
@global @unsafe
function __gc_move(ref: usize, oldParentRef: usize, newParentRef: usize): void {
  if (TRACE) trace("gc.move", 3, ref, oldParentRef, newParentRef);
}

// @ts-ignore: decorator
@global @unsafe
function __gc_collect(): void {
  if (TRACE) trace("gc.collect");
}
