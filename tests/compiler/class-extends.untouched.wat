(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (export "test" (func $class-extends/test))
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $class-extends/test (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.load
  drop
  local.get $0
  i32.load16_s offset=4
  drop
  local.get $0
  i32.const 2
  i32.store
  local.get $0
  i32.const 3
  i32.store16 offset=4
  local.get $0
  call $~lib/rt/stub/__release
 )
)
