assert(ASC_MEMORY_BASE == 0);
assert(load<u64>(ASC_MEMORY_BASE    ) == 0x3736353433323130);
assert(load<u64>(ASC_MEMORY_BASE,  8) == 0x3534333231303938);
assert(load<u32>(ASC_MEMORY_BASE, 16) == 0x39383736);
assert(__heap_base > <usize>ASC_MEMORY_BASE);
