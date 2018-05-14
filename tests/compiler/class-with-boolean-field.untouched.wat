(module
 (type $i (func (result i32)))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 1)
 (export "test" (func $class-with-boolean-field/test))
 (export "memory" (memory $0))
 (func $class-with-boolean-field/test (; 0 ;) (type $i) (result i32)
  (local $0 i32)
  (i32.store8
   (get_local $0)
   (i32.const 1)
  )
  (return
   (i32.load8_u
    (get_local $0)
   )
  )
 )
)
