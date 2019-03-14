import { runtime, ArrayBufferView } from "./runtime";

@sealed export class ArrayBuffer {

  @inline static isView<T>(value: T): bool {
    if (value) {
      if (value instanceof Int8Array) return true;
      if (value instanceof Uint8Array) return true;
      if (value instanceof Uint8ClampedArray) return true;
      if (value instanceof Int16Array) return true;
      if (value instanceof Uint16Array) return true;
      if (value instanceof Int32Array) return true;
      if (value instanceof Uint32Array) return true;
      if (value instanceof Int64Array) return true;
      if (value instanceof Uint64Array) return true;
      if (value instanceof Float32Array) return true;
      if (value instanceof Float64Array) return true;
      if (value instanceof DataView) return true;
    }
    return false;
  }

  constructor(length: i32) {
    if (<u32>length > <u32>ArrayBufferView.MAX_BYTELENGTH) throw new RangeError("Invalid array buffer length");
    return runtime.register<ArrayBuffer>(runtime.alloc(<usize>length));
  }

  get byteLength(): i32 {
    return changetype<runtime.Header>(changetype<usize>(this) - runtime.Header.SIZE).payloadSize;
  }

  slice(begin: i32 = 0, end: i32 = ArrayBufferView.MAX_BYTELENGTH): ArrayBuffer {
    var length = this.byteLength;
    begin = begin < 0 ? max(length + begin, 0) : min(begin, length);
    end   = end   < 0 ? max(length + end  , 0) : min(end  , length);
    var outSize = <usize>max(end - begin, 0);
    var out = runtime.allocRaw(outSize);
    memory.copy(out, changetype<usize>(this) + <usize>begin, outSize);
    return runtime.register<ArrayBuffer>(out);
  }

  toString(): string {
    return "[object ArrayBuffer]";
  }
}
