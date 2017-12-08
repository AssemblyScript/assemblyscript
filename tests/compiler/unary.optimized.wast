(module
 (type $v (func))
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f32)
  (local $3 f64)
  (set_global $unary/i
   (i32.add
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.sub
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.add
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.sub
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.const 1)
  )
  (set_global $unary/i
   (i32.const -1)
  )
  (set_global $unary/i
   (i32.const 0)
  )
  (set_global $unary/i
   (i32.const -2)
  )
  (set_global $unary/i
   (i32.sub
    (i32.const 0)
    (get_global $unary/i)
   )
  )
  (set_global $unary/i
   (i32.eqz
    (get_global $unary/i)
   )
  )
  (set_global $unary/i
   (i32.xor
    (get_global $unary/i)
    (i32.const -1)
   )
  )
  (set_global $unary/i
   (i32.add
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.sub
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.add
    (tee_local $0
     (get_global $unary/i)
    )
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (get_local $0)
  )
  (set_global $unary/i
   (i32.sub
    (tee_local $0
     (get_global $unary/i)
    )
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (get_local $0)
  )
  (set_global $unary/I
   (i64.add
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.sub
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.add
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.sub
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.const 1)
  )
  (set_global $unary/I
   (i64.const -1)
  )
  (set_global $unary/I
   (i64.const 0)
  )
  (set_global $unary/I
   (i64.const -2)
  )
  (set_global $unary/I
   (i64.sub
    (i64.const 0)
    (get_global $unary/I)
   )
  )
  (set_global $unary/I
   (i64.extend_s/i32
    (i64.eqz
     (get_global $unary/I)
    )
   )
  )
  (set_global $unary/I
   (i64.xor
    (get_global $unary/I)
    (i64.const -1)
   )
  )
  (set_global $unary/I
   (i64.add
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.sub
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.add
    (tee_local $1
     (get_global $unary/I)
    )
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (get_local $1)
  )
  (set_global $unary/I
   (i64.sub
    (tee_local $1
     (get_global $unary/I)
    )
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (get_local $1)
  )
  (set_global $unary/f
   (f32.add
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.sub
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.add
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.sub
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.const 1.25)
  )
  (set_global $unary/f
   (f32.const -1.25)
  )
  (set_global $unary/i
   (i32.const 0)
  )
  (set_global $unary/f
   (f32.neg
    (get_global $unary/f)
   )
  )
  (set_global $unary/i
   (f32.eq
    (get_global $unary/f)
    (f32.const 0)
   )
  )
  (set_global $unary/f
   (f32.add
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.sub
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.add
    (tee_local $2
     (get_global $unary/f)
    )
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (get_local $2)
  )
  (set_global $unary/f
   (f32.sub
    (tee_local $2
     (get_global $unary/f)
    )
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (get_local $2)
  )
  (set_global $unary/F
   (f64.add
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.sub
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.add
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.sub
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.const 1.25)
  )
  (set_global $unary/F
   (f64.const -1.25)
  )
  (set_global $unary/I
   (i64.const 0)
  )
  (set_global $unary/F
   (f64.neg
    (get_global $unary/F)
   )
  )
  (set_global $unary/I
   (i64.extend_s/i32
    (f64.eq
     (get_global $unary/F)
     (f64.const 0)
    )
   )
  )
  (set_global $unary/F
   (f64.add
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.sub
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.add
    (tee_local $3
     (get_global $unary/F)
    )
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (get_local $3)
  )
  (set_global $unary/F
   (f64.sub
    (tee_local $3
     (get_global $unary/F)
    )
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (get_local $3)
  )
 )
)
