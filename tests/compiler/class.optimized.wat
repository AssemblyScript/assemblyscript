(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00c\00l\00a\00s\00s\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $start)
 (export "memory" (memory $0))
 (export "table" (table $0))
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
 (func $start (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
