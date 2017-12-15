(module
 (type $v (func))
 (import "env" "external" (func $declare/external))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "external" (func $declare/external))
 (export "memory" (memory $0))
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
  declare/external
[program.exports]
  declare/external
;)
