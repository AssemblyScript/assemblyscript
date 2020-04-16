(module
 (type $none_=>_i32 (func (result i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "default" (func $named-export-default/get3))
 (func $named-export-default/get3 (result i32)
  i32.const 3
 )
)
