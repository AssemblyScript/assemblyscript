/// <reference path="../../portable-assembly.d.ts" />
/// <reference path="./binaryen-c.d.ts" />

// Raw memory accesses to Binaryen memory
declare function store<T = u8>(ptr: usize, val: T): void;
declare function load<T = u8>(ptr: usize): T;
