/**
 * ToilScript-native ambient declarations.
 *
 * Zero-import natives the ToilScript compiler provides directly: the `@main`
 * entry decorator and the big-integer global types (u128 / i128 / u256 / i256,
 * implemented in std/assembly/bignum). They live in this ambient `.d.ts`
 * (referenced from index.d.ts) so editors and type-checking recognize them; the
 * compiler handles `@main` and resolves the real bignum classes on its own.
 */

/**
 * Marks a single top-level function as the module entry point. The compiler
 * exports it as the WebAssembly export `main`, no `export` keyword needed.
 * Exactly one `@main` is allowed per module.
 */
declare function main(): void;

// Typed as their decorator targets (class decorators take the constructor; the method
// decorator takes target/key/descriptor) so editors accept the bare forms. The compiler
// handles them natively and ignores these declarations.

/**
 * Marks a class as a serializable data type: the compiler generates a compact,
 * self-identifying binary codec (`encode`/`decode`) plus a `toJSON`/`fromJSON`
 * view, and (with `--rpcModule`) a matching typed client class.
 */
declare function data(target: Function): void;

/**
 * Marks a function (free, or a method of an `@service` class) as a client-callable
 * RPC endpoint. The server build emits it onto the typed client `Server` surface.
 */
declare function remote<T>(target: Object, propertyKey: string | symbol, descriptor: TypedPropertyDescriptor<T>): void;

/**
 * Marks a class as an RPC service: its `@remote` methods are namespaced under the
 * client `Server` (e.g. `Server.<service>.<method>()`).
 */
declare function service(target: Function): void;

// --- HTTP layer (@rest / @route), handled natively by the compiler; typed here for editors ---

/** HTTP method for `@route({ method: Methods.GET, ... })`. */
declare enum Methods { GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS }

/** Body/response codec for `@route({ stream: DataStream.JSON, ... })`. */
declare enum DataStream { JSON, Binary }

interface RestOptions { stream?: DataStream }
interface RouteOptions { method: Methods; path: string; stream?: DataStream }
/** A legacy method decorator (the return of a `@route`/`@get`/... factory). */
type ToilRouteDecorator = <T>(target: Object, propertyKey: string | symbol, descriptor: TypedPropertyDescriptor<T>) => void;

/** Marks a class as an HTTP controller mounted at `prefix` (default `/`). */
declare function rest(target: Function): void;
declare function rest(prefix?: string): (target: Function) => void;
declare function rest(options: RestOptions): (target: Function) => void;

/** Declares an HTTP route on a `@rest` method (`@route({ method, path, stream })`). */
declare function route(options: RouteOptions): ToilRouteDecorator;
/** HTTP verb shortcuts for `@route` (`@del` for DELETE, since `delete` is a reserved word). */
declare function get(path: string): ToilRouteDecorator;
declare function post(path: string): ToilRouteDecorator;
declare function put(path: string): ToilRouteDecorator;
declare function del(path: string): ToilRouteDecorator;
declare function patch(path: string): ToilRouteDecorator;
declare function head(path: string): ToilRouteDecorator;
declare function options(path: string): ToilRouteDecorator;

// --- route response/security decorators, handled natively by the compiler ---

/** Cache a route's response: `@cache(edgeMinutes, browserSeconds?, privateScope?, allowAuth?)`. */
declare function cache(edgeMinutes: i32, browserSeconds?: i32, privateScope?: bool, allowAuth?: bool): ToilRouteDecorator;

/** Rate-limiting strategy for `@ratelimit`. Values match the runtime `RateLimit` enum. */
declare enum RateLimit { FixedWindow, SlidingWindow, TokenBucket }

/** Rate-limit a route: `@ratelimit(strategy, limit, window)`. */
declare function ratelimit(strategy: RateLimit, limit: i32, window: i32): ToilRouteDecorator;

