/// <reference path="../assembly.d.ts" />

declare class CArray<T> {
  [key: number]: T;
  constructor(capacity: usize);
}
