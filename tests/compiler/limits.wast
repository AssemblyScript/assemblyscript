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
  ;;@ limits.ts:1:0
  (drop
   (i32.const -128)
  )
  ;;@ limits.ts:2:0
  (drop
   (i32.const 127)
  )
  ;;@ limits.ts:3:0
  (drop
   (i32.const -32768)
  )
  ;;@ limits.ts:4:0
  (drop
   (i32.const 32767)
  )
  ;;@ limits.ts:5:0
  (drop
   (i32.const -2147483648)
  )
  ;;@ limits.ts:6:0
  (drop
   (i32.const 2147483647)
  )
  ;;@ limits.ts:7:0
  (drop
   (i64.const -9223372036854775808)
  )
  ;;@ limits.ts:8:0
  (drop
   (i64.const 9223372036854775807)
  )
  ;;@ limits.ts:9:0
  (drop
   (i32.const -2147483648)
  )
  ;;@ limits.ts:10:0
  (drop
   (i32.const 2147483647)
  )
  ;;@ limits.ts:11:0
  (drop
   (i32.const 0)
  )
  ;;@ limits.ts:12:0
  (drop
   (i32.const 255)
  )
  ;;@ limits.ts:13:0
  (drop
   (i32.const 0)
  )
  ;;@ limits.ts:14:0
  (drop
   (i32.const 65535)
  )
  ;;@ limits.ts:15:0
  (drop
   (i32.const 0)
  )
  ;;@ limits.ts:16:0
  (drop
   (i32.const -1)
  )
  ;;@ limits.ts:17:0
  (drop
   (i64.const 0)
  )
  ;;@ limits.ts:18:0
  (drop
   (i64.const -1)
  )
  ;;@ limits.ts:19:0
  (drop
   (i32.const 0)
  )
  ;;@ limits.ts:20:0
  (drop
   (i32.const -1)
  )
  ;;@ limits.ts:21:0
  (drop
   (i32.const 0)
  )
  ;;@ limits.ts:22:0
  (drop
   (i32.const 1)
  )
  ;;@ limits.ts:23:0
  (drop
   (f32.const -16777215)
  )
  ;;@ limits.ts:24:0
  (drop
   (f32.const 16777215)
  )
  ;;@ limits.ts:25:0
  (drop
   (f64.const -9007199254740991)
  )
  ;;@ limits.ts:26:0
  (drop
   (f64.const 9007199254740991)
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: abort
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
[program.exports]
  
;)
