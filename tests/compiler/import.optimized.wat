(module
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $export/add (; 0 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const 3)
 )
 (func $export/sub (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const -1)
 )
 (func $export/ns.two (; 2 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
 (func $start (; 3 ;) (; has Stack IR ;) (type $v)
  (drop
   (i32.add
    (i32.add
     (call $export/add)
     (call $export/sub)
    )
    (call $export/add)
   )
  )
  (call $export/ns.two)
  (drop
   (i32.add
    (i32.add
     (call $export/add)
     (call $export/sub)
    )
    (call $export/add)
   )
  )
  (call $export/ns.two)
 )
)
