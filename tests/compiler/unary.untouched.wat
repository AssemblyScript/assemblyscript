(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:unary
  (local $0 f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 f32)
  (local $6 f64)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  i32.const 1
  drop
  i32.const -1
  drop
  i32.const 1
  i32.eqz
  drop
  i32.const 1
  i32.const -1
  i32.xor
  drop
  f64.const 1.25
  drop
  f64.const -1.25
  drop
  f64.const 1.25
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  i32.eqz
  drop
  global.get $unary/i
  drop
  i32.const 0
  global.get $unary/i
  i32.sub
  drop
  global.get $unary/i
  i32.eqz
  drop
  global.get $unary/i
  i32.const -1
  i32.xor
  drop
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
  i32.const 1
  i32.eqz
  global.set $unary/i
  i32.const 1
  i32.const -1
  i32.xor
  global.set $unary/i
  global.get $unary/i
  global.set $unary/i
  i32.const 0
  global.get $unary/i
  i32.sub
  global.set $unary/i
  global.get $unary/i
  i32.eqz
  global.set $unary/i
  global.get $unary/i
  i32.const -1
  i32.xor
  global.set $unary/i
  global.get $unary/i
  i32.const 1
  i32.add
  global.set $unary/i
  global.get $unary/i
  global.set $unary/i
  global.get $unary/i
  i32.const 1
  i32.sub
  global.set $unary/i
  global.get $unary/i
  global.set $unary/i
  global.get $unary/i
  local.tee $1
  i32.const 1
  i32.add
  global.set $unary/i
  local.get $1
  global.set $unary/i
  global.get $unary/i
  local.tee $2
  i32.const 1
  i32.sub
  global.set $unary/i
  local.get $2
  global.set $unary/i
  global.get $unary/I
  drop
  i64.const 0
  global.get $unary/I
  i64.sub
  drop
  global.get $unary/I
  i64.const 0
  i64.ne
  i32.eqz
  drop
  global.get $unary/I
  i64.const -1
  i64.xor
  drop
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
  i64.const 1
  i64.const 0
  i64.ne
  i32.eqz
  i64.extend_i32_u
  global.set $unary/I
  i64.const 1
  i64.const -1
  i64.xor
  global.set $unary/I
  global.get $unary/I
  global.set $unary/I
  i64.const 0
  global.get $unary/I
  i64.sub
  global.set $unary/I
  global.get $unary/I
  i64.const 0
  i64.ne
  i32.eqz
  i64.extend_i32_u
  global.set $unary/I
  global.get $unary/I
  i64.const -1
  i64.xor
  global.set $unary/I
  global.get $unary/I
  i64.const 1
  i64.add
  global.set $unary/I
  global.get $unary/I
  global.set $unary/I
  global.get $unary/I
  i64.const 1
  i64.sub
  global.set $unary/I
  global.get $unary/I
  global.set $unary/I
  global.get $unary/I
  local.tee $3
  i64.const 1
  i64.add
  global.set $unary/I
  local.get $3
  global.set $unary/I
  global.get $unary/I
  local.tee $4
  i64.const 1
  i64.sub
  global.set $unary/I
  local.get $4
  global.set $unary/I
  global.get $unary/f
  drop
  global.get $unary/f
  f32.neg
  drop
  global.get $unary/f
  local.tee $5
  f32.const 0
  f32.ne
  local.get $5
  local.get $5
  f32.eq
  i32.and
  i32.eqz
  drop
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
  f64.const 1.25
  local.tee $6
  f64.const 0
  f64.ne
  local.get $6
  local.get $6
  f64.eq
  i32.and
  i32.eqz
  global.set $unary/i
  global.get $unary/f
  global.set $unary/f
  global.get $unary/f
  f32.neg
  global.set $unary/f
  global.get $unary/f
  local.tee $7
  f32.const 0
  f32.ne
  local.get $7
  local.get $7
  f32.eq
  i32.and
  i32.eqz
  global.set $unary/i
  global.get $unary/f
  f32.const 1
  f32.add
  global.set $unary/f
  global.get $unary/f
  global.set $unary/f
  global.get $unary/f
  f32.const 1
  f32.sub
  global.set $unary/f
  global.get $unary/f
  global.set $unary/f
  global.get $unary/f
  local.tee $8
  f32.const 1
  f32.add
  global.set $unary/f
  local.get $8
  global.set $unary/f
  global.get $unary/f
  local.tee $9
  f32.const 1
  f32.sub
  global.set $unary/f
  local.get $9
  global.set $unary/f
  global.get $unary/F
  drop
  global.get $unary/F
  f64.neg
  drop
  global.get $unary/F
  local.tee $10
  f64.const 0
  f64.ne
  local.get $10
  local.get $10
  f64.eq
  i32.and
  i32.eqz
  drop
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
  f64.const 1.25
  local.tee $11
  f64.const 0
  f64.ne
  local.get $11
  local.get $11
  f64.eq
  i32.and
  i32.eqz
  i64.extend_i32_u
  global.set $unary/I
  global.get $unary/F
  global.set $unary/F
  global.get $unary/F
  f64.neg
  global.set $unary/F
  global.get $unary/F
  local.tee $12
  f64.const 0
  f64.ne
  local.get $12
  local.get $12
  f64.eq
  i32.and
  i32.eqz
  i64.extend_i32_u
  global.set $unary/I
  global.get $unary/F
  f64.const 1
  f64.add
  global.set $unary/F
  global.get $unary/F
  global.set $unary/F
  global.get $unary/F
  f64.const 1
  f64.sub
  global.set $unary/F
  global.get $unary/F
  global.set $unary/F
  global.get $unary/F
  local.tee $13
  f64.const 1
  f64.add
  global.set $unary/F
  local.get $13
  global.set $unary/F
  global.get $unary/F
  local.tee $14
  f64.const 1
  f64.sub
  global.set $unary/F
  local.get $14
  global.set $unary/F
 )
 (func $~start
  call $start:unary
 )
)
