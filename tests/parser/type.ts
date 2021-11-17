type int32_t = i32;
@nonportable()
export type uint64_t = u64;

// with leading `|`
export type T1 = | int32_t;
export type T2 =
  | int32_t;
