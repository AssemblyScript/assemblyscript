(module
 (type $none_=>_i32 (func (result i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "getValue" (func $named-import-default/getValue))
 (func $named-import-default/getValue (result i32)
  i32.const 3
 )
)
