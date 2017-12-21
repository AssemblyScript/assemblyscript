const size: usize = 42;
let ptr1: usize = Heap.allocate(size);
let ptr2: usize = Heap.allocate(size);

assert(ptr1 != ptr2);

Heap.fill(ptr1, 0x12, size);

let i: usize;
for (i = 0; i < size; ++i)
  assert(load<u8>(ptr1 + i) == 0x12);

Heap.copy(ptr2, ptr1, size);

for (i = 0; i < size; ++i)
  assert(load<u8>(ptr2 + i) == 0x12);

assert(Heap.compare(ptr1, ptr2, size) == 0);

Heap.dispose(ptr1);
Heap.dispose(ptr2);
