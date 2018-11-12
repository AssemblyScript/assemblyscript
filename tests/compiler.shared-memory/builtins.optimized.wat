(module
 (type $v (func))
 (import "env" "memory" (memory $0 (shared 0 256)))
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  i32.const 10
  i32.const 8
  i32.atomic.store8
  i32.const 11
  i32.const 16
  i32.atomic.store16
  i32.const 13
  i32.const 32
  i32.atomic.store
  i32.const 10
  i64.const 8
  i64.atomic.store8
  i32.const 11
  i64.const 16
  i64.atomic.store16
  i32.const 13
  i64.const 32
  i64.atomic.store32
  i32.const 17
  i64.const 64
  i64.atomic.store
  i32.const 10
  i32.atomic.load8_u
  set_global $builtins/i
  i32.const 11
  i32.atomic.load16_u
  set_global $builtins/i
  i32.const 13
  i32.atomic.load
  set_global $builtins/i
  i32.const 10
  i32.atomic.load8_u
  set_global $builtins/u
  i32.const 11
  i32.atomic.load16_u
  set_global $builtins/u
  i32.const 13
  i32.atomic.load
  set_global $builtins/u
  i32.const 10
  i64.atomic.load8_u
  set_global $builtins/I
  i32.const 11
  i64.atomic.load16_u
  set_global $builtins/I
  i32.const 13
  i64.atomic.load32_u
  set_global $builtins/I
  i32.const 17
  i64.atomic.load
  set_global $builtins/I
  i32.const 10
  i64.atomic.load8_u
  set_global $builtins/U
  i32.const 11
  i64.atomic.load16_u
  set_global $builtins/U
  i32.const 13
  i64.atomic.load32_u
  set_global $builtins/U
  i32.const 17
  i64.atomic.load
  set_global $builtins/U
  i32.const 10
  i32.const 1
  i32.atomic.rmw8_u.add
  drop
  i32.const 11
  i32.const 1
  i32.atomic.rmw16_u.add
  drop
  i32.const 13
  i32.const 1
  i32.atomic.rmw.add
  drop
  i32.const 10
  i64.const 1
  i64.atomic.rmw8_u.add
  drop
  i32.const 11
  i64.const 1
  i64.atomic.rmw16_u.add
  drop
  i32.const 13
  i64.const 1
  i64.atomic.rmw32_u.add
  drop
  i32.const 17
  i64.const 1
  i64.atomic.rmw.add
  drop
  i32.const 10
  i32.const 1
  i32.atomic.rmw8_u.sub
  drop
  i32.const 11
  i32.const 1
  i32.atomic.rmw16_u.sub
  drop
  i32.const 13
  i32.const 1
  i32.atomic.rmw.sub
  drop
  i32.const 10
  i64.const 1
  i64.atomic.rmw8_u.sub
  drop
  i32.const 11
  i64.const 1
  i64.atomic.rmw16_u.sub
  drop
  i32.const 13
  i64.const 1
  i64.atomic.rmw32_u.sub
  drop
  i32.const 17
  i64.const 1
  i64.atomic.rmw.sub
  drop
  i32.const 10
  i32.const 1
  i32.atomic.rmw8_u.and
  drop
  i32.const 11
  i32.const 1
  i32.atomic.rmw16_u.and
  drop
  i32.const 13
  i32.const 1
  i32.atomic.rmw.and
  drop
  i32.const 10
  i64.const 1
  i64.atomic.rmw8_u.and
  drop
  i32.const 11
  i64.const 1
  i64.atomic.rmw16_u.and
  drop
  i32.const 13
  i64.const 1
  i64.atomic.rmw32_u.and
  drop
  i32.const 17
  i64.const 1
  i64.atomic.rmw.and
  drop
  i32.const 10
  i32.const 1
  i32.atomic.rmw8_u.or
  drop
  i32.const 11
  i32.const 1
  i32.atomic.rmw16_u.or
  drop
  i32.const 13
  i32.const 1
  i32.atomic.rmw.or
  drop
  i32.const 10
  i64.const 1
  i64.atomic.rmw8_u.or
  drop
  i32.const 11
  i64.const 1
  i64.atomic.rmw16_u.or
  drop
  i32.const 13
  i64.const 1
  i64.atomic.rmw32_u.or
  drop
  i32.const 17
  i64.const 1
  i64.atomic.rmw.or
  drop
  i32.const 10
  i32.const 1
  i32.atomic.rmw8_u.xor
  drop
  i32.const 11
  i32.const 1
  i32.atomic.rmw16_u.xor
  drop
  i32.const 13
  i32.const 1
  i32.atomic.rmw.xor
  drop
  i32.const 10
  i64.const 1
  i64.atomic.rmw8_u.xor
  drop
  i32.const 11
  i64.const 1
  i64.atomic.rmw16_u.xor
  drop
  i32.const 13
  i64.const 1
  i64.atomic.rmw32_u.xor
  drop
  i32.const 17
  i64.const 1
  i64.atomic.rmw.xor
  drop
  i32.const 10
  i32.const 1
  i32.atomic.rmw8_u.xchg
  drop
  i32.const 11
  i32.const 1
  i32.atomic.rmw16_u.xchg
  drop
  i32.const 13
  i32.const 1
  i32.atomic.rmw.xchg
  drop
  i32.const 10
  i64.const 1
  i64.atomic.rmw8_u.xchg
  drop
  i32.const 11
  i64.const 1
  i64.atomic.rmw16_u.xchg
  drop
  i32.const 13
  i64.const 1
  i64.atomic.rmw32_u.xchg
  drop
  i32.const 17
  i64.const 1
  i64.atomic.rmw.xchg
  drop
  i32.const 10
  i32.const 1
  i32.const 2
  i32.atomic.rmw8_u.cmpxchg
  drop
  i32.const 11
  i32.const 1
  i32.const 2
  i32.atomic.rmw16_u.cmpxchg
  drop
  i32.const 13
  i32.const 1
  i32.const 2
  i32.atomic.rmw.cmpxchg
  drop
  i32.const 10
  i64.const 1
  i64.const 2
  i64.atomic.rmw8_u.cmpxchg
  drop
  i32.const 11
  i64.const 1
  i64.const 2
  i64.atomic.rmw16_u.cmpxchg
  drop
  i32.const 13
  i64.const 1
  i64.const 2
  i64.atomic.rmw32_u.cmpxchg
  drop
  i32.const 17
  i64.const 1
  i64.const 2
  i64.atomic.rmw.cmpxchg
  drop
 )
 (func $null (; 1 ;) (type $v)
  nop
 )
)
