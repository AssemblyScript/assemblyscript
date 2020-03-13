declare module ASModule {
  type i8 = number;
  type i16 = number;
  type i32 = number;
  type i64 = BigInt;
  type isize = number;
  type u8 = number;
  type u16 = number;
  type u32 = number;
  type u64 = BigInt;
  type usize = number;
  type f32 = number;
  type f64 = number;
  type bool = any;
  export function init(w: i32, h: i32): void;
  export function step(): void;
  export function fill(x: u32, y: u32, p: f64): void;
}
export default ASModule;
