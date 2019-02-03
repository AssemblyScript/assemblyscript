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
  function getType(m: u32): u32;
  function toString(t: u32): u32;
  class Parser {
    constructor(buf: u32);
    buf: u32;
    module: u32;
    parseString(): u32;
    readVaruint(len: u32): u32;
    off: u32;
    parse(): void;
  }
  function newParser(buf: u32): u32;
  function parse(p: u32): u32;
  namespace memory {
    function fill(dest: u32, c: u8, n: u32): void;
    function copy(dest: u32, src: u32, n: u32): void;
    function compare(vl: u32, vr: u32, n: u32): i32;
    function allocate(size: u32): u32;
    function free(ptr: u32): void;
    function reset(): void;
  }
}
export default ASModule;
