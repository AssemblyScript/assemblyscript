@extern
export declare class Object {
  @external("Object#constructor") static new(): Object;
  static assign(target: Object, source: Object): Object;
  static create(proto: Object): Object;
  static defineProperties(obj: Object, props: Object): Object;
  static defineProperty(obj: Object, prop: String, descriptor: Object): Object;
  static entries(obj: Object): Array;
  static freeze(obj: Object): Object;
  static fromEntries(iterable: Object): Object;
  static getOwnPropertyDescriptor(obj: Object, prop: String): Object;
  static getOwnPropertyDescriptors(obj: Object): Object;
  static getOwnPropertyNames(obj: Object): Array;
  static getOwnPropertySymbols(obj: Object): Array;
  static getPrototypeOf(obj: Object): Object;
  static is(value1: Object, value2: Object): bool;
  static isExtensible(obj: Object): bool;
  static isFrozen(obj: Object): bool;
  static isSealed(obj: Object): bool;
  static keys(obj: Object): Array;
  static preventExtensions(obj: Object): Object;
  static seal(obj: Object): Object;
  static setPrototypeOf(obj: Object, prototype: Object): Object;
  static values(obj: Object): Array;
  constructor(other: Object);
  hasOwnProperty(prop: String): bool;
  isPrototypeOf(obj: Object): bool;
  propertyIsEnumerable(prop: String): bool;
  toLocaleString(): String;
  toString(): String;
}

@extern
export declare class Number extends Object {
  @external("Number#constructor") static new<T extends number>(value: T): Number;
  constructor(other: Object);
  toString(radix?: i32): String;
  valueOf(): f64;
}

@extern
export declare class Boolean extends Object {
  @external("Boolean#constructor") static new<T extends number>(value: T): Boolean;
  constructor(other: Object);
  toString(): String;
  valueOf(): bool;
}

@extern
export declare class String extends Object {
  @external("newString") static new(value: string): String;
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
  toString(): String;
  // ...
}

@extern
export declare class Array extends Object {
  @external("Array#constructor") static new<T extends number>(value: T): Array;
  static from(arrayLike: Object): Array;
  static isArray(value: Object): bool;
  constructor(length?: i32);
  concat(other: Object): Array;
  copyWithin(target: i32, start: i32, end: i32): Array;
  toString(): String;
  // ...
}

@extern
export declare class Function extends Object {
}

@extern
export declare class RegExp extends Object {
  static get $1(): String;
  static get $2(): String;
  static get $3(): String;
  static get $4(): String;
  static get $5(): String;
  static get $6(): String;
  static get $7(): String;
  static get $8(): String;
  static get $9(): String;
  constructor(pattern: String, flags: String);
  get dotAll(): bool;
  get flags(): String;
  get length(): i32;
  get global(): bool;
  get ignoreCase(): bool;
  get multiline(): bool;
  get source(): String;
  get sticky(): bool;
  get unicode(): bool;
  get lastIndex(): i32;
  exec(str: String): Array;
  test(str: String): bool;
  toString(): String;
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
  static apply(target: Object, thisArgument: Object, argumentsList: Object): Object;
  static get(target: Object, propertyKey: Object/* , receiver: externref */): Object;
  static has(target: Object, propertyKey: Object): bool;
  static set(target: Object, propertyKey: Object, value: Object/* , receiver: externref */): Object;
}
