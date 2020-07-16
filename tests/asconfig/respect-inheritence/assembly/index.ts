// --optimizeLevel 3
assert(ASC_OPTIMIZE_LEVEL == 3);
// enabled in target release which is default
assert(ASC_FEATURE_SIMD);
// disable: ["simd"] is set in asconfig under general options, it should be ignored
