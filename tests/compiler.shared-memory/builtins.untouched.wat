(module
 (type $v (func))
 (import "env" "memory" (memory $0 (shared 256 256)))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (i32.atomic.store8
   (i32.const 10)
   (i32.const 8)
  )
  (i32.atomic.store16
   (i32.const 11)
   (i32.const 16)
  )
  (i32.atomic.store
   (i32.const 13)
   (i32.const 32)
  )
  (i64.atomic.store8
   (i32.const 10)
   (i64.const 8)
  )
  (i64.atomic.store16
   (i32.const 11)
   (i64.const 16)
  )
  (i64.atomic.store32
   (i32.const 13)
   (i64.const 32)
  )
  (i64.atomic.store
   (i32.const 17)
   (i64.const 64)
  )
  (set_global $builtins/i
   (i32.atomic.load8_u
    (i32.const 10)
   )
  )
  (set_global $builtins/i
   (i32.atomic.load16_u
    (i32.const 11)
   )
  )
  (set_global $builtins/i
   (i32.atomic.load
    (i32.const 13)
   )
  )
  (set_global $builtins/u
   (i32.atomic.load8_u
    (i32.const 10)
   )
  )
  (set_global $builtins/u
   (i32.atomic.load16_u
    (i32.const 11)
   )
  )
  (set_global $builtins/u
   (i32.atomic.load
    (i32.const 13)
   )
  )
  (set_global $builtins/I
   (i64.atomic.load8_u
    (i32.const 10)
   )
  )
  (set_global $builtins/I
   (i64.atomic.load16_u
    (i32.const 11)
   )
  )
  (set_global $builtins/I
   (i64.atomic.load32_u
    (i32.const 13)
   )
  )
  (set_global $builtins/I
   (i64.atomic.load
    (i32.const 17)
   )
  )
  (set_global $builtins/U
   (i64.atomic.load8_u
    (i32.const 10)
   )
  )
  (set_global $builtins/U
   (i64.atomic.load16_u
    (i32.const 11)
   )
  )
  (set_global $builtins/U
   (i64.atomic.load32_u
    (i32.const 13)
   )
  )
  (set_global $builtins/U
   (i64.atomic.load
    (i32.const 17)
   )
  )
  (drop
   (i32.atomic.rmw8_u.add
    (i32.const 10)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw16_u.add
    (i32.const 11)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw.add
    (i32.const 13)
    (i32.const 1)
   )
  )
  (drop
   (i64.atomic.rmw8_u.add
    (i32.const 10)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw16_u.add
    (i32.const 11)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw32_u.add
    (i32.const 13)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw.add
    (i32.const 17)
    (i64.const 1)
   )
  )
  (drop
   (i32.atomic.rmw8_u.sub
    (i32.const 10)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw16_u.sub
    (i32.const 11)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw.sub
    (i32.const 13)
    (i32.const 1)
   )
  )
  (drop
   (i64.atomic.rmw8_u.sub
    (i32.const 10)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw16_u.sub
    (i32.const 11)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw32_u.sub
    (i32.const 13)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw.sub
    (i32.const 17)
    (i64.const 1)
   )
  )
  (drop
   (i32.atomic.rmw8_u.and
    (i32.const 10)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw16_u.and
    (i32.const 11)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw.and
    (i32.const 13)
    (i32.const 1)
   )
  )
  (drop
   (i64.atomic.rmw8_u.and
    (i32.const 10)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw16_u.and
    (i32.const 11)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw32_u.and
    (i32.const 13)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw.and
    (i32.const 17)
    (i64.const 1)
   )
  )
  (drop
   (i32.atomic.rmw8_u.or
    (i32.const 10)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw16_u.or
    (i32.const 11)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw.or
    (i32.const 13)
    (i32.const 1)
   )
  )
  (drop
   (i64.atomic.rmw8_u.or
    (i32.const 10)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw16_u.or
    (i32.const 11)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw32_u.or
    (i32.const 13)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw.or
    (i32.const 17)
    (i64.const 1)
   )
  )
  (drop
   (i32.atomic.rmw8_u.xor
    (i32.const 10)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw16_u.xor
    (i32.const 11)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw.xor
    (i32.const 13)
    (i32.const 1)
   )
  )
  (drop
   (i64.atomic.rmw8_u.xor
    (i32.const 10)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw16_u.xor
    (i32.const 11)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw32_u.xor
    (i32.const 13)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw.xor
    (i32.const 17)
    (i64.const 1)
   )
  )
  (drop
   (i32.atomic.rmw8_u.xchg
    (i32.const 10)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw16_u.xchg
    (i32.const 11)
    (i32.const 1)
   )
  )
  (drop
   (i32.atomic.rmw.xchg
    (i32.const 13)
    (i32.const 1)
   )
  )
  (drop
   (i64.atomic.rmw8_u.xchg
    (i32.const 10)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw16_u.xchg
    (i32.const 11)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw32_u.xchg
    (i32.const 13)
    (i64.const 1)
   )
  )
  (drop
   (i64.atomic.rmw.xchg
    (i32.const 17)
    (i64.const 1)
   )
  )
  (drop
   (i32.atomic.rmw8_u.cmpxchg
    (i32.const 10)
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (i32.atomic.rmw16_u.cmpxchg
    (i32.const 11)
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (i32.atomic.rmw.cmpxchg
    (i32.const 13)
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (i64.atomic.rmw8_u.cmpxchg
    (i32.const 10)
    (i64.const 1)
    (i64.const 2)
   )
  )
  (drop
   (i64.atomic.rmw16_u.cmpxchg
    (i32.const 11)
    (i64.const 1)
    (i64.const 2)
   )
  )
  (drop
   (i64.atomic.rmw32_u.cmpxchg
    (i32.const 13)
    (i64.const 1)
    (i64.const 2)
   )
  )
  (drop
   (i64.atomic.rmw.cmpxchg
    (i32.const 17)
    (i64.const 1)
    (i64.const 2)
   )
  )
 )
 (func $null (; 1 ;) (type $v)
 )
)
