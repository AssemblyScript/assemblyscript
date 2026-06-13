// Exhaustive tests for the @data codec: the DataWriter/DataReader runtime
// (std/assembly/data.ts) and the compiler-generated encode/decode + toJSON/
// fromJSON (src/parser.ts injectDataCodec). Run against toilscript via run.mjs.

@data
class AllScalars {
  a: u8 = 0; b: u16 = 0; c: u32 = 0; d: u64 = 0;
  e: i8 = 0; f: i16 = 0; g: i32 = 0; h: i64 = 0;
  p: f32 = 0; q: f64 = 0; r: bool = false; s: string = "";
}

@data
class AllBig {
  a: u128 = u128.Zero;
  b: i128 = i128.Zero;
  c: u256 = u256.Zero;
  d: i256 = i256.Zero;
}

@data
class Inner { v: u64 = 0; s: string = ""; }

@data
class Nested { id: u32 = 0; inner: Inner = new Inner(); tail: bool = false; }

@data
class Bag {
  nums: Array<u64> = [];
  strs: Array<string> = [];
  flags: Array<bool> = [];
  items: Array<Inner> = [];
}

function testWriterReader(): void {
  const w = new DataWriter();
  w.writeU8(0x12);
  w.writeU16(0x3456);
  w.writeU32(0x789abcde);
  w.writeU64(0x1122334455667788);
  w.writeI8(-2);
  w.writeI16(-300);
  w.writeI32(-70000);
  w.writeI64(-5000000000);
  w.writeF32(1.5);
  w.writeF64(-2.25);
  w.writeBool(true);
  w.writeString("héllo");
  w.writeU128(u128.fromU64(42));
  w.writeI128(i128.fromI64(-42));
  w.writeU256(u256.fromU64(99));
  const mb = new Uint8Array(2); mb[0] = 7; mb[1] = 9;
  w.writeBytes(mb);
  assert(w.length() > 0);

  const r = new DataReader(w.toBytes());
  assert(r.readU8() == 0x12);
  assert(r.readU16() == 0x3456);
  assert(r.readU32() == 0x789abcde);
  assert(r.readU64() == 0x1122334455667788);
  assert(r.readI8() == -2);
  assert(r.readI16() == -300);
  assert(r.readI32() == -70000);
  assert(r.readI64() == -5000000000);
  assert(r.readF32() == 1.5);
  assert(r.readF64() == -2.25);
  assert(r.readBool());
  assert(r.readString() == "héllo");
  assert(r.readU128() == u128.fromU64(42));
  assert(r.readI128() == i128.fromI64(-42));
  assert(r.readU256() == u256.fromU64(99));
  const b = r.readBytes();
  assert(b.length == 2 && b[0] == 7 && b[1] == 9);
  assert(r.ok);
  assert(r.remaining() == 0);

  // growth across many writes + empty string + i256
  const w2 = new DataWriter(1);
  w2.writeString("");
  w2.writeI256(i256.Zero);
  for (let i = 0; i < 300; i++) w2.writeU32(<u32>i);
  const r2 = new DataReader(w2.toBytes());
  assert(r2.readString() == "");
  r2.readI256();
  for (let i = 0; i < 300; i++) assert(r2.readU32() == <u32>i);
  assert(r2.ok);

  // malformed: reads past the end set ok=false and return safe defaults
  const r3 = new DataReader(new Uint8Array(2));
  assert(r3.readU64() == 0);
  assert(!r3.ok);
  const r4 = new DataReader(new Uint8Array(1));
  assert(r4.readString() == ""); // u32 length read fails
  assert(!r4.ok);
}

function testScalars(): void {
  const m = new AllScalars();
  m.a = 200; m.b = 60000; m.c = 4000000000; m.d = 0xFFFFFFFFFFFFFFFF;
  m.e = -100; m.f = -30000; m.g = -2000000000; m.h = -9000000000000000000;
  m.p = 3.5; m.q = -1.25; m.r = true; m.s = "scalars";

  const d = AllScalars.decode(m.encode());
  assert(d.a == 200 && d.b == 60000 && d.c == 4000000000 && d.d == 0xFFFFFFFFFFFFFFFF);
  assert(d.e == -100 && d.f == -30000 && d.g == -2000000000 && d.h == -9000000000000000000);
  assert(d.p == 3.5 && d.q == -1.25 && d.r && d.s == "scalars");

  // JSON round-trip
  const j = AllScalars.fromJSON(JSON.parse(m.toJSON().toString()));
  assert(j.a == 200 && j.d == 0xFFFFFFFFFFFFFFFF && j.h == -9000000000000000000);
  assert(j.q == -1.25 && j.r && j.s == "scalars");

  // 64-bit fields are decimal strings on the wire (exact past 2^53 in JS clients),
  // and number tokens stay readable (legacy writers, hand-written JSON).
  const text = m.toJSON().toString();
  assert(text.includes("\"d\":\"18446744073709551615\""));
  assert(text.includes("\"h\":\"-9000000000000000000\""));
  const lenient = AllScalars.fromJSON(JSON.parse("{\"d\":12345,\"h\":-7}"));
  assert(lenient.d == 12345 && lenient.h == -7);
}

