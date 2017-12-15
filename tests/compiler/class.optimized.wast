(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $v (func))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $class/Animal.add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $class/Animal.sub<f32> (; 1 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (f32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start (; 2 ;) (type $v)
  (drop
   (call $class/Animal.add
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (call $class/Animal.sub<f32>
    (f32.const 1)
    (f32.const 2)
   )
  )
 )
)
