(module
 (type $i (func (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "getValue" (func $named-import-default/getValue))
 (func $named-export-default/get3 (; 0 ;) (type $i) (result i32)
  i32.const 3
 )
 (func $named-import-default/getValue (; 1 ;) (type $i) (result i32)
  call $named-export-default/get3
 )
 (func $null (; 2 ;) (type $v)
 )
)
