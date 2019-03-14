import { runtime, ArrayBufferView } from "./runtime";
import { gc } from "./gc";

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
    var buffer = runtime.alloc(<usize>length);
    memory.fill(changetype<usize>(buffer), 0, <usize>length);
    return gc.register<ArrayBuffer>(buffer);
  }

  get byteLength(): i32 {
    return changetype<runtime.Header>(changetype<usize>(this) - runtime.Header.SIZE).payloadSize;
  }

  slice(begin: i32 = 0, end: i32 = ArrayBufferView.MAX_BYTELENGTH): ArrayBuffer {
    var length = this.byteLength;
    begin = begin < 0 ? max(length + begin, 0) : min(begin, length);
    end   = end   < 0 ? max(length + end  , 0) : min(end  , length);
    var outSize = <usize>max(end - begin, 0);
    var out = runtime.alloc(outSize);
    memory.copy(out, changetype<usize>(this) + <usize>begin, outSize);
    return gc.register<ArrayBuffer>(out);
  }

  toString(): string {
    return "[object ArrayBuffer]";
  }
}
