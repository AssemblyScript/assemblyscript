(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $v (func))
 (global $class/Animal.MAX (mut i32) (i32.const 1))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $class/Animal.add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $class/Animal.sub<f32> (; 1 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (return
   (f32.sub
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $start (; 2 ;) (type $v)
  (drop
   (get_global $class/Animal.MAX)
  )
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
(;
[program.elements]
  clz
  ctz
  popcnt
  rotl
  rotr
  abs
  ceil
  copysign
  floor
  max
  min
  nearest
  sqrt
  trunc
  current_memory
  grow_memory
  unreachable
  load
  store
  reinterpret
  select
  sizeof
  changetype
  isNaN
  isFinite
  assert
  parseInt
  parseFloat
  i8
  i16
  i32
  i64
  u8
  u16
  u32
  u64
  bool
  f32
  f64
  isize
  usize
  class/Animal
  class/Animal.MAX
  class/Animal.add
  class/Animal.sub
[program.exports]
  
;)
