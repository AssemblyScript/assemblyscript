(module
 (type $none_=>_i32 (func (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (export "getValue" (func $named-import-default/getValue))
 (func $named-export-default/get3 (result i32)
  i32.const 3
 )
 (func $named-import-default/getValue (result i32)
  call $named-export-default/get3
 )
)
