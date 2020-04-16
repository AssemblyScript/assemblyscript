(module
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (export "test" (func $class-overloading/test))
 (start $~start)
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $class-overloading/Foo#baz (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $class-overloading/test (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $class-overloading/Foo#baz
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:class-overloading
  i32.const 0
  call $class-overloading/test
 )
 (func $~start
  call $start:class-overloading
 )
)
