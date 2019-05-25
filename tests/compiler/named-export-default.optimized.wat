(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "default" (func $named-export-default/get3))
 (func $named-export-default/get3 (; 0 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
