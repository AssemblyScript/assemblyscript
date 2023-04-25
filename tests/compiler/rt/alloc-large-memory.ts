while (memory.size() != 128) {
  heap.alloc(32 * 1024);
}

for (let i = 0; i < 32763; i++) {
  heap.alloc(64 * 1024);
}
