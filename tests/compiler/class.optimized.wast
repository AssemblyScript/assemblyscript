(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 1)
 (export "test" (func $class/test))
 (export "memory" (memory $0))
 (start $start)
 (func $class/test (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (drop
   (i32.load
    (get_local $0)
   )
  )
  (drop
   (i32.load16_s offset=4
    (get_local $0)
   )
  )
  (drop
   (i32.load8_s offset=6
    (get_local $0)
   )
  )
  (i32.store
   (get_local $0)
   (i32.const 1)
  )
  (i32.store16 offset=4
   (get_local $0)
   (i32.const 2)
  )
  (i32.store8 offset=6
   (get_local $0)
   (i32.const 3)
  )
  (get_local $0)
 )
 (func $start (; 1 ;) (type $v)
  (nop)
 )
)
