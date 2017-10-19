/// <reference path="../assembly.d.ts" />

declare class Memory {
  static allocate(size: usize): usize;
  static free(ptr: usize): void;
  static copy(src: usize, dst: usize, count: usize): void;
  static compare(src: usize, dst: usize, count: usize): i32;
}
