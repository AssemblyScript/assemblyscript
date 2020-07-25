(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (memory $0 0)
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (export "memory" (memory $0))
 (export "a" (global $export/a))
 (export "renamed_a" (global $export/a))
 (export "renamed_b" (global $export/b))
 (export "renamed_renamed_b" (global $export/b))
 (export "default" (func $export-default/theDefault))
 (export "renamed_default" (func $export-default/theDefault))
 (export "exportstar.add" (func $export/add))
 (export "exportstar.sub" (func $export/sub))
 (export "exportstar.renamed_mul" (func $export/mul))
 (export "exportstar.a" (global $export/a))
 (export "exportstar.b" (global $export/b))
 (export "exportstar.renamed_c" (global $export/c))
 (export "exportstar.ns.two" (func $export-default/theDefault))
 (export "exportstar.default.two" (func $export-default/theDefault))
 (func $export/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $export/mul (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.mul
 )
 (func $export-default/theDefault
  nop
 )
 (func $export/sub (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
)
