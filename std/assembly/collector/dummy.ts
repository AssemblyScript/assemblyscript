// A tracing dummy GC.

// @ts-ignore: decorator
@inline
const TRACE = isDefined(GC_TRACE);

// @ts-ignore: decorator
@global @unsafe
function __ref_register(ref: usize): void {
  if (TRACE) trace("dummy.register", 1, ref);
}

// @ts-ignore: decorator
@global @unsafe
function __ref_collect(): void {
  if (TRACE) trace("dummy.collect");
}

// Tracing

// @ts-ignore: decorator
@global @unsafe
function __ref_link(ref: usize, parentRef: usize): void {
  if (TRACE) trace("dummy.link", 2, ref, parentRef);
}

// @ts-ignore: decorator
@global @unsafe
function __ref_unlink(ref: usize, parentRef: usize): void {
  if (TRACE) trace("dummy.unlink", 2, ref, parentRef);
}

// @ts-ignore: decorator
@global @unsafe
function __ref_mark(ref: usize): void {
  if (TRACE) trace("dummy.mark", 1, ref);
}
