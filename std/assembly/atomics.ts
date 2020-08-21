import { ArrayBufferView } from "./arraybuffer";
import { E_INDEXOUTOFRANGE } from "./util/error";

export namespace Atomics {

  // @ts-ignore: decorator
  @inline
  export function load<T extends ArrayBufferView>(array: T, index: i32): valueof<T> {
    const align = alignof<valueof<T>>();
    if (index < 0 || (index << align) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.load<valueof<T>>(
      changetype<usize>(array.buffer) + (index << align) + array.byteOffset
    );
  }

  // @ts-ignore: decorator
  @inline
  export function store<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): void {
    const align = alignof<valueof<T>>();
    if (index < 0 || (index << align) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    atomic.store<valueof<T>>(
      changetype<usize>(array.buffer) + (index << align) + array.byteOffset,
      value
    );
  }

  // @ts-ignore: decorator
  @inline
  export function add<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    const align = alignof<valueof<T>>();
    if (index < 0 || (index << align) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.add<valueof<T>>(
      changetype<usize>(array.buffer) + (index << align) + array.byteOffset,
      value
    );
  }

  // @ts-ignore: decorator
  @inline
  export function sub<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    const align = alignof<valueof<T>>();
    if (index < 0 || (index << align) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.sub<valueof<T>>(
      changetype<usize>(array.buffer) + (index << align) + array.byteOffset,
      value
    );
  }

  // @ts-ignore: decorator
  @inline
  export function and<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    const align = alignof<valueof<T>>();
    if (index < 0 || (index << align) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.and<valueof<T>>(
      changetype<usize>(array.buffer) + (index << align) + array.byteOffset,
      value
    );
  }

  // @ts-ignore: decorator
  @inline
  export function or<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    const align = alignof<valueof<T>>();
    if (index < 0 || (index << align) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.or<valueof<T>>(
      changetype<usize>(array.buffer) + (index << align) + array.byteOffset,
      value
    );
  }

  // @ts-ignore: decorator
  @inline
  export function xor<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    const align = alignof<valueof<T>>();
    if (index < 0 || (index << align) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.xor<valueof<T>>(
      changetype<usize>(array.buffer) + (index << align) + array.byteOffset,
      value
    );
  }

  // @ts-ignore: decorator
  @inline
  export function exchange<T extends ArrayBufferView>(array: T, index: i32, value: valueof<T>): valueof<T> {
    const align = alignof<valueof<T>>();
    if (index < 0 || (index << align) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.xchg<valueof<T>>(
      changetype<usize>(array.buffer) + (index << align) + array.byteOffset,
      value
    );
  }

  // @ts-ignore: decorator
  @inline
  export function compareExchange<T extends ArrayBufferView>(
    array: T,
    index: i32,
    expectedValue: valueof<T>,
    replacementValue: valueof<T>
  ): valueof<T> {
    const align = alignof<valueof<T>>();
    if (index < 0 || (index << align) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.cmpxchg<valueof<T>>(
      changetype<usize>(array.buffer) + (index << align) + array.byteOffset,
      expectedValue,
      replacementValue
    );
  }

  // @ts-ignore: decorator
  @inline
  export function wait<T extends ArrayBufferView>(array: T, value: valueof<T>, timeout: i64 = -1): AtomicWaitResult {
    return atomic.wait<valueof<T>>(changetype<usize>(array.buffer) + array.byteOffset, value, timeout);
  }

  // @ts-ignore: decorator
  @inline
  export function notify<T extends ArrayBufferView>(array: T, index: i32, count: i32 = -1): i32 {
    const align = alignof<valueof<T>>();
    if (index < 0 || (index << align) >= array.byteLength) throw new RangeError(E_INDEXOUTOFRANGE);
    return atomic.notify(changetype<usize>(array.buffer) + (index << align) + array.byteOffset, count);
  }

  export function isLockFree(size: usize): bool {
    return size == 1 || size == 2 || size == 4;
  }
}
