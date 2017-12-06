(module
 (type $v (func))
 (global $for/i (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (block $break|1.1
   (set_global $for/i
    (i32.const 0)
   )
   (loop $continue|1.1
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
      (br $continue|1.1)
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
  (block $break|2.1
   (block
    (set_local $0
     (i32.const 0)
    )
   )
   (loop $continue|2.1
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
      (br $continue|2.1)
     )
    )
   )
  )
  (block $break|3.1
   (nop)
   (loop $continue|3.1
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
      (br $continue|3.1)
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
  (block $break|4.1
   (nop)
   (loop $continue|4.1
    (if
     (i32.const 1)
     (block
      (if
       (i32.eq
        (get_global $for/i)
        (i32.const 10)
       )
       (br $break|4.1)
      )
      (set_global $for/i
       (i32.add
        (get_global $for/i)
        (i32.const 1)
       )
      )
      (br $continue|4.1)
     )
    )
   )
  )
  (block $break|5.1
   (nop)
   (loop $continue|5.1
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
       (br $break|5.1)
      )
      (nop)
      (br $continue|5.1)
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
  isNaN
  isFinite
  assert
  for/i
[program.exports]
  
;)