/** Require a valid session for a `@rest` class or route method (`@auth`). 401 otherwise. */
declare function auth(target: Function): void;
declare function auth(target: Object, propertyKey: string | symbol, descriptor: TypedPropertyDescriptor<any>): void;

/** Declare the authenticated-user type (`@user class User { ... }`); enables `AuthService.getUser()`. */
declare function user(target: Function): void;

// --- ToilDB (@database / @collection + the @query/@action/... function kinds),
//     handled natively by the compiler; typed here so editors accept the bare forms ---

/** Marks a class as a ToilDB database: each `@collection` field becomes a typed,
 *  lazily-resolved collection handle (`App.users.get(...)`). */
declare function database(target: Function): void;

/** Declares a `@database` field as a collection - a `Documents`/`View`/`Unique`/
 *  `Counter`/`Events`/`Membership`/`Capacity` handle. Prefer the `static` form,
 *  `@collection static users: Documents<UserId, User>` (no `!` - a definite
 *  assignment assertion on a static field is a TS1255 error, and the compiler
 *  demotes the field so none is needed), so `App.users` type-checks in any editor
 *  with no language-service plugin. The instance form (`@collection users!: ...`)
 *  still works but needs the toilscript TS plugin to type the static `App.users`
 *  access. */
declare function collection(target: Object, propertyKey: string | symbol): void;

/** ToilDB function kinds (spec 6) - the data ops a function may issue. `@query`
 *  is read-only; `@action` adds bounded writes/claims; `@derive` publishes
 *  views/rollups; `@job` is background work; `@admin` is control-plane only. The
 *  compiler enforces the family x kind matrix (a `@query` calling `.patch` is a
 *  compile error). */
declare function query(target: Function): void;
declare function action(target: Function): void;
declare function job(target: Function): void;
declare function derive(target: Function): void;
declare function admin(target: Function): void;

// The ToilDB collection HANDLES are ambient globals (NO import, like the bignum
// natives below) - the compiler provides them (`std/assembly/toildb`, `@global`);
// these typings let editors recognize `@collection users!: Documents<UserId,
// User>` and `App.users.get(...)`. Every handle is KEY-FIRST (`<K, V>`, matching
// `Map`/`Record`). `K`/`V`/`M` are `@data` types (the codec the host marshals).

/** A mutable keyed-entity collection (spec 7.1): user profiles, items, sessions. */
declare class Documents<K, V> {
  get(key: K): V | null;
  require(key: K): V;
  exists(key: K): bool;
  getMany(keys: K[]): (V | null)[];
  create(key: K, value: V): bool;
  patch(key: K, value: V): V;
  delete(key: K): void;
  getDelete(key: K): V | null;
}

/** A precomputed, read-optimized projection (spec 7.2): pages, leaderboards. */
declare class View<K, V> {
  get(key: K): V | null;
  require(key: K): V;
  publish(key: K, value: V): void;
}

/** The result of a `unique.claim` (spec 8.6). */
declare class ClaimResult<V> {
  claimed: bool;
  owner: V | null;
  constructor(claimed: bool, owner: V | null);
}

/** A globally-unique claim collection (spec 7.6): usernames, emails, slugs. */
declare class Unique<K, V> {
  lookup(key: K): V | null;
  claim(key: K, value: V): ClaimResult<V>;
  release(key: K, value: V): void;
}

/** An unordered set (spec 7.3): followers, tags, ACLs, room members. */
declare class Membership<K, M> {
  contains(key: K, member: M): bool;
  add(key: K, member: M): void;
  remove(key: K, member: M): void;
  list(key: K, limit: i32): M[];
}

/** A finite, strongly-consistent resource via escrow (spec 7.7): stock, seats. */
declare class Capacity<K> {
  available(key: K): i64;
  reserve(key: K, amount: i64, ttlMs: i64): u64;
  confirm(key: K, reservationId: u64): bool;
  cancel(key: K, reservationId: u64): bool;
  setTotal(key: K, total: i64): void;
}

