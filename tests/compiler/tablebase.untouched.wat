(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 33 funcref)
 (elem (i32.const 32) $tablebase/foo)
 (global $tablebase/staticFunction i32 (i32.const 32))
 (global $~lib/ASC_TABLE_BASE i32 (i32.const 32))
 (export "memory" (memory $0))
 (start $~start)
 (func $tablebase/foo
  nop
 )
 (func $start:tablebase
  i32.const 32
  i32.const 32
  i32.eq
  drop
  global.get $tablebase/staticFunction
  i32.const 32
  i32.eq
  drop
 )
 (func $~start
  call $start:tablebase
 )
)
