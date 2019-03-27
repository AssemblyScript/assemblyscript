// @ts-ignore: decorator
@unsafe
declare function malloc(size: usize): usize;

// @ts-ignore: decorator
@unsafe
declare function free(ptr: usize): void;

// @ts-ignore: decorator
@unsafe @global
function __mem_allocate(size: usize): usize {
  return malloc(size);
}

// @ts-ignore: decorator
@unsafe @global
function __mem_free(ptr: usize): void {
  free(ptr);
}
