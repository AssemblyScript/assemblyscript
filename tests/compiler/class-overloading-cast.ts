class A<T> {
  foo(a: T): void {
    trace(`class A ${a}`);
  }
}
class B<T, V> extends A<T> {
  foo(a: T): void {
    trace(`class B ${a}`);
  }
}
export function test_foo(): void {
  let v = new B<i32, f64>();
  // let v2 = new B<i32,string>();
  let v3 = new B<f64, string>(); // if comment this line, compile OK
  (<A<i32>>v).foo(1);
}
