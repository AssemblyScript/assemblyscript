(module
 (type $none_=>_i32 (func_subtype (result i32) func))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "getValue" (func $named-import-default/getValue))
 (export "memory" (memory $0))
 (func $named-export-default/get3 (type $none_=>_i32) (result i32)
  i32.const 3
 )
 (func $named-import-default/getValue (type $none_=>_i32) (result i32)
  call $named-export-default/get3
 )
)
