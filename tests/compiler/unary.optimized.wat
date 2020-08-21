(module
 (type $none_=>_none (func))
 (memory $0 0)
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:unary
  (local $0 i32)
  (local $1 i64)
  global.get $unary/i
  i32.const 1
  i32.add
  global.set $unary/i
  global.get $unary/i
  i32.const 1
  i32.sub
  global.set $unary/i
  global.get $unary/i
  i32.const 1
  i32.add
  global.set $unary/i
  global.get $unary/i
  i32.const 1
  i32.sub
  global.set $unary/i
  i32.const 1
  global.set $unary/i
  i32.const -1
  global.set $unary/i
  i32.const 0
  global.set $unary/i
  i32.const -2
  global.set $unary/i
  i32.const 2
  global.set $unary/i
  i32.const 0
  global.set $unary/i
  i32.const -1
  global.set $unary/i
  i32.const 0
  global.set $unary/i
  i32.const -1
  global.set $unary/i
  i32.const -1
  local.tee $0
  i32.const 1
  i32.add
  global.set $unary/i
  local.get $0
  global.set $unary/i
  global.get $unary/i
  local.tee $0
  i32.const 1
  i32.sub
  global.set $unary/i
  local.get $0
  global.set $unary/i
  global.get $unary/I
  i64.const 1
  i64.add
  global.set $unary/I
  global.get $unary/I
  i64.const 1
  i64.sub
  global.set $unary/I
  global.get $unary/I
  i64.const 1
  i64.add
  global.set $unary/I
  global.get $unary/I
  i64.const 1
  i64.sub
  global.set $unary/I
  i64.const 1
  global.set $unary/I
  i64.const -1
  global.set $unary/I
  i64.const 0
  global.set $unary/I
  i64.const -2
  global.set $unary/I
  i64.const 2
  global.set $unary/I
  i64.const 0
  global.set $unary/I
  i64.const -1
  global.set $unary/I
  i64.const 0
  global.set $unary/I
  i64.const -1
  global.set $unary/I
  i64.const -1
  local.tee $1
  i64.const 1
  i64.add
  global.set $unary/I
  local.get $1
  global.set $unary/I
  global.get $unary/I
  local.tee $1
  i64.const 1
  i64.sub
  global.set $unary/I
  local.get $1
  global.set $unary/I
  global.get $unary/f
  f32.const 1
  f32.add
  global.set $unary/f
  global.get $unary/f
  f32.const 1
  f32.sub
  global.set $unary/f
  global.get $unary/f
  f32.const 1
  f32.add
  global.set $unary/f
  global.get $unary/f
  f32.const 1
  f32.sub
  global.set $unary/f
  f32.const 1.25
  global.set $unary/f
  f32.const -1.25
  global.set $unary/f
  i32.const 0
  global.set $unary/i
  f32.const -1.25
  global.set $unary/f
  f32.const 1.25
  global.set $unary/f
  i32.const 0
  global.set $unary/i
  f32.const 2.25
  global.set $unary/f
  f32.const 1.25
  global.set $unary/f
  f32.const 2.25
  global.set $unary/f
  f32.const 1.25
  global.set $unary/f
  f32.const 0.25
  global.set $unary/f
  f32.const 1.25
  global.set $unary/f
  global.get $unary/F
  f64.const 1
  f64.add
  global.set $unary/F
  global.get $unary/F
  f64.const 1
  f64.sub
  global.set $unary/F
  global.get $unary/F
  f64.const 1
  f64.add
  global.set $unary/F
  global.get $unary/F
  f64.const 1
  f64.sub
  global.set $unary/F
  f64.const 1.25
  global.set $unary/F
  f64.const -1.25
  global.set $unary/F
  i64.const 0
  global.set $unary/I
  f64.const -1.25
  global.set $unary/F
  f64.const 1.25
  global.set $unary/F
  i64.const 0
  global.set $unary/I
  f64.const 2.25
  global.set $unary/F
  f64.const 1.25
  global.set $unary/F
  f64.const 2.25
  global.set $unary/F
  f64.const 1.25
  global.set $unary/F
  f64.const 0.25
  global.set $unary/F
  f64.const 1.25
  global.set $unary/F
 )
 (func $~start
  call $start:unary
 )
)
