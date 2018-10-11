(module
 (type $v (func))
 (memory $0 0)
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $portable-conversions/f (mut f32) (f32.const 0))
 (global $portable-conversions/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (; has Stack IR ;) (type $v)
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
 (func $null (; 1 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
