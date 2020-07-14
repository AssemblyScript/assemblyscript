assert(ASC_OPTIMIZE_LEVEL == 3);
assert(ASC_SHRINK_LEVEL == 1);
assert(ASC_FEATURE_SIMD);
let size = memory.size();
trace("size", 1, size);
assert(size == 30);
