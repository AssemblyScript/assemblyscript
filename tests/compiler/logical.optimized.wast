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
  (local $2 i64)
  (local $3 f32)
  (if
   (tee_local $0
    (i32.const 0)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (tee_local $1
     (f64.const 0)
    )
    (f64.const 0)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (tee_local $0
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $1
     (f64.const 1)
    )
    (f64.const 0)
   )
   (unreachable)
  )
  (if
   (tee_local $0
    (i32.const 1)
   )
   (set_local $0
    (i32.const 2)
   )
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (tee_local $1
     (f64.const 1)
    )
    (f64.const 0)
   )
   (set_local $1
    (f64.const 2)
   )
  )
  (if
   (f64.eq
    (get_local $1)
    (f64.const 0)
   )
   (unreachable)
  )
  (if
   (tee_local $0
    (i32.const 1)
   )
   (set_local $0
    (i32.const 2)
   )
  )
  (set_global $logical/i
   (get_local $0)
  )
  (if
   (i32.ne
    (get_global $logical/i)
    (i32.const 2)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (tee_local $0
     (i32.const 0)
    )
   )
   (set_local $0
    (i32.const 1)
   )
  )
  (set_global $logical/i
   (get_local $0)
  )
  (if
   (i32.ne
    (get_global $logical/i)
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (tee_local $2
     (i64.const 1)
    )
    (i64.const 0)
   )
   (set_local $2
    (i64.const 2)
   )
  )
  (set_global $logical/I
   (get_local $2)
  )
  (if
   (i64.ne
    (get_global $logical/I)
    (i64.const 2)
   )
   (unreachable)
  )
  (if
   (i64.eq
    (tee_local $2
     (i64.const 0)
    )
    (i64.const 0)
   )
   (set_local $2
    (i64.const 1)
   )
  )
  (set_global $logical/I
   (get_local $2)
  )
  (if
   (i64.ne
    (get_global $logical/I)
    (i64.const 1)
   )
   (unreachable)
  )
  (if
   (f32.ne
    (tee_local $3
     (f32.const 1)
    )
    (f32.const 0)
   )
   (set_local $3
    (f32.const 2)
   )
  )
  (set_global $logical/f
   (get_local $3)
  )
  (if
   (f32.ne
    (get_global $logical/f)
    (f32.const 2)
   )
   (unreachable)
  )
  (if
   (f32.eq
    (tee_local $3
     (f32.const 0)
    )
    (f32.const 0)
   )
   (set_local $3
    (f32.const 1)
   )
  )
  (set_global $logical/f
   (get_local $3)
  )
  (if
   (f32.ne
    (get_global $logical/f)
    (f32.const 1)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (tee_local $1
     (f64.const 1)
    )
    (f64.const 0)
   )
   (set_local $1
    (f64.const 2)
   )
  )
  (set_global $logical/F
   (get_local $1)
  )
  (if
   (f64.ne
    (get_global $logical/F)
    (f64.const 2)
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $1
     (f64.const 0)
    )
    (f64.const 0)
   )
   (set_local $1
    (f64.const 1)
   )
  )
  (set_global $logical/F
   (get_local $1)
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
