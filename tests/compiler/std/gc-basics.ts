import "allocator/arena";
import "collector/itcm";

// a class to test with
class MyObject {
  a: u32;
}
function MyObject_visit(ref: usize): void {} // function table index == classId ?

// allocate a managed instance
var obj: MyObject | null = changetype<MyObject>(__gc_allocate(offsetof<MyObject>(), MyObject_visit));
obj.a = 123;

// check header
{
  let head = changetype<usize>(obj) - 16;
  let next = load<u32>(head, 0) & ~3;
  let prev = load<u32>(head, 4);
  assert(next != 0 && prev != 0 && next == prev);
  let visitFn = load<u32>(head, 8);
  assert(visitFn == changetype<u32>(MyObject_visit));
  let unused = load<u32>(head, 12);
  assert(unused == 0);
  let a = load<u32>(head, 16);
  assert(a == 123);
}

gc.collect(); // should keep 'obj' because it's a referenced root (see trace output)
obj = null;
gc.collect(); // should free 'obj' because it isn't referenced anymore (see trace output)

var obj2: MyObject; // should also iterate globals defined late

@start
export function main(): i32 { return 0; }
