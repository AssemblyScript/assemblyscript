(module
 (type $v (func))
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
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
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 f32)
  (local $13 f32)
  (local $14 f64)
  (local $15 f64)
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
  (set_global $logical/i
   (if (result i32)
    (tee_local $8
     (i32.const 1)
    )
    (i32.const 2)
    (get_local $8)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $logical/i)
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/i
   (if (result i32)
    (tee_local $9
     (i32.const 0)
    )
    (get_local $9)
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $logical/i)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $logical/I
   (if (result i64)
    (i64.ne
     (tee_local $10
      (i64.const 1)
     )
     (i64.const 0)
    )
    (i64.const 2)
    (get_local $10)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $logical/I)
     (i64.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/I
   (if (result i64)
    (i64.ne
     (tee_local $11
      (i64.const 0)
     )
     (i64.const 0)
    )
    (get_local $11)
    (i64.const 1)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $logical/I)
     (i64.const 1)
    )
   )
   (unreachable)
  )
  (set_global $logical/f
   (if (result f32)
    (f32.ne
     (tee_local $12
      (f32.const 1)
     )
     (f32.const 0)
    )
    (f32.const 2)
    (get_local $12)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (get_global $logical/f)
     (f32.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/f
   (if (result f32)
    (f32.ne
     (tee_local $13
      (f32.const 0)
     )
     (f32.const 0)
    )
    (get_local $13)
    (f32.const 1)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (get_global $logical/f)
     (f32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $logical/F
   (if (result f64)
    (f64.ne
     (tee_local $14
      (f64.const 1)
     )
     (f64.const 0)
    )
    (f64.const 2)
    (get_local $14)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (get_global $logical/F)
     (f64.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/F
   (if (result f64)
    (f64.ne
     (tee_local $15
      (f64.const 0)
     )
     (f64.const 0)
    )
    (get_local $15)
    (f64.const 1)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (get_global $logical/F)
     (f64.const 1)
    )
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
  changetype
  isNaN
  isFinite
  assert
  logical/i
  logical/I
  logical/f
  logical/F
[program.exports]
  
;)
