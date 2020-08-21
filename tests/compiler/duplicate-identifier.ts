var a: i32;
var a: f32;

class Foo {
  b: i32;
  b: f32;
  static c: i32;
  static c: f32;
}

namespace Bar {
  const d: i32 = 0;
  const d: f32 = 1;
}

function baz(): void {
  var e: i32;
  var e: f32;
  {
    let f: i32;
    let f: f32;
  }
}

baz();

ERROR("EOF"); // mark end and ensure fail
