function testParam($local0: i32, $local1: i32): (value: i32) => i32 {
  return function inner(value: i32) {
    return $local1; // closure
  };
}
testParam(1, 2);

function testVar(): (value: i32) => i32 {
  var $local0 = 0;
  return function inner(value: i32) {
    return $local0; // closure
  };
}
testVar();

function testLet(): (value: i32) => i32 {
  let $local0 = 0;
  return function inner(value: i32) {
    return $local0; // closure
  };
}
testLet();

ERROR("EOF");
