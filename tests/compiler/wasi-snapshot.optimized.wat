(module
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (global $wasi-snapshot/sig (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $FUNCSIG$v)
  i32.const 9
  global.set $wasi-snapshot/sig
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  unreachable
 )
)
