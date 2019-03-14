@unsafe declare function malloc(size: usize): usize;
@unsafe declare function free(ptr: usize): void;

@unsafe @global function __memory_allocate(size: usize): usize {
  return malloc(size);
}

@unsafe @global function __memory_free(ptr: usize): void {
  free(ptr);
}
