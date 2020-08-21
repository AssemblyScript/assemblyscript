{
  let arr: i32[] = new Array<i32>(3);
  arr.push(123);
  arr.push(123);
  arr.pop();
}
{
  let outer = new Array<Array<string>>();
  for (let i = 0; i < 10; ++i) {
    let arr = new Array<string>();
    for (let j = 0; j < 10; ++j) {
      arr.push("");
      // outer.push(arr);
    }
  }
}
{
  let a = "a";
  let c = a + "b";
  c + "d";
}

class A {
  b: B | null;
}
class B {
  a: A | null;
}

{
  let a = new A();
  let b = new B();
  a.b = b;
  a.b = b;
  b.a = a;
  b.a = a;
  a.b = b;
  b.a = a;
}

__collect();
