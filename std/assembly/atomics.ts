import { ArrayBufferView } from "./arraybuffer";
import { E_INDEXOUTOFRANGE } from "./util/error";

export namespace Atomics {
  export function load<T extends ArrayBufferView>(array: T, index: i32): valueof<T> {
    if (index < 0 || (index << alignof<valueof<T>>()) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.load<valueof<T>>(
      changetype<usize>(array.buffer) + (index << alignof<valueof<T>>()) + array.byteOffset
    );
  }

  export function store<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): void {
    if (index < 0 || (index << alignof<valueof<T>>()) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    atomic.store<valueof<T>>(
      changetype<usize>(array.buffer) + (index << alignof<valueof<T>>()) + array.byteOffset,
      value
    );
  }

  export function add<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    if (index < 0 || (index << alignof<valueof<T>>()) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.add<valueof<T>>(
      changetype<usize>(array.buffer) + (index << alignof<valueof<T>>()) + array.byteOffset,
      value
    );
  }

  export function sub<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    if (index < 0 || (index << alignof<valueof<T>>()) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.sub<valueof<T>>(
      changetype<usize>(array.buffer) + (index << alignof<valueof<T>>()) + array.byteOffset,
      value
    );
  }

  export function and<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    if (index < 0 || (index << alignof<valueof<T>>()) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.and<valueof<T>>(
      changetype<usize>(array.buffer) + (index << alignof<valueof<T>>()) + array.byteOffset,
      value
    );
  }

  export function or<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    if (index < 0 || (index << alignof<valueof<T>>()) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.or<valueof<T>>(
      changetype<usize>(array.buffer) + (index << alignof<valueof<T>>()) + array.byteOffset,
      value
    );
  }

  export function xor<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    if (index < 0 || (index << alignof<valueof<T>>()) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.xor<valueof<T>>(
      changetype<usize>(array.buffer) + (index << alignof<valueof<T>>()) + array.byteOffset,
      value
    );
  }

  export function exchange<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    if (index < 0 || (index << alignof<valueof<T>>()) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.xchg<valueof<T>>(
      changetype<usize>(array.buffer) + (index << alignof<valueof<T>>()) + array.byteOffset,
      value
    );
  }

  export function compareExchange<T extends ArrayBufferView>(
    array: T,
    index: i32,
    expectedValue: valueof<T>,
    replacementValue: valueof<T>
  ): valueof<T> {
    if (index < 0 || (index << alignof<valueof<T>>()) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.cmpxchg<valueof<T>>(
      changetype<usize>(array.buffer) + (index << alignof<valueof<T>>()) + array.byteOffset,
      expectedValue,
      replacementValue
    );
  }

  export function wait<T extends ArrayBufferView>(array: T, value: valueof<T>, timeout: i64 = -1): AtomicWaitResult {
    return atomic.wait<valueof<T>>(changetype<usize>(array.buffer) + array.byteOffset, value, timeout);
  }

  export function notify<T extends ArrayBufferView>(array: T, index: i32, count: i32 = -1): i32 {
    if (index < 0 || (index << alignof<valueof<T>>()) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.notify(changetype<usize>(array.buffer) + (index << alignof<valueof<T>>()) + array.byteOffset, count);
  }

  export function isLockFree(size: usize): bool {
    return size == 1 || size == 2 || size == 4;
  }
}
