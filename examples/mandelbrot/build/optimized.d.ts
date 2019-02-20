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
    function log(x: f64): f64;
    function log2(x: f64): f64;
  }
  var NUM_COLORS: i32;
  function computeLine(y: u32, width: u32, height: u32, limit: u32): void;
  function clamp<f64>(value: f64, minValue: f64, maxValue: f64): f64;
}
export default ASModule;
