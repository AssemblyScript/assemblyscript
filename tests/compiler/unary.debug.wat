(module
 (type $none_=>_none (func))
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:unary
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
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
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
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
  local.set $0
  local.get $0
  global.set $unary/i
  global.get $unary/i
  i32.const 1
  i32.sub
  local.set $1
  local.get $1
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
  local.tee $2
  i32.const 1
  i32.add
  local.set $3
  local.get $3
  global.set $unary/i
  local.get $2
  global.set $unary/i
  global.get $unary/i
  local.tee $4
  i32.const 1
  i32.sub
  local.set $5
  local.get $5
  global.set $unary/i
  local.get $4
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
  local.set $6
  local.get $6
  global.set $unary/I
  global.get $unary/I
  i64.const 1
  i64.sub
  local.set $7
  local.get $7
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
  local.tee $8
  i64.const 1
  i64.add
  local.set $9
  local.get $9
  global.set $unary/I
  local.get $8
  global.set $unary/I
  global.get $unary/I
  local.tee $10
  i64.const 1
  i64.sub
  local.set $11
  local.get $11
  global.set $unary/I
  local.get $10
  global.set $unary/I
  global.get $unary/f
  drop
  global.get $unary/f
  f32.neg
  drop
  global.get $unary/f
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
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
  local.set $12
  local.get $12
  global.set $unary/f
  global.get $unary/f
  f32.const 1
  f32.sub
  local.set $13
  local.get $13
  global.set $unary/f
  f32.const 1.25
  global.set $unary/f
  f32.const -1.25
  global.set $unary/f
  f64.const 1.25
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.eqz
  global.set $unary/i
  global.get $unary/f
  global.set $unary/f
  global.get $unary/f
  f32.neg
  global.set $unary/f
  global.get $unary/f
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
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
  local.tee $14
  f32.const 1
  f32.add
  local.set $15
  local.get $15
  global.set $unary/f
  local.get $14
  global.set $unary/f
  global.get $unary/f
  local.tee $16
  f32.const 1
  f32.sub
  local.set $17
  local.get $17
  global.set $unary/f
  local.get $16
  global.set $unary/f
  global.get $unary/F
  drop
  global.get $unary/F
  f64.neg
  drop
  global.get $unary/F
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
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
  local.set $18
  local.get $18
  global.set $unary/F
  global.get $unary/F
  f64.const 1
  f64.sub
  local.set $19
  local.get $19
  global.set $unary/F
  f64.const 1.25
  global.set $unary/F
  f64.const -1.25
  global.set $unary/F
  f64.const 1.25
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.eqz
  i64.extend_i32_u
  global.set $unary/I
  global.get $unary/F
  global.set $unary/F
  global.get $unary/F
  f64.neg
  global.set $unary/F
  global.get $unary/F
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
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
  local.tee $20
  f64.const 1
  f64.add
  local.set $21
  local.get $21
  global.set $unary/F
  local.get $20
  global.set $unary/F
  global.get $unary/F
  local.tee $22
  f64.const 1
  f64.sub
  local.set $23
  local.get $23
  global.set $unary/F
  local.get $22
  global.set $unary/F
 )
 (func $~start
  call $start:unary
 )
)
