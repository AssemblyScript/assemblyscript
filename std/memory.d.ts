/// <reference path="../assembly.d.ts" />

declare class Memory {
  static allocate(size: usize): usize;
  static dispose(ptr: usize): void;
}
