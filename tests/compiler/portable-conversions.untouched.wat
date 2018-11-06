(module
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $portable-conversions/i (mut i32) (i32.const 0))
 (global $portable-conversions/I (mut i64) (i64.const 0))
 (global $portable-conversions/f (mut f32) (f32.const 0))
 (global $portable-conversions/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  get_global $portable-conversions/i
  drop
  get_global $portable-conversions/I
  i32.wrap/i64
  drop
  get_global $portable-conversions/f
  i32.trunc_s/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_s/f64
  drop
  get_global $portable-conversions/i
  drop
  get_global $portable-conversions/I
  i32.wrap/i64
  drop
  get_global $portable-conversions/f
  i32.trunc_s/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_s/f64
  drop
  get_global $portable-conversions/i
  drop
  get_global $portable-conversions/I
  i32.wrap/i64
  drop
  get_global $portable-conversions/f
  i32.trunc_s/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_s/f64
  drop
  get_global $portable-conversions/i
  i64.extend_s/i32
  drop
  get_global $portable-conversions/I
  drop
  get_global $portable-conversions/f
  i64.trunc_s/f32
  drop
  get_global $portable-conversions/F
  i64.trunc_s/f64
  drop
  get_global $portable-conversions/i
  drop
  get_global $portable-conversions/I
  i32.wrap/i64
  drop
  get_global $portable-conversions/f
  i32.trunc_s/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_s/f64
  drop
  get_global $portable-conversions/i
  drop
  get_global $portable-conversions/I
  i32.wrap/i64
  drop
  get_global $portable-conversions/f
  i32.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_u/f64
  drop
  get_global $portable-conversions/i
  drop
  get_global $portable-conversions/I
  i32.wrap/i64
  drop
  get_global $portable-conversions/f
  i32.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_u/f64
  drop
  get_global $portable-conversions/i
  drop
  get_global $portable-conversions/I
  i32.wrap/i64
  drop
  get_global $portable-conversions/f
  i32.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_u/f64
  drop
  get_global $portable-conversions/i
  i64.extend_s/i32
  drop
  get_global $portable-conversions/I
  drop
  get_global $portable-conversions/f
  i64.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i64.trunc_u/f64
  drop
  get_global $portable-conversions/i
  drop
  get_global $portable-conversions/I
  i32.wrap/i64
  drop
  get_global $portable-conversions/f
  i32.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_u/f64
  drop
  get_global $portable-conversions/i
  drop
  get_global $portable-conversions/I
  i32.wrap/i64
  drop
  get_global $portable-conversions/f
  i32.trunc_u/f32
  drop
  get_global $portable-conversions/F
  i32.trunc_u/f64
  drop
  get_global $portable-conversions/i
  f32.convert_s/i32
  drop
  get_global $portable-conversions/I
  f32.convert_s/i64
  drop
  get_global $portable-conversions/f
  drop
  get_global $portable-conversions/F
  f32.demote/f64
  drop
  get_global $portable-conversions/i
  f64.convert_s/i32
  drop
  get_global $portable-conversions/I
  f64.convert_s/i64
  drop
  get_global $portable-conversions/f
  f64.promote/f32
  drop
  get_global $portable-conversions/F
  drop
 )
 (func $null (; 1 ;) (type $v)
 )
)
