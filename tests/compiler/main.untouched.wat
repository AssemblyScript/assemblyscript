(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $main/code (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $main/main))
 (func $main/main (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_global $~started)
   )
   (block
    (call $start)
    (set_global $~started
     (i32.const 1)
    )
   )
  )
  (get_global $main/code)
 )
 (func $start (; 1 ;) (type $v)
  (set_global $main/code
   (i32.const 1)
  )
 )
 (func $null (; 2 ;) (type $v)
 )
)
