(module
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 0)
 (table 1 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "test" (func $class-extends/test))
 (func $class-extends/test (; 0 ;) (type $iv) (param $0 i32)
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
  (i32.store
   (get_local $0)
   (i32.const 2)
  )
  (i32.store16 offset=4
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $null (; 1 ;) (type $v)
 )
)
