import { Pointer } from "pointer";

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
assert(nextOne == one);
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

// New methods

// isNull
var nullPtr = Pointer.null<i32>();
assert(nullPtr.isNull());
assert(!one.isNull());

// equals
var same = new Pointer<Entry>(8);
assert(two.equals(same));
assert(!one.equals(two));

// copyTo
var src = new Pointer<i32>(100);
src[0] = 10;
src[1] = 20;
src[2] = 30;

var dst = new Pointer<i32>(200);
src.copyTo(dst, 3);
assert(dst[0] == 10);
assert(dst[1] == 20);
assert(dst[2] == 30);
