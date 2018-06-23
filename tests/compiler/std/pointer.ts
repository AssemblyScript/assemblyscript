// A pointer arithmetic experiment

export class Pointer<T> {

  // FIXME: does not inline, always yields a trampoline
  @inline constructor(offset: usize = 0) {
    return changetype<Pointer<T>>(offset);
  }

  @inline get offset(): usize {
    return changetype<usize>(this);
  }

  @inline get value(): T {
    return changetype<T>(changetype<usize>(this));
  }

  // FIXME: in general, inlining any of the following always yields a block. one could argue that
  // this helps debuggability, or that it is unnecessary overhead due to the simplicity of the
  // functions. a compromise could be to inline a block consisting of a single 'return' as is,
  // where possible.

  @inline @operator("+") add(other: Pointer<T>): Pointer<T> {
    return changetype<Pointer<T>>(changetype<usize>(this) + changetype<usize>(other));
  }

  @inline @operator("-") sub(other: Pointer<T>): Pointer<T> {
    return changetype<Pointer<T>>(changetype<usize>(this) - changetype<usize>(other));
  }

  @inline @operator.prefix("++") inc(): Pointer<T> {
    // FIXME: this should take alignment into account, but then would require a new builtin to
    // determine the minimal alignment of a struct by evaluating its field layout.
    const size = isReference<T>() ? offsetof<T>() : sizeof<T>();
    return changetype<Pointer<T>>(changetype<usize>(this) + size);
  }

  @inline @operator.prefix("--") dec(): Pointer<T> {
    const size = isReference<T>() ? offsetof<T>() : sizeof<T>();
    return changetype<Pointer<T>>(changetype<usize>(this) - size);
  }
}

@unmanaged
class Entry {
  key: i32;
  val: i32;
}

var one = new Pointer<Entry>(8);
var two = new Pointer<Entry>(24);
assert(one.offset == 8);
assert(two.offset == 24);

one.value.key = 1;
one.value.val = 2;
assert(one.value.key == 1);
assert(one.value.val == 2);

var add = one + two;
assert(add.offset == 32);

var sub = two - one;
assert(sub.offset == 16);

assert(one.offset == 8);
var nextOne = ++one;
assert(nextOne === one);
assert(one.offset == 16);

assert(two.offset == 24);
--two;
--two;
assert(two.offset == 8);
assert(two.value.key == 1);
assert(two.value.val == 2);
