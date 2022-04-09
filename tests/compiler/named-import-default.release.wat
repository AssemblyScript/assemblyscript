(module
 (type $none_=>_i32 (func (result i32)))
 (memory $0 0)
 (export "getValue" (func $named-import-default/getValue))
 (export "memory" (memory $0))
 (func $named-import-default/getValue (result i32)
  i32.const 3
 )
)
