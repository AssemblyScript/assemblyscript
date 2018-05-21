(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  (drop
   (if (result i32)
    (i32.const 0)
    (unreachable)
    (i32.const 0)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (f64.const 0)
     (f64.const 0)
    )
    (unreachable)
    (f64.const 0)
   )
  )
  (drop
   (if (result i32)
    (i32.const 1)
    (i32.const 1)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (f64.const 1)
     (f64.const 0)
    )
    (f64.const 1)
    (unreachable)
   )
  )
  (drop
   (if (result i32)
    (tee_local $0
     (if (result i32)
      (i32.const 1)
      (i32.const 2)
      (i32.const 1)
     )
    )
    (get_local $0)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $1
      (if (result f64)
       (f64.ne
        (f64.const 1)
        (f64.const 0)
       )
       (f64.const 2)
       (f64.const 1)
      )
     )
     (f64.const 0)
    )
    (get_local $1)
    (unreachable)
   )
  )
  (set_global $logical/i
   (if (result i32)
    (i32.const 1)
    (i32.const 2)
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $logical/i)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/i
   (if (result i32)
    (i32.const 0)
    (i32.const 0)
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $logical/i)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/I
   (if (result i64)
    (i64.ne
     (i64.const 1)
     (i64.const 0)
    )
    (i64.const 2)
    (i64.const 1)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $logical/I)
     (i64.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/I
   (if (result i64)
    (i64.ne
     (i64.const 0)
     (i64.const 0)
    )
    (i64.const 0)
    (i64.const 1)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $logical/I)
     (i64.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/f
   (if (result f32)
    (f32.ne
     (f32.const 1)
     (f32.const 0)
    )
    (f32.const 2)
    (f32.const 1)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (get_global $logical/f)
     (f32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/f
   (if (result f32)
    (f32.ne
     (f32.const 0)
     (f32.const 0)
    )
    (f32.const 0)
    (f32.const 1)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (get_global $logical/f)
     (f32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/F
   (if (result f64)
    (f64.ne
     (f64.const 1)
     (f64.const 0)
    )
    (f64.const 2)
    (f64.const 1)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (get_global $logical/F)
     (f64.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/F
   (if (result f64)
    (f64.ne
     (f64.const 0)
     (f64.const 0)
    )
    (f64.const 0)
    (f64.const 1)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (get_global $logical/F)
     (f64.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
