(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i64_i32_=>_i64 (func (param i64 i32) (result i64)))
 (type $none_=>_f32 (func (result f32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (type $f32_f32_=>_f32 (func (param f32 f32) (result f32)))
 (type $none_=>_f64 (func (result f64)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (start $~start)
 (func $function/_
  nop
 )
 (func $function/v
  return
 )
 (func $function/i (result i32)
  i32.const 0
 )
 (func $function/j (result i64)
  i64.const 0
 )
 (func $function/f (result f32)
  f32.const 0
 )
 (func $function/d (result f64)
  f64.const 0
 )
 (func $function/i_ (param $0 i32)
  nop
 )
 (func $function/iv (param $0 i32)
  return
 )
 (func $function/ii (param $0 i32) (result i32)
  local.get $0
 )
 (func $function/jj (param $0 i64) (result i64)
  local.get $0
 )
 (func $function/ff (param $0 f32) (result f32)
  local.get $0
 )
 (func $function/dd (param $0 f64) (result f64)
  local.get $0
 )
 (func $function/ii_ (param $0 i32) (param $1 i32)
  nop
 )
 (func $function/iiv (param $0 i32) (param $1 i32)
  return
 )
 (func $function/iii (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function/jjj (param $0 i64) (param $1 i32) (result i64)
  local.get $0
  local.get $1
  i64.extend_i32_s
  i64.add
 )
 (func $function/fff (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $function/ddd (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $start:function
  call $function/_
  call $function/v
  call $function/i
  drop
  call $function/j
  drop
  call $function/f
  drop
  call $function/d
  drop
  i32.const 0
  call $function/i_
  i32.const 0
  call $function/iv
  i32.const 0
  call $function/ii
  drop
  i64.const 0
  call $function/jj
  drop
  f32.const 0
  call $function/ff
  drop
  f64.const 0
  call $function/dd
  drop
  i32.const 1
  i32.const 2
  call $function/ii_
  i32.const 1
  i32.const 2
  call $function/iiv
  i32.const 1
  i32.const 2
  call $function/iii
  drop
  i64.const 1
  i32.const 2
  call $function/jjj
  drop
  f32.const 1
  f32.const 2
  call $function/fff
  drop
  f64.const 1
  f64.const 2
  call $function/ddd
  drop
 )
 (func $~start
  call $start:function
 )
)
