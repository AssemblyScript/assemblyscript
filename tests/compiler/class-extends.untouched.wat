(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (export "test" (func $class-extends/test))
 (func $class-extends/A#set:a (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $class-extends/B#set:b (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=4
 )
 (func $class-extends/test (param $0 i32)
  local.get $0
  i32.load
  drop
  local.get $0
  i32.load16_s offset=4
  drop
  local.get $0
  i32.const 2
  call $class-extends/A#set:a
  local.get $0
  i32.const 3
  call $class-extends/B#set:b
 )
)
