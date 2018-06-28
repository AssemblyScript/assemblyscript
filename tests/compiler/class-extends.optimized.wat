(module
 (type $iv (func (param i32)))
 (memory $0 0)
 (export "test" (func $class-extends/test))
 (export "memory" (memory $0))
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
)
