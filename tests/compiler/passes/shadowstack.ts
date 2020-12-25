import { __managed, __stackptr } from "rt";

__stackptr = 20;

function foo(a: usize, b: usize, cond: bool): usize {
  var c = __managed(3);
  var d = __managed(4);
  if (cond) {
    let e = __managed(5);
  } else {
    let f = __managed(6);
  }
  return b;
}

function bar(a: usize): void {
  a = __managed(a);
}

foo(__managed(1), __managed(2), true);

trace("foo(1, 2, true):");
trace("  0", 1, load<i32>(0));
trace("  4", 1, load<i32>(4));
trace("  8", 1, load<i32>(8));
trace(" 12", 1, load<i32>(12));
trace(" 16", 1, load<i32>(16));

assert(__stackptr == 20);

foo(__managed(1), __managed(2), false);

trace("foo(1, 2, false):");
trace("  0", 1, load<i32>(0));
trace("  4", 1, load<i32>(4));
trace("  8", 1, load<i32>(8));
trace(" 12", 1, load<i32>(12));
trace(" 16", 1, load<i32>(16));

assert(__stackptr == 20);

bar(__managed(7));

trace("bar(7):");
trace("  0", 1, load<i32>(0));
trace("  4", 1, load<i32>(4));
trace("  8", 1, load<i32>(8));
trace(" 12", 1, load<i32>(12));
trace(" 16", 1, load<i32>(16));

assert(__stackptr == 20);