/** A commutative integer counter (spec 7.4): likes, view counts, inventory. */
declare class Counter<K> {
  get(key: K): i64;
  add(key: K, delta: i64): void;
}

/** An append-only event log (spec 7.5): activity feeds, audit trails. */
declare class Events<K, V> {
  append(key: K, event: V): void;
  latest(key: K, limit: i32): V[];
}

// Big integers, native globals implemented in std/assembly/bignum. The
// arithmetic/bitwise/comparison operators
// (+ - * / % & | ^ << >> == != < > <= >=) are operator overloads resolved by
// the compiler; the equivalent static methods are listed for tooling.

/** A 128-bit unsigned integer. */
declare class u128 {
  lo: u64;
  hi: u64;
  constructor(lo?: u64, hi?: u64);

  static readonly Zero: u128;
  static readonly One: u128;
  static readonly Min: u128;
  static readonly Max: u128;

  static fromString(value: string, radix?: i32): u128;
  static fromI256(value: i256): u128;
  static fromU256(value: u256): u128;
  static fromI128(value: i128): u128;
  static fromU128(value: u128): u128;
  static fromI64(value: i64): u128;
  static fromU64(value: u64): u128;
  static fromF64(value: f64): u128;
  static fromF32(value: f32): u128;
  static fromI32(value: i32): u128;
  static fromU32(value: u32): u128;
  static fromBool(value: bool): u128;
  static fromBits(lo1: u32, lo2: u32, hi1: u32, hi2: u32): u128;
  static fromBytes<T>(array: T, bigEndian?: bool): u128;
  static fromBytesLE(array: u8[]): u128;
  static fromBytesBE(array: u8[]): u128;
  static fromUint8ArrayLE(array: Uint8Array): u128;
  static fromUint8ArrayBE(array: Uint8Array): u128;
  static from<T>(value: T): u128;

  static isEmpty(value: u128): bool;
  static or(a: u128, b: u128): u128;
  static xor(a: u128, b: u128): u128;
  static and(a: u128, b: u128): u128;
  static shl(value: u128, shift: i32): u128;
  static shr(value: u128, shift: i32): u128;
  static shr_u(value: u128, shift: i32): u128;
  static rotl(value: u128, shift: i32): u128;
  static rotr(value: u128, shift: i32): u128;
  static add(a: u128, b: u128): u128;
  static sub(a: u128, b: u128): u128;
  static mul(a: u128, b: u128): u128;
  static div(a: u128, b: u128): u128;
  static rem(a: u128, b: u128): u128;
  static div10(value: u128): u128;
  static rem10(value: u128): u128;
  static pow(base: u128, exponent: i32): u128;
  static sqrt(value: u128): u128;
  static sqr(value: u128): u128;
  static muldiv(a: u128, b: u128, c: u128): u128;
  static eq(a: u128, b: u128): bool;
  static ne(a: u128, b: u128): bool;
  static lt(a: u128, b: u128): bool;
  static gt(a: u128, b: u128): bool;
  static le(a: u128, b: u128): bool;
  static ge(a: u128, b: u128): bool;
  static ord(a: u128, b: u128): i32;
  static popcnt(value: u128): i32;
  static clz(value: u128): i32;
  static ctz(value: u128): i32;

  set(value: u128): this;
  setI64(value: i64): this;
  setU64(value: u64): this;
  setI32(value: i32): this;
  setU32(value: u32): this;
  isZero(): bool;
  not(): u128;
  neg(): u128;
  pos(): u128;
  sqr(): this;
  preInc(): this;
  preDec(): this;
  postInc(): u128;
  postDec(): u128;
  clone(): u128;
  as<T>(): T;
  toI64(): i64;
  toU64(): u64;
  toI32(): i32;
  toU32(): u32;
  toBool(): bool;
  toF64(): f64;
  toF32(): f32;
  toI128(): i128;
  toU128(): this;
  toI256(): i256;
  toU256(): u256;
  toBytes(bigEndian?: bool): u8[];
  toStaticBytes(bigEndian?: bool): StaticArray<u8>;
  toUint8Array(bigEndian?: bool): Uint8Array;
  toString(radix?: i32): string;
}

