type int32_t = i32;
@nonportable()
export type uint64_t = u64;
export type T1 = int32_t;
export type T2 = int32_t;
export type T11 = T1 | null;
export type T12 = T1 | null;
// ERROR 2456: "Type alias 'T3' circularly references itself." in type.ts(11,13+2)
// ERROR 2456: "Type alias 'T4' circularly references itself." in type.ts(12,13+2)
// ERROR 2456: "Type alias 'T5' circularly references itself." in type.ts(13,13+2)
// ERROR 2456: "Type alias 'T6' circularly references itself." in type.ts(14,13+2)
// ERROR 2456: "Type alias 'T7' circularly references itself." in type.ts(15,13+2)
// ERROR 2456: "Type alias 'T8' circularly references itself." in type.ts(16,13+2)
// ERROR 2456: "Type alias 'T9' circularly references itself." in type.ts(17,13+2)
// ERROR 2456: "Type alias 'T10' circularly references itself." in type.ts(18,13+3)
