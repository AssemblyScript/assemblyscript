(module
 (type $none_=>_none (func_subtype func))
 (memory $0 0)
 (export "theDefault" (func $export-default/theDefault))
 (export "default" (func $export-default/theDefault))
 (export "memory" (memory $0))
 (func $export-default/theDefault (type $none_=>_none)
  nop
 )
)
