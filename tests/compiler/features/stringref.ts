@external("env", "console.log")
declare function log_s(s: ref_string | null): void;
@external("env", "console.log")
declare function log_i(i: i32): void;

let stringGlobal: ref_string | null = null;
let stringviewWtf8Global: ref_stringview_wtf8 | null = null;
let stringviewWtf16Global: ref_stringview_wtf16 | null = null;
let stringviewIterGlobal: ref_stringview_iter | null = null;

function test_locals(): void {
  let stringLocal: ref_string | null = null;
  stringLocal = null;
  let stringviewWtf8Local: ref_stringview_wtf8 | null = null;
  stringviewWtf8Local = null;
  let stringviewWtf16Local: ref_stringview_wtf16 | null = null;
  stringviewWtf16Local = null;
  let stringviewIterLocal: ref_stringview_iter | null = null;
  stringviewIterLocal = null;
}
test_locals();

const utf8_data = memory.data<i8>([0x61, 0x62, 0x63]);
const wtf16_data = memory.data<i16>([0x61, 0x62, 0x63]);
const temp_data = memory.data(16);

function test_utf8(): void {
  // TODO: RuntimeError: unreachable - not yet implemented in Node?
  // string.new_utf8
  // string.measure_utf8
  // string.encode_utf8
}
test_utf8();

function test_lossy_utf8(): void {
  // TODO: RuntimeError: unreachable - not yet implemented in Node?
  // string.new_lossy_utf8
  // string.encode_lossy_utf8
  // stringview_wtf8.encode_utf8
  // stringview_wtf8.encode_lossy_utf8
}
test_lossy_utf8();

function test_wtf8(): void {
  let str = string.new_wtf8(utf8_data, 3);
  assert(string.measure_wtf8(str) == 3);
  string.hash(str);
  assert(string.is_usv_sequence(str));
  assert(string.eq(str, str));
  assert(string.eq(str, string.const_("abc")));
  assert(string.compare(str, str) == 0);
  assert(string.compare(str, string.const_("b")) == -1);
  assert(string.compare(str, string.const_("`")) == 1);
  assert(string.encode_wtf8(str, temp_data) == 3);
  assert(memory.compare(utf8_data, temp_data, 3) == 0);

  let view = string.as_wtf8(str);
  assert(stringview_wtf8.advance(view, 0, 0) == 0); // ^a
  assert(stringview_wtf8.advance(view, 0, 1) == 1); // a^b
  assert(stringview_wtf8.advance(view, 0, 2) == 2); // ab^c
  assert(stringview_wtf8.advance(view, 0, 3) == 3); // abc^
  assert(stringview_wtf8.advance(view, 0, 4) == 3); // abc^
  assert(stringview_wtf8.advance(view, -1, 0) == 3); // abc^
  assert(string.eq(str, stringview_wtf8.slice(view, 0, 3)));

  // TODO: stringview_wtf8.encode_wtf8
}
test_wtf8();

function test_wtf16(): void {
  let str = string.new_wtf16(wtf16_data, 3);
  assert(string.measure_wtf16(str) == 3);
  string.hash(str);
  assert(string.is_usv_sequence(str));
  assert(string.eq(str, str));
  assert(string.eq(str, string.const_("abc")));
  assert(string.compare(str, str) == 0);
  assert(string.compare(str, string.const_("b")) == -1);
  assert(string.compare(str, string.const_("`")) == 1);
  assert(string.encode_wtf16(str, temp_data) == 3);
  assert(memory.compare(wtf16_data, temp_data, 6) == 0);

  let view = string.as_wtf16(str);
  assert(stringview_wtf16.length(view) == 3);
  assert(string.eq(str, stringview_wtf16.slice(view, 0, 3)));
  assert(stringview_wtf16.get_codeunit(view, 0) == 0x61); // a
  assert(stringview_wtf16.get_codeunit(view, 1) == 0x62); // b
  assert(stringview_wtf16.get_codeunit(view, 2) == 0x63); // c

  // TODO: stringview_wtf16.encode
}
test_wtf16();

function test_iter(): void {
  let str = string.new_wtf16(wtf16_data, 3);
  let view = string.as_iter(str);
  assert(stringview_iter.next(view) == 0x61);
  assert(stringview_iter.next(view) == 0x62);
  assert(stringview_iter.next(view) == 0x63);
  assert(stringview_iter.next(view) == -1);
  assert(stringview_iter.rewind(view, 1) == 1);
  assert(stringview_iter.next(view) == 0x63);
  assert(stringview_iter.next(view) == -1);
  assert(stringview_iter.rewind(view, -1) == 3);
  assert(stringview_iter.advance(view, 2) == 2);
  assert(stringview_iter.next(view) == 0x63);
  assert(stringview_iter.next(view) == -1);
  assert(stringview_iter.rewind(view, -1) == 3);
  assert(string.eq(stringview_iter.slice(view, 1), string.from_code_point(0x61)));
  assert(string.eq(stringview_iter.slice(view, 2), string.concat(string.from_code_point(0x61), string.from_code_point(0x62))));
  assert(string.eq(stringview_iter.slice(view, 3), str));
  assert(string.eq(stringview_iter.slice(view, -1), str));
  stringview_iter.next(view);
  assert(string.eq(stringview_iter.slice(view, 1), string.from_code_point(0x62)));
  assert(string.eq(stringview_iter.slice(view, 2), string.concat(string.from_code_point(0x62), string.from_code_point(0x63))));
  assert(string.eq(stringview_iter.slice(view, -1), string.concat(string.from_code_point(0x62), string.from_code_point(0x63))));
}
test_iter();

// TODO: Test combined Stringref+GC instructions (needs GC types)
// string.new_utf8_array
// string.new_lossy_utf8_array
// string.new_wtf8_array
// string.new_wtf16_array
// string.encode_utf8_array
// string.encode_lossy_utf8_array
// string.encode_wtf8_array
// string.encode_wtf16_array
