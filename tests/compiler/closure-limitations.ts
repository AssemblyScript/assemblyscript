function closureWrites(): (value: i32) => i32 {
  var $local0 = 0;
  return function inner(value: i32) {
    $local0 = $local0 + 1;
    return $local0;
  };
}
closureWrites();

function inScopeNestedCalls(): (value: i32) => i32 {
  var x = 0;
  var f = (): i32 => {
    return x;
  }
  var p = (value: i32): i32 => {
    return f();
  }
  return p;
}
inScopeNestedCalls();

ERROR("EOF")
