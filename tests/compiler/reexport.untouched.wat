(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (global $HEAP_BASE i32 (i32.const 8))
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
 (start $start)
 (func $export/add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $export/sub (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $export/mul (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.mul
 )
 (func $export/ns.two (; 3 ;) (type $v)
  nop
 )
 (func $start (; 4 ;) (type $v)
  i32.const 1
  i32.const 2
  call $export/add
  i32.const 3
  i32.const 4
  call $export/mul
  i32.add
  drop
 )
 (func $null (; 5 ;) (type $v)
 )
)
