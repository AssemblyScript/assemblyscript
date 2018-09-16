(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$f (func (result f32)))
 (global $class/Animal.ONE (mut i32) (i32.const 1))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00c\00l\00a\00s\00s\00.\00t\00s")
 (export "memory" (memory $0))
 (export "test" (func $class/test))
 (start $start)
 (func $class/Animal.add (; 0 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.add
   (get_global $class/Animal.ONE)
   (i32.const 3)
  )
 )
 (func $class/Animal.sub<f32> (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$f) (result f32)
  (f32.add
   (f32.const -1)
   (f32.convert_s/i32
    (get_global $class/Animal.ONE)
   )
  )
 )
 (func $class/test (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (drop
   (call $class/Animal.add)
  )
  (drop
   (call $class/Animal.sub<f32>)
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
 (func $start (; 3 ;) (; has Stack IR ;) (type $v)
  (drop
   (call $class/Animal.add)
  )
  (drop
   (call $class/Animal.sub<f32>)
  )
 )
 (func $null (; 4 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
