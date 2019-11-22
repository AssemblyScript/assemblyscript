function test($local0: i32, $local1: i32): (value: i32) => i32 {
  return function inner(value: i32) {
    return $local1; // closure
  };
}

test(1, 2);
ERROR("EOF");
