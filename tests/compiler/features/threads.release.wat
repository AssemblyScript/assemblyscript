(module
 (type $none_=>_none (func))
 (memory $0 (shared 1 10))
 (export "memory" (memory $0))
 (start $~start)
 (func $features/threads/testAtomic
  i32.const 0
  i32.atomic.load8_u $0
  drop
  i32.const 0
  i32.atomic.load16_u $0
  drop
  i32.const 0
  i32.atomic.load $0
  drop
  i32.const 0
  i64.atomic.load8_u $0
  drop
  i32.const 0
  i64.atomic.load16_u $0
  drop
  i32.const 0
  i64.atomic.load32_u $0
  drop
  i32.const 0
  i64.atomic.load $0
  drop
  i32.const 8
  i64.atomic.load $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.store8 $0
  i32.const 0
  i32.const 1
  i32.atomic.store16 $0
  i32.const 0
  i32.const 1
  i32.atomic.store $0
  i32.const 0
  i64.const 1
  i64.atomic.store8 $0
  i32.const 0
  i64.const 1
  i64.atomic.store16 $0
  i32.const 0
  i64.const 1
  i64.atomic.store32 $0
  i32.const 0
  i64.const 1
  i64.atomic.store $0
  i32.const 8
  i64.const 1
  i64.atomic.store $0
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.add_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.add_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.add $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.add_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.add_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.add_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.add $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.add $0 offset=8
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.sub_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.sub_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.sub $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.sub_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.sub_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.sub_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.sub $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.sub $0 offset=8
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.and_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.and_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.and $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.and_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.and_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.and_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.and $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.and $0 offset=8
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.or_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.or_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.or $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.or_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.or_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.or_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.or $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.or $0 offset=8
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.xor_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.xor_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.xor $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.xor_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.xor_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.xor_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xor $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xor $0 offset=8
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.xchg_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.xchg_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.xchg $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.xchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.xchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.xchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xchg $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xchg $0 offset=8
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw8.cmpxchg_u $0
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw16.cmpxchg_u $0
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw.cmpxchg $0
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw8.cmpxchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw16.cmpxchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw32.cmpxchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw.cmpxchg $0
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw.cmpxchg $0 offset=8
  drop
 )
 (func $features/threads/testAtomicAsm
  i32.const 0
  i32.atomic.load8_u $0
  drop
  i32.const 0
  i32.atomic.load16_u $0
  drop
  i32.const 0
  i32.atomic.load $0
  drop
  i32.const 0
  i64.atomic.load8_u $0
  drop
  i32.const 0
  i64.atomic.load16_u $0
  drop
  i32.const 0
  i64.atomic.load32_u $0
  drop
  i32.const 0
  i64.atomic.load $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.store8 $0
  i32.const 0
  i32.const 1
  i32.atomic.store16 $0
  i32.const 0
  i32.const 1
  i32.atomic.store $0
  i32.const 0
  i64.const 1
  i64.atomic.store8 $0
  i32.const 0
  i64.const 1
  i64.atomic.store16 $0
  i32.const 0
  i64.const 1
  i64.atomic.store32 $0
  i32.const 0
  i64.const 1
  i64.atomic.store $0
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.add_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.add_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.add $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.add_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.add_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.add_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.add $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.sub_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.sub_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.sub $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.sub_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.sub_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.sub_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.sub $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.and_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.and_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.and $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.and_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.and_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.and_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.and $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.or_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.or_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.or $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.or_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.or_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.or_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.or $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.xor_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.xor_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.xor $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.xor_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.xor_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.xor_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xor $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.xchg_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.xchg_u $0
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.xchg $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.xchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.xchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.xchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xchg $0
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw8.cmpxchg_u $0
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw16.cmpxchg_u $0
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw.cmpxchg $0
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw8.cmpxchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw16.cmpxchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw32.cmpxchg_u $0
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw.cmpxchg $0
  drop
 )
 (func $~start
  call $features/threads/testAtomic
  call $features/threads/testAtomicAsm
 )
)
