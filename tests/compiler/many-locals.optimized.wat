(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\1c")
 (data (i32.const 24) "m\00a\00n\00y\00-\00l\00o\00c\00a\00l\00s\00.\00t\00s")
 (export "memory" (memory $0))
 (export "testI32" (func $many-locals/testI32))
 (export "testI8" (func $many-locals/testI8))
 (func $many-locals/testI32 (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $many-locals/testI8 (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
