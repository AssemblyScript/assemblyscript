function foo(a: usize): void {
  /* nop */
}

class Obj {
  foo: Obj | null;
}

var obj: Obj | null = new Obj();
(<Obj>obj).foo;
(<Obj>obj).foo = obj;
foo(changetype<usize>(obj));

var arr: i32[] | null = new Array<i32>(3);

__collect();
__collect();

obj = null;
arr = null;

__collect();
__collect();
