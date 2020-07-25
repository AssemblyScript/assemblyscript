(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
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
 (export "exportstar.ns.two" (func $export/ns.two))
 (export "exportstar.default.two" (func $export/ns.two))
 (start $~start)
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
 (func $start:reexport
  i32.const 1
  i32.const 2
  call $export/add
  i32.const 3
  i32.const 4
  call $export/mul
  i32.add
  drop
 )
 (func $start:rereexport
  call $start:reexport
 )
 (func $start:exportstar-rereexport
  call $start:rereexport
 )
 (func $export-default/theDefault
  nop
 )
 (func $export/sub (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $export/ns.one
  nop
 )
 (func $export/ns.two
  nop
 )
 (func $~start
  call $start:exportstar-rereexport
 )
)
