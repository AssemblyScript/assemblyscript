import "allocator/arena";
import "collector/itcm";

// a class to test with
class MyObject {
  a: u32;
}
function MyObject_visit(ref: usize): void { }

// allocate a managed instance
var obj = changetype<MyObject>(gc.allocate(offsetof<MyObject>(), MyObject_visit));
obj.a = 123;
var head = changetype<usize>(obj) - 16;

// header
assert(load<u32>(head, 0) == 0); // nextWithFlags
assert(load<u32>(head, 4) == 0); // prev
assert(load<u32>(head, 8) == changetype<u32>(MyObject_visit)); // visitFn
assert(load<u32>(head, 12) == 0); // unused
// contents
assert(load<u32>(head, 16) == 123); // Obj#a

// gc.collect(); // FIXME: endless loop
