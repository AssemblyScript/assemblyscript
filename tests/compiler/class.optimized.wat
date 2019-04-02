(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\10")
 (data (i32.const 24) "c\00l\00a\00s\00s\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 0) $start $~lib/string/String~traverse)
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class/test))
 (export ".capabilities" (global $~lib/capabilities))
 (func $~lib/string/String~traverse (; 0 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $class/test (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $start (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
