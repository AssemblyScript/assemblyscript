module.exports = globalScope => {
  var HEAP = new Uint8Array(0);
  var HEAP_OFFSET = 0;

  globalScope["allocate_memory"] = function allocate_memory(size) {
    if (!(size >>>= 0))
      return 0;
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

  globalScope["move_memory"] = function move_memory(dest, src, n) {
    HEAP.copyWithin(dest, src, src + n);
  };

  globalScope["store"] = function store(ptr, val, off) {
    if (typeof off === "number")
      ptr += off;
    HEAP[ptr] = val;
  };

  globalScope["load"] = function load(ptr) {
    if (typeof off === "number")
      ptr += off;
    return HEAP[ptr];
  };
};
