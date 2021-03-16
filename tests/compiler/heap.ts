export { heap };

var ptr = heap.alloc(16);
ptr = heap.realloc(ptr, 32);
heap.free(ptr);
