(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "test" (func $class/test))
 (func $class/test (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  drop
  local.get $0
  i32.load16_s offset=4
  drop
  local.get $0
  i32.load8_s offset=6
  drop
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.const 2
  i32.store16 offset=4
  local.get $0
  i32.const 3
  i32.store8 offset=6
  local.get $0
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  unreachable
 )
)
