(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "a" (global $export/a))
 (export "renamed_a" (global $export/a))
 (export "renamed_b" (global $export/b))
 (export "renamed_renamed_b" (global $export/b))
 (start $start)
 (func $export/add (; 0 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $export/mul (; 1 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.mul
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start (; 2 ;) (; has Stack IR ;) (type $v)
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
