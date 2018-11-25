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
  class Test {
    constructor(i: i32);
    i: i32;
    _if(i: i32): void;
  }
}
export default ASModule;
