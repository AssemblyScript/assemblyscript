(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $v (func))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (drop
   (block (result i32)
    (block $__inlined_func$class/Animal.add (result i32)
     (set_local $0
      (i32.const 1)
     )
     (set_local $1
      (i32.const 2)
     )
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
   )
  )
  (drop
   (block (result f32)
    (block $__inlined_func$class/Animal.sub<f32> (result f32)
     (set_local $2
      (f32.const 1)
     )
     (set_local $3
      (f32.const 2)
     )
     (f32.sub
      (get_local $2)
      (get_local $3)
     )
    )
   )
  )
 )
)
