import "rt";
import { memory as builtin_memory } from "memory";

export namespace memory {
  export function allocate(size: usize): usize {
    return __rt_allocate(size, 0);
  }
  export function free(ptr: usize): void {
    __rt_free(ptr);
  }
  export function fill(dst: usize, c: u8, n: usize): void {
    builtin_memory.fill(dst, c, n);
  }
}
