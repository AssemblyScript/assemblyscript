(module
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iifii (func (param i32 f32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00n\00f\00e\00r\00-\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s\00")
 (data (i32.const 56) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 88) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00H\00\00\00H\00\00\00\0c\00\00\00\03\00\00\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $start:infer-generic~anonymous|0)
 (global $infer-generic/arr i32 (i32.const 104))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "test1" (func $infer-generic/test1))
 (export "test2" (func $infer-generic/test2))
 (export "test3" (func $infer-generic/test3))
 (export "test4" (func $infer-generic/test4))
 (start $start)
 (func $infer-generic/inferCompatible<f64> (; 1 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  f64.eq
 )
 (func $~lib/rt/stub/__retain (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $start:infer-generic~anonymous|0 (; 4 ;) (type $FUNCSIG$iifii) (param $0 i32) (param $1 f32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $0
  if (result i32)
   local.get $1
   f32.const 0
   f32.ne
  else
   i32.const 0
  end
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<f32>#reduce<bool> (; 5 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   local.get $0
   i32.load offset=12
   local.set $5
   loop $loop|0
    local.get $4
    local.get $5
    local.tee $6
    local.get $0
    i32.load offset=12
    local.tee $7
    local.get $6
    local.get $7
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $4
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iifii)
    local.set $3
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:infer-generic (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  f64.const 1
  f64.const 1
  call $infer-generic/inferCompatible<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $infer-generic/arr
  i32.const 1
  i32.const 0
  call $~lib/array/Array<f32>#reduce<bool>
  drop
 )
 (func $infer-generic/inferPlain<f32> (; 7 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $infer-generic/test1 (; 8 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $infer-generic/inferPlain<f32>
 )
 (func $infer-generic/inferEncapsulatedClass<f32> (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
 )
 (func $infer-generic/test2 (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $infer-generic/inferEncapsulatedClass<f32>
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $infer-generic/inferEncapsulatedFunction<f32,f64> (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $infer-generic/test3 (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $infer-generic/inferEncapsulatedFunction<f32,f64>
 )
 (func $infer-generic/inferEncapsulatedFunctionMixed<f32,f64> (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $infer-generic/test4 (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $infer-generic/inferEncapsulatedFunctionMixed<f32,f64>
 )
 (func $start (; 15 ;) (type $FUNCSIG$v)
  call $start:infer-generic
 )
 (func $null (; 16 ;) (type $FUNCSIG$v)
 )
)
