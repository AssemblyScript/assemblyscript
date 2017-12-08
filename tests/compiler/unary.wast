(module
 (type $v (func))
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (drop
   (i32.const 1)
  )
  (drop
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
  )
  (drop
   (i32.eqz
    (i32.const 1)
   )
  )
  (drop
   (i32.xor
    (i32.const 1)
    (i32.const -1)
   )
  )
  (drop
   (f64.const 1.25)
  )
  (drop
   (f64.neg
    (f64.const 1.25)
   )
  )
  (drop
   (f64.eq
    (f64.const 1.25)
    (f64.const 0)
   )
  )
  (drop
   (get_global $unary/i)
  )
  (drop
   (i32.sub
    (i32.const 0)
    (get_global $unary/i)
   )
  )
  (drop
   (i32.eqz
    (get_global $unary/i)
   )
  )
  (drop
   (i32.xor
    (get_global $unary/i)
    (i32.const -1)
   )
  )
  (set_global $unary/i
   (i32.add
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.sub
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (drop
   (block (result i32)
    (set_local $0
     (get_global $unary/i)
    )
    (set_global $unary/i
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  (drop
   (block (result i32)
    (set_local $1
     (get_global $unary/i)
    )
    (set_global $unary/i
     (i32.sub
      (get_local $1)
      (i32.const 1)
     )
    )
    (get_local $1)
   )
  )
  (set_global $unary/i
   (i32.const 1)
  )
  (set_global $unary/i
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.eqz
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.xor
    (i32.const 1)
    (i32.const -1)
   )
  )
  (set_global $unary/i
   (get_global $unary/i)
  )
  (set_global $unary/i
   (i32.sub
    (i32.const 0)
    (get_global $unary/i)
   )
  )
  (set_global $unary/i
   (i32.eqz
    (get_global $unary/i)
   )
  )
  (set_global $unary/i
   (i32.xor
    (get_global $unary/i)
    (i32.const -1)
   )
  )
  (set_global $unary/i
   (block (result i32)
    (set_global $unary/i
     (i32.add
      (get_global $unary/i)
      (i32.const 1)
     )
    )
    (get_global $unary/i)
   )
  )
  (set_global $unary/i
   (block (result i32)
    (set_global $unary/i
     (i32.sub
      (get_global $unary/i)
      (i32.const 1)
     )
    )
    (get_global $unary/i)
   )
  )
  (set_global $unary/i
   (block (result i32)
    (set_local $2
     (get_global $unary/i)
    )
    (set_global $unary/i
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (get_local $2)
   )
  )
  (set_global $unary/i
   (block (result i32)
    (set_local $3
     (get_global $unary/i)
    )
    (set_global $unary/i
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
    )
    (get_local $3)
   )
  )
  (drop
   (get_global $unary/I)
  )
  (drop
   (i64.sub
    (i64.const 0)
    (get_global $unary/I)
   )
  )
  (drop
   (i64.eqz
    (get_global $unary/I)
   )
  )
  (drop
   (i64.xor
    (get_global $unary/I)
    (i64.const -1)
   )
  )
  (set_global $unary/I
   (i64.add
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.sub
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (drop
   (block (result i64)
    (set_local $4
     (get_global $unary/I)
    )
    (set_global $unary/I
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
    )
    (get_local $4)
   )
  )
  (drop
   (block (result i64)
    (set_local $5
     (get_global $unary/I)
    )
    (set_global $unary/I
     (i64.sub
      (get_local $5)
      (i64.const 1)
     )
    )
    (get_local $5)
   )
  )
  (set_global $unary/I
   (i64.const 1)
  )
  (set_global $unary/I
   (i64.sub
    (i64.const 0)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.extend_s/i32
    (i32.eqz
     (i32.const 1)
    )
   )
  )
  (set_global $unary/I
   (i64.xor
    (i64.const 1)
    (i64.const -1)
   )
  )
  (set_global $unary/I
   (get_global $unary/I)
  )
  (set_global $unary/I
   (i64.sub
    (i64.const 0)
    (get_global $unary/I)
   )
  )
  (set_global $unary/I
   (i64.extend_s/i32
    (i64.eqz
     (get_global $unary/I)
    )
   )
  )
  (set_global $unary/I
   (i64.xor
    (get_global $unary/I)
    (i64.const -1)
   )
  )
  (set_global $unary/I
   (block (result i64)
    (set_global $unary/I
     (i64.add
      (get_global $unary/I)
      (i64.const 1)
     )
    )
    (get_global $unary/I)
   )
  )
  (set_global $unary/I
   (block (result i64)
    (set_global $unary/I
     (i64.sub
      (get_global $unary/I)
      (i64.const 1)
     )
    )
    (get_global $unary/I)
   )
  )
  (set_global $unary/I
   (block (result i64)
    (set_local $6
     (get_global $unary/I)
    )
    (set_global $unary/I
     (i64.add
      (get_local $6)
      (i64.const 1)
     )
    )
    (get_local $6)
   )
  )
  (set_global $unary/I
   (block (result i64)
    (set_local $7
     (get_global $unary/I)
    )
    (set_global $unary/I
     (i64.sub
      (get_local $7)
      (i64.const 1)
     )
    )
    (get_local $7)
   )
  )
  (drop
   (get_global $unary/f)
  )
  (drop
   (f32.neg
    (get_global $unary/f)
   )
  )
  (drop
   (f32.eq
    (get_global $unary/f)
    (f32.const 0)
   )
  )
  (set_global $unary/f
   (f32.add
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.sub
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (drop
   (block (result f32)
    (set_local $8
     (get_global $unary/f)
    )
    (set_global $unary/f
     (f32.add
      (get_local $8)
      (f32.const 1)
     )
    )
    (get_local $8)
   )
  )
  (drop
   (block (result f32)
    (set_local $9
     (get_global $unary/f)
    )
    (set_global $unary/f
     (f32.sub
      (get_local $9)
      (f32.const 1)
     )
    )
    (get_local $9)
   )
  )
  (set_global $unary/f
   (f32.const 1.25)
  )
  (set_global $unary/f
   (f32.neg
    (f32.const 1.25)
   )
  )
  (set_global $unary/i
   (f64.eq
    (f64.const 1.25)
    (f64.const 0)
   )
  )
  (set_global $unary/f
   (get_global $unary/f)
  )
  (set_global $unary/f
   (f32.neg
    (get_global $unary/f)
   )
  )
  (set_global $unary/i
   (f32.eq
    (get_global $unary/f)
    (f32.const 0)
   )
  )
  (set_global $unary/f
   (block (result f32)
    (set_global $unary/f
     (f32.add
      (get_global $unary/f)
      (f32.const 1)
     )
    )
    (get_global $unary/f)
   )
  )
  (set_global $unary/f
   (block (result f32)
    (set_global $unary/f
     (f32.sub
      (get_global $unary/f)
      (f32.const 1)
     )
    )
    (get_global $unary/f)
   )
  )
  (set_global $unary/f
   (block (result f32)
    (set_local $10
     (get_global $unary/f)
    )
    (set_global $unary/f
     (f32.add
      (get_local $10)
      (f32.const 1)
     )
    )
    (get_local $10)
   )
  )
  (set_global $unary/f
   (block (result f32)
    (set_local $11
     (get_global $unary/f)
    )
    (set_global $unary/f
     (f32.sub
      (get_local $11)
      (f32.const 1)
     )
    )
    (get_local $11)
   )
  )
  (drop
   (get_global $unary/F)
  )
  (drop
   (f64.neg
    (get_global $unary/F)
   )
  )
  (drop
   (f64.eq
    (get_global $unary/F)
    (f64.const 0)
   )
  )
  (set_global $unary/F
   (f64.add
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.sub
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (drop
   (block (result f64)
    (set_local $12
     (get_global $unary/F)
    )
    (set_global $unary/F
     (f64.add
      (get_local $12)
      (f64.const 1)
     )
    )
    (get_local $12)
   )
  )
  (drop
   (block (result f64)
    (set_local $13
     (get_global $unary/F)
    )
    (set_global $unary/F
     (f64.sub
      (get_local $13)
      (f64.const 1)
     )
    )
    (get_local $13)
   )
  )
  (set_global $unary/F
   (f64.const 1.25)
  )
  (set_global $unary/F
   (f64.neg
    (f64.const 1.25)
   )
  )
  (set_global $unary/I
   (i64.extend_s/i32
    (f64.eq
     (f64.const 1.25)
     (f64.const 0)
    )
   )
  )
  (set_global $unary/F
   (get_global $unary/F)
  )
  (set_global $unary/F
   (f64.neg
    (get_global $unary/F)
   )
  )
  (set_global $unary/I
   (i64.extend_s/i32
    (f64.eq
     (get_global $unary/F)
     (f64.const 0)
    )
   )
  )
  (set_global $unary/F
   (block (result f64)
    (set_global $unary/F
     (f64.add
      (get_global $unary/F)
      (f64.const 1)
     )
    )
    (get_global $unary/F)
   )
  )
  (set_global $unary/F
   (block (result f64)
    (set_global $unary/F
     (f64.sub
      (get_global $unary/F)
      (f64.const 1)
     )
    )
    (get_global $unary/F)
   )
  )
  (set_global $unary/F
   (block (result f64)
    (set_local $14
     (get_global $unary/F)
    )
    (set_global $unary/F
     (f64.add
      (get_local $14)
      (f64.const 1)
     )
    )
    (get_local $14)
   )
  )
  (set_global $unary/F
   (block (result f64)
    (set_local $15
     (get_global $unary/F)
    )
    (set_global $unary/F
     (f64.sub
      (get_local $15)
      (f64.const 1)
     )
    )
    (get_local $15)
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
  unary/i
  unary/I
  unary/f
  unary/F
[program.exports]
  
;)
