const DEFAULT_SCRATCH_BUFFER_SIZE: usize = 1 << 16;

type DataTypeIndex = u32;

export class Storage {
  private _scratchBuf: Uint8Array = new Uint8Array(DEFAULT_SCRATCH_BUFFER_SIZE);
  /**
   * @hidden
   * Reads given params into the internal scratch buffer and returns length.
   */
  private _internalBufferRead(dataType: DataTypeIndex, keyLen: usize, key: usize): usize {
    for (let i = 0; i < 2; ++i) {
      let len = data_read(
        dataType,
        keyLen,
        key,
        this._scratchBuf.byteLength,
        this._scratchBuf.buffer.data,
      );
      if (len <= <usize>(this._scratchBuf.byteLength)) {
        return len;
      }
      this._scratchBuf = new Uint8Array(len);
    }
    assert(false, "Internal scratch buffer was resized more than once");
    return 0;
  }

  /**
   * @hidden
   * Reads bytes for the given params.
   */
  _internalReadBytes(dataType: DataTypeIndex, keyLen: usize, key: usize): Uint8Array {
    let len = this._internalBufferRead(dataType, keyLen, key);
    if (len == 0) {
      return null;
    }
    let res = new Uint8Array(len);
    memory.copy(res.buffer.data, this._scratchBuf.buffer.data, len);
    return res;
  }
}

export let storage: Storage = new Storage();

export namespace near {
  export function str<T>(value: T): string {
    let arr: Array<T> = [value];
    return arr.toString();
  }

  export function log(msg: string): void {
    _near_log(<usize>msg);
  }
}

@external("env", "log")
declare function _near_log(msg_ptr: usize): void;

@external("env", "data_read")
declare function data_read(type_index: u32, key_len: usize, key: usize, max_buf_len: usize, buf_ptr: usize): usize;

// adapted from https://gist.github.com/Juszczak/63e6d9e01decc850de03
/**
 * base64 encoding/decoding
 */
export namespace base64 {
  const PADCHAR: string = '=';
  const ALPHA: string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

  function getByte64(s: string, i: u32): u32 {
    return this.ALPHA.indexOf(s.charAt(i));
  }

  export function decode (s: string): Uint8Array {
    let i: u32, b10: u32;
    let pads = 0,
        imax = s.length as u32;

    if (imax == 0) {
      return new Uint8Array(0);
    }

    if (s.charAt(imax - 1) == this.PADCHAR) {
      pads = 1;
      if (s.charAt(imax - 2) == this.PADCHAR) {
        pads = 2;
      }
      imax -= 4;
    }

    let main_chunk = imax % 4 == 0 ? imax / 4 * 3 : (imax / 4 + 1) * 3;
    let pad_size = pads > 0 ? 3 - pads : 0;
    let size = main_chunk + pad_size;

    let x = new Uint8Array(size),
        index = 0;

    for (i = 0; i < imax; i += 4) {
      b10 = (this.getByte64(s, i) << 18) | (this.getByte64(s, i + 1) << 12) | (this.getByte64(s, i + 2) << 6) | this.getByte64(s, i + 3);
      x[index++] = b10 >> 16;
      x[index++] = (b10 >> 8) & 255;
      x[index++] = b10 & 255;
    }
    switch (pads) {
      case 1:
        b10 = (this.getByte64(s, i) << 18) | (this.getByte64(s, i + 1) << 12) | (this.getByte64(s, i + 2) << 6);
        x[index++] = b10 >> 16;
        x[index++] = (b10 >> 8) & 255;
        break;
      case 2:
        b10 = (this.getByte64(s, i) << 18) | (this.getByte64(s, i + 1) << 12);
        x[index++] = b10 >> 16;
        break;
    }

    return x;
  }

  export function encode(bytes: Uint8Array): string {
    let i: i32, b10: u32;
    let x = new Array<string>(),
        imax = bytes.length - bytes.length % 3;

    if (bytes.length == 0) {
      return "";
    }

    for (i = 0; i < imax; i += 3) {
      b10 = (bytes[i] as u32 << 16) | (bytes[i+1] as u32 << 8) | bytes[i+2] as u32;
      x.push(this.ALPHA.charAt(b10 >> 18));
      x.push(this.ALPHA.charAt((b10 >> 12) & 63));
      x.push(this.ALPHA.charAt((b10 >> 6) & 63));
      x.push(this.ALPHA.charAt(b10 & 63));
    }

    switch (bytes.length - imax) {
      case 1:
        b10 = bytes[i] as u32 << 16;
        x.push(this.ALPHA.charAt(b10 >> 18));
        x.push(this.ALPHA.charAt((b10 >> 12) & 63));
        x.push(this.PADCHAR);
        x.push(this.PADCHAR);
        break;
      case 2:
        b10 = (bytes[i] as u32 << 16) | (bytes[i+1] as u32 << 8);
        x.push(this.ALPHA.charAt(b10 >> 18));
        x.push(this.ALPHA.charAt((b10 >> 12) & 63));
        x.push(this.ALPHA.charAt((b10 >> 6) & 63));
        x.push(this.PADCHAR);
        break;
    }

    return x.join('');
  }
}
