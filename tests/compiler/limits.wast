(module
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (type $v (func))
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
