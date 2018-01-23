(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (import "env" "allocate_memory" (func $new/allocate_memory (param i32) (result i32)))
 (memory $0 1)
 (export "test" (func $new/test))
 (export "memory" (memory $0))
 (func $new/test (; 1 ;) (type $v)
  (drop
   (call $new/allocate_memory
    (i32.const 4)
   )
  )
  (drop
   (call $new/allocate_memory
    (i32.const 8)
   )
  )
 )
)
