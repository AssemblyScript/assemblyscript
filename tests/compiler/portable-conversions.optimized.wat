(module
 (type $v (func))
 (global $portable-conversions/f (mut f32) (f32.const 0))
 (global $portable-conversions/F (mut f64) (f64.const 0))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
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
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
 )
)
