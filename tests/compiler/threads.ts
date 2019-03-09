function testAtomic(): void {
  atomic.load<u8>(0);                     // i32.atomic.load8_u
  atomic.load<u16>(0);                    // i32.atomic.load16_u
  atomic.load<u32>(0);                    // i32.atomic.load
  <u64>atomic.load<u8>(0);                // i64.atomic.load8_u
  <u64>atomic.load<u16>(0);               // i64.atomic.load16_u
  <u64>atomic.load<u32>(0);               // i64.atomic.load32_u
  atomic.load<u64>(0);                    // i64.atomic.load
  atomic.load<u64>(0, 8);                 // with offset

  atomic.store<u8>(0, 1);                 // i32.atomic.store8
  atomic.store<u16>(0, 1);                // i32.atomic.store16
  atomic.store<u32>(0, 1);                // i32.atomic.store
  atomic.store<u8>(0, <u64>1);            // i64.atomic.store8
  atomic.store<u16>(0, <u64>1);           // i64.atomic.store16
  atomic.store<u32>(0, <u64>1);           // i64.atomic.store32
  atomic.store<u64>(0, 1);                // i64.atomic.store
  atomic.store<u64>(0, 1, 8);             // with offset

  atomic.add<u8>(0, 1);                   // i32.atomic.rmw8.add_u
  atomic.add<u16>(0, 1);                  // i32.atomic.rmw16.add_u
  atomic.add<u32>(0, 1);                  // i32.atomic.rmw.add
  atomic.add<u8>(0, <u64>1);              // i64.atomic.rmw8.add_u
  atomic.add<u16>(0, <u64>1);             // i64.atomic.rmw16.add_u
  atomic.add<u32>(0, <u64>1);             // i64.atomic.rmw32.add_u
  atomic.add<u64>(0, 1);                  // i64.atomic.rmw.add
  atomic.add<u64>(0, 1, 8);               // with offset

  atomic.sub<u8>(0, 1);                   // i32.atomic.rmw8.sub_u
  atomic.sub<u16>(0, 1);                  // i32.atomic.rmw16.sub_u
  atomic.sub<u32>(0, 1);                  // i32.atomic.rmw.sub
  atomic.sub<u8>(0, <u64>1);              // i64.atomic.rmw8.sub_u
  atomic.sub<u16>(0, <u64>1);             // i64.atomic.rmw16.sub_u
  atomic.sub<u32>(0, <u64>1);             // i64.atomic.rmw32.sub_u
  atomic.sub<u64>(0, 1);                  // i64.atomic.rmw.sub
  atomic.sub<u64>(0, 1, 8);               // with offset

  atomic.and<u8>(0, 1);                   // i32.atomic.rmw8.and_u
  atomic.and<u16>(0, 1);                  // i32.atomic.rmw16.and_u
  atomic.and<u32>(0, 1);                  // i32.atomic.rmw.and
  atomic.and<u8>(0, <u64>1);              // i64.atomic.rmw8.and_u
  atomic.and<u16>(0, <u64>1);             // i64.atomic.rmw16.and_u
  atomic.and<u32>(0, <u64>1);             // i64.atomic.rmw32.and_u
  atomic.and<u64>(0, 1);                  // i64.atomic.rmw.and
  atomic.and<u64>(0, 1, 8);               // with offset

  atomic.or<u8>(0, 1);                    // i32.atomic.rmw8.or_u
  atomic.or<u16>(0, 1);                   // i32.atomic.rmw16.or_u
  atomic.or<u32>(0, 1);                   // i32.atomic.rmw.or
  atomic.or<u8>(0, <u64>1);               // i64.atomic.rmw8.or_u
  atomic.or<u16>(0, <u64>1);              // i64.atomic.rmw16.or_u
  atomic.or<u32>(0, <u64>1);              // i64.atomic.rmw32.or_u
  atomic.or<u64>(0, 1);                   // i64.atomic.rmw.or
  atomic.or<u64>(0, 1, 8);                // with offset

  atomic.xor<u8>(0, 1);                   // i32.atomic.rmw8.xor_u
  atomic.xor<u16>(0, 1);                  // i32.atomic.rmw16.xor_u
  atomic.xor<u32>(0, 1);                  // i32.atomic.rmw.xor
  atomic.xor<u8>(0, <u64>1);              // i64.atomic.rmw8.xor_u
  atomic.xor<u16>(0, <u64>1);             // i64.atomic.rmw16.xor_u
  atomic.xor<u32>(0, <u64>1);             // i64.atomic.rmw32.xor_u
  atomic.xor<u64>(0, 1);                  // i64.atomic.rmw.xor
  atomic.xor<u64>(0, 1, 8);               // with offset

  atomic.xchg<u8>(0, 1);                  // i32.atomic.rmw8.xchg_u
  atomic.xchg<u16>(0, 1);                 // i32.atomic.rmw16.xchg_u
  atomic.xchg<u32>(0, 1);                 // i32.atomic.rmw.xchg
  atomic.xchg<u8>(0, <u64>1);             // i64.atomic.rmw8.xchg_u
  atomic.xchg<u16>(0, <u64>1);            // i64.atomic.rmw16.xchg_u
  atomic.xchg<u32>(0, <u64>1);            // i64.atomic.rmw32.xchg_u
  atomic.xchg<u64>(0, 1);                 // i64.atomic.rmw.xchg
  atomic.xchg<u64>(0, 1, 8);              // with offset

  atomic.cmpxchg<u8>(0, 1, 2);            // i32.atomic.rmw8.xchg_u
  atomic.cmpxchg<u16>(0, 1, 2);           // i32.atomic.rmw16.xchg_u
  atomic.cmpxchg<u32>(0, 1, 2);           // i32.atomic.rmw.xchg
  atomic.cmpxchg<u8>(0, <u64>1, 2);       // i64.atomic.rmw8.xchg_u
  atomic.cmpxchg<u16>(0, <u64>1, 2);      // i64.atomic.rmw16.xchg_u
  atomic.cmpxchg<u32>(0, <u64>1, 2);      // i64.atomic.rmw32.xchg_u
  atomic.cmpxchg<u64>(0, 1, 2);           // i64.atomic.rmw.xchg
  atomic.cmpxchg<u64>(0, 1, 2, 8);        // with offset

  // atomic.wait<i32>(0, 0, -1);          // i32.atomic.wait
  // atomic.wait<i64>(0, 0, -1);          // i32.atomic.notify
  // atomic.notify<i32>(0, 1);            // i64.atomic.wait
  // atomic.notify<i64>(0, 1);            // i64.atomic.notify
}

