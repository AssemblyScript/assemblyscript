(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $export/add (; 0 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $export/sub (; 1 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $export/mul (; 2 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.mul
   (get_local $0)
   (get_local $1)
  )
 )
 (func $export/ns.two (; 3 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
 (func $start (; 4 ;) (; has Stack IR ;) (type $v)
  (drop
   (i32.add
    (i32.add
     (call $export/add
      (i32.const 1)
      (i32.const 2)
     )
     (call $export/sub
      (i32.const 2)
      (i32.const 3)
     )
    )
    (call $export/mul
     (i32.const 3)
     (i32.const 1)
    )
   )
  )
  (call $export/ns.two)
  (drop
   (i32.add
    (i32.add
     (call $export/add
      (i32.const 1)
      (i32.const 2)
     )
     (call $export/sub
      (i32.const 2)
      (i32.const 3)
     )
    )
    (call $export/mul
     (i32.const 3)
     (i32.const 1)
    )
   )
  )
  (call $export/ns.two)
 )
)
