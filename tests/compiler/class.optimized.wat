(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00c\00l\00a\00s\00s\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $start)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class/test))
 (func $class/test (; 0 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  drop
  get_local $0
  i32.load16_s offset=4
  drop
  get_local $0
  i32.load8_s offset=6
  drop
  get_local $0
  i32.const 1
  i32.store
  get_local $0
  i32.const 2
  i32.store16 offset=4
  get_local $0
  i32.const 3
  i32.store8 offset=6
  get_local $0
 )
 (func $start (; 1 ;) (type $v)
  nop
 )
)
