(module
 (type $v (func))
 (global $ternary/a (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
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
  isNaN
  isFinite
  assert
  sizeof
  load
  store
  ternary/a
[program.exports]
  
;)
