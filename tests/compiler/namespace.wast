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
  namespace/Outer
  namespace/Outer.Inner
  namespace/Outer.Inner.aVar
  namespace/Outer.Inner.aFunc
  namespace/Outer.Inner.anEnum
  namespace/test
[program.exports]
  namespace/test
;)
