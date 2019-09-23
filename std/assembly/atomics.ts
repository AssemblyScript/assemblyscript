export namespace Atomics {
  // @ts-ignore: decorator
  @inline
  export function load<T>(array: ArrayBufferView<T>, index: i32): T {
    if (isFloat<T>()) ERROR("Atomics.load accept only integer shared typed arrays");
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.load<T>(changetype<usize>(array.buffer) + (index << alignof<T>()) + array.byteOffset);
  }

  // @ts-ignore: decorator
  @inline
  export function store<T>(array: ArrayBufferView<T>, index: i32, value: T): void {
    if (isFloat<T>()) ERROR("Atomics.store accept only integer shared typed arrays");
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    atomic.store<T>(changetype<usize>(array.buffer) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function add<T>(array: ArrayBufferView<T>, index: i32, value: T): T {
    if (isFloat<T>()) ERROR("Atomics.add accept only integer shared typed arrays");
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.add<T>(changetype<usize>(array.buffer) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function sub<T>(array: ArrayBufferView<T>, index: i32, value: T): T {
    if (isFloat<T>()) ERROR("Atomics.sub accept only integer shared typed arrays");
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.sub<T>(changetype<usize>(array.buffer) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function and<T>(array: ArrayBufferView<T>, index: i32, value: T): T {
    if (isFloat<T>()) ERROR("Atomics.and accept only integer shared typed arrays");
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.and<T>(changetype<usize>(array.buffer) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function or<T>(array: ArrayBufferView<T>, index: i32, value: T): T {
    if (isFloat<T>()) ERROR("Atomics.or accept only integer shared typed arrays");
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.or<T>(changetype<usize>(array.buffer) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function xor<T>(array: ArrayBufferView<T>, index: i32, value: T): T {
    if (isFloat<T>()) ERROR("Atomics.xor accept only integer shared typed arrays");
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.xor<T>(changetype<usize>(array.buffer) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function exchange<T>(array: ArrayBufferView<T>, index: i32, value: T): T {
    if (isFloat<T>()) ERROR("Atomics.exchange accept only integer shared typed arrays");
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.xchg<T>(changetype<usize>(array.buffer) + (index << alignof<T>()) + array.byteOffset, value, index);
  }

  // @ts-ignore: decorator
  @inline
  export function compareExchange<T>(array: ArrayBufferView<T>, index: i32, expectedValue: T, replacementValue: T): T {
    if (isFloat<T>()) ERROR("Atomics.compareExchange accept only integer shared typed arrays");
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.cmpxchg<T>(
      changetype<usize>(array.buffer) + (index << alignof<T>()) + array.byteOffset,
      expectedValue,
      replacementValue,
      index
    );
  }

  // @ts-ignore: decorator
  @inline
  export function wait<T>(array: ArrayBufferView<T>, value: T, timeout: i64 = -1): AtomicWaitResult {
    if (sizeof<T>() < 4) ERROR("Atomics.wait accept only Int32Array/Uint32Array or Int64Array/Uint64Array shared typed array");
    if (isFloat<T>()) ERROR("Atomics.wait accept only Int32Array/Uint32Array or Int64Array/Uint64Array shared typed array");
    return atomic.wait<T>(changetype<usize>(array.buffer) + array.byteOffset, value, timeout);
  }

  // @ts-ignore: decorator
  @inline
  export function notify<T>(array: ArrayBufferView<T>, index: i32, count: i32 = -1): i32 {
    if (sizeof<T>() < 4) ERROR("Atomics.notify accept only Int32Array/Uint32Array or Int64Array/Uint64Array shared typed array");
    if (isFloat<T>()) ERROR("Atomics.notify accept only Int32Array/Uint32Array or Int64Array/Uint64Array shared typed array");
    if (index < 0 || (index << alignof<T>()) >= array.byteLength) throw new RangeError("Invalid atomic access index");
    return atomic.notify(changetype<usize>(array.buffer) + (index << alignof<T>()) + array.byteOffset, count);
  }

  export function isLockFree(size: usize): bool {
    return size == 1 || size == 2 || size == 4;
  }
}
