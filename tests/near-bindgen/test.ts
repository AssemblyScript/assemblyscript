
import * as main from "./main_near";

import { JSONEncoder } from "./json/encoder";

@external("env", "log")
declare function log(str: string): void;

export function runTest(): void {
  let original = new main.FooBar();
  original.foo = 321;
  original.bar = 123;
  original.flag = true;
  original.baz = "foo";
  let encoder: JSONEncoder = new JSONEncoder();
  encoder.pushObject(null);
  main.__near_encode_FooBar(original, encoder);
  encoder.popObject();
  let encoded = encoder.serialize();
  let decoded = main.__near_decode_FooBar(encoded, null);

  assert(original.foo == decoded.foo);
  assert(original.bar == decoded.bar);
}
