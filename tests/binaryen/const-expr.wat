(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $i (func (result i32)))
 (export "add" (func $add))
 (export "test" (func $test))
 (func $add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $test (; 1 ;) (type $i) (result i32)
  (call $add
   (i32.const 1)
   (i32.const 2)
  )
 )
)

