@unsafe declare function _malloc(size: usize): usize;
@unsafe declare function _free(ptr: usize): void;

@unsafe @global function __memory_allocate(size: usize): usize {
  return _malloc(size);
}

@unsafe @global function __memory_free(ptr: usize): void {
  _free(ptr);
}
