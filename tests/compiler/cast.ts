function test<T,U>(x: T): U {
  // @ts-ignore
  var y = x as U;
  // @ts-ignore
  return y;
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

test<bool,i8>(0);
test<bool,u8>(0);
test<bool,i16>(0);
test<bool,u16>(0);
test<bool,i32>(0);
test<bool,u32>(0);
test<bool,i64>(0);
test<bool,u64>(0);
test<bool,bool>(0);
