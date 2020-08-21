(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (export "memory" (memory $0))
 (export "add" (func $export/add))
 (export "sub" (func $export/sub))
 (export "renamed_mul" (func $export/mul))
 (export "a" (global $export/a))
 (export "b" (global $export/b))
 (export "renamed_c" (global $export/c))
 (export "ns.two" (func $export/ns.two))
 (export "default.two" (func $export/ns.two))
 (func $export/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $export/sub (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $export/mul (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.mul
 )
 (func $export/ns.one
  nop
 )
 (func $export/ns.two
  nop
 )
)
