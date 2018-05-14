(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ifff (func (param i32 f32 f32) (result f32)))
 (type $v (func))
 (global $class/Animal.ONE (mut i32) (i32.const 1))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00c\00l\00a\00s\00s\00.\00t\00s")
 (export "test" (func $class/test))
 (export "memory" (memory $0))
 (start $start)
 (func $class/Animal.add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (i32.add
    (get_local $0)
    (get_local $1)
   )
   (get_global $class/Animal.ONE)
  )
 )
 (func $class/Animal.sub<f32> (; 1 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (f32.add
   (f32.sub
    (get_local $0)
    (get_local $1)
   )
   (f32.convert_s/i32
    (get_global $class/Animal.ONE)
   )
  )
 )
 (func $class/Animal<f64>#instanceAdd (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.add
   (i32.add
    (get_local $1)
    (get_local $2)
   )
   (get_global $class/Animal.ONE)
  )
 )
 (func $class/Animal<f64>#instanceSub<f32> (; 3 ;) (type $ifff) (param $0 i32) (param $1 f32) (param $2 f32) (result f32)
  (f32.add
   (f32.sub
    (get_local $1)
    (get_local $2)
   )
   (f32.convert_s/i32
    (get_global $class/Animal.ONE)
   )
  )
 )
 (func $class/test (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (drop
   (call $class/Animal<f64>#instanceAdd
    (get_local $0)
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (call $class/Animal<f64>#instanceSub<f32>
    (get_local $0)
    (f32.const 1)
    (f32.const 2)
   )
  )
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
  (drop
   (i32.load8_s offset=6
    (get_local $0)
   )
  )
  (i32.store
   (get_local $0)
   (i32.const 1)
  )
  (i32.store16 offset=4
   (get_local $0)
   (i32.const 2)
  )
  (i32.store8 offset=6
   (get_local $0)
   (i32.const 3)
  )
  (get_local $0)
 )
 (func $start (; 5 ;) (type $v)
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
