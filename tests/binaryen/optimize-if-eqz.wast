(module
 (type $i (func (param i32) (result i32)))
 (memory $0 0)
 (export "test" (func $test))
 (func $test (; 0 ;) (type $i) (param $0 i32) (result i32)
  (if (result i32)
   (i32.eqz
    (get_local $0)
   )
   (i32.const 0)
   (get_local $0)
  )
 )
)