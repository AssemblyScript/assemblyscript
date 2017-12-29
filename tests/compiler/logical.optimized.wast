(module
 (type $v (func))
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  (if
   (i32.eqz
    (tee_local $0
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $1
     (f64.const 2)
    )
    (f64.const 0)
   )
   (unreachable)
  )
  (set_global $logical/i
   (i32.const 2)
  )
  (if
   (i32.ne
    (get_global $logical/i)
    (i32.const 2)
   )
   (unreachable)
  )
  (set_global $logical/i
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $logical/i)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $logical/I
   (i64.const 2)
  )
  (if
   (i64.ne
    (get_global $logical/I)
    (i64.const 2)
   )
   (unreachable)
  )
  (set_global $logical/I
   (i64.const 1)
  )
  (if
   (i64.ne
    (get_global $logical/I)
    (i64.const 1)
   )
   (unreachable)
  )
  (set_global $logical/f
   (f32.const 2)
  )
  (if
   (f32.ne
    (get_global $logical/f)
    (f32.const 2)
   )
   (unreachable)
  )
  (set_global $logical/f
   (f32.const 1)
  )
  (if
   (f32.ne
    (get_global $logical/f)
    (f32.const 1)
   )
   (unreachable)
  )
  (set_global $logical/F
   (f64.const 2)
  )
  (if
   (f64.ne
    (get_global $logical/F)
    (f64.const 2)
   )
   (unreachable)
  )
  (set_global $logical/F
   (f64.const 1)
  )
  (if
   (f64.ne
    (get_global $logical/F)
    (f64.const 1)
   )
   (unreachable)
  )
 )
)
