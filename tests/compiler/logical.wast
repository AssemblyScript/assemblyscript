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
  (local $2 i64)
  (local $3 f32)
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
    (tee_local $0
     (i32.const 1)
    )
    (get_local $0)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $1
      (f64.const 1)
     )
     (f64.const 0)
    )
    (get_local $1)
    (unreachable)
   )
  )
  (drop
   (if (result i32)
    (tee_local $0
     (if (result i32)
      (tee_local $0
       (i32.const 1)
      )
      (i32.const 2)
      (get_local $0)
     )
    )
    (get_local $0)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $1
      (if (result f64)
       (f64.ne
        (tee_local $1
         (f64.const 1)
        )
        (f64.const 0)
       )
       (f64.const 2)
       (get_local $1)
      )
     )
     (f64.const 0)
    )
    (get_local $1)
    (unreachable)
   )
  )
  (set_global $logical/i
   (if (result i32)
    (tee_local $0
     (i32.const 1)
    )
    (i32.const 2)
    (get_local $0)
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
    (tee_local $0
     (i32.const 0)
    )
    (get_local $0)
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
     (tee_local $2
      (i64.const 1)
     )
     (i64.const 0)
    )
    (i64.const 2)
    (get_local $2)
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
     (tee_local $2
      (i64.const 0)
     )
     (i64.const 0)
    )
    (get_local $2)
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
     (tee_local $3
      (f32.const 1)
     )
     (f32.const 0)
    )
    (f32.const 2)
    (get_local $3)
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
     (tee_local $3
      (f32.const 0)
     )
     (f32.const 0)
    )
    (get_local $3)
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
     (tee_local $1
      (f64.const 1)
     )
     (f64.const 0)
    )
    (f64.const 2)
    (get_local $1)
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
     (tee_local $1
      (f64.const 0)
     )
     (f64.const 0)
    )
    (get_local $1)
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
  NaN
  Infinity
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
  HEAP_START
  logical/i
  logical/I
  logical/f
  logical/F
[program.exports]
  
;)
