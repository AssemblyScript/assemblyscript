(module
 (type $v (func))
 (global $portable-conversions/f (mut f32) (f32.const 0))
 (global $portable-conversions/F (mut f64) (f64.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  ;;@ portable-conversions.ts:8:0
  (drop
   (i32.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:9:0
  (drop
   (i32.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:13:0
  (drop
   (i32.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:14:0
  (drop
   (i32.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:18:0
  (drop
   ;;@ portable-conversions.ts:18:4
   (i32.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:19:0
  (drop
   ;;@ portable-conversions.ts:19:4
   (i32.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:23:0
  (drop
   ;;@ portable-conversions.ts:23:4
   (i64.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:24:0
  (drop
   ;;@ portable-conversions.ts:24:4
   (i64.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:28:0
  (drop
   ;;@ portable-conversions.ts:28:6
   (i32.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:29:0
  (drop
   ;;@ portable-conversions.ts:29:6
   (i32.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:33:0
  (drop
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:34:0
  (drop
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:38:0
  (drop
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:39:0
  (drop
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:43:0
  (drop
   ;;@ portable-conversions.ts:43:4
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:44:0
  (drop
   ;;@ portable-conversions.ts:44:4
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:48:0
  (drop
   ;;@ portable-conversions.ts:48:4
   (i64.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:49:0
  (drop
   ;;@ portable-conversions.ts:49:4
   (i64.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:53:0
  (drop
   ;;@ portable-conversions.ts:53:6
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:54:0
  (drop
   ;;@ portable-conversions.ts:54:6
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:58:0
  (drop
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:59:0
  (drop
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
 )
)
