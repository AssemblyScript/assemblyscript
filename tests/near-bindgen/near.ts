export namespace near {
  export function bufferWithSizeFromPtr(ptr: usize, length: usize): Uint8Array {
    let withSize = new Uint8Array(length + 4);
    store<u32>(withSize.buffer.data, length);
    // TODO: Should use better copy routine or better avoid copy altogether
    for (let i = <usize>0; i < length; i++) {
        withSize[i + 4] = load<u8>(ptr + i);
    }
    return withSize;
  }

  export function bufferWithSize(buf: Uint8Array): Uint8Array {
    return bufferWithSizeFromPtr(buf.buffer.data, buf.byteLength);
  }

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
