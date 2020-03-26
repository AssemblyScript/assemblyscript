var a = (a = 4, 3);

function testVar(): i32 {
  var b = (b = 4, 3);
  return b;
}
testVar();

function testLet(): i32 {
  {
    let c = (c = 4, 3);
    return c;
  }
}
testLet();

ERROR("EOF");
