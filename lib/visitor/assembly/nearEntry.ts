
import { base64 } from "near-runtime-ts";
//@ts-ignore
import { JSONEncoder, JSONDecoder, ThrowingJSONHandler } from "assemblyscript-json";
import { u128 } from "bignum";
// Runtime functions
// tslint:disable: no-unsafe-any

type Usize = u64;
//@ts-ignore
@global
@external("env", "read_register")
declare function read_register(register_id: Usize, ptr: Usize): void;
//@ts-ignore
@global
@external("env", "register_len")
declare function register_len(register_id: Usize): Usize;

//@ts-ignore
@global
@external("env", "input")
declare function input(register_id: Usize): void;
//@ts-ignore
@global
@external("env", "value_return")
declare function value_return(value_len: Usize, value_ptr: Usize): void;
//@ts-ignore
@global
@external("env", "panic")
declare function panic(): void;
//@ts-ignore
@global
function getInput(): Uint8Array { 
  // Reading input bytes.
  input(0);
  let json_len = register_len(0);
  if (json_len == U32.MAX_VALUE) {
    panic();
  }
  let json = new Uint8Array(json_len as u32);
  //@ts-ignore
  read_register(0, <usize>json.buffer);
  return json;
}

abstract class Value {
  static String(str: string): Value {
    return new Str(str);
  }
  static Number(num: i64): Value {
    return new Num(num);
  }
  static Bool(b: bool): Value {
    return new Bools(b);
  }
  static Null(): Value {
    return new Null();
  }
  static Array(): Value {
    return new Arr();
  }
  static Object(): Value {
    return new Obj();
  }

  toString(): string {
    if (this instanceof Str) {
      return (<Str>this).toString();
    }
    if (this instanceof Num) {
      return (<Num>this).toString();
    }
    if (this instanceof Bools) {
      return (<Bools>this).toString();
    }
    if (this instanceof Null) {
      return (<Null>this).toString();
    }
    if (this instanceof Arr) {
      return (<Arr>this).toString();
    }
    if (this instanceof Obj) {
      return (<Obj>this).toString();
    }
    return "Value";
  }
}
@global
class Str extends Value {
  constructor(public _str: string) {
    super();
  }

  toString(): string {
    return "\"" + this._str + "\"";
  }
}
@global
class Num extends Value {
  constructor(public _num: i64) {
    super();
  }

  toString(): string {
    return this._num.toString();
  }
}
@global
class Null extends Value {
  constructor() {
    super();
  }

  toString(): string {
    return "null";
  }
}

@global class Bools extends Value {
  constructor(public _bool: bool) {
    super();
  }

  toString(): string {
    return this._bool.toString();
  }
}

@global
class Arr extends Value {
  _arr: Array<Value>;
  constructor() {
    super();
    this._arr = new Array<Value>();
  }

  push(obj: Value): void {
    this._arr.push(obj);
  }

  toString(): string {
    return "[" + this._arr.map<string>((val: Value,i: i32,_arr: Value[]): string  => val.toString()).join(",") + "]";
  }
}

@global
class Obj extends Value {
  _obj: Map<string, Value>;
  keys: Array<string>;

  constructor() {
    super();
    this._obj = new Map();
    this.keys = new Array();
  }

  set(key: string, value: Value): void {
    if (!this._obj.has(key)) {
      this.keys.push(key);
    }
    this._obj.set(key, value);
  }

  get(key: string): Value | null {
    if (!this._obj.has(key)) {
      return null;
    }
    return this._obj.get(key);
  }

  toString(): string {
    const objs: string[] = [];
    for (let i: i32 = 0; i < this.keys.length; i++) {
      objs.push("\"" + this.keys[i] + "\":" + this._obj.get(this.keys[i]).toString());
    }
    return "{" + objs.join(",") + "}";
  }

  has(key: string): bool {
    return this._obj.has(key);
  }
}

class Handler extends ThrowingJSONHandler {
  stack: Value[];
  constructor() {
    super();
    this.stack = new Array<Value>();
  }

  reset(): void {
    while (this.stack.length > 0) {
      this.stack.pop();
    }
  }

  get peek(): Value {
    return this.stack[this.stack.length - 1];
  }

  setString(name: string, value: string): void {
    const obj: Value = Value.String(value);
    this.addValue(name, obj);
  }

  setBoolean(name: string, value: bool): void {
    const obj = Value.Bool(value);
    this.addValue(name, obj);
  }

  setNull(name: string): void {
    const obj = Value.Null();
    this.addValue(name, obj);
  }

  setInteger(name: string, value: i64): void {
    const obj = Value.Number(value);
    this.addValue(name, obj);
  }

  pushArray(name: string): bool {
    const obj: Value = Value.Array();
    this.addValue(name, obj);
    this.stack.push(obj);
    return true;
  }

  popArray(): void {
    if (this.stack.length > 1) {
      this.stack.pop();
    }
  }

  pushObject(name: string): bool {
    const obj: Value = Value.Object();
    this.addValue(name, obj);
    this.stack.push(obj);
    return true;
  }

  popObject(): void {
    if (this.stack.length > 1) {
      this.stack.pop();
    }
  }

  addValue(name: string, obj: Value): void {
    if (name.length == 0 && obj instanceof Obj && this.stack.length == 0) {
      this.stack.push(obj);
      return;
    }
    if (this.peek instanceof Obj) {
      (this.peek as Obj).set(name, obj);
    }
    else if (this.peek instanceof Arr) {
      (<Arr>this.peek).push(obj);
    }
  }
}

