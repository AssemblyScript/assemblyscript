var i: i32 = 0;
var I: i64 = 0;
var u: u32 = 0;
var U: u64 = 0;

// Atomic store
Atomic.store<i8>(0, <i32>8);
Atomic.store<i16>(2, <i32>16);
Atomic.store<i32>(4, <i32>32);
Atomic.store<i8>(0, <i64>8);
Atomic.store<i16>(2, <i64>16);
Atomic.store<i32>(4, <i64>32);
Atomic.store<i64>(8, <i64>64);


// Atomic load
i = Atomic.load<i8>(0);
i = Atomic.load<i16>(2);
i = Atomic.load<i32>(4);
u = Atomic.load<i8>(0);
u = Atomic.load<i16>(2);
u = Atomic.load<i32>(4);

I = Atomic.load<i8>(0);
I = Atomic.load<i16>(2);
I = Atomic.load<i32>(4);
I = Atomic.load<i64>(8);
U = Atomic.load<i8>(0);
U = Atomic.load<i16>(2);
U = Atomic.load<i32>(4);
U = Atomic.load<i64>(8);

// Atomic add
Atomic.add<i8>(0, 1);
Atomic.add<i16>(2, 1);
Atomic.add<i32>(4, 1);

Atomic.add<i8>(0, <i64>1);
Atomic.add<i16>(2, <i64>1);
Atomic.add<i32>(4, <i64>1);
Atomic.add<i64>(8, <i64>1);

// Atomic subtract
Atomic.sub<i8>(0, 1);
Atomic.sub<i16>(2, 1);
Atomic.sub<i32>(4, 1);

Atomic.sub<i8>(0, <i64>1);
Atomic.sub<i16>(2, <i64>1);
Atomic.sub<i32>(4, <i64>1);
Atomic.sub<i64>(8, <i64>1);

// Atomic AND
Atomic.and<i8>(0, 1);
Atomic.and<i16>(2, 1);
Atomic.and<i32>(4, 1);

Atomic.and<i8>(0, <i64>1);
Atomic.and<i16>(2, <i64>1);
Atomic.and<i32>(4, <i64>1);
Atomic.and<i64>(8, <i64>1);

// Atomic OR
Atomic.or<i8>(0, 1);
Atomic.or<i16>(2, 1);
Atomic.or<i32>(4, 1);

Atomic.or<i8>(0, <i64>1);
Atomic.or<i16>(2, <i64>1);
Atomic.or<i32>(4, <i64>1);
Atomic.or<i64>(8, <i64>1);

// Atomic XOR
Atomic.xor<i8>(0, 1);
Atomic.xor<i16>(2, 1);
Atomic.xor<i32>(4, 1);

Atomic.xor<i8>(0, <i64>1);
Atomic.xor<i16>(2, <i64>1);
Atomic.xor<i32>(4, <i64>1);
Atomic.xor<i64>(8, <i64>1);

// Atomic xchg
Atomic.xchg<i8>(0, 1);
Atomic.xchg<i16>(2, 1);
Atomic.xchg<i32>(4, 1);

Atomic.xchg<i8>(0, <i64>1);
Atomic.xchg<i16>(2, <i64>1);
Atomic.xchg<i32>(4, <i64>1);
Atomic.xchg<i64>(8, <i64>1);

// Atomic cmpxchg
Atomic.cmpxchg<i8>(0, 1, 2);
Atomic.cmpxchg<i16>(2, 1, 2);
Atomic.cmpxchg<i32>(4, 1, 2);

Atomic.cmpxchg<i8>(0, <i64>1, <i64>2);
Atomic.cmpxchg<i16>(2, <i64>1, <i64>2);
Atomic.cmpxchg<i32>(4, <i64>1, <i64>2);
Atomic.cmpxchg<i64>(8, <i64>1, <i64>2);
