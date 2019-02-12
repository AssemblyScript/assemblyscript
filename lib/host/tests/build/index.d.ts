declare namespace ASModule {
  type i8 = number;
  type i16 = number;
  type i32 = number;
  type u8 = number;
  type u16 = number;
  type u32 = number;
  type f32 = number;
  type f64 = number;
  type bool = any;
  class Car {
    static i(): i32;
    constructor(weight: i32);
    length: i32;
    weight: i32;
    createAnother(weight: i32): Car;
    combine(c: Car): Car;
  }
  function runTest(): void;
  namespace memory {
    function compare(vl: u32, vr: u32, n: u32): i32;
    function allocate(size: u32): u32;
    function free(ptr: u32): void;
    function reset(): void;
  }
}
export default ASModule;