@global()
class JSON {
  private static handler: Handler = new Handler();
  private static decoder: JSONDecoder<Handler> = new JSONDecoder<Handler>(JSON.handler);
  static parse(str: Uint8Array ): Obj {
    JSON.decoder.deserialize(str);
    const res = JSON.decoder.handler.peek as Obj;
    JSON.decoder.handler.reset();
    return res;
  }
}

//@ts-ignore
@global
function encode<T, Output = Uint8Array>(value: T, name: string | null = "", encoder: JSONEncoder = new JSONEncoder()): Output {
  if (isBoolean<T>()) {
    //@ts-ignore
    encoder.setBoolean(name, value);
  } else if (isInteger<T>()) {
    if (value instanceof i64 || value instanceof u64) {
      //@ts-ignore
      encoder.setString(name, value.toString());
    } else {
    //@ts-ignore
      encoder.setInteger(name, value);
    }
    //@ts-ignore
  } else if (value == <T>null) {
    encoder.setNull(name);
  } else if (isString<T>()) {
    //@ts-ignore
    encoder.setString(name, value);
  } else if (isReference<T>()) {
    if (isArrayLike<T>(value)) {
      if (value instanceof Uint8Array) {
        //@ts-ignore
        encoder.setString(name, base64.encode(<Uint8Array> value));
      } else {
        encoder.pushArray(name);
        for (let i: i32 = 0; i < value.length; i++) {
          //@ts-ignore
          encode<valueof<T>, JSONEncoder>(value[i], null, encoder);
        }
        encoder.popArray();
      }
    } else { // Is an object
      if (value instanceof u128) {
        encoder.setString(name, value.toString());
      } else {
        //@ts-ignore
        value._encode(name, encoder);
      }
    }
  } else {
    throw new Error("Encoding failed");
  }
  var output: Output;
  //@ts-ignore
  if (output instanceof Uint8Array) {
    //@ts-ignore
    return <Output>encoder.serialize();
  }
  //@ts-ignore
  assert( output instanceof JSONEncoder, "Bad return type for encoder");
  //@ts-ignore
  return <Output>encoder;
}

//@ts-ignore
@inline
function getStr(val: Value, name: String): string {
  assert(val instanceof Str, "Value with Key: " + name + " is not a string or null");
  return (<Str>val)._str;
}

function decodeArray<T>(val: Value, name: string): Array<T> {
  assert(val instanceof Arr, "Value with Key: " + name + " is not an array or null.");
  const res = new Array<T>();
  const arr = (<Arr>val)._arr;
  for (let i: i32 = 0; i < arr.length; i++) {
    let item: T = decode<T, Value>(arr[i]);
    res.push(item);
  }
  return res;
}

//@ts-ignore
@global
function decode<T, V = Uint8Array>(buf: V, name: string = ""): T {
  const buffer = <Value>(buf instanceof Uint8Array ? JSON.parse(buf) : buf);
  var val: Value;
  if (buffer instanceof Obj && name != "") {
    const obj: Obj = <Obj>buffer;
    let res = obj.get(name);
    if (res == null) {
      //@ts-ignore
      return <T>null;
    }
    val = res;
  }else {
    val = <Value> buffer;
  }
  if (val instanceof Null) {
    assert(isReference<T>() || isArrayLike<T>() || isNullable<T>() || isString<T>(), "Key: " + name + " with type " + nameof<T>() + "is not nullable.");
    //@ts-ignore
    return <T>null;
  }
  if (isString<T>()) {
    //@ts-ignore
    return getStr(val, name);
  }
  if (isBoolean<T>()) {
    assert(val instanceof Bools, "Value with Key: " +  name + " with type " + nameof<T>()  + " is not a string");
    //@ts-ignore
    return (<Bools>val)._bool;
  }
  var value: T;
  if (isInteger<T>()) {
    //@ts-ignore
    if (value instanceof u64 || value instanceof i64) {
      assert(val instanceof Str, "Value with Key: " +  name + " with type " + nameof<T>()  + " is an 64-bit integer and is expected to be encoded as a string");
      let str = (<Str>val)._str;
      //@ts-ignore
      return <T>(val instanceof u64) ? U64.parseInt(str) : I64.parseInt(str);
    }
    assert(val instanceof Num, "Value with Key: " +  name + " with type " + nameof<T>()  + " is not an Integer");
    //@ts-ignore
    return <T>(<Num>val)._num;
  }
  assert(isReference<T>(), name + " with type " + nameof<T>() + " must be an integer, boolean, string, object, or array");
  if (isArrayLike<T>()) {
    //@ts-ignore
    if (value instanceof Uint8Array ) {
      //@ts-ignore
      return base64.decode(getStr(val, name));
    }
    //@ts-ignore
    // assert(val instanceof Arr, "Value with Key: " +  name + " with type " + nameof<T>()  + " is expected to be an array")
    //@ts-ignore only checking the instance
    return <T>decodeArray<valueof<T>>(val, name);
  }
  //@ts-ignore
  if (value instanceof u128) {
    assert(val instanceof Str);
    //@ts-ignore
    return u128.fromString(getStr(val, name));
  }
  assert(val instanceof Obj, "Value with Key: " +  name + " with type " + nameof<T>()  + " is not an object or null");
  value = instantiate<T>();
  //@ts-ignore
  return value.decode<Obj>(<Obj>val);
}
