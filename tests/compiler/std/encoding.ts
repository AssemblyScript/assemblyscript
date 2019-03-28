import "allocator/arena";

var str = "𐐷hi𤭢"; // -> f0 90 90 b7 68 69 f0 a4 ad a2 [00]

function testUTF8Length(): void {
  assert(UTF8.length(str) == 10);
  assert(UTF8.length(str, true) == 11);
}
testUTF8Length();

function testUTF8Encode(): void {
  var buf = UTF8.encode(str);
  var ptr = changetype<usize>(buf);
  assert(buf.byteLength == 10);
  assert(load<u8>(ptr, 0) == 0xf0);
  assert(load<u8>(ptr, 1) == 0x90);
  assert(load<u8>(ptr, 2) == 0x90);
  assert(load<u8>(ptr, 3) == 0xb7);
  assert(load<u8>(ptr, 4) == 0x68);
  assert(load<u8>(ptr, 5) == 0x69);
  assert(load<u8>(ptr, 6) == 0xf0);
  assert(load<u8>(ptr, 7) == 0xa4);
  assert(load<u8>(ptr, 8) == 0xad);
  assert(load<u8>(ptr, 9) == 0xa2);
}
testUTF8Encode();

function testUTF8EncodeDelimited(): void {
  var buf = UTF8.encode(str, true);
  var ptr = changetype<usize>(buf);
  assert(buf.byteLength == 11);
  assert(load<u8>(ptr, 0) == 0xf0);
  assert(load<u8>(ptr, 1) == 0x90);
  assert(load<u8>(ptr, 2) == 0x90);
  assert(load<u8>(ptr, 3) == 0xb7);
  assert(load<u8>(ptr, 4) == 0x68);
  assert(load<u8>(ptr, 5) == 0x69);
  assert(load<u8>(ptr, 6) == 0xf0);
  assert(load<u8>(ptr, 7) == 0xa4);
  assert(load<u8>(ptr, 8) == 0xad);
  assert(load<u8>(ptr, 9) == 0xa2);
  assert(load<u8>(ptr, 10) == 0x00);
}
testUTF8EncodeDelimited();

function testUTF8Decode(): void {
  var buf = UTF8.encode(str);
  assert(UTF8.decode(buf) == str);
}
testUTF8Decode();

function testUTF8DecodeDelimited(): void {
  var buf = UTF8.encode(str, true);
  assert(UTF8.decode(buf, true) == str);
}
testUTF8DecodeDelimited();

function testUTF8Raw(): void {
  var buf = changetype<usize>(UTF8.encode(str));

  assert(UTF8.decodeRaw(buf, 0) == "");
  assert(UTF8.decodeRaw(buf, UTF8.length(str)) == str);
  assert(UTF8.decodeRaw(buf, 4) == "𐐷");
  assert(UTF8.decodeRaw(buf + 4, 2) == "hi");
  assert(UTF8.decodeRaw(buf + 6, 4) == "𤭢");
  assert(UTF8.decodeRaw(buf + 10, 0) == "");

  store<u8>(buf, 0, 10); // don't try this at home
  assert(UTF8.decodeRawDelimited(buf + 4) == "hi𤭢");
  assert(UTF8.decodeRawDelimited(buf + 6) == "𤭢");
  assert(UTF8.decodeRawDelimited(buf + 10) == "");
}
testUTF8Raw();
