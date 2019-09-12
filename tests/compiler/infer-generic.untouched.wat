(module
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "test1" (func $infer-generic/test1))
 (export "test2" (func $infer-generic/test2))
 (export "test3" (func $infer-generic/test3))
 (export "test4" (func $infer-generic/test4))
 (func $infer-generic/inferPlain<f32> (; 0 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $infer-generic/test1 (; 1 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $infer-generic/inferPlain<f32>
 )
 (func $~lib/rt/stub/__retain (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $infer-generic/inferEncapsulatedClass<f32> (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $infer-generic/test2 (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $infer-generic/inferEncapsulatedClass<f32>
  local.tee $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $infer-generic/inferEncapsulatedFunction<f32,f64> (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $infer-generic/test3 (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $infer-generic/inferEncapsulatedFunction<f32,f64>
 )
 (func $infer-generic/inferEncapsulatedFunctionMixed<f32,f64> (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $infer-generic/test4 (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $infer-generic/inferEncapsulatedFunctionMixed<f32,f64>
 )
 (func $null (; 10 ;) (type $FUNCSIG$v)
 )
)
