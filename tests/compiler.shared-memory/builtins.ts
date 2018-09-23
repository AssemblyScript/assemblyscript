var i: i32 = 0;
var I: i64 = 0;
var u: u32 = 0;
var U: u64 = 0;

// Atomic store
Atomic.store<i8>(10, <i32>8);
Atomic.store<i16>(11, <i32>16);
Atomic.store<i32>(13, <i32>32);

Atomic.store<i8>(10, <i64>8);
Atomic.store<i16>(11, <i64>16);
Atomic.store<i32>(13, <i64>32);
Atomic.store<i64>(17, <i64>64);

// Atomic load
i = Atomic.load<i8>(10);
i = Atomic.load<i16>(11);
i = Atomic.load<i32>(13);
u = Atomic.load<i8>(10);
u = Atomic.load<i16>(11);
u = Atomic.load<i32>(13);

I = Atomic.load<i8>(10);
I = Atomic.load<i16>(11);
I = Atomic.load<i32>(13);
I = Atomic.load<i64>(17);
U = Atomic.load<i8>(10);
U = Atomic.load<i16>(11);
U = Atomic.load<i32>(13);
U = Atomic.load<i64>(17);

// Atomic add
Atomic.add<i8>(10, 1);
Atomic.add<i16>(11, 1);
Atomic.add<i32>(13, 1);

Atomic.add<i8>(10, <i64>1);
Atomic.add<i16>(11, <i64>1);
Atomic.add<i32>(13, <i64>1);
Atomic.add<i64>(17, <i64>1);

// Atomic subtract
Atomic.sub<i8>(10, 1);
Atomic.sub<i16>(11, 1);
Atomic.sub<i32>(13, 1);

Atomic.sub<i8>(10, <i64>1);
Atomic.sub<i16>(11, <i64>1);
Atomic.sub<i32>(13, <i64>1);
Atomic.sub<i64>(17, <i64>1);

// Atomic AND
Atomic.and<i8>(10, 1);
Atomic.and<i16>(11, 1);
Atomic.and<i32>(13, 1);

Atomic.and<i8>(10, <i64>1);
Atomic.and<i16>(11, <i64>1);
Atomic.and<i32>(13, <i64>1);
Atomic.and<i64>(17, <i64>1);

// Atomic OR
Atomic.or<i8>(10, 1);
Atomic.or<i16>(11, 1);
Atomic.or<i32>(13, 1);

Atomic.or<i8>(10, <i64>1);
Atomic.or<i16>(11, <i64>1);
Atomic.or<i32>(13, <i64>1);
Atomic.or<i64>(17, <i64>1);

// Atomic XOR
Atomic.xor<i8>(10, 1);
Atomic.xor<i16>(11, 1);
Atomic.xor<i32>(13, 1);

Atomic.xor<i8>(10, <i64>1);
Atomic.xor<i16>(11, <i64>1);
Atomic.xor<i32>(13, <i64>1);
Atomic.xor<i64>(17, <i64>1);

// Atomic xchg
Atomic.xchg<i8>(10, 1);
Atomic.xchg<i16>(11, 1);
Atomic.xchg<i32>(13, 1);

Atomic.xchg<i8>(10, <i64>1);
Atomic.xchg<i16>(11, <i64>1);
Atomic.xchg<i32>(13, <i64>1);
Atomic.xchg<i64>(17, <i64>1);

// Atomic cmpxchg
Atomic.cmpxchg<i8>(10, 1, 2);
Atomic.cmpxchg<i16>(11, 1, 2);
Atomic.cmpxchg<i32>(13, 1, 2);

Atomic.cmpxchg<i8>(10, <i64>1, <i64>2);
Atomic.cmpxchg<i16>(11, <i64>1, <i64>2);
Atomic.cmpxchg<i32>(13, <i64>1, <i64>2);
Atomic.cmpxchg<i64>(17, <i64>1, <i64>2);
