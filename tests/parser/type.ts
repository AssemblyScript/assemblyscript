type int32_t = i32;
@nonportable()
export type uint64_t = u64;

// with leading `|`
export type T1 = | int32_t;
export type T2 =
  | int32_t;

// disallow type recursion
export type T3 = T3 | null;
export type T4 = (x: T4) => i32;
export type T5 = () => T5;
export type T6<T> = () => T6<T>;
