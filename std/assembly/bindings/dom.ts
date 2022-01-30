@external("env", "globalThis")
export declare const globalThis: externref;

export declare namespace Math {
  @external("env", "Math.E")
  export const E: f64;
  @external("env", "Math.LN2")
  export const LN2: f64;
  @external("env", "Math.LN10")
  export const LN10: f64;
  @external("env", "Math.LOG2E")
  export const LOG2E: f64;
  @external("env", "Math.LOG10E")
  export const LOG10E: f64;
  @external("env", "Math.PI")
  export const PI: f64;
  @external("env", "Math.SQRT1_2")
  export const SQRT1_2: f64;
  @external("env", "Math.SQRT2")
  export const SQRT2: f64;
  @external("env", "Math.abs")
  export function abs(x: f64): f64;
  @external("env", "Math.acos")
  export function acos(x: f64): f64;
  @external("env", "Math.acosh")
  export function acosh(x: f64): f64;
  @external("env", "Math.asin")
  export function asin(x: f64): f64;
  @external("env", "Math.asinh")
  export function asinh(x: f64): f64;
  @external("env", "Math.atan")
  export function atan(x: f64): f64;
  @external("env", "Math.atan2")
  export function atan2(y: f64, x: f64): f64;
  @external("env", "Math.atanh")
  export function atanh(x: f64): f64;
  @external("env", "Math.cbrt")
  export function cbrt(x: f64): f64;
  @external("env", "Math.ceil")
  export function ceil(x: f64): f64;
  @external("env", "Math.clz32")
  export function clz32(x: f64): f64;
  @external("env", "Math.cos")
  export function cos(x: f64): f64;
  @external("env", "Math.cosh")
  export function cosh(x: f64): f64;
  @external("env", "Math.exp")
  export function exp(x: f64): f64;
  @external("env", "Math.expm1")
  export function expm1(x: f64): f64;
  @external("env", "Math.floor")
  export function floor(x: f64): f64;
  @external("env", "Math.fround")
  export function fround(x: f64): f32;
  @external("env", "Math.hypot")
  export function hypot(value1: f64, value2: f64): f64; // TODO: rest
  @external("env", "Math.imul")
  export function imul(a: f64, b: f64): f64;
  @external("env", "Math.log")
  export function log(x: f64): f64;
  @external("env", "Math.log10")
  export function log10(x: f64): f64;
  @external("env", "Math.log1p")
  export function log1p(x: f64): f64;
  @external("env", "Math.log2")
  export function log2(x: f64): f64;
  @external("env", "Math.max")
  export function max(value1: f64, value2: f64): f64; // TODO: rest
  @external("env", "Math.min")
  export function min(value1: f64, value2: f64): f64; // TODO: rest
  @external("env", "Math.pow")
  export function pow(base: f64, exponent: f64): f64;
  @external("env", "Math.random")
  export function random(): f64;
  @external("env", "Math.round")
  export function round(x: f64): f64;
  @external("env", "Math.sign")
  export function sign(x: f64): f64;
  @external("env", "Math.sin")
  export function sin(x: f64): f64;
  @external("env", "Math.sinh")
  export function sinh(x: f64): f64;
  @external("env", "Math.sqrt")
  export function sqrt(x: f64): f64;
  @external("env", "Math.tan")
  export function tan(x: f64): f64;
  @external("env", "Math.tanh")
  export function tanh(x: f64): f64;
  @external("env", "Math.trunc")
  export function trunc(x: f64): f64;
}

export declare namespace Reflect {
  @external("env", "Reflect.get")
  export function get(target: externref, propertyKey: string): externref;
  @external("env", "Reflect.getWithReceiver")
  @external.js("return Reflect.get(target, propertyKey, receiver);")
  export function getWithReceiver(target: externref, propertyKey: string, receiver: externref): externref;
  @external("env", "Reflect.has")
  export function has(target: externref, propertyKey: string): bool;
  @external("env", "Reflect.set")
  export function set(target: externref, propertyKey: string, value: externref): externref;
  @external("env", "Reflect.setWithReceiver")
  @external.js("return Reflect.set(target, propertyKey, value, receiver);")
  export function setWithReceiver(target: externref, propertyKey: string, value: externref , receiver: externref): externref;
  @external("env", "Reflect.apply")
  export function apply(target: externref, thisArgument: externref, argumentsList: externref): externref;
}

export declare namespace String {
  @external("env", "String.fromCodePoint")
  export function fromCodePoint(codepoint: i32): externref;
  @external("env", "String.fromCodePoints")
  @external.js("return String.fromCodePoint(...codepoints);")
  export function fromCodePoints(codepoints: i32[]): externref;
}

export declare namespace Date {
  @external("env", "Date.now")
  export function now(): f64;
}

export declare namespace console {
  @external("env", "console.assert")
  export function assert(condition: bool, message: string): void;
  @external("env", "console.log")
  export function log(text: string): void;
  @external("env", "console.debug")
  export function debug(text: string): void;
  @external("env", "console.info")
  export function info(text: string): void;
  @external("env", "console.warn")
  export function warn(text: string): void;
  @external("env", "console.error")
  export function error(text: string): void;
  @external("env", "console.time")
  export function time(label: string): void;
  @external("env", "console.timeLog")
  export function timeLog(label: string): void;
  @external("env", "console.timeEnd")
  export function timeEnd(label: string): void;
}

export declare namespace document {
  @external("env", "document.getElementById")
  export function getElementById(id: string): externref;
}

export declare namespace performance {
  @external("env", "performance.now")
  export function now(): f64;
}

export namespace crypto {
  export function getRandomValues(array: Uint8Array): void {
    let values = getRandomValuesN(array.length);
    array.set(values);
  }
  @external("env", "crypto.getRandomValuesN")
  @external.js("let a = new Uint8Array(n); crypto.getRandomValues(a); return a;")
  export declare function getRandomValuesN(n: u32): Uint8Array;
}
