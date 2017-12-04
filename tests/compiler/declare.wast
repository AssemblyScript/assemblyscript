(module
 (type $v (func))
 (import "env" "external" (func $declare/external))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
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
  isNaN
  isFinite
  assert
  sizeof
  load
  store
  declare/external
[program.exports]
  declare/external
;)
