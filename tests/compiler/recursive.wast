(module
 (type $ii (func (param i32) (result i32)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "fib" (func $recursive/fib))
 (export "memory" (memory $0))
 (func $recursive/fib (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.le_s
    (get_local $0)
    (i32.const 1)
   )
   (return
    (i32.const 1)
   )
  )
  (return
   (i32.add
    (call $recursive/fib
     (i32.sub
      (get_local $0)
      (i32.const 1)
     )
    )
    (call $recursive/fib
     (i32.sub
      (get_local $0)
      (i32.const 2)
     )
    )
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
  HEAP_BASE
  recursive/fib
[program.exports]
  recursive/fib
;)
