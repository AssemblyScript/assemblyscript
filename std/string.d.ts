/// <reference path="../assembly.d.ts" />

declare class String {
  readonly length: i32;
  constructor(length: i32);
  static fromCharCode(c1: i32, c2?: i32);
  static equals(a: string, b: string): bool;
  static concat(a: string, b: string): string;
  charCodeAt(index: i32): u16;
  concat(other: string): string;
}
