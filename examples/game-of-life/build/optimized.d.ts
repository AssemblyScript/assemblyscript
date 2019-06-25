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
  namespace JSMath {
    function random(): f64;
  }
  var w: i32;
  var h: i32;
  var s: i32;
  function init(width: i32, height: i32): void;
  function step(): void;
  function fill(x: u32, y: u32, p: f64): void;
  var BGR_ALIVE: u32;
  var BGR_DEAD: u32;
  var BIT_ROT: u32;
}
export default ASModule;
