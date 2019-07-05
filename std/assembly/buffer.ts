import { Uint8Array } from "typedarray";
import { ArrayBufferView } from "arraybuffer";
import { TypeinfoFlags } from "shared/typeinfo";

export class Buffer extends Uint8Array {

  // TODO: Add more
  private static NO_ENCODING: i32 = 0;
  private static UTF8_ENCODING: i32 = 1;
  private static UTF16_ENCODING: i32 = 2;
  private encoding: i32 = 0;

  constructor(size: i32) {
    super(size);
  }

  public static isBuffer<T>(obj: T): bool {
    return obj instanceof Buffer && obj != null;
  }

  public static from<T>(source: T, encoding: string = "utf8"): Buffer {
    if (source instanceof ArrayBuffer) {
      let length = source.byteLength;
      let buffer = new Buffer(length);
      memory.copy(changetype<usize>(buffer.buffer), changetype<usize>(source), length);
      return buffer;
    } else if (source instanceof string) {
      if (encoding == null) encoding = "utf8";

      if (encoding == "utf8") {
        let encoded = String.UTF8.encode(source);
        let buffer = changetype<Buffer>(__alloc(offsetof<Buffer>(), idof<Buffer>()));
        buffer.buffer = encoded;
        buffer.dataStart = 0;
        buffer.dataLength = encoded.byteLength;
        return buffer;
      } else if (encoding == "utf16") {
        let encoded = String.UTF16.encode(source);
        let buffer = changetype<Buffer>(__alloc(offsetof<Buffer>(), idof<Buffer>()));
        buffer.buffer = encoded;
        buffer.dataStart = 0;
        buffer.dataLength = encoded.byteLength;
        return buffer;
      }
      assert(false);
      return null;
    } else if (source instanceof ArrayBufferView) {
      var sourceInfo = __typeinfo(idof<T>());
      var sourceIsManaged = (sourceInfo & TypeinfoFlags.VALUE_MANAGED) != 0; // disallow this
      assert(!sourceIsManaged);
      let length = source.length;
      let buffer = new Buffer(length);
      for (let i = 0; i < length; i++) {
        buffer[i] = <u8>source[i];
      }
      return buffer;
    } else {
      assert(false, "hit");
      return null;
    }
  }
}
