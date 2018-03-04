import "allocator/arena";

const size: usize = 42;
let ptr1: usize = allocate_memory(size);
let ptr2: usize = allocate_memory(size);

assert(ptr1 != ptr2);

set_memory(ptr1, 0x12, size);

let i: usize;
for (i = 0; i < size; ++i)
  assert(load<u8>(ptr1 + i) == 0x12);

move_memory(ptr2, ptr1, size);

for (i = 0; i < size; ++i)
  assert(load<u8>(ptr2 + i) == 0x12);

assert(compare_memory(ptr1, ptr2, size) == 0);

free_memory(ptr1);
free_memory(ptr2);

reset_memory();
ptr1 = allocate_memory(size);
assert(ptr1 == ((HEAP_BASE + 7) & ~7));
