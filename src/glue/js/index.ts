import "../../../std/portable";

// Copy Binaryen exports to global scope

declare const global: any;
declare function require(name: string): any;

const binaryen: any = global.Binaryen || require("binaryen");

for (let key in binaryen)
  if (key.startsWith("_Binaryen") || key.startsWith("_Relooper"))
    global[key] = (<any>binaryen)[key];

// Use Binaryen's heap instead of std heap

global.allocate_memory = function(size: number): number {
  if (!size) return 0; // should be safe in our case
  return (<any>binaryen)._malloc(size);
};

global.free_memory = function(ptr: number): void {
  if (ptr) (<any>binaryen)._free(ptr);
};

global.move_memory = function(dest: number, src: number, n: number): number {
  return (<any>binaryen)._memmove(dest, src, n);
};

global.store = function(ptr: number, val: number): void {
  (<any>binaryen).HEAPU8[ptr] = val;
};

global.load = function(ptr: number): number {
  return (<any>binaryen).HEAPU8[ptr];
};

// Implement module stubs

import { Module } from "../../module";

Module.prototype.toText = function toText() {
  var previousPrint = binaryen.print;
  var ret = "";
  binaryen.print = (x: string) => { ret += x + "\n" };
  this.print();
  binaryen.print = previousPrint;
  return ret;
};

Module.prototype.toAsmjs = function toAsmjs() {
  var previousPrint = binaryen.print;
  var ret = "";
  binaryen.print = (x: string) => { ret += x + "\n" };
  this.printAsmjs();
  binaryen.print = previousPrint;
  return ret;
};

// Implement I64 using long.js

import * as Long from "long";

/// <reference path="./i64.d.ts" />

global.i64_new = function(lo: number, hi: number = 0): I64 {
  return Long.fromBits(lo, hi);
};

global.i64_low = function(value: I64): i32 {
  return value.low;
};

global.i64_high = function(value: I64): i32 {
  return value.high;
};

global.i64_add = function(left: I64, right: I64): I64 {
  return left.add(right);
};

global.i64_sub = function(left: I64, right: I64): I64 {
  return left.sub(right);
};

global.i64_mul = function(left: I64, right: I64): I64 {
  return left.mul(right);
};

global.i64_div = function(left: I64, right: I64): I64 {
  return left.div(right);
};

global.i64_div_u = function(left: I64, right: I64): I64 {
  return left.toUnsigned().div(right.toUnsigned()).toSigned();
};

global.i64_rem = function(left: I64, right: I64): I64 {
  return left.mod(right);
};

global.i64_rem_u = function(left: I64, right: I64): I64 {
  return left.toUnsigned().mod(right.toUnsigned()).toSigned();
};

global.i64_and = function(left: I64, right: I64): I64 {
  return left.and(right);
};

global.i64_or = function(left: I64, right: I64): I64 {
  return left.or(right);
};

global.i64_xor = function(left: I64, right: I64): I64 {
  return left.xor(right);
};

global.i64_shl = function(left: I64, right: I64): I64 {
  return left.shl(right);
};

global.i64_shr = function(left: I64, right: I64): I64 {
  return left.shr(right);
};

global.i64_shr_u = function(left: I64, right: I64): I64 {
  return left.shru(right);
};

global.i64_not = function(value: I64): I64 {
  return value.not();
};

global.i64_align = function(value: I64, alignment: i32): I64 {
  assert(alignment && (alignment & (alignment - 1)) == 0);
  var mask = Long.fromInt(alignment - 1);
  return value.add(mask).and(mask.not());
};

global.i64_is_i8 = function(value: I64): bool {
  return value.high === 0 && (value.low >= 0 && value.low <= i8.MAX_VALUE)
      || value.high === -1 && (value.low >= i8.MIN_VALUE && value.low < 0);
};

global.i64_is_i16 = function(value: I64): bool {
  return value.high === 0 && (value.low >= 0 && value.low <= i16.MAX_VALUE)
      || value.high === -1 && (value.low >= i16.MIN_VALUE && value.low < 0);
};

global.i64_is_i32 = function(value: I64): bool {
  return (value.high === 0 && value.low >= 0) || (value.high === -1 && value.low < 0);
};

global.i64_is_u8 = function(value: I64): bool {
  return value.high === 0 && value.low >= 0 && value.low <= u8.MAX_VALUE;
};

global.i64_is_u16 = function(value: I64): bool {
  return value.high === 0 && value.low >= 0 && value.low <= u16.MAX_VALUE;
};

global.i64_is_u32 = function(value: I64): bool {
  return value.high === 0;
};

global.i64_is_bool = function(value: I64): bool {
  return value.high === 0 && (value.low === 0 || value.low === 1);
};

const minSafeF32 = Long.fromNumber(f32.MIN_SAFE_INTEGER);
const maxSafeF32 = Long.fromNumber(f32.MAX_SAFE_INTEGER);

global.i64_is_f32 = function(value: I64): bool {
  return value.gte(minSafeF32) && value.lte(maxSafeF32);
};

const minSafeF64 = Long.fromNumber(f64.MIN_SAFE_INTEGER);
const maxSafeF64 = Long.fromNumber(f64.MAX_SAFE_INTEGER);

global.i64_is_f64 = function(value: I64): bool {
  return value.gte(minSafeF64) && value.lte(maxSafeF64);
};

global.i64_to_f32 = function(value: I64): f64 {
  return global.Math.fround(value.toNumber());
};

global.i64_to_f64 = function(value: I64): f64 {
  return value.toNumber();
};

global.i64_to_string = function(value: I64, unsigned: bool = false): string {
  return (unsigned ? value.toUnsigned() : value).toString(10);
};
