(module
 (type $FUNCSIG$v (func))
 (memory $0 (shared 1 1))
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $threads/testAtomic (; 0 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.atomic.load8_u
  drop
  i32.const 0
  i32.atomic.load16_u
  drop
  i32.const 0
  i32.atomic.load
  drop
  i32.const 0
  i64.atomic.load8_u
  drop
  i32.const 0
  i64.atomic.load16_u
  drop
  i32.const 0
  i64.atomic.load32_u
  drop
  i32.const 0
  i64.atomic.load
  drop
  i32.const 8
  i64.atomic.load
  drop
  i32.const 0
  i32.const 1
  i32.atomic.store8
  i32.const 0
  i32.const 1
  i32.atomic.store16
  i32.const 0
  i32.const 1
  i32.atomic.store
  i32.const 0
  i64.const 1
  i64.atomic.store8
  i32.const 0
  i64.const 1
  i64.atomic.store16
  i32.const 0
  i64.const 1
  i64.atomic.store32
  i32.const 0
  i64.const 1
  i64.atomic.store
  i32.const 8
  i64.const 1
  i64.atomic.store
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.add_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.add_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.add
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.add_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.add_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.add_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.add
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.add offset=8
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.sub_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.sub_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.sub
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.sub_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.sub_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.sub_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.sub
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.sub offset=8
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.and_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.and_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.and
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.and_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.and_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.and_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.and
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.and offset=8
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.or_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.or_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.or
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.or_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.or_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.or_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.or
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.or offset=8
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.xor_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.xor_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.xor
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.xor_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.xor_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.xor_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xor
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xor offset=8
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.xchg_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.xchg_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.xchg
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.xchg_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.xchg_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.xchg_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xchg
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xchg offset=8
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw8.cmpxchg_u
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw16.cmpxchg_u
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw.cmpxchg
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw8.cmpxchg_u
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw16.cmpxchg_u
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw32.cmpxchg_u
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw.cmpxchg
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw.cmpxchg offset=8
  drop
 )
 (func $threads/testAtomicAsm (; 1 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.atomic.load8_u
  drop
  i32.const 0
  i32.atomic.load16_u
  drop
  i32.const 0
  i32.atomic.load
  drop
  i32.const 0
  i64.atomic.load8_u
  drop
  i32.const 0
  i64.atomic.load16_u
  drop
  i32.const 0
  i64.atomic.load32_u
  drop
  i32.const 0
  i64.atomic.load
  drop
  i32.const 0
  i32.const 1
  i32.atomic.store8
  i32.const 0
  i32.const 1
  i32.atomic.store16
  i32.const 0
  i32.const 1
  i32.atomic.store
  i32.const 0
  i64.const 1
  i64.atomic.store8
  i32.const 0
  i64.const 1
  i64.atomic.store16
  i32.const 0
  i64.const 1
  i64.atomic.store32
  i32.const 0
  i64.const 1
  i64.atomic.store
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.add_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.add_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.add
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.add_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.add_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.add_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.add
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.sub_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.sub_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.sub
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.sub_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.sub_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.sub_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.sub
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.and_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.and_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.and
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.and_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.and_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.and_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.and
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.or_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.or_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.or
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.or_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.or_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.or_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.or
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.xor_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.xor_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.xor
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.xor_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.xor_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.xor_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xor
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw8.xchg_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw16.xchg_u
  drop
  i32.const 0
  i32.const 1
  i32.atomic.rmw.xchg
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw8.xchg_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw16.xchg_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw32.xchg_u
  drop
  i32.const 0
  i64.const 1
  i64.atomic.rmw.xchg
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw8.cmpxchg_u
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw16.cmpxchg_u
  drop
  i32.const 0
  i32.const 1
  i32.const 2
  i32.atomic.rmw.cmpxchg
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw8.cmpxchg_u
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw16.cmpxchg_u
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw32.cmpxchg_u
  drop
  i32.const 0
  i64.const 1
  i64.const 2
  i64.atomic.rmw.cmpxchg
  drop
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $threads/testAtomic
  call $threads/testAtomicAsm
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
