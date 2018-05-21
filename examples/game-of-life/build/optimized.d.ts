declare module ASModule {
  type i8 = number;
  type i16 = number;
  type i32 = number;
  type u8 = number;
  type u16 = number;
  type u32 = number;
  type f32 = number;
  type f64 = number;
  type bool = any;
  function init(width: i32, height: i32): void;
  function step(): void;
  function fill(x: u32, y: u32, p: f64): void;
}
export default ASModule;