function testAtomicAsm(): void {

  i32.atomic.load8_u(0);
  i32.atomic.load16_u(0);
  i32.atomic.load(0);
  i64.atomic.load8_u(0);
  i64.atomic.load16_u(0);
  i64.atomic.load32_u(0);
  i64.atomic.load(0);

  i32.atomic.store8(0, 1);
  i32.atomic.store16(0, 1);
  i32.atomic.store(0, 1);
  i64.atomic.store8(0, 1);
  i64.atomic.store16(0, 1);
  i64.atomic.store32(0, 1);
  i64.atomic.store(0, 1);

  i32.atomic.rmw8.add_u(0, 1);
  i32.atomic.rmw16.add_u(0, 1);
  i32.atomic.rmw.add(0, 1);
  i64.atomic.rmw8.add_u(0, 1);
  i64.atomic.rmw16.add_u(0, 1);
  i64.atomic.rmw32.add_u(0, 1);
  i64.atomic.rmw.add(0, 1);

  i32.atomic.rmw8.sub_u(0, 1);
  i32.atomic.rmw16.sub_u(0, 1);
  i32.atomic.rmw.sub(0, 1);
  i64.atomic.rmw8.sub_u(0, 1);
  i64.atomic.rmw16.sub_u(0, 1);
  i64.atomic.rmw32.sub_u(0, 1);
  i64.atomic.rmw.sub(0, 1);

  i32.atomic.rmw8.and_u(0, 1);
  i32.atomic.rmw16.and_u(0, 1);
  i32.atomic.rmw.and(0, 1);
  i64.atomic.rmw8.and_u(0, 1);
  i64.atomic.rmw16.and_u(0, 1);
  i64.atomic.rmw32.and_u(0, 1);
  i64.atomic.rmw.and(0, 1);

  i32.atomic.rmw8.or_u(0, 1);
  i32.atomic.rmw16.or_u(0, 1);
  i32.atomic.rmw.or(0, 1);
  i64.atomic.rmw8.or_u(0, 1);
  i64.atomic.rmw16.or_u(0, 1);
  i64.atomic.rmw32.or_u(0, 1);
  i64.atomic.rmw.or(0, 1);

  i32.atomic.rmw8.xor_u(0, 1);
  i32.atomic.rmw16.xor_u(0, 1);
  i32.atomic.rmw.xor(0, 1);
  i64.atomic.rmw8.xor_u(0, 1);
  i64.atomic.rmw16.xor_u(0, 1);
  i64.atomic.rmw32.xor_u(0, 1);
  i64.atomic.rmw.xor(0, 1);

  i32.atomic.rmw8.xchg_u(0, 1);
  i32.atomic.rmw16.xchg_u(0, 1);
  i32.atomic.rmw.xchg(0, 1);
  i64.atomic.rmw8.xchg_u(0, 1);
  i64.atomic.rmw16.xchg_u(0, 1);
  i64.atomic.rmw32.xchg_u(0, 1);
  i64.atomic.rmw.xchg(0, 1);

  i32.atomic.rmw8.cmpxchg_u(0, 1, 2);
  i32.atomic.rmw16.cmpxchg_u(0, 1, 2);
  i32.atomic.rmw.cmpxchg(0, 1, 2);
  i64.atomic.rmw8.cmpxchg_u(0, 1, 2);
  i64.atomic.rmw16.cmpxchg_u(0, 1, 2);
  i64.atomic.rmw32.cmpxchg_u(0, 1, 2);
  i64.atomic.rmw.cmpxchg(0, 1, 2);

  // i32.atomic.wait(0, 0, -1);
  // i64.atomic.wait(0, 0, -1);
  // i32.atomic.notify(0, 1);
  // i64.atomic.notify(0, 1);
}

if (ASC_FEATURE_THREADS) {
  testAtomic();
  testAtomicAsm();
}