/** A 128-bit signed integer. */
declare class i128 {
  lo: u64;
  hi: i64;
  constructor(lo?: u64, hi?: i64);

  static readonly Zero: i128;
  static readonly One: i128;
  static readonly Min: i128;
  static readonly Max: i128;

  static fromString(value: string, radix?: i32): i128;
  static fromI256(value: i256): i128;
  static fromU256(value: u256): i128;
  static fromI128(value: i128): i128;
  static fromU128(value: u128): i128;
  static fromI64(value: i64): i128;
  static fromU64(value: u64): i128;
  static fromF64(value: f64): i128;
  static fromF32(value: f32): i128;
  static fromI32(value: i32): i128;
  static fromU32(value: u32): i128;
  static fromBits(lo1: i32, lo2: i32, hi1: i32, hi2: i32): i128;
  static fromBytes<T>(array: T, bigEndian?: bool): i128;
  static fromBytesLE(array: u8[]): i128;
  static fromBytesBE(array: u8[]): i128;
  static fromUint8ArrayLE(array: Uint8Array): i128;
  static fromUint8ArrayBE(array: Uint8Array): i128;
  static from<T>(value: T): i128;

  static isEmpty(value: i128): bool;
  static or(a: i128, b: i128): i128;
  static xor(a: i128, b: i128): i128;
  static and(a: i128, b: i128): i128;
  static shl(value: i128, shift: i32): i128;
  static shr_u(value: i128, shift: i32): i128;
  static add(a: i128, b: i128): i128;
  static sub(a: i128, b: i128): i128;
  static eq(a: i128, b: i128): bool;
  static ne(a: i128, b: i128): bool;
  static lt(a: i128, b: i128): bool;
  static gt(a: i128, b: i128): bool;
  static le(a: i128, b: i128): bool;
  static ge(a: i128, b: i128): bool;
  static ord(a: i128, b: i128): i32;
  static popcnt(value: i128): i32;
  static clz(value: i128): i32;
  static ctz(value: i128): i32;
  static abs(value: i128): i128;

  isNeg(): bool;
  isPos(): bool;
  isZero(): bool;
  not(): i128;
  neg(): i128;
  pos(): i128;
  toBytes(bigEndian?: bool): u8[];
  toStaticBytes(bigEndian?: bool): StaticArray<u8>;
  toUint8Array(bigEndian?: bool): Uint8Array;
}

/** A 256-bit unsigned integer. */
declare class u256 {
  lo1: u64;
  lo2: u64;
  hi1: u64;
  hi2: u64;
  constructor(lo1?: u64, lo2?: u64, hi1?: u64, hi2?: u64);

  static readonly Zero: u256;
  static readonly One: u256;
  static readonly Min: u256;
  static readonly Max: u256;

  static fromU256(value: u256): u256;
  static fromU128(value: u128): u256;
  static fromU64(value: u64): u256;
  static fromI64(value: i64): u256;
  static fromU32(value: u32): u256;
  static fromI32(value: i32): u256;
  static fromBits(l0: u32, l1: u32, l2: u32, l3: u32, h0: u32, h1: u32, h2: u32, h3: u32): u256;
  static fromBytes<T>(array: T, bigEndian?: bool): u256;
  static fromBytesLE(array: u8[]): u256;
  static fromBytesBE(array: u8[]): u256;
  static fromUint8ArrayLE(array: Uint8Array): u256;
  static fromUint8ArrayBE(array: Uint8Array): u256;
  static fromF64(value: f64): u256;
  static fromF32(value: f32): u256;
  static from<T>(value: T): u256;
  static fromString(str: string, radix?: i32): u256;

