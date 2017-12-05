(module
 (type $v (func))
 (global $for/i (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (block $break$1.1
   (set_global $for/i
    (i32.const 0)
   )
   (loop $continue$1.1
    (if
     (i32.lt_s
      (get_global $for/i)
      (i32.const 10)
     )
     (block
      (nop)
      (set_global $for/i
       (i32.add
        (get_global $for/i)
        (i32.const 1)
       )
      )
      (br $continue$1.1)
     )
    )
   )
  )
  (if
   (i32.ne
    (get_global $for/i)
    (i32.const 10)
   )
   (unreachable)
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
  isNaN
  isFinite
  assert
  for/i
[program.exports]
  
;)
