(module
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $ternary/a (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  i32.const 1
  set_global $ternary/a
  i32.const 1
  set_global $ternary/a
  i32.const 1
  set_global $ternary/a
 )
 (func $null (; 1 ;) (type $v)
  nop
 )
)
