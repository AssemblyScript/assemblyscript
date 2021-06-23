function test<T,U>(x: T): U {
  // @ts-ignore
  var y1 = x as U;
  // @ts-ignore
  var y2 = <U>x;
  // @ts-ignore
  return y1 + y2;
}

test<i8,i8>(0);
test<i8,u8>(0);
test<i8,i16>(0);
test<i8,u16>(0);
test<i8,i32>(0);
test<i8,u32>(0);
test<i8,i64>(0);
test<i8,u64>(0);
test<i8,bool>(0);

test<u8,i8>(0);
test<u8,u8>(0);
test<u8,i16>(0);
test<u8,u16>(0);
test<u8,i32>(0);
test<u8,u32>(0);
test<u8,i64>(0);
test<u8,u64>(0);
test<u8,bool>(0);

test<i16,i8>(0);
test<i16,u8>(0);
test<i16,i16>(0);
test<i16,u16>(0);
test<i16,i32>(0);
test<i16,u32>(0);
test<i16,i64>(0);
test<i16,u64>(0);
test<i16,bool>(0);

test<u16,i8>(0);
test<u16,u8>(0);
test<u16,i16>(0);
test<u16,u16>(0);
test<u16,i32>(0);
test<u16,u32>(0);
test<u16,i64>(0);
test<u16,u64>(0);
test<u16,bool>(0);

test<i32,i8>(0);
test<i32,u8>(0);
test<i32,i16>(0);
test<i32,u16>(0);
test<i32,i32>(0);
test<i32,u32>(0);
test<i32,i64>(0);
test<i32,u64>(0);
test<i32,bool>(0);

test<u32,i8>(0);
test<u32,u8>(0);
test<u32,i16>(0);
test<u32,u16>(0);
test<u32,i32>(0);
test<u32,u32>(0);
test<u32,i64>(0);
test<u32,u64>(0);
test<u32,bool>(0);

test<i64,i8>(0);
test<i64,u8>(0);
test<i64,i16>(0);
test<i64,u16>(0);
test<i64,i32>(0);
test<i64,u32>(0);
test<i64,i64>(0);
test<i64,u64>(0);
test<i64,bool>(0);

test<u64,i8>(0);
test<u64,u8>(0);
test<u64,i16>(0);
test<u64,u16>(0);
test<u64,i32>(0);
test<u64,u32>(0);
test<u64,i64>(0);
test<u64,u64>(0);
test<u64,bool>(0);
