(module
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 f32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i64)
  get_global $unary/i
  i32.const 1
  i32.add
  set_global $unary/i
  get_global $unary/i
  i32.const 1
  i32.sub
  set_global $unary/i
  get_global $unary/i
  i32.const 1
  i32.add
  set_global $unary/i
  get_global $unary/i
  i32.const 1
  i32.sub
  set_global $unary/i
  i32.const 1
  set_global $unary/i
  i32.const -1
  set_global $unary/i
  i32.const 0
  set_global $unary/i
  i32.const -2
  set_global $unary/i
  i32.const 0
  get_global $unary/i
  i32.sub
  set_global $unary/i
  get_global $unary/i
  i32.eqz
  set_global $unary/i
  get_global $unary/i
  i32.const -1
  i32.xor
  set_global $unary/i
  get_global $unary/i
  i32.const 1
  i32.add
  set_global $unary/i
  get_global $unary/i
  i32.const 1
  i32.sub
  set_global $unary/i
  get_global $unary/i
  tee_local $2
  i32.const 1
  i32.add
  set_global $unary/i
  get_local $2
  set_global $unary/i
  get_global $unary/i
  tee_local $2
  i32.const 1
  i32.sub
  set_global $unary/i
  get_local $2
  set_global $unary/i
  get_global $unary/I
  i64.const 1
  i64.add
  set_global $unary/I
  get_global $unary/I
  i64.const 1
  i64.sub
  set_global $unary/I
  get_global $unary/I
  i64.const 1
  i64.add
  set_global $unary/I
  get_global $unary/I
  i64.const 1
  i64.sub
  set_global $unary/I
  i64.const 1
  set_global $unary/I
  i64.const -1
  set_global $unary/I
  i64.const 0
  set_global $unary/I
  i64.const -2
  set_global $unary/I
  i64.const 0
  get_global $unary/I
  i64.sub
  set_global $unary/I
  get_global $unary/I
  i64.eqz
  i64.extend_u/i32
  set_global $unary/I
  get_global $unary/I
  i64.const -1
  i64.xor
  set_global $unary/I
  get_global $unary/I
  i64.const 1
  i64.add
  set_global $unary/I
  get_global $unary/I
  i64.const 1
  i64.sub
  set_global $unary/I
  get_global $unary/I
  tee_local $3
  i64.const 1
  i64.add
  set_global $unary/I
  get_local $3
  set_global $unary/I
  get_global $unary/I
  tee_local $3
  i64.const 1
  i64.sub
  set_global $unary/I
  get_local $3
  set_global $unary/I
  get_global $unary/f
  f32.const 1
  f32.add
  set_global $unary/f
  get_global $unary/f
  f32.const 1
  f32.sub
  set_global $unary/f
  get_global $unary/f
  f32.const 1
  f32.add
  set_global $unary/f
  get_global $unary/f
  f32.const 1
  f32.sub
  set_global $unary/f
  f32.const 1.25
  set_global $unary/f
  f32.const -1.25
  set_global $unary/f
  i32.const 0
  set_global $unary/i
  get_global $unary/f
  f32.neg
  set_global $unary/f
  get_global $unary/f
  tee_local $0
  f32.const 0
  f32.eq
  set_global $unary/i
  get_local $0
  f32.const 1
  f32.add
  set_global $unary/f
  get_global $unary/f
  f32.const 1
  f32.sub
  set_global $unary/f
  get_global $unary/f
  tee_local $0
  f32.const 1
  f32.add
  set_global $unary/f
  get_local $0
  set_global $unary/f
  get_global $unary/f
  tee_local $0
  f32.const 1
  f32.sub
  set_global $unary/f
  get_local $0
  set_global $unary/f
  get_global $unary/F
  f64.const 1
  f64.add
  set_global $unary/F
  get_global $unary/F
  f64.const 1
  f64.sub
  set_global $unary/F
  get_global $unary/F
  f64.const 1
  f64.add
  set_global $unary/F
  get_global $unary/F
  f64.const 1
  f64.sub
  set_global $unary/F
  f64.const 1.25
  set_global $unary/F
  f64.const -1.25
  set_global $unary/F
  i64.const 0
  set_global $unary/I
  get_global $unary/F
  f64.neg
  set_global $unary/F
  get_global $unary/F
  tee_local $1
  f64.const 0
  f64.eq
  i64.extend_u/i32
  set_global $unary/I
  get_local $1
  f64.const 1
  f64.add
  set_global $unary/F
  get_global $unary/F
  f64.const 1
  f64.sub
  set_global $unary/F
  get_global $unary/F
  tee_local $1
  f64.const 1
  f64.add
  set_global $unary/F
  get_local $1
  set_global $unary/F
  get_global $unary/F
  tee_local $1
  f64.const 1
  f64.sub
  set_global $unary/F
  get_local $1
  set_global $unary/F
 )
 (func $null (; 1 ;) (type $v)
  nop
 )
)
