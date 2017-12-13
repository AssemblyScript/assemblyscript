(module
 (type $v (func))
 (global $namespace/Outer.Inner.aVar (mut i32) (i32.const 0))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "test" (func $namespace/test))
 (export "memory" (memory $0))
 (func $namespace/Outer.Inner.aFunc (; 0 ;) (type $v)
 )
 (func $namespace/test (; 1 ;) (type $v)
  (drop
   (get_global $namespace/Outer.Inner.aVar)
  )
  (call $namespace/Outer.Inner.aFunc)
  (drop
   (get_global $namespace/Outer.Inner.anEnum.ONE)
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
  parseInt
  parseFloat
  namespace/Outer
  namespace/Outer.Inner
  namespace/Outer.Inner.aVar
  namespace/Outer.Inner.aFunc
  namespace/Outer.Inner.anEnum
  namespace/test
[program.exports]
  namespace/test
;)
