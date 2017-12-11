(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (global $i64/lo (mut i32) (i32.const 0))
 (global $i64/hi (mut i32) (i32.const 0))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "add" (func $i64/add))
 (export "sub" (func $i64/sub))
 (export "mul" (func $i64/mul))
 (export "div_s" (func $i64/div_s))
 (export "div_u" (func $i64/div_u))
 (export "rem_s" (func $i64/rem_s))
 (export "rem_u" (func $i64/rem_u))
 (export "memory" (memory $0))
 (func $i64/add (; 0 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
   (set_local $4
    (i64.add
     (i64.or
      (i64.extend_s/i32
       (get_local $0)
      )
      (i64.shl
       (i64.extend_s/i32
        (get_local $1)
       )
       (i64.const 32)
      )
     )
     (i64.or
      (i64.extend_s/i32
       (get_local $2)
      )
      (i64.shl
       (i64.extend_s/i32
        (get_local $3)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/sub (; 1 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
   (set_local $4
    (i64.sub
     (i64.or
      (i64.extend_s/i32
       (get_local $0)
      )
      (i64.shl
       (i64.extend_s/i32
        (get_local $1)
       )
       (i64.const 32)
      )
     )
     (i64.or
      (i64.extend_s/i32
       (get_local $2)
      )
      (i64.shl
       (i64.extend_s/i32
        (get_local $3)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/mul (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
   (set_local $4
    (i64.mul
     (i64.or
      (i64.extend_s/i32
       (get_local $0)
      )
      (i64.shl
       (i64.extend_s/i32
        (get_local $1)
       )
       (i64.const 32)
      )
     )
     (i64.or
      (i64.extend_s/i32
       (get_local $2)
      )
      (i64.shl
       (i64.extend_s/i32
        (get_local $3)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/div_s (; 3 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
   (set_local $4
    (i64.div_s
     (i64.or
      (i64.extend_s/i32
       (get_local $0)
      )
      (i64.shl
       (i64.extend_s/i32
        (get_local $1)
       )
       (i64.const 32)
      )
     )
     (i64.or
      (i64.extend_s/i32
       (get_local $2)
      )
      (i64.shl
       (i64.extend_s/i32
        (get_local $3)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/div_u (; 4 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
   (set_local $4
    (i64.div_u
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       (i64.const 32)
      )
     )
     (i64.or
      (i64.extend_u/i32
       (get_local $2)
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $3)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/rem_s (; 5 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
   (set_local $4
    (i64.rem_s
     (i64.or
      (i64.extend_s/i32
       (get_local $0)
      )
      (i64.shl
       (i64.extend_s/i32
        (get_local $1)
       )
       (i64.const 32)
      )
     )
     (i64.or
      (i64.extend_s/i32
       (get_local $2)
      )
      (i64.shl
       (i64.extend_s/i32
        (get_local $3)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/rem_u (; 6 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
   (set_local $4
    (i64.rem_u
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       (i64.const 32)
      )
     )
     (i64.or
      (i64.extend_u/i32
       (get_local $2)
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $3)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
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
  i64/lo
  i64/hi
  i64/add
  i64/sub
  i64/mul
  i64/div_s
  i64/div_u
  i64/rem_s
  i64/rem_u
[program.exports]
  i64/add
  i64/sub
  i64/mul
  i64/div_s
  i64/div_u
  i64/rem_s
  i64/rem_u
;)
