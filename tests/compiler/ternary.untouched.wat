(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $ternary/a (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:ternary (; 0 ;)
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  global.set $ternary/a
  i32.const 1
  global.set $ternary/a
  i32.const 1
  global.set $ternary/a
 )
 (func $~start (; 1 ;)
  call $start:ternary
 )
)
