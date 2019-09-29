import { ArrayBufferView } from "./arraybuffer";

export namespace Atomics {

  // @ts-ignore: decorator
  @inline
  export function load<T>(array: ArrayBufferView, index: i32): T {
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.load<T>(changetype<usize>(array.data) + (index << alignof<T>()) + array.byteOffset);
  }

  // @ts-ignore: decorator
  @inline
  export function store<T>(array: ArrayBufferView, index: i32, value: T): void {
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    atomic.store<T>(changetype<usize>(array.data) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function add<T>(array: ArrayBufferView, index: i32, value: T): T {
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.add<T>(changetype<usize>(array.data) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function sub<T>(array: ArrayBufferView, index: i32, value: T): T {
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.sub<T>(changetype<usize>(array.data) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function and<T>(array: ArrayBufferView, index: i32, value: T): T {
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.and<T>(changetype<usize>(array.data) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function or<T>(array: ArrayBufferView, index: i32, value: T): T {
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.or<T>(changetype<usize>(array.data) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function xor<T>(array: ArrayBufferView, index: i32, value: T): T {
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.xor<T>(changetype<usize>(array.data) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function exchange<T>(array: ArrayBufferView, index: i32, value: T): T {
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.xchg<T>(changetype<usize>(array.data) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function compareExchange<T>(array: ArrayBufferView, index: i32, expectedValue: T, replacementValue: T): T {
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.cmpxchg<T>(
      changetype<usize>(array.data) + (index << alignof<T>()) + array.byteOffset,
      expectedValue,
      replacementValue,
      index
    );
  }

  // @ts-ignore: decorator
  @inline
  export function wait<T>(array: ArrayBufferView, value: T, timeout: i64 = -1): AtomicWaitResult {
    return atomic.wait<T>(changetype<usize>(array.data) + array.byteOffset, value, timeout);
  }

  // @ts-ignore: decorator
  @inline
  export function notify<T>(array: ArrayBufferView, index: i32, count: i32 = -1): i32 {
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.notify(changetype<usize>(array.data) + (index << alignof<T>()) + array.byteOffset, count);
  }

  export function isLockFree(size: usize): bool {
    return size == 1 || size == 2 || size == 4;
  }
}
