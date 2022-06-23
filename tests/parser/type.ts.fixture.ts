type int32_t = i32;
@nonportable()
export type uint64_t = u64;
export type T1 = int32_t;
export type T2 = int32_t;
// ERROR 2456: "Type alias 'T3' circularly references itself." in type.ts(11,23+4)
// ERROR 100: "Not implemented: Recursion in type aliases" in type.ts(12,29+3)
// ERROR 100: "Not implemented: Recursion in type aliases" in type.ts(13,24+2)
// ERROR 100: "Not implemented: Recursion in type aliases" in type.ts(14,31+1)
// ERROR 100: "Not implemented: Recursion in type aliases" in type.ts(15,26+1)
// ERROR 100: "Not implemented: Recursion in type aliases" in type.ts(16,39+1)
// ERROR 100: "Not implemented: Recursion in type aliases" in type.ts(17,32+1)
// ERROR 100: "Not implemented: Recursion in type aliases" in type.ts(18,25+1)
