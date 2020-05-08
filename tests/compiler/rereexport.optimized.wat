(module
 (type $none_=>_none (func))
 (memory $0 0)
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "a" (global $export/a))
 (export "renamed_a" (global $export/a))
 (export "renamed_b" (global $export/b))
 (export "renamed_renamed_b" (global $export/b))
 (export "default" (func $export-default/theDefault))
 (export "renamed_default" (func $export-default/theDefault))
 (func $export-default/theDefault
  nop
 )
)
