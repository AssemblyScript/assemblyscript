class A {
  v: i32 = 10;
}
class B {
  v: i32 = 20;
}
function foo(a: A): i32 {
  __collect(); // to trigger GC
  let b = new B();
  return a.v;
}

export function issue_2923(): i32 {
  return call_indirect<i32>(foo.index, new A());
}

assert(issue_2923() == 10);
