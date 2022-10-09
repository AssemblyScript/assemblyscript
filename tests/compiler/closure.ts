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

function testFuncParam($local0: (x: i32) => void): () => void {
  return () => {
    $local0(123); // closure 4
  };
}
testFuncParam((x: i32) => {});

ERROR("EOF");
