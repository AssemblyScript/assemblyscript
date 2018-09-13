class Buffer<T> {

  static from<T>(ptr: usize): Buffer<T> {
    return changetype<Buffer<T>>(ptr);
  }

  @operator("[]") @inline get(index: i32): T {
    return load<T>(changetype<usize>(this) + (<usize>index << alignof<T>()));
  }

  @operator("[]=") @inline set(index: i32, value: T): void {
    store<T>(changetype<usize>(this) + (<usize>index << alignof<T>()), value);
  }

  slice(startIndex: i32): Buffer<T> {
    return changetype<Buffer<T>>(changetype<usize>(this) + (<usize>startIndex << alignof<T>()));
  }

  // ...
}

var buf = Buffer.from<f32>(0);
buf[0] = 1.1;
buf[1] = 1.2;

assert(buf[0] == 1.1);
assert(buf[1] == 1.2);

assert(buf.get(0) == 1.1);
assert(buf.get(1) == 1.2);

assert(load<f32>(0) == 1.1);
assert(load<f32>(4) == 1.2);

buf.set(2, 1.3);
assert(buf[2] == 1.3);
assert(buf.get(2) == 1.3);
assert(load<f32>(8) == 1.3);

assert(buf.slice(1) === changetype<Buffer<f32>>(4));
