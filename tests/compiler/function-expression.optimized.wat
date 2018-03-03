(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (table 3 3 anyfunc)
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|0 $start~someName|2)
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start~anonymous|0 (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $start~someName|2 (; 1 ;) (type $v)
  (nop)
 )
 (func $start (; 2 ;) (type $v)
  (drop
   (call $start~anonymous|0
    (i32.const 1)
   )
  )
  (drop
   (call $start~anonymous|0
    (i32.const 2)
   )
  )
  (call $start~someName|2)
 )
)
