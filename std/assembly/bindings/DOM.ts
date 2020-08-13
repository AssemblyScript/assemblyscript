@extern
export declare class Object {
  static is(value1: Object, value2: Object): bool;
  constructor(other: Object);
  hasOwnProperty(prop: String): bool;
  toString(): String;
  // ...
}

@extern
export declare class String extends Object {
  static fromCharCode(code: i32): String;
  static fromCodePoint(code: i32): String;
  constructor(other: Object);
  get length(): i32;
  charAt(index: i32): String;
  charCodeAt(index: i32): i32;
  codePointAt(index: i32): i32;
  concat(other: String): String;
  endsWith(other: String): bool;
  includes(other: String): bool;
  indexOf(other: String): i32;
  lastIndexOf(other: String): i32;
  localeCompare(other: String): i32;
  match(pattern: RegExp): Array;
  matchAll(pattern: RegExp): Array;
  normalize(): String;
  padEnd(targetLength: i32, padString: String): String;
  padStart(targetLength: i32, padString: String): String;
  repeat(count: i32): String;
  replace(pattern: String, replacement: String): String;
  replaceAll(pattern: String, replacement: String): String;
  search(pattern: RegExp): i32;
  slice(beginIndex: i32, endIndex?: i32): String;
  // ...
}
export declare function newString(value: string): String;

@extern
export declare class Number extends Object {
  // ...
}
export declare function newNumber(value: i32): Number;

@extern
export declare class Array extends Object {
  constructor(length: i32);
  get length(): i32;
  // ...
}

@extern
export declare class RegExp extends Object {
  // ...
}

@extern
export declare class console {
  static assert(value: Object): void;
  static clear(): void;
  static error(value: Object): void;
  static info(value: Object): void;
  static log(value: Object): void;
  static time(label: Object): externref;
  static timeEnd(label: Object): void;
  static timeLog(label: Object): void;
  static trace(): void;
  static warn(value: Object): void;
}

@extern
export declare class HTMLCanvasElement {
  // ...
}

@extern
export declare class CanvasRenderingContext2D {
  get canvas(): HTMLCanvasElement;

  // state
  save(): void;
  restore(): void;

  // transformations
  scale(x: f64, y: f64): void;
  rotate(angle: f64): void;
  translate(x: f64, y: f64): void;
  transform(a: f64, b: f64, c: f64, d: f64, e: f64, f: f64): void;
  setTransform(a: f64, b: f64, c: f64, d: f64, e: f64, f: f64): void;

  // compositing
  get globalAlpha(): f64;
  set globalAlpha(value: f64);
  get globalCompositeOperation(): String;
  set globalCompositeOperation(value: String);

  // ...
}

@extern
export declare class Reflect {
  static get(target: Object, propertyKey: Object/* , receiver: externref */): Object;
  static has(target: Object, propertyKey: Object): bool;
  static set(target: Object, propertyKey: Object, value: Object/* , receiver: externref */): Object;
  static apply(target: Object, thisArgument: Object, argumentsList: Object): Object;
}
