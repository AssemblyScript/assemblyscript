(module
 (type $none_=>_none (func))
 (global $binary/i (mut i32) (i32.const 0))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  (local $0 f32)
  (local $1 f64)
  global.get $binary/i
  i32.const 1
  i32.add
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.sub
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 1
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 1
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  i32.const 1
  global.set $binary/i
  i32.const 0
  global.set $binary/i
  global.get $binary/I
  i64.const 1
  i64.add
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.sub
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 1
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 1
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  i64.const 1
  global.set $binary/I
  i64.const 0
  global.set $binary/I
  global.get $binary/f
  f32.const 1
  f32.add
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.sub
  global.set $binary/f
  global.get $binary/f
  local.tee $0
  local.get $0
  f32.trunc
  f32.sub
  local.get $0
  f32.copysign
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.add
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.sub
  global.set $binary/f
  global.get $binary/f
  local.tee $0
  local.get $0
  f32.trunc
  f32.sub
  local.get $0
  f32.copysign
  global.set $binary/f
  global.get $binary/F
  f64.const 1
  f64.add
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.sub
  global.set $binary/F
  global.get $binary/F
  local.tee $1
  local.get $1
  f64.trunc
  f64.sub
  local.get $1
  f64.copysign
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.add
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.sub
  global.set $binary/F
  global.get $binary/F
  local.tee $1
  local.get $1
  f64.trunc
  f64.sub
  local.get $1
  f64.copysign
  global.set $binary/F
 )
)
