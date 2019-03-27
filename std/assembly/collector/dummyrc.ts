// A reference counting dummy GC.

// @ts-ignore: decorator
@inline
const TRACE = isDefined(GC_TRACE);

// @ts-ignore: decorator
@global @unsafe
function __ref_register(ref: usize): void {
  if (TRACE) trace("dummyrc.register", 1, ref);
}

// @ts-ignore: decorator
@global @unsafe
function __ref_collect(): void {
  if (TRACE) trace("dummyrc.collect");
}

// @ts-ignore: decorator
@global @unsafe
function __ref_retain(ref: usize): void {
  if (TRACE) trace("dummyrc.retain", 1, ref);
}

// @ts-ignore: decorator
@global @unsafe
function __ref_release(ref: usize): void {
  if (TRACE) trace("dummyrc.release", 1, ref);
}