function testBig(): void {
  const m = new AllBig();
  m.a = u128.fromString("340282366920938463463374607431768211455"); // u128 max
  m.b = i128.fromI64(-12345);
  m.c = u256.fromU64(987654321);
  m.d = i256.One;

  const d = AllBig.decode(m.encode());
  assert(d.a == u128.fromString("340282366920938463463374607431768211455"));
  assert(d.b == i128.fromI64(-12345));
  assert(d.c == u256.fromU64(987654321));

  // JSON: bignum serializes as a decimal string
  const text = m.toJSON().toString();
  assert(text.includes("\"a\":\"340282366920938463463374607431768211455\""));
  assert(text.includes("\"b\":\"-12345\""));
  assert(text.includes("\"c\":\"987654321\""));
  assert(text.includes("\"d\":\"1\""));
  const j = AllBig.fromJSON(JSON.parse(text));
  assert(j.a == u128.fromString("340282366920938463463374607431768211455"));
  assert(j.b == i128.fromI64(-12345));
  assert(j.c == u256.fromU64(987654321));
  assert(j.d.lo1 == 1 && !j.d.lo2 && !j.d.hi1 && !j.d.hi2);

  // i256 sign handling round-trips, including i256.Min (whose negation is itself)
  const neg = new AllBig();
  neg.d = i256.fromString("-57896044618658097711785492504343953926634992332820282019728792003956564819968");
  const negText = neg.toJSON().toString();
  assert(negText.includes("\"d\":\"-57896044618658097711785492504343953926634992332820282019728792003956564819968\""));
  const nj = AllBig.fromJSON(JSON.parse(negText));
  assert(!nj.d.lo1 && !nj.d.lo2 && !nj.d.hi1 && <u64>nj.d.hi2 == 0x8000000000000000);

  // legacy limb-array shape (older writers) still reads back
  const legacy = AllBig.fromJSON(JSON.parse("{\"a\":[5,1],\"b\":[12345,0],\"c\":[1,2,3,4],\"d\":[9,0,0,0]}"));
  assert(legacy.a == new u128(5, 1));
  assert(legacy.b == new i128(12345, 0));
  assert(legacy.c == new u256(1, 2, 3, 4));
  assert(legacy.d.lo1 == 9 && !legacy.d.lo2 && !legacy.d.hi1 && !legacy.d.hi2);
}

function testNested(): void {
  const m = new Nested();
  m.id = 7; m.inner.v = 0xDEADBEEF; m.inner.s = "deep"; m.tail = true;

  const d = Nested.decode(m.encode());
  assert(d.id == 7 && d.inner.v == 0xDEADBEEF && d.inner.s == "deep" && d.tail);

  const j = Nested.fromJSON(JSON.parse(m.toJSON().toString()));
  assert(j.id == 7 && j.inner.v == 0xDEADBEEF && j.inner.s == "deep" && j.tail);
}

function testArrays(): void {
  const m = new Bag();
  m.nums = [1, 2, 0xFFFFFFFFFFFFFFFF];
  m.strs = ["a", "bb"];
  m.flags = [true, false, true];
  const i1 = new Inner(); i1.v = 10; i1.s = "x";
  const i2 = new Inner(); i2.v = 20; i2.s = "y";
  m.items = [i1, i2];

  const d = Bag.decode(m.encode());
  assert(d.nums.length == 3 && d.nums[2] == 0xFFFFFFFFFFFFFFFF);
  assert(d.strs.length == 2 && d.strs[1] == "bb");
  assert(d.flags.length == 3 && d.flags[0] && !d.flags[1] && d.flags[2]);
  assert(d.items.length == 2 && d.items[0].v == 10 && d.items[1].s == "y");

  const j = Bag.fromJSON(JSON.parse(m.toJSON().toString()));
  assert(j.nums.length == 3 && j.nums[0] == 1);
  assert(j.items.length == 2 && j.items[1].v == 20);

  // empty arrays round-trip both ways
  const e = Bag.decode((new Bag()).encode());
  assert(e.nums.length == 0 && e.strs.length == 0 && e.flags.length == 0 && e.items.length == 0);
  const ej = Bag.fromJSON(JSON.parse((new Bag()).toJSON().toString()));
  assert(ej.nums.length == 0 && ej.items.length == 0);
}

function testTypeId(): void {
  const m = new Inner(); m.v = 1;
  const bytes = m.encode();
  // first 4 LE bytes are the boundary typeId, equal to dataId()
  const r = new DataReader(bytes);
  assert(r.readU32() == Inner.dataId());
  // ids stable, nonzero, distinct across types
  assert(Inner.dataId() != 0 && Nested.dataId() != 0);
  assert(Inner.dataId() != Nested.dataId());
  assert(Inner.dataId() == Inner.dataId());
}

function testJsonShape(): void {
  const m = new Nested();
  m.id = 5; m.inner.v = 9; m.inner.s = "t"; m.tail = false;
  assert(m.toJSON().toString() == "{\"id\":5,\"inner\":{\"v\":\"9\",\"s\":\"t\"},\"tail\":false}");
}

export function runAll(): void {
  testWriterReader();
  testScalars();
  testBig();
  testNested();
  testArrays();
  testTypeId();
  testJsonShape();
}
