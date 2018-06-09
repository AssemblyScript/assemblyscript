(module
 (type $i (func (result i32)))
 (memory $0 1)
 (export "test" (func $class-with-boolean-field/test))
 (export "memory" (memory $0))
 (func $class-with-boolean-field/test (; 0 ;) (type $i) (result i32)
  (i32.store8
   (i32.const 0)
   (i32.const 1)
  )
  (i32.load8_u
   (i32.const 0)
  )
 )
)
