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
  function getImports(m: u32): void;
  function removeSection(mod: u32, id: i32): u32;
  function removeStartFunction(mod: u32): u32;
  function exportDataSection(mod: u32): u32;
  function toString(t: u32): u32;
  function hasStart(mod: u32): bool;
  class Parser {
    constructor(binary: u32);
    buf: u32;
    module: u32;
    parseString(): u32;
    readVaruint(len: u32): u32;
    off: u32;
    parse(): void;
  }
  namespace memory {
    function fill(dest: u32, c: u8, n: u32): void;
    function copy(dest: u32, src: u32, n: u32): void;
    function compare(vl: u32, vr: u32, n: u32): i32;
    function allocate(size: u32): u32;
    function free(ptr: u32): void;
    function reset(): void;
  }
  class TypeSection {
    NATIVE_CODE(header: u32);
    header: u32;
    funcs: u32;
    parse(buf: u32): u32;
    toString(): u32;
  }
  class Module {
    constructor(buf: u32);
    headers: u32;
    buf: u32;
    Type: u32;
    hasStart: bool;
    start: u32;
    parseSection(header: u32): void;
    getID(id: i32): u32;
    hasSection(id: i32): bool;
    getType(): u32;
    getImports(): u32;
    print(): void;
  }
}
export default ASModule;
