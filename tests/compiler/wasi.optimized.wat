(module
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\0e")
 (data (i32.const 24) "w\00a\00s\00i\00.\00t\00s")
 (global $wasi/sig (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $FUNCSIG$v)
  i32.const 9
  global.set $wasi/sig
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
