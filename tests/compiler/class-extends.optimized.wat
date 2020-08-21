(module
 (type $i32_=>_none (func (param i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "test" (func $class-extends/test))
 (func $class-extends/test (param $0 i32)
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
 )
)
