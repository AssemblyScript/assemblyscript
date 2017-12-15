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
  declare/external
[program.exports]
  declare/external
;)
