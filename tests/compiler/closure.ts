function testParam($local0: i32, $local1: i32): (value: i32) => i32 {
  return function inner(value: i32) {
    return $local1; // closure 1
  };
}
testParam(1, 2);

function testVar(): (value: i32) => i32 {
  var $local0 = 0;
  return function inner(value: i32) {
    return $local0; // closure 2
  };
}
testVar();

function testLet(): (value: i32) => i32 {
  let $local0 = 0;
  return function inner(value: i32): i32 {
    return $local0; // closure 3
  };
}
testLet();

// see: https://github.com/AssemblyScript/assemblyscript/issues/2073

function testSelect(): (value: i32) => i32 {
  let $local0 = 0;
  return function inner($arg0: i32): i32 {
    return max($local0, $arg0); // closure 4
  };
}
testSelect();

ERROR("EOF");
