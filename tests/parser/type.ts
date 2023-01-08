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
export type T7 = Array<T7>;
export type T8 = Map<string, Array<T8>>;
export type T9 = Array<() => T9>;
export type T10 = T6<T10>;
