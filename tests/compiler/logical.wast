(module
 (type $v (func))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (drop
   (if (result i32)
    (tee_local $0
     (i32.const 0)
    )
    (unreachable)
    (get_local $0)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $1
      (f64.const 0)
     )
     (f64.const 0)
    )
    (unreachable)
    (get_local $1)
   )
  )
  (drop
   (if (result i32)
    (tee_local $2
     (i32.const 1)
    )
    (get_local $2)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $3
      (f64.const 1)
     )
     (f64.const 0)
    )
    (get_local $3)
    (unreachable)
   )
  )
  (drop
   (if (result i32)
    (tee_local $5
     (if (result i32)
      (tee_local $4
       (i32.const 1)
      )
      (i32.const 2)
      (get_local $4)
     )
    )
    (get_local $5)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $7
      (if (result f64)
       (f64.ne
        (tee_local $6
         (f64.const 1)
        )
        (f64.const 0)
       )
       (f64.const 2)
       (get_local $6)
      )
     )
     (f64.const 0)
    )
    (get_local $7)
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
[program.exports]
  
;)
