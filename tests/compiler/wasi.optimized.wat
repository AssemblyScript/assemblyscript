(module
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) "\07\00\00\00w\00a\00s\00i\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $wasi/sig (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $FUNCSIG$v)
  i32.const 9
  global.set $wasi/sig
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
