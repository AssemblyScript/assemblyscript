(module
 (type $v (func))
 (import "env" "memory" (memory $0 (shared 256 256)))
 (export "memory" (memory $0))
 (export "test" (func $assembly/index/test))
 (func $assembly/index/test (; 0 ;) (; has Stack IR ;) (type $v)
  (i32.atomic.store8
   (i32.const 120)
   (i32.const 8)
  )
  (i32.atomic.store16
   (i32.const 121)
   (i32.const 16)
  )
  (i32.atomic.store
   (i32.const 123)
   (i32.const 32)
  )
  (i64.atomic.store8
   (i32.const 120)
   (i64.const 8)
  )
  (i64.atomic.store16
   (i32.const 121)
   (i64.const 16)
  )
  (i64.atomic.store32
   (i32.const 123)
   (i64.const 32)
  )
  (i64.atomic.store
   (i32.const 127)
   (i64.const 64)
  )
  (drop
   (i32.atomic.load8_u
    (i32.const 120)
   )
  )
  (drop
   (i32.atomic.load16_u
    (i32.const 121)
   )
  )
  (drop
   (i32.atomic.load
    (i32.const 123)
   )
  )
  (drop
   (i32.atomic.load8_u
    (i32.const 120)
   )
  )
  (drop
   (i32.atomic.load16_u
    (i32.const 121)
   )
  )
  (drop
   (i32.atomic.load
    (i32.const 123)
   )
  )
  (drop
   (i64.atomic.load8_u
    (i32.const 120)
   )
  )
  (drop
   (i64.atomic.load16_u
    (i32.const 121)
   )
  )
  (drop
   (i64.atomic.load32_u
    (i32.const 123)
   )
  )
  (drop
   (i64.atomic.load
    (i32.const 127)
   )
  )
  (drop
   (i64.atomic.load8_u
    (i32.const 120)
   )
  )
  (drop
   (i64.atomic.load16_u
    (i32.const 121)
   )
  )
  (drop
   (i64.atomic.load32_u
    (i32.const 123)
   )
  )
  (drop
   (i64.atomic.load
    (i32.const 127)
   )
  )
 )
 (func $null (; 1 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
