(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ifff (func (param i32 f32 f32) (result f32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global $class/Animal.ONE (mut i32) (i32.const 1))
 (memory $0 1)
 (export "test" (func $class/test))
 (export "memory" (memory $0))
 (start $start)
 (func $class/test (; 0 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (drop
   (block (result i32)
    (block $__inlined_func$class/Animal#instanceAdd (result i32)
     (set_local $1
      (get_local $0)
     )
     (set_local $2
      (i32.const 1)
     )
     (set_local $3
      (i32.const 2)
     )
     (i32.add
      (i32.add
       (get_local $2)
       (get_local $3)
      )
      (get_global $class/Animal.ONE)
     )
    )
   )
  )
  (drop
   (block (result f32)
    (block $__inlined_func$class/Animal#instanceSub<f32> (result f32)
     (set_local $4
      (get_local $0)
     )
     (set_local $5
      (f32.const 1)
     )
     (set_local $6
      (f32.const 2)
     )
     (f32.add
      (f32.sub
       (get_local $5)
       (get_local $6)
      )
      (f32.convert_s/i32
       (get_global $class/Animal.ONE)
      )
     )
    )
   )
  )
 )
 (func $start (; 1 ;) (type $v)
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
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (get_global $class/Animal.ONE)
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
     (f32.add
      (f32.sub
       (get_local $2)
       (get_local $3)
      )
      (f32.convert_s/i32
       (get_global $class/Animal.ONE)
      )
     )
    )
   )
  )
 )
)
