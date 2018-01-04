(module
 (type $v (func))
 (global $binary/b (mut i32) (i32.const 0))
 (global $binary/i (mut i32) (i32.const 0))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (drop
   (i32.div_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.rem_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.lt_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.gt_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.le_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.ge_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.eq
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.eq
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.add
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.sub
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.mul
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.div_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.rem_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shl
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shr_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shr_u
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.and
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.or
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.xor
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.add
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.sub
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.mul
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.rem_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shl
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shr_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shr_u
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.and
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.or
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.xor
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i64.div_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.rem_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.lt_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.gt_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.le_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.ge_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.eq
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.eq
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.add
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.sub
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.mul
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.div_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.rem_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shl
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shr_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shr_u
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.and
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.or
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.xor
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.add
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.sub
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.mul
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.rem_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shl
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shr_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shr_u
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.and
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.or
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.xor
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (f32.lt
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.gt
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.le
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.ge
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.eq
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.eq
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.add
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.sub
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.mul
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.div
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.add
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.sub
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.mul
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f64.lt
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.gt
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.le
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.ge
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.eq
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.eq
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.add
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.sub
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.mul
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.div
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.add
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.sub
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.mul
    (get_global $binary/F)
    (f64.const 1)
   )
  )
 )
)
