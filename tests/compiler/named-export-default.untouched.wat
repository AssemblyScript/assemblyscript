(module
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "default" (func $named-export-default/get3))
 (func $named-export-default/get3 (; 0 ;) (result i32)
  i32.const 3
 )
 (func $null (; 1 ;)
  unreachable
 )
)
