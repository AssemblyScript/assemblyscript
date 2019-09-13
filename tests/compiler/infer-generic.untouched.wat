(module
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00n\00f\00e\00r\00-\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
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
 (func $start:infer-generic (; 2 ;) (type $FUNCSIG$v)
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
 )
 (func $infer-generic/inferPlain<f32> (; 3 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $infer-generic/test1 (; 4 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $infer-generic/inferPlain<f32>
 )
 (func $~lib/rt/stub/__retain (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $infer-generic/inferEncapsulatedClass<f32> (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $infer-generic/test2 (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $infer-generic/inferEncapsulatedClass<f32>
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $infer-generic/inferEncapsulatedFunction<f32,f64> (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $infer-generic/test3 (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $infer-generic/inferEncapsulatedFunction<f32,f64>
 )
 (func $infer-generic/inferEncapsulatedFunctionMixed<f32,f64> (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $infer-generic/test4 (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $infer-generic/inferEncapsulatedFunctionMixed<f32,f64>
 )
 (func $start (; 13 ;) (type $FUNCSIG$v)
  call $start:infer-generic
 )
 (func $null (; 14 ;) (type $FUNCSIG$v)
 )
)
