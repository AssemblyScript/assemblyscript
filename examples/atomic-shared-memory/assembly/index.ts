declare function log(v: i32): void;
export function test(): i32 {
  Atomic.store<i32>(128, 2);
  var num: i32 = Atomic.load<i32>(128);
  log(num);
  Atomic.add<i32>(128, 1);
  num = Atomic.load<i32>(128);
  log(num);
  Atomic.sub<i32>(128, 1);
  num = Atomic.load<i32>(128);
  log(num);
  return num;
}
