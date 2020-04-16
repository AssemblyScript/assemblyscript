(module
 (type $none_=>_none (func))
 (import "env" "table" (table $0 2 funcref))
 (elem (i32.const 1) $start:exportimport-table~anonymous|0)
 (memory $0 0)
 (global $exportimport-table/f (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $~start)
 (func $start:exportimport-table~anonymous|0
  nop
 )
 (func $start:exportimport-table
  global.get $exportimport-table/f
  drop
 )
 (func $~start
  call $start:exportimport-table
 )
)
