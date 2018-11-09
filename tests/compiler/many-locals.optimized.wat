(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00m\00a\00n\00y\00-\00l\00o\00c\00a\00l\00s\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $start)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "testI32" (func $many-locals/testI32))
 (export "testI8" (func $many-locals/testI8))
 (func $many-locals/testI32 (; 0 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $many-locals/testI8 (; 1 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
 )
 (func $start (; 2 ;) (type $v)
  nop
 )
)
