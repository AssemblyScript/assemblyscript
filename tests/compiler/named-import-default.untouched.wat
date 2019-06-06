(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "getValue" (func $named-import-default/getValue))
 (func $named-export-default/get3 (; 0 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
 )
 (func $named-import-default/getValue (; 1 ;) (type $FUNCSIG$i) (result i32)
  call $named-export-default/get3
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
 )
)
