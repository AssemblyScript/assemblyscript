class A<T> {
  foo(a: T): string {
    return "A";
  }
}
class B<T, V> extends A<T> {
  foo(a: T): string {
    return "B";
  }
}

class C extends A<string>{}

let v = new B<i32, f64>();
let v2 = new B<i32, string>();
let v3 = new B<f64, string>();
assert((<A<i32>>v).foo(1) == "B");
assert(v2.foo(1) == "B");
assert((<A<f64>>v3).foo(1.1) == "B");

let c = new C();

assert(c.foo("a") == "A");
assert((<A<string>>c).foo("a") == "A");
