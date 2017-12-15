(module
 (type $v (func))
 (global $ternary/a (mut i32) (i32.const 0))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (set_global $ternary/a
   (if (result i32)
    (i32.const 0)
    (unreachable)
    (i32.const 1)
   )
  )
  (set_global $ternary/a
   (if (result i32)
    (i32.const 1)
    (i32.const 1)
    (unreachable)
   )
  )
  (set_global $ternary/a
   (if (result i32)
    (if (result i32)
     (i32.const 0)
     (unreachable)
     (i32.const 1)
    )
    (i32.const 1)
    (unreachable)
   )
  )
 )
)
(;
[program.elements]
  isNaN
  isFinite
  clz
  ctz
  popcnt
  rotl
  rotr
  abs
  max
  min
  ceil
  floor
  copysign
  nearest
  reinterpret
  sqrt
  trunc
  load
  store
  sizeof
  select
  unreachable
  current_memory
  grow_memory
  parseInt
  parseFloat
  changetype
  assert
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
  ternary/a
[program.exports]
  
;)
