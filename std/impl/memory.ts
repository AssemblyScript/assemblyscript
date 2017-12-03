/// <reference path="../../assembly.d.ts" />

@global()
class Memory {

  static allocate(size: usize): usize {
    const ptr: usize = load<usize>(sizeof<usize>());
    store<usize>(sizeof<usize>(), ptr + size);
    return ptr;
  }

  static free(ptr: usize): void {
  }

  static copy(src: usize, dst: usize, count: usize): void {
    for (let i: usize = 0; i < count; ++i)
      store<u8>(dst + i, load<u8>(src + i));
  }

  static compare(src: usize, dst: usize, count: usize): i32 {
    for (let i: usize = 0; i < count; ++i) {
      const d: i32 = (load<u8>(src + i) as i32) - (load<u8>(dst + i) as i32);
      if (d) return d;
    }
    return 0;
  }
}
