import "rt";

export {
  __mm_allocate,
  __mm_reallocate,
  __mm_free,
  __gc_retain,
  __gc_release,
  __gc_collect
};

@start export function main(): void {}
