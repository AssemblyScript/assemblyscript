(module
 (type $v (func))
 (global $for/i (mut i32) (i32.const 0))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (block $break|0
   (set_global $for/i
    (i32.const 0)
   )
   (loop $continue|0
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
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $for/i)
     (i32.const 10)
    )
   )
   (unreachable)
  )
  (block $break|1
   (block
    (set_local $0
     (i32.const 0)
    )
   )
   (loop $continue|1
    (if
     (i32.lt_s
      (get_local $0)
      (i32.const 10)
     )
     (block
      (nop)
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (block $break|2
   (nop)
   (loop $continue|2
    (if
     (i32.gt_s
      (get_global $for/i)
      (i32.const 0)
     )
     (block
      (nop)
      (set_global $for/i
       (i32.sub
        (get_global $for/i)
        (i32.const 1)
       )
      )
      (br $continue|2)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $for/i)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (block $break|3
   (nop)
   (loop $continue|3
    (if
     (i32.const 1)
     (block
      (if
       (i32.eq
        (get_global $for/i)
        (i32.const 10)
       )
       (br $break|3)
      )
      (set_global $for/i
       (i32.add
        (get_global $for/i)
        (i32.const 1)
       )
      )
      (br $continue|3)
     )
    )
   )
  )
  (block $break|4
   (nop)
   (loop $continue|4
    (if
     (i32.const 1)
     (block
      (if
       (i32.eq
        (block (result i32)
         (set_global $for/i
          (i32.sub
           (get_global $for/i)
           (i32.const 1)
          )
         )
         (get_global $for/i)
        )
        (i32.const 0)
       )
       (br $break|4)
      )
      (nop)
      (br $continue|4)
     )
    )
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
  for/i
[program.exports]
  
;)
