(module
 (type $v (func))
 (global $i8.MIN_VALUE i32 (i32.const -128))
 (global $i8.MAX_VALUE i32 (i32.const 127))
 (global $i16.MIN_VALUE i32 (i32.const -32768))
 (global $i16.MAX_VALUE i32 (i32.const 32767))
 (global $i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $u8.MIN_VALUE i32 (i32.const 0))
 (global $u8.MAX_VALUE i32 (i32.const 255))
 (global $u16.MIN_VALUE i32 (i32.const 0))
 (global $u16.MAX_VALUE i32 (i32.const 65535))
 (global $u32.MIN_VALUE i32 (i32.const 0))
 (global $u32.MAX_VALUE i32 (i32.const -1))
 (global $u64.MIN_VALUE i64 (i64.const 0))
 (global $u64.MAX_VALUE i64 (i64.const -1))
 (global $bool.MIN_VALUE i32 (i32.const 0))
 (global $bool.MAX_VALUE i32 (i32.const 1))
 (global $f32.MIN_SAFE_INTEGER f32 (f32.const -16777215))
 (global $f32.MAX_SAFE_INTEGER f32 (f32.const 16777215))
 (global $f64.MIN_SAFE_INTEGER f64 (f64.const -9007199254740991))
 (global $f64.MAX_SAFE_INTEGER f64 (f64.const 9007199254740991))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (drop
   (i32.const -128)
  )
  (drop
   (i32.const 127)
  )
  (drop
   (i32.const -32768)
  )
  (drop
   (i32.const 32767)
  )
  (drop
   (i32.const -2147483648)
  )
  (drop
   (i32.const 2147483647)
  )
  (drop
   (i64.const -9223372036854775808)
  )
  (drop
   (i64.const 9223372036854775807)
  )
  (drop
   (i32.const -2147483648)
  )
  (drop
   (i32.const 2147483647)
  )
  (drop
   (i32.const 0)
  )
  (drop
   (i32.const 255)
  )
  (drop
   (i32.const 0)
  )
  (drop
   (i32.const 65535)
  )
  (drop
   (i32.const 0)
  )
  (drop
   (i32.const -1)
  )
  (drop
   (i64.const 0)
  )
  (drop
   (i64.const -1)
  )
  (drop
   (i32.const 0)
  )
  (drop
   (i32.const -1)
  )
  (drop
   (i32.const 0)
  )
  (drop
   (i32.const 1)
  )
  (drop
   (f32.const -16777215)
  )
  (drop
   (f32.const 16777215)
  )
  (drop
   (f64.const -9007199254740991)
  )
  (drop
   (f64.const 9007199254740991)
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
[program.exports]
  
;)
