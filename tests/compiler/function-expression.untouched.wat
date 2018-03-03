(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global $function-expression/f1 (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 1))
 (global $function-expression/f3 (mut i32) (i32.const 2))
 (global $HEAP_BASE i32 (i32.const 4))
 (table 3 3 anyfunc)
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|1 $start~someName|2)
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start~anonymous|0 (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (get_local $0)
  )
 )
 (func $start~anonymous|1 (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (get_local $0)
  )
 )
 (func $start~someName|2 (; 2 ;) (type $v)
 )
 (func $start (; 3 ;) (type $v)
  (drop
   (call $start~anonymous|0
    (i32.const 1)
   )
  )
  (drop
   (call $start~anonymous|1
    (i32.const 2)
   )
  )
  (call $start~someName|2)
 )
)
