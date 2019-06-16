(module
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (global $ternary/a (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $ternary/a
  i32.const 1
  global.set $ternary/a
  i32.const 1
  global.set $ternary/a
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
