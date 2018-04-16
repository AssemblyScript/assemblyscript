module.exports = globalScope => {
  var HEAP = new Uint8Array(0);
  var HEAP_OFFSET = 0;

  globalScope["allocate_memory"] = function allocate_memory(size) {
    if (!(size >>>= 0)) return 0;

    if (HEAP_OFFSET + size > HEAP.length) {
      var oldHeap = HEAP;
      HEAP = new Uint8Array(Math.max(65536, HEAP.length + size, HEAP.length * 2));
      HEAP.set(oldHeap);
    }

    var ptr = HEAP_OFFSET;
    if ((HEAP_OFFSET += size) & 7)
      HEAP_OFFSET = (HEAP_OFFSET | 7) + 1;

    return ptr;
  };

  globalScope["free_memory"] = function free_memory(ptr) {
    // TODO
  };

  globalScope["move_memory"] = function move_memory(dest, src, size) {
    HEAP.copyWithin(dest, src, src + size);
  };

  globalScope["store"] = function store(ptr, value, offset) {
    HEAP[ptr + (offset | 0)] = value;
  };

  globalScope["load"] = function load(ptr, offset) {
    return HEAP[ptr + (offset | 0)];
  };
};
