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
    a: u32;
    i: i32;
    _if(i: i32): void;
    _else(i: i32): void;
    _while(i: i32): void;
    _doWhile(i: i32): void;
    print(i: i32): void;
    callAsync(): void;
  }
  function start(): void;
}
export default ASModule;
