(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global $reexport2/export2 i32 (i32.const 0))
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "f" (func $reexportUser/f))
 (start $start)
 (func $export/add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $export/mul (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.mul
   (get_local $0)
   (get_local $1)
  )
 )
 (func $reexportUser/f (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (call $export/add
   (get_local $0)
   (call $export/add
    (call $export/add
     (get_local $0)
     (get_global $reexport2/export2)
    )
    (get_global $reexport2/export2)
   )
  )
 )
 (func $start (; 3 ;) (type $v)
  (drop
   (i32.add
    (call $export/add
     (i32.const 1)
     (i32.const 2)
    )
    (call $export/mul
     (i32.const 3)
     (i32.const 4)
    )
   )
  )
 )
)
