declare function log(v: i32): void;

export function test(): void {
  var i: i32 = 0;
  var u: u32 = 0;
  var I: i64 = 0;
  var U: u64 = 0;

  // Atomic store
  Atomic.store<i8>(120, <i32>8);
  Atomic.store<i16>(121, <i32>16);
  Atomic.store<i32>(123, <i32>32);

  Atomic.store<i8>(120, <i64>8);
  Atomic.store<i16>(121, <i64>16);
  Atomic.store<i32>(123, <i64>32);
  Atomic.store<i64>(127, <i64>64);

  // Atomic load
  i = Atomic.load<i8>(120);
  i = Atomic.load<i16>(121);
  i = Atomic.load<i32>(123);
  u = Atomic.load<i8>(120);
  u = Atomic.load<i16>(121);
  u = Atomic.load<i32>(123);

  I = Atomic.load<i8>(120);
  I = Atomic.load<i16>(121);
  I = Atomic.load<i32>(123);
  I = Atomic.load<i64>(127);
  U = Atomic.load<i8>(120);
  U = Atomic.load<i16>(121);
  U = Atomic.load<i32>(123);
  U = Atomic.load<i64>(127);

  // Atomic add
  i = Atomic.add<i8>(120, 1);
  i = Atomic.add<i16>(121, 1);
  i = Atomic.add<i32>(123, 1);

  I = Atomic.add<i8>(120, <i64>1);
  I = Atomic.add<i16>(121, <i64>1);
  I = Atomic.add<i32>(123, <i64>1);
  I = Atomic.add<i64>(127, <i64>1);

  // Atomic subtract
  Atomic.sub<i8>(120, 1);
  Atomic.sub<i16>(121, 1);
  Atomic.sub<i32>(123, 1);

  I = Atomic.sub<i8>(120, <i64>1);
  I = Atomic.sub<i16>(121, <i64>1);
  I = Atomic.sub<i32>(123, <i64>1);
  I = Atomic.sub<i64>(127, <i64>1);

  // Atomic AND
  Atomic.and<i8>(120, 1);
  Atomic.and<i16>(121, 1);
  Atomic.and<i32>(123, 1);

  I = Atomic.and<i8>(120, <i64>1);
  I = Atomic.and<i16>(121, <i64>1);
  I = Atomic.and<i32>(123, <i64>1);
  I = Atomic.and<i64>(127, <i64>1);

  // Atomic OR
  Atomic.or<i8>(120, 1);
  Atomic.or<i16>(121, 1);
  Atomic.or<i32>(123, 1);

  I = Atomic.or<i8>(120, <i64>1);
  I = Atomic.or<i16>(121, <i64>1);
  I = Atomic.or<i32>(123, <i64>1);
  I = Atomic.or<i64>(127, <i64>1);

  // Atomic XOR
  Atomic.xor<i8>(120, 1);
  Atomic.xor<i16>(121, 1);
  Atomic.xor<i32>(123, 1);

  I = Atomic.xor<i8>(120, <i64>1);
  I = Atomic.xor<i16>(121, <i64>1);
  I = Atomic.xor<i32>(123, <i64>1);
  I = Atomic.xor<i64>(127, <i64>1);

  // Atomic xchg
  Atomic.xchg<i8>(120, 1);
  Atomic.xchg<i16>(121, 1);
  Atomic.xchg<i32>(123, 1);

  I = Atomic.xchg<i8>(120, <i64>1);
  I = Atomic.xchg<i16>(121, <i64>1);
  I = Atomic.xchg<i32>(123, <i64>1);
  I = Atomic.xchg<i64>(127, <i64>1);

  // Atomic cmpxchg
  Atomic.cmpxchg<i8>(120, 1, 2);
  Atomic.cmpxchg<i16>(121, 1, 2);
  Atomic.cmpxchg<i32>(123, 1, 2);

  I = Atomic.cmpxchg<i8>(120, <i64>1, <i64>2);
  I = Atomic.cmpxchg<i16>(121, <i64>1, <i64>2);
  I = Atomic.cmpxchg<i32>(123, <i64>1, <i64>2);
  I = Atomic.cmpxchg<i64>(127, <i64>1, <i64>2);
}