  static isEmpty(value: u256): bool;
  static add(a: u256, b: u256): u256;
  static sub(a: u256, b: u256): u256;
  static mul(a: u256, b: u256): u256;
  static or(a: u256, b: u256): u256;
  static xor(a: u256, b: u256): u256;
  static and(a: u256, b: u256): u256;
  static shr(value: u256, shift: i32): u256;
  static shr_u(value: u256, shift: i32): u256;
  static eq(a: u256, b: u256): bool;
  static ne(a: u256, b: u256): bool;
  static lt(a: u256, b: u256): bool;
  static gt(a: u256, b: u256): bool;
  static le(a: u256, b: u256): bool;
  static ge(a: u256, b: u256): bool;
  static popcnt(value: u256): i32;
  static clz(value: u256): i32;
  static ctz(value: u256): i32;

  set(value: u256): this;
  setI64(value: i64): this;
  setU64(value: u64): this;
  setI32(value: i32): this;
  setU32(value: u32): this;
  setU128(value: u128): this;
  isZero(): bool;
  not(): u256;
  neg(): u256;
  pos(): u256;
  postInc(): u256;
  postDec(): u256;
  clone(): u256;
  as<T>(): T;
  toI64(): i64;
  toU64(): u64;
  toI32(): i32;
  toU32(): u32;
  toBool(): bool;
  toI128(): i128;
  toU128(): u128;
  toU256(): this;
  toBytes(bigEndian?: bool): u8[];
  toStaticBytes(bigEndian?: bool): StaticArray<u8>;
  toUint8Array(bigEndian?: bool): Uint8Array;
  toString(radix?: i32): string;
}

/** A 256-bit signed integer (backs the signed conversions of the family). */
declare class i256 {
  lo1: i64;
  lo2: i64;
  hi1: i64;
  hi2: i64;
  constructor(lo1?: i64, lo2?: i64, hi1?: i64, hi2?: i64);

  static readonly Zero: i256;
  static readonly One: i256;
  static readonly Min: i256;
  static readonly Max: i256;

  static isEmpty(value: i256): bool;

  isNeg(): bool;
  isZero(): bool;
}

/**
 * The dynamic JSON value tree. A `@data` class's `toJSON()` returns one of these, and
 * `JSON.parse(...)` produces one. Globalized by std/assembly/json, so it needs no import.
 */
declare class JSON {
  /** A JSON null. */
  static nul(): JSON;
  /** An empty JSON object, build it with `.set(key, value)`. */
  static obj(): JSON;
  /** An empty JSON array, build it with `.push(value)`. */
  static arr(): JSON;
  /** Wrap a scalar/string/bool/array as a JSON value. */
  static of<T>(value: T): JSON;
  /** Parse JSON text into a value tree (returns an error value on malformed input). */
  static parse(text: string): JSON;
  /** Serialize a scalar/string/bool/array value to a JSON string. */
  static stringify<T>(value: T): string;

  /** Append a value to a JSON array; returns `this` for chaining. */
  push(value: JSON): JSON;
  /** Set a key on a JSON object; returns `this` for chaining. */
  set(key: string, value: JSON): JSON;

  isNull(): bool;
  isBool(): bool;
  isNumber(): bool;
  isString(): bool;
  isArray(): bool;
  isObject(): bool;

  asBool(): bool;
  asF64(): f64;
  asI64(): i64;
  asU64(): u64;
  asString(): string;

  /** Element count of an array (or 0). */
  length(): i32;
  /** Element at `index` of an array. */
  at(index: i32): JSON;
  /** Whether an object has `key`. */
  has(key: string): bool;
  /** Value for `key` on an object. */
  get(key: string): JSON;
  /** The keys of an object. */
  objectKeys(): Array<string>;

  /** Serialize this value tree to a JSON string. */
  toString(): string;
}
