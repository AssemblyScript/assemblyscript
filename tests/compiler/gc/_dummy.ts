// A dummy tracing GC for testing.

export var collect_count = 0;

// @ts-ignore: decorator
@global @unsafe
function __ref_collect(): void {
  trace("gc.collect");
  collect_count++;
}

export var register_count = 0;
export var register_ref: usize = 0;

// @ts-ignore: decorator
@global @unsafe
function __ref_register(ref: usize): void {
  trace("gc.register", 1, ref);
  register_count++;
  register_ref = ref;
}

export var link_count = 0;
export var link_ref: usize = 0;
export var link_parentRef: usize = 0;

// @ts-ignore: decorator
@global @unsafe
function __ref_link(ref: usize, parentRef: usize): void {
  trace("gc.link", 2, ref, parentRef);
  link_count++;
  link_ref = ref;
  link_parentRef = ref;
}

export var unlink_count = 0;
export var unlink_ref: usize = 0;
export var unlink_parentRef: usize = 0;

// @ts-ignore: decorator
@global @unsafe
function __ref_unlink(ref: usize, parentRef: usize): void {
  trace("gc.unlink", 2, ref, parentRef);
  unlink_count++;
  unlink_ref = ref;
  unlink_parentRef = parentRef;
}

export var mark_count = 0;
export var mark_ref: usize = 0;

// @ts-ignore: decorator
@global @unsafe
function __ref_mark(ref: usize): void {
  trace("gc.mark", 1, ref);
  mark_count++;
  mark_ref = ref;
}
