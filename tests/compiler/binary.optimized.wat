(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (global $binary/i (mut i32) (i32.const 0))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/math/ipow32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1
  local.set $1
  i32.const 1
  local.set $2
  loop $while-continue|0
   local.get $1
   if
    local.get $0
    local.get $2
    i32.mul
    local.get $2
    local.get $1
    i32.const 1
    i32.and
    select
    local.set $2
    local.get $1
    i32.const 1
    i32.shr_u
    local.set $1
    local.get $0
    local.get $0
    i32.mul
    local.set $0
    br $while-continue|0
   end
  end
  local.get $2
 )
 (func $start:binary
  (local $0 f32)
  (local $1 f64)
  global.get $binary/i
  call $~lib/math/ipow32
  drop
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
  call $~lib/math/ipow32
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shl
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shr_s
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shr_u
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.and
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.or
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.xor
  global.set $binary/i
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
  global.get $binary/I
  i64.const 1
  i64.and
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.or
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.xor
  global.set $binary/I
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
 (func $~start
  call $start:binary
 )
)
