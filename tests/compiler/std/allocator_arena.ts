import "allocator/arena";

const size: usize = 42;
var ptr1: usize = memory.allocate(size);
var ptr2: usize = memory.allocate(size);

assert(ptr1 != ptr2);

memory.fill(ptr1, 0x12, size);

var i: usize;
for (i = 0; i < size; ++i) assert(load<u8>(ptr1 + i) == 0x12);

memory.copy(ptr2, ptr1, size);

for (i = 0; i < size; ++i) assert(load<u8>(ptr2 + i) == 0x12);

assert(memory.compare(ptr1, ptr2, size) == 0);

memory.free(ptr1);
memory.free(ptr2);

memory.reset();
ptr1 = memory.allocate(size);
assert(ptr1 == ((HEAP_BASE + 7) & ~7));
