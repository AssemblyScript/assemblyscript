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
  get_global $export/a
  get_global $export/b
  call $export/add
  get_global $export/b
  get_global $export/c
  call $export/sub
  i32.add
  get_global $export/c
  get_global $export/a
  call $export/mul
  i32.add
  drop
  call $export/ns.two
  get_global $export/a
  get_global $export/b
  call $export/add
  get_global $export/b
  get_global $export/c
  call $export/sub
  i32.add
  get_global $export/c
  get_global $export/a
  call $export/mul
  i32.add
  drop
  call $export/ns.two
 )
 (func $null (; 5 ;) (type $v)
 )
)
