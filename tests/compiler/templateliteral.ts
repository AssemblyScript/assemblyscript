function test_string(): void {
  var a = "a";
  var b = "b";
  assert(`${a}`== "a");
  assert(`${a}${b}`== "ab");
  assert(`(A=${a}, B=${b})` == "(A=a, B=b)");
}
test_string();

function test_integer(): void {
  var a = 1;
  var b = 2;
  assert(`${a}`== "1");
  assert(`${a}${b}`== "12");
  assert(`(A=${a}, B=${b})` == "(A=1, B=2)");
}
test_integer();

function test_float(): void {
  var a = 1.0;
  var b = 2.0;
  assert(`${a}`== "1.0");
  assert(`${a}${b}`== "1.02.0");
  assert(`(A=${a}, B=${b})` == "(A=1.0, B=2.0)");
}
test_float();

class Ref {
  constructor(public value: i32) {}
  toString(): string {
    return "ref#" + this.value.toString();
  }
}

function test_ref(): void {
  var a = new Ref(1);
  var b = new Ref(2);
  assert(`${a}`== "ref#1");
  assert(`${a}${b}`== "ref#1ref#2");
  assert(`(A=${a}, B=${b})` == "(A=ref#1, B=ref#2)");
}
test_ref();
