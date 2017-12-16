(module
 (type $i (func (result i32)))
 (type $v (func))
 (global $enum/Implicit.ZERO i32 (i32.const 0))
 (global $enum/Implicit.ONE i32 (i32.const 1))
 (global $enum/Implicit.TWO i32 (i32.const 2))
 (global $enum/Implicit.THREE i32 (i32.const 3))
 (global $enum/Explicit.ZERO i32 (i32.const 0))
 (global $enum/Explicit.ONE i32 (i32.const 1))
 (global $enum/Explicit.TWO i32 (i32.const 2))
 (global $enum/Explicit.THREE i32 (i32.const 3))
 (global $enum/Mixed.ZERO i32 (i32.const 0))
 (global $enum/Mixed.ONE i32 (i32.const 1))
 (global $enum/Mixed.THREE i32 (i32.const 3))
 (global $enum/Mixed.FOUR i32 (i32.const 4))
 (global $enum/NonConstant.ZERO (mut i32) (i32.const 0))
 (global $enum/NonConstant.ONE (mut i32) (i32.const 0))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $enum/getZero (; 0 ;) (type $i) (result i32)
  (return
   (i32.const 0)
  )
 )
 (func $start (; 1 ;) (type $v)
  (set_global $enum/NonConstant.ZERO
   (call $enum/getZero)
  )
  (set_global $enum/NonConstant.ONE
   (i32.add
    (get_global $enum/NonConstant.ZERO)
    (i32.const 1)
   )
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
  enum/Implicit
  enum/Explicit
  enum/Mixed
  enum/getZero
  enum/NonConstant
[program.exports]
  enum/Implicit
  enum/Explicit
  enum/Mixed
  enum/NonConstant
;)
