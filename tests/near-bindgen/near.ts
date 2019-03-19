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
