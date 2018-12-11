import "allocator/arena";
// TODO: Why cannot import from index?
// import { BSONEncoder, BSONDecoder } from "../../../assemblyscript-bson/assembly";
import { BSONEncoder } from "../../../assemblyscript-bson/assembly/encoder";
import { BSONDecoder } from "../../../assemblyscript-bson/assembly/decoder";

export class FooBar {
    foo: i32 = 0;
    bar: i32 = 1;
    flag: bool;
    baz: string = "123";
    foobar: Uint8Array;
}

export function add(x: i32, y: i32): i32 {
  return x + y;
}
