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
