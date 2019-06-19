var str = "𐐷hi𤭢";
// utf8  : f0 90 90 b7 68 69 f0 a4 ad a2 [00]
// utf16 : d801_dc37 0068 0069 d852_df62

// UTF-16

function testUTF16Length(): void {
  assert(String.UTF16.byteLength(str) == 12);
}
testUTF16Length();

function testUTF16Encode(): void {
  var buf = String.UTF16.encode(str);
  var ptr = changetype<usize>(buf);
  assert(buf.byteLength == 12);
  assert(load<u8>(ptr, 0) == 0x01);
  assert(load<u8>(ptr, 1) == 0xD8);
  assert(load<u8>(ptr, 2) == 0x37);
  assert(load<u8>(ptr, 3) == 0xDC);
  assert(load<u8>(ptr, 4) == 0x68);
  assert(load<u8>(ptr, 5) == 0x00);
  assert(load<u8>(ptr, 6) == 0x69);
  assert(load<u8>(ptr, 7) == 0x00);
  assert(load<u8>(ptr, 8) == 0x52);
  assert(load<u8>(ptr, 9) == 0xD8);
  assert(load<u8>(ptr, 10) == 0x62);
  assert(load<u8>(ptr, 11) == 0xDF);
}
testUTF16Encode();

function testUTF16Decode(): void {
  var buf = String.UTF16.encode(str);
  assert(String.UTF16.decode(buf) == str);
}
testUTF16Decode();

function testUTF16DecodeUnsafe(): void {
  var buf = String.UTF16.encode(str);
  var len = String.UTF16.byteLength(str);
  var ptr = changetype<usize>(buf);

  assert(String.UTF16.decodeUnsafe(ptr, 0) == "");
  assert(String.UTF16.decodeUnsafe(ptr, len) == str);
  assert(String.UTF16.decodeUnsafe(ptr, 4) == "𐐷");
  assert(String.UTF16.decodeUnsafe(ptr + 4, 2) == "h");
  assert(String.UTF16.decodeUnsafe(ptr + 4, 4) == "hi");
  assert(String.UTF16.decodeUnsafe(ptr + 8, 4) == "𤭢");
  assert(String.UTF16.decodeUnsafe(ptr + 12, 0) == "");
}
testUTF16DecodeUnsafe();

// UTF-8

function testUTF8Length(): void {
  assert(String.UTF8.byteLength(str) == 10);
  assert(String.UTF8.byteLength(str, true) == 11);
}
testUTF8Length();

function testUTF8Encode(): void {
  var buf = String.UTF8.encode(str);
  var ptr = changetype<usize>(buf);
  assert(buf.byteLength == 10);
  assert(load<u8>(ptr, 0) == 0xF0);
  assert(load<u8>(ptr, 1) == 0x90);
  assert(load<u8>(ptr, 2) == 0x90);
  assert(load<u8>(ptr, 3) == 0xB7);
  assert(load<u8>(ptr, 4) == 0x68);
  assert(load<u8>(ptr, 5) == 0x69);
  assert(load<u8>(ptr, 6) == 0xF0);
  assert(load<u8>(ptr, 7) == 0xA4);
  assert(load<u8>(ptr, 8) == 0xAD);
  assert(load<u8>(ptr, 9) == 0xA2);
}
testUTF8Encode();

function testUTF8EncodeNullTerminated(): void {
  var buf = String.UTF8.encode(str, true);
  var ptr = changetype<usize>(buf);
  assert(buf.byteLength == 11);
  assert(load<u8>(ptr, 0) == 0xF0);
  assert(load<u8>(ptr, 1) == 0x90);
  assert(load<u8>(ptr, 2) == 0x90);
  assert(load<u8>(ptr, 3) == 0xB7);
  assert(load<u8>(ptr, 4) == 0x68);
  assert(load<u8>(ptr, 5) == 0x69);
  assert(load<u8>(ptr, 6) == 0xF0);
  assert(load<u8>(ptr, 7) == 0xA4);
  assert(load<u8>(ptr, 8) == 0xAD);
  assert(load<u8>(ptr, 9) == 0xA2);
  assert(load<u8>(ptr, 10) == 0x00);
}
testUTF8EncodeNullTerminated();

function testUTF8Decode(): void {
  var buf = String.UTF8.encode(str);
  assert(String.UTF8.decode(buf) == str);
}
testUTF8Decode();

function testUTF8DecodeNullTerminated(): void {
  var buf = String.UTF8.encode(str, true);
  assert(String.UTF8.decode(buf, true) == str);
  var str2 = "123\0456";
  assert(String.UTF8.byteLength(str2, true) == 4);
  var buf2 = String.UTF8.encode(str2, true);
  assert(buf2.byteLength == 4);
  var str3 = "123";
  assert(String.UTF8.byteLength(str3, true) == 4);
  assert(String.UTF8.decode(buf2, true) == str3);
  var buf3 = String.UTF8.encode(str2, false);
  assert(String.UTF8.decode(buf3, true) == str3);
}
testUTF8DecodeNullTerminated();

function testUTF8DecodeUnsafe(): void {
  var buf = String.UTF8.encode(str, true);
  var len = String.UTF8.byteLength(str, false); // !
  var ptr = changetype<usize>(buf);

  assert(String.UTF8.decodeUnsafe(ptr, 0) == "");
  assert(String.UTF8.decodeUnsafe(ptr, len) == str);
  assert(String.UTF8.decodeUnsafe(ptr, 4) == "𐐷");
  assert(String.UTF8.decodeUnsafe(ptr + 4, 2) == "hi");
  assert(String.UTF8.decodeUnsafe(ptr + 6, 4) == "𤭢");
  assert(String.UTF8.decodeUnsafe(ptr + 10, 0) == "");

  assert(String.UTF8.decodeUnsafe(ptr + 4, 100, true) == "hi𤭢");
  assert(String.UTF8.decodeUnsafe(ptr + 6, 100, true) == "𤭢");
  assert(String.UTF8.decodeUnsafe(ptr + 10, 100, true) == "");
}
testUTF8DecodeUnsafe();
