(module
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $portable-conversions/f (mut f32) (f32.const 0))
 (global $portable-conversions/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  get_global $portable-conversions/f
  i32.trunc_s/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_s/f64
  drop
  get_global $portable-conversions/f
  i32.trunc_s/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_s/f64
  drop
  get_global $portable-conversions/f
  i32.trunc_s/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_s/f64
  drop
  get_global $portable-conversions/f
  i64.trunc_s/f32
  drop
  get_global $portable-conversions/F
  i64.trunc_s/f64
  drop
  get_global $portable-conversions/f
  i32.trunc_s/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_s/f64
  drop
  get_global $portable-conversions/f
  i32.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_u/f64
  drop
  get_global $portable-conversions/f
  i32.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_u/f64
  drop
  get_global $portable-conversions/f
  i32.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_u/f64
  drop
  get_global $portable-conversions/f
  i64.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i64.trunc_u/f64
  drop
  get_global $portable-conversions/f
  i32.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_u/f64
  drop
  get_global $portable-conversions/f
  i32.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_u/f64
  drop
 )
 (func $null (; 1 ;) (type $v)
  nop
 )
)
