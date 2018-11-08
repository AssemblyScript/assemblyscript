(module
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $export/ns.two)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $export/add (; 0 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
 )
 (func $export/sub (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const -1
 )
 (func $export/ns.two (; 2 ;) (type $v)
  nop
 )
 (func $start (; 3 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $export/add
  set_local $0
  call $export/sub
  set_local $1
  call $export/add
  drop
  call $export/ns.two
  call $export/add
  set_local $0
  call $export/sub
  set_local $1
  call $export/add
  drop
  call $export/ns.two
 )
)
