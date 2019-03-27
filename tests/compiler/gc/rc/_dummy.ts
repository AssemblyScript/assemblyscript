// A dummy reference counting GC for testing.

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

export var retain_count = 0;
export var retain_ref: usize = 0;

// @ts-ignore: decorator
@global @unsafe
function __ref_retain(ref: usize): void {
  trace("gc.retain", 1, ref);
  retain_count++;
  retain_ref = ref;
}

export var release_count = 0;
export var release_ref: usize = 0;

// @ts-ignore: decorator
@global @unsafe
function __ref_release(ref: usize): void {
  trace("gc.release", 1, ref);
  release_count++;
  release_ref = ref;
}
