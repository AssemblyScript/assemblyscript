const staticData = memory.data(1);

assert(ASC_MEMORY_BASE == 1024);
assert(changetype<usize>(staticData) == ASC_MEMORY_BASE);
