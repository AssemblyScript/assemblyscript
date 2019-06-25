(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
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
 (func $export/add (; 0 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $export/mul (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.mul
 )
 (func $start:reexport (; 2 ;) (type $FUNCSIG$v)
  i32.const 1
  i32.const 2
  call $export/add
  i32.const 3
  i32.const 4
  call $export/mul
  i32.add
  drop
 )
 (func $export/sub (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $export/ns.one (; 4 ;) (type $FUNCSIG$v)
  nop
 )
 (func $export/ns.two (; 5 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start (; 6 ;) (type $FUNCSIG$v)
  call $start:reexport
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
 )
)
