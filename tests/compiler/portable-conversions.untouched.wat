(module
 (type $v (func))
 (global $portable-conversions/i (mut i32) (i32.const 0))
 (global $portable-conversions/I (mut i64) (i64.const 0))
 (global $portable-conversions/f (mut f32) (f32.const 0))
 (global $portable-conversions/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (drop
   (i32.shr_s
    (i32.shl
     (get_global $portable-conversions/i)
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  (drop
   (i32.shr_s
    (i32.shl
     (i32.wrap/i64
      (get_global $portable-conversions/I)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  (drop
   (i32.shr_s
    (i32.shl
     (i32.trunc_s/f32
      (get_global $portable-conversions/f)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  (drop
   (i32.shr_s
    (i32.shl
     (i32.trunc_s/f64
      (get_global $portable-conversions/F)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  (drop
   (i32.shr_s
    (i32.shl
     (get_global $portable-conversions/i)
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  (drop
   (i32.shr_s
    (i32.shl
     (i32.wrap/i64
      (get_global $portable-conversions/I)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  (drop
   (i32.shr_s
    (i32.shl
     (i32.trunc_s/f32
      (get_global $portable-conversions/f)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  (drop
   (i32.shr_s
    (i32.shl
     (i32.trunc_s/f64
      (get_global $portable-conversions/F)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  (drop
   (get_global $portable-conversions/i)
  )
  (drop
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (i32.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i32.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (i64.extend_s/i32
    (get_global $portable-conversions/i)
   )
  )
  (drop
   (get_global $portable-conversions/I)
  )
  (drop
   (i64.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i64.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (get_global $portable-conversions/i)
  )
  (drop
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (i32.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i32.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (i32.and
    (get_global $portable-conversions/i)
    (i32.const 255)
   )
  )
  (drop
   (i32.and
    (i32.wrap/i64
     (get_global $portable-conversions/I)
    )
    (i32.const 255)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f32
     (get_global $portable-conversions/f)
    )
    (i32.const 255)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f64
     (get_global $portable-conversions/F)
    )
    (i32.const 255)
   )
  )
  (drop
   (i32.and
    (get_global $portable-conversions/i)
    (i32.const 65535)
   )
  )
  (drop
   (i32.and
    (i32.wrap/i64
     (get_global $portable-conversions/I)
    )
    (i32.const 65535)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f32
     (get_global $portable-conversions/f)
    )
    (i32.const 65535)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f64
     (get_global $portable-conversions/F)
    )
    (i32.const 65535)
   )
  )
  (drop
   (get_global $portable-conversions/i)
  )
  (drop
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (i64.extend_u/i32
    (get_global $portable-conversions/i)
   )
  )
  (drop
   (get_global $portable-conversions/I)
  )
  (drop
   (i64.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i64.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (get_global $portable-conversions/i)
  )
  (drop
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (i32.and
    (get_global $portable-conversions/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.and
    (i32.wrap/i64
     (get_global $portable-conversions/I)
    )
    (i32.const 1)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f32
     (get_global $portable-conversions/f)
    )
    (i32.const 1)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f64
     (get_global $portable-conversions/F)
    )
    (i32.const 1)
   )
  )
  (drop
   (f32.convert_s/i32
    (get_global $portable-conversions/i)
   )
  )
  (drop
   (f32.convert_s/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (get_global $portable-conversions/f)
  )
  (drop
   (f32.demote/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (f64.convert_s/i32
    (get_global $portable-conversions/i)
   )
  )
  (drop
   (f64.convert_s/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (f64.promote/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (get_global $portable-conversions/F)
  )
 )
)
