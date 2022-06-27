export const plainGlobal = 1;

export var plainMutableGlobal = 2;

export const stringGlobal = "a";

export var mutableStringGlobal = "b";

export enum Enum {
  ONE = 1,
  TWO = 2,
  THREE
};

export const enum ConstEnum {
  ONE = 1,
  TWO = 2,
  THREE
}

export function plainFunction(a: i32, b: i32): i32 {
  return a + b;
}

export function plainFunction64(a: i64, b: i64): i64 {
  return a + b;
}

export function bufferFunction(a: ArrayBuffer, b: ArrayBuffer): ArrayBuffer {
  var aByteLength = a.byteLength;
  var bByteLength = b.byteLength;
  var out = new ArrayBuffer(aByteLength + bByteLength);
  memory.copy(changetype<usize>(out), changetype<usize>(a), <usize>aByteLength);
  memory.copy(changetype<usize>(out) + <usize>aByteLength, changetype<usize>(b), <usize>bByteLength);
  return out;
}

export function stringFunction(a: string, b: string): string {
  return a + b;
}

export function stringFunctionOptional(a: string, b: string = "b"): string {
  return a + b;
}

export function typedarrayFunction(a: Int16Array, b: Float32Array): Uint64Array {
  var out = new Uint64Array(a.length + b.length);
  for (let i = 0; i < a.length; ++i) {
    out[i] = <u64>a[i];
  }
  for (let i = 0; i < b.length; ++i) {
    out[a.length + i] = <u64>b[i];
  }
  return out;
}

export function staticarrayFunction(a: StaticArray<i32>, b: StaticArray<i32>): StaticArray<i32> {
  var c = new StaticArray<i32>(a.length + b.length);
  for (let i = 0; i < a.length; ++i) {
    c[i] = a[i];
  }
  for (let i = 0; i < b.length; ++i) {
    c[a.length + i] = b[i];
  }
  return c;
}

export function arrayFunction(a: Array<i32>, b: Array<i32>): Array<i32> {
  var c = new Array<i32>(a.length + b.length);
  for (let i = 0; i < a.length; ++i) {
    c[i] = a[i];
  }
  for (let i = 0; i < b.length; ++i) {
    c[a.length + i] = b[i];
  }
  return c;
}

export function setU8Function(): Set<u8> {
  var set = new Set<u8>();
  set.add(1);
  set.add(2);
  set.add(3);
  set.add(4);
  set.delete(2);
  return set;
}

export function setI32Function(): Set<i32> {
  var set = new Set<i32>();
  set.add(-1);
  set.add(-2);
  set.add(-3);
  set.add(-4);
  set.delete(-2);
  return set;
}

export function setF64Function(): Set<f64> {
  var set = new Set<f64>();
  set.add(1.5);
  set.add(2.5);
  set.add(3.5);
  set.add(4.5);
  set.delete(2.5);
  return set;
}

export function mapStringU8Function(): Map<string,u8> {
  var map = new Map<string,u8>();
  map.set('1', 1);
  map.set('2', 2);
  map.set('3', 3);
  map.set('4', 4);
  map.delete('2');
  return map;
}

export function mapI32F64Function(): Map<i32,f64> {
  var map = new Map<i32,f64>();
  map.set(1, 1.0);
  map.set(2, 2.0);
  map.set(3, 3.0);
  map.set(4, 4.0);
  map.delete(2);
  return map;
}

export function mapU16I64Function(): Map<u16,i64> {
  var map = new Map<u16,i64>();
  map.set(1, 1);
  map.set(2, 2);
  map.set(3, 3);
  map.set(4, 4);
  map.delete(2);
  return map;
}

class PlainObject {
  a: i8;
  b: i16;
  c: i32;
  d: i64;
  e: u8;
  f: u16;
  g: u32;
  h: u64;
  i: isize;
  j: usize;
  k: bool;
  l: f32;
  m: f64;
  n: string | null;
  o: Uint8Array | null;
  p: Array<string> | null;
}

export function objectFunction(a: PlainObject, b: PlainObject): PlainObject {
  let ref = new PlainObject();
  ref.a = a.a + b.a;
  ref.b = a.b + b.b;
  return ref;
}

class NonPlainObject {
  constructor() {}
}

export function newInternref(): NonPlainObject {
  return new NonPlainObject();
}

export function internrefFunction(a: NonPlainObject, b: NonPlainObject): NonPlainObject {
  return a;
}

trace("trace", 1, 42);

import { console, Math } from "bindings/dom";

console.log("42 from console.log");

Math.log(Math.E);

// @ts-ignore
@external("env", "globalThis") declare const immutableGlobal: externref;
immutableGlobal;

// @ts-ignore
@external("env", "globalThis.globalThis") declare const immutableGlobalNested: externref;
immutableGlobalNested;

// @ts-ignore
@external("env", "Date.getTimezoneOffset")
@external.js("return new Date().getTimezoneOffset();")
declare function Date_getTimezoneOffset(): i32;

Date_getTimezoneOffset();
