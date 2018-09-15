// A pointer arithmetic experiment

class Pointer<T> {

  // FIXME: does not inline, always yields a trampoline
  @inline constructor(offset: usize = 0) {
    return changetype<Pointer<T>>(offset);
  }

  @inline get offset(): usize {
    return changetype<usize>(this);
  }

  @inline get value(): T {
    if (isReference<T>()) {
      return changetype<T>(changetype<usize>(this));
    } else {
      return load<T>(changetype<usize>(this));
    }
  }

  @inline set value(value: T) {
    if (isReference<T>()) {
      if (isManaged<T>()) ERROR("Unsafe unmanaged set of a managed object");
      if (value === null) {
        memory.fill(changetype<usize>(this), 0, offsetof<T>());
      } else {
        memory.copy(changetype<usize>(this), changetype<usize>(value), offsetof<T>());
      }
    } else {
      store<T>(changetype<usize>(this), value);
    }
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

  @inline @operator("[]") get(index: i32): T {
    const size = isReference<T>() ? offsetof<T>() : sizeof<T>();
    return load<T>(changetype<usize>(this) + (<usize>index * size));
  }

  @inline @operator("[]=") set(index: i32, value: T): void {
    const size = isReference<T>() ? offsetof<T>() : sizeof<T>();
    store<T>(changetype<usize>(this) + (<usize>index * size), value);
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

one.value = two.value;
assert(one.offset != two.offset);
assert(one.value.key == 1);
assert(one.value.val == 2);

var buf = new Pointer<f32>(0);
buf[0] = 1.1;
buf[1] = 1.2;

assert(buf[0] == 1.1);
assert(buf[1] == 1.2);

assert(buf.get(0) == 1.1);
assert(buf.get(1) == 1.2);

assert(load<f32>(0) == 1.1);
assert(load<f32>(4) == 1.2);

buf.set(2, 1.3);
assert(buf[2] == 1.3);
assert(buf.get(2) == 1.3);
assert(load<f32>(8) == 1.3);

buf.value = 1.4;
assert(buf.value == 1.4);
assert(load<f32>(0) == 1.4);
