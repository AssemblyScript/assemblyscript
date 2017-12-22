var globalScope = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;

var HEAP = new Uint8Array(0);
var HEAP_OFFSET = 0;

Object.defineProperties(globalScope["Heap"] = {
  allocate: function allocate(size) {
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
  },
  dispose: function dispose() { },
  copy: function copy(dest, src, n) {
    HEAP.set(HEAP.subarray(src >>> 0, (src + n) >>> 0), dest >>> 0);
    return dest;
  }
}, {
  used: { get: function get_used() { return HEAP_OFFSET; } },
  free: { get: function get_free() { return HEAP.length - HEAP_OFFSET; } },
  size: { get: function get_size() { return HEAP.length; } }
});

globalScope["store"] = function store(ptr, val) { HEAP[ptr] = val; };
globalScope["load"] = function load(ptr) { return HEAP[ptr]; };
