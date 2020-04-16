(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 33 funcref)
 (elem (i32.const 32) $tablebase/foo)
 (global $tablebase/staticFunction i32 (i32.const 32))
 (global $~lib/ASC_TABLE_BASE i32 (i32.const 32))
 (export "memory" (memory $0))
 (func $tablebase/foo
  nop
 )
)
