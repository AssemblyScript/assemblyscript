(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $export/ns.two)
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "add" (func $export/add))
 (export "renamed_sub" (func $export/sub))
 (export "renamed_mul" (func $export/mul))
 (export "rerenamed_mul" (func $export/mul))
 (export "a" (global $export/a))
 (export "renamed_b" (global $export/b))
 (export "renamed_c" (global $export/c))
 (export "rerenamed_c" (global $export/c))
 (export "renamed_add" (func $export/add))
 (export "rerenamed_sub" (func $export/mul))
 (export "renamed_ns.two" (func $export/ns.two))
 (func $export/add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $export/sub (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $export/mul (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.mul
 )
 (func $export/ns.two (; 3 ;) (type $_)
  nop
 )
)
