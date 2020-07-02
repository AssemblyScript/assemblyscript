0 ? unreachable() : 1;
1 ? 1 : unreachable();
(0 ? unreachable() : 1) ? 1 : unreachable();

var a: i32;

a = 0 ? unreachable() : 1;
a = 1 ? 1 : unreachable();
a = (0 ? unreachable() : 1) ? 1 : unreachable();

export function test(x: i32, y: i32, z: i32): i32 {
  return x ? y : z;
}
