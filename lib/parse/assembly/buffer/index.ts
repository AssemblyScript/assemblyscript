


export class Buffer {
  off: usize;
  data: usize;

  /** Current offset in memory. */
  constructor(public size: usize){
    this.data = allocate(size);
    this.off = this.data;
  }

  /** Reads an unsigned integer from memory. */
   readUint<T>(): u32 {
    var pos = this.off;
    var val = <u32>load<T>(pos);
    this.off = pos + sizeof<T>();
    return val;
  }

  peakUint<T>(): u32

  /** Reads an unsigned 64-bit integer from memory. */
  readUint64(): u64 {
    var pos = this.off;
    var val = load<u64>(pos);
     this.off = pos + 8;
    return val;
  }

  /** Reads a LEB128-encoded unsigned integer from memory. */
   readVaruint(size: u32): u32 {
    var val: u32 = 0;
    var shl: u32 = 0;
    var byt: u32;
    var pos =  this.off;
    do {
      byt = load<u8>(pos++);
      val |= (byt & 0x7F) << shl;
      if (!(byt & 0x80)) break;
      shl += 7;
    } while (true);
     this.off = pos;
    return val;
  }

  /** Reads a LEB128-encoded signed integer from memory. */
   readVarint(size: u32): i32 {
    var val: u32 = 0;
    var shl: u32 = 0;
    var byt: u32;
    var pos =  this.off;
    do {
      byt = load<u8>(pos++);
      val |= (byt & 0x7F) << shl;
      shl += 7;
    } while (byt & 0x80);
     this.off = pos;
    return select<u32>(val | (~0 << shl), val, shl < size && (byt & 0x40) != 0);
  }

  /** Reads a LEB128-encoded signed 64-bit integer from memory. */
  readVarint64(): i64 {
    var val: u64 = 0;
    var shl: u64 = 0;
    var byt: u64;
    var pos =  this.off;
    do {
      byt = load<u8>(pos++);
      val |= (byt & 0x7F) << shl;
      shl += 7;
    } while (byt & 0x80);
     this.off = pos;
    return select<u64>(val | (~0 << shl), val, shl < 64 && (byt & 0x40) != 0);
  }


}
