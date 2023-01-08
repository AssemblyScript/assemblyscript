(module
 (type $none_=>_i32 (func_subtype (result i32) func))
 (memory $0 0)
 (export "default" (func $named-export-default/get3))
 (export "memory" (memory $0))
 (func $named-export-default/get3 (type $none_=>_i32) (result i32)
  i32.const 3
 )
)
