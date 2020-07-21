assert(ASC_OPTIMIZE_LEVEL == 3, "expected optimize level == 3");
assert(ASC_SHRINK_LEVEL == 1, "expected shrink level == 1");
assert(ASC_FEATURE_SIMD, "expected SIMD enabled");
let size = memory.size();
trace("size", 1, size);
assert(size == 30, "expected 30 got " + size.toString());
