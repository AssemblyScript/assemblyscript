(module
 (type $v (func))
 (global $infer-type/i i32 (i32.const 10))
 (global $infer-type/I i64 (i64.const 4294967296))
 (global $infer-type/F f64 (f64.const 1.5))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $infer-type/locals (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  (block
   (set_local $0
    (i32.const 10)
   )
  )
  (block
   (set_local $1
    (i64.const 4294967296)
   )
  )
  (block
   (set_local $2
    (f64.const 1.5)
   )
  )
  (block
   (set_local $3
    (i32.const 10)
   )
  )
  (block
   (set_local $4
    (i64.const 4294967296)
   )
  )
  (block
   (set_local $5
    (f64.const 1.5)
   )
  )
 )
 (func $start (; 1 ;) (type $v)
  (drop
   (i32.const 10)
  )
  (drop
   (i64.const 4294967296)
  )
  (drop
   (f64.const 1.5)
  )
  (call $infer-type/locals)
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
  HEAP_BASE
  infer-type/i
  infer-type/I
  infer-type/F
  infer-type/locals
[program.exports]
  
;)
