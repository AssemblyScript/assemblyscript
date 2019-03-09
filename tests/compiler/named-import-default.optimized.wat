(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "getValue" (func $named-import-default/getValue))
 (func $named-import-default/getValue (; 0 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
