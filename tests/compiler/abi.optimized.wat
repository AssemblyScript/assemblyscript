(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00a\00b\00i\00.\00t\00s")
 (global $abi/condition (mut i32) (i32.const 0))
 (global $abi/y (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "exported" (func $abi/exported))
 (export "exportedExported" (func $abi/exported))
 (export "exportedInternal" (func $abi/exported))
 (start $start)
 (func $abi/exported (; 0 ;) (type $FUNCSIG$i) (result i32)
  i32.const -128
 )
 (func $start (; 1 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $abi/condition
  i32.const 0
  global.set $abi/y
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
