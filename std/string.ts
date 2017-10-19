/// <reference path="../assembly.d.ts" />

@global()
@allocates()
@operator("==", String.equals)
@operator("!=", String.notEquals)
@operator("+", String.concat)
class String {

  readonly length: i32;

  constructor(length: i32) {
    if (length < 0)
      throw new RangeError("invalid length");
    const data: usize = Memory.allocate(4 + length);
    store<i32>(data, length);
    return classof<String>(data);
  }

  static fromCharCode(c1: i32 /* sic */, c2: i32 = -1): String {
    throw new Error("not implemented");
  }

  static equals(a: String, b: String): bool {
    const aLength: i32 = a.length;
    return aLength == b.length && !Memory.compare(pointerof(a) + 4, pointerof(b) + 4, aLength << 1);
  }

  static notEquals(a: String, b: String): bool {
    const aLength: i32 = a.length;
    return aLength != b.length || Memory.compare(pointerof(a) + 4, pointerof(b) + 4, aLength << 1);
  }

  static concat(a: String, b: String): String {
    const aLength: i32 = a.length;
    const bLength: i32 = b.length;
    const combinedLength: i32 = aLength + bLength;
    if (combinedLength < 0)
      throw new RangeError("invalid length");
    const aByteLength: i32 = aLength << 1;
    const bByteLength: i32 = bLength << 1;
    const data: usize = Memory.allocate(4 + combinedLength);
    store<i32>(data, combinedLength);
    Memory.copy(pointerof(a) + 4, data + 4, aByteLength);
    Memory.copy(pointerof(b) + 4, data + 4 + aByteLength, bByteLength);
    return classof<String>(data);
  }

  charCodeAt(index: i32): u16 {
    if (index < 0 || index > this.length)
      throw new RangeError("index out of bounds");
    return load<u32>(pointerof(this) + 4 + index << 1);
  }

  concat(other: String): String {
    return String.concat(this, other);
  }
}
