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
    return $local0;
  };
}
testLet();

function nestedExecutionTest(arg: i32): i32 {
  var x = 7;
  var f = complexCreateClosure(arg);
  var g = (fn: (x3: i32) => i32): i32 => {
    var first = fn(arg);
    return x;
  };
  return g(f);
}
nestedExecutionTest(1);

function passItAround(arg: i32): usize {
  return runClosure(createClosure(arg));
}
passItAround(1);

function runInline(arg: i32, foo: i32, bar: i32): i32 {
  return ((): i32 => { return arg + foo + bar; } )();
}
runInline(1,1,1);

function fallOutOfScope(arg: i32): i32 {
  var releaseMe = createClosure(arg);
  return 10;
}
fallOutOfScope(1);

function createClosure(arg: i32): (x3: i32) => i32 {
  var closure = (x3: i32): i32 => { return arg + x3; };
  return closure;
}

function complexCreateClosure(arg: i32): (x3: i32) => i32 {
  var foo = 2;
  var bar = 3;
  var baz = 4;
  var f = (x1: i32): i32 => { return foo + bar - baz; };
  var g = (x2: i32): i32 => { return (bar - baz) + foo; };
  foo = 7;
  bar = 11;
  return g;
}

function runClosure(closureToRun: (x3: i32) => i32): i32 {
  return closureToRun(1);
}

// Ensure that non-closures do not abort upon returning
export function returnOverBoundary(): () => i32 {
  return function(): i32 { return 6; };
}
returnOverBoundary();
