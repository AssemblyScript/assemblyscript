(module
 (type $v (func))
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f32)
  (local $3 f64)
  ;;@ unary.ts:1:0
  (drop
   ;;@ unary.ts:1:1
   (i32.const 1)
  )
  ;;@ unary.ts:2:0
  (drop
   (i32.sub
    (i32.const 0)
    ;;@ unary.ts:2:1
    (i32.const 1)
   )
  )
  ;;@ unary.ts:3:0
  (drop
   (i32.eqz
    ;;@ unary.ts:3:1
    (i32.const 1)
   )
  )
  ;;@ unary.ts:4:0
  (drop
   (i32.xor
    ;;@ unary.ts:4:1
    (i32.const 1)
    (i32.const -1)
   )
  )
  ;;@ unary.ts:5:0
  (drop
   ;;@ unary.ts:5:1
   (f64.const 1.25)
  )
  ;;@ unary.ts:6:0
  (drop
   (f64.neg
    ;;@ unary.ts:6:1
    (f64.const 1.25)
   )
  )
  ;;@ unary.ts:7:0
  (drop
   (f64.eq
    ;;@ unary.ts:7:1
    (f64.const 1.25)
    (f64.const 0)
   )
  )
  ;;@ unary.ts:11:0
  (drop
   ;;@ unary.ts:11:1
   (get_global $unary/i)
  )
  ;;@ unary.ts:12:0
  (drop
   (i32.sub
    (i32.const 0)
    ;;@ unary.ts:12:1
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:13:0
  (drop
   (i32.eqz
    ;;@ unary.ts:13:1
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:14:0
  (drop
   (i32.xor
    ;;@ unary.ts:14:1
    (get_global $unary/i)
    (i32.const -1)
   )
  )
  ;;@ unary.ts:15:0
  (set_global $unary/i
   (i32.add
    ;;@ unary.ts:15:2
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:16:0
  (set_global $unary/i
   (i32.sub
    ;;@ unary.ts:16:2
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:17:0
  (set_global $unary/i
   (i32.add
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:18:0
  (set_global $unary/i
   (i32.sub
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:20:0
  (set_global $unary/i
   ;;@ unary.ts:20:4
   (i32.const 1)
  )
  ;;@ unary.ts:21:0
  (set_global $unary/i
   ;;@ unary.ts:21:4
   (i32.sub
    (i32.const 0)
    ;;@ unary.ts:21:5
    (i32.const 1)
   )
  )
  ;;@ unary.ts:22:0
  (set_global $unary/i
   ;;@ unary.ts:22:4
   (i32.eqz
    ;;@ unary.ts:22:5
    (i32.const 1)
   )
  )
  ;;@ unary.ts:23:0
  (set_global $unary/i
   ;;@ unary.ts:23:4
   (i32.xor
    ;;@ unary.ts:23:5
    (i32.const 1)
    (i32.const -1)
   )
  )
  ;;@ unary.ts:24:0
  (set_global $unary/i
   ;;@ unary.ts:24:4
   (get_global $unary/i)
  )
  ;;@ unary.ts:25:0
  (set_global $unary/i
   ;;@ unary.ts:25:4
   (i32.sub
    (i32.const 0)
    ;;@ unary.ts:25:5
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:26:0
  (set_global $unary/i
   ;;@ unary.ts:26:4
   (i32.eqz
    ;;@ unary.ts:26:5
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:27:0
  (set_global $unary/i
   ;;@ unary.ts:27:4
   (i32.xor
    ;;@ unary.ts:27:5
    (get_global $unary/i)
    (i32.const -1)
   )
  )
  ;;@ unary.ts:28:0
  (set_global $unary/i
   ;;@ unary.ts:28:4
   (block (result i32)
    (set_global $unary/i
     (i32.add
      ;;@ unary.ts:28:6
      (get_global $unary/i)
      (i32.const 1)
     )
    )
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:29:0
  (set_global $unary/i
   ;;@ unary.ts:29:4
   (block (result i32)
    (set_global $unary/i
     (i32.sub
      ;;@ unary.ts:29:6
      (get_global $unary/i)
      (i32.const 1)
     )
    )
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:30:0
  (set_global $unary/i
   ;;@ unary.ts:30:4
   (block (result i32)
    (set_local $0
     (get_global $unary/i)
    )
    (set_global $unary/i
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  ;;@ unary.ts:31:0
  (set_global $unary/i
   ;;@ unary.ts:31:4
   (block (result i32)
    (set_local $0
     (get_global $unary/i)
    )
    (set_global $unary/i
     (i32.sub
      (get_local $0)
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  ;;@ unary.ts:35:0
  (drop
   ;;@ unary.ts:35:1
   (get_global $unary/I)
  )
  ;;@ unary.ts:36:0
  (drop
   (i64.sub
    (i64.const 0)
    ;;@ unary.ts:36:1
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:37:0
  (drop
   (i64.eqz
    ;;@ unary.ts:37:1
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:38:0
  (drop
   (i64.xor
    ;;@ unary.ts:38:1
    (get_global $unary/I)
    (i64.const -1)
   )
  )
  ;;@ unary.ts:39:0
  (set_global $unary/I
   (i64.add
    ;;@ unary.ts:39:2
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:40:0
  (set_global $unary/I
   (i64.sub
    ;;@ unary.ts:40:2
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:41:0
  (set_global $unary/I
   (i64.add
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:42:0
  (set_global $unary/I
   (i64.sub
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:44:0
  (set_global $unary/I
   ;;@ unary.ts:44:4
   (i64.const 1)
  )
  ;;@ unary.ts:45:0
  (set_global $unary/I
   ;;@ unary.ts:45:4
   (i64.sub
    (i64.const 0)
    ;;@ unary.ts:45:5
    (i64.const 1)
   )
  )
  ;;@ unary.ts:46:0
  (set_global $unary/I
   ;;@ unary.ts:46:4
   (i64.extend_s/i32
    (i64.eqz
     ;;@ unary.ts:46:5
     (i64.const 1)
    )
   )
  )
  ;;@ unary.ts:47:0
  (set_global $unary/I
   ;;@ unary.ts:47:4
   (i64.xor
    ;;@ unary.ts:47:5
    (i64.const 1)
    (i64.const -1)
   )
  )
  ;;@ unary.ts:48:0
  (set_global $unary/I
   ;;@ unary.ts:48:4
   (get_global $unary/I)
  )
  ;;@ unary.ts:49:0
  (set_global $unary/I
   ;;@ unary.ts:49:4
   (i64.sub
    (i64.const 0)
    ;;@ unary.ts:49:5
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:50:0
  (set_global $unary/I
   ;;@ unary.ts:50:4
   (i64.extend_s/i32
    (i64.eqz
     ;;@ unary.ts:50:5
     (get_global $unary/I)
    )
   )
  )
  ;;@ unary.ts:51:0
  (set_global $unary/I
   ;;@ unary.ts:51:4
   (i64.xor
    ;;@ unary.ts:51:5
    (get_global $unary/I)
    (i64.const -1)
   )
  )
  ;;@ unary.ts:52:0
  (set_global $unary/I
   ;;@ unary.ts:52:4
   (block (result i64)
    (set_global $unary/I
     (i64.add
      ;;@ unary.ts:52:6
      (get_global $unary/I)
      (i64.const 1)
     )
    )
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:53:0
  (set_global $unary/I
   ;;@ unary.ts:53:4
   (block (result i64)
    (set_global $unary/I
     (i64.sub
      ;;@ unary.ts:53:6
      (get_global $unary/I)
      (i64.const 1)
     )
    )
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:54:0
  (set_global $unary/I
   ;;@ unary.ts:54:4
   (block (result i64)
    (set_local $1
     (get_global $unary/I)
    )
    (set_global $unary/I
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (get_local $1)
   )
  )
  ;;@ unary.ts:55:0
  (set_global $unary/I
   ;;@ unary.ts:55:4
   (block (result i64)
    (set_local $1
     (get_global $unary/I)
    )
    (set_global $unary/I
     (i64.sub
      (get_local $1)
      (i64.const 1)
     )
    )
    (get_local $1)
   )
  )
  ;;@ unary.ts:59:0
  (drop
   ;;@ unary.ts:59:1
   (get_global $unary/f)
  )
  ;;@ unary.ts:60:0
  (drop
   (f32.neg
    ;;@ unary.ts:60:1
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:61:0
  (drop
   (f32.eq
    ;;@ unary.ts:61:1
    (get_global $unary/f)
    (f32.const 0)
   )
  )
  ;;@ unary.ts:62:0
  (set_global $unary/f
   (f32.add
    ;;@ unary.ts:62:2
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:63:0
  (set_global $unary/f
   (f32.sub
    ;;@ unary.ts:63:2
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:64:0
  (set_global $unary/f
   (f32.add
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:65:0
  (set_global $unary/f
   (f32.sub
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:67:0
  (set_global $unary/f
   ;;@ unary.ts:67:4
   (f32.const 1.25)
  )
  ;;@ unary.ts:68:0
  (set_global $unary/f
   ;;@ unary.ts:68:4
   (f32.neg
    ;;@ unary.ts:68:5
    (f32.const 1.25)
   )
  )
  ;;@ unary.ts:69:0
  (set_global $unary/i
   ;;@ unary.ts:69:4
   (f64.eq
    ;;@ unary.ts:69:5
    (f64.const 1.25)
    (f64.const 0)
   )
  )
  ;;@ unary.ts:70:0
  (set_global $unary/f
   ;;@ unary.ts:70:4
   (get_global $unary/f)
  )
  ;;@ unary.ts:71:0
  (set_global $unary/f
   ;;@ unary.ts:71:4
   (f32.neg
    ;;@ unary.ts:71:5
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:72:0
  (set_global $unary/i
   ;;@ unary.ts:72:4
   (f32.eq
    ;;@ unary.ts:72:5
    (get_global $unary/f)
    (f32.const 0)
   )
  )
  ;;@ unary.ts:73:0
  (set_global $unary/f
   ;;@ unary.ts:73:4
   (block (result f32)
    (set_global $unary/f
     (f32.add
      ;;@ unary.ts:73:6
      (get_global $unary/f)
      (f32.const 1)
     )
    )
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:74:0
  (set_global $unary/f
   ;;@ unary.ts:74:4
   (block (result f32)
    (set_global $unary/f
     (f32.sub
      ;;@ unary.ts:74:6
      (get_global $unary/f)
      (f32.const 1)
     )
    )
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:75:0
  (set_global $unary/f
   ;;@ unary.ts:75:4
   (block (result f32)
    (set_local $2
     (get_global $unary/f)
    )
    (set_global $unary/f
     (f32.add
      (get_local $2)
      (f32.const 1)
     )
    )
    (get_local $2)
   )
  )
  ;;@ unary.ts:76:0
  (set_global $unary/f
   ;;@ unary.ts:76:4
   (block (result f32)
    (set_local $2
     (get_global $unary/f)
    )
    (set_global $unary/f
     (f32.sub
      (get_local $2)
      (f32.const 1)
     )
    )
    (get_local $2)
   )
  )
  ;;@ unary.ts:80:0
  (drop
   ;;@ unary.ts:80:1
   (get_global $unary/F)
  )
  ;;@ unary.ts:81:0
  (drop
   (f64.neg
    ;;@ unary.ts:81:1
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:82:0
  (drop
   (f64.eq
    ;;@ unary.ts:82:1
    (get_global $unary/F)
    (f64.const 0)
   )
  )
  ;;@ unary.ts:83:0
  (set_global $unary/F
   (f64.add
    ;;@ unary.ts:83:2
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:84:0
  (set_global $unary/F
   (f64.sub
    ;;@ unary.ts:84:2
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:85:0
  (set_global $unary/F
   (f64.add
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:86:0
  (set_global $unary/F
   (f64.sub
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:88:0
  (set_global $unary/F
   ;;@ unary.ts:88:4
   (f64.const 1.25)
  )
  ;;@ unary.ts:89:0
  (set_global $unary/F
   ;;@ unary.ts:89:4
   (f64.neg
    ;;@ unary.ts:89:5
    (f64.const 1.25)
   )
  )
  ;;@ unary.ts:90:0
  (set_global $unary/I
   ;;@ unary.ts:90:4
   (i64.extend_s/i32
    (f64.eq
     ;;@ unary.ts:90:5
     (f64.const 1.25)
     (f64.const 0)
    )
   )
  )
  ;;@ unary.ts:91:0
  (set_global $unary/F
   ;;@ unary.ts:91:4
   (get_global $unary/F)
  )
  ;;@ unary.ts:92:0
  (set_global $unary/F
   ;;@ unary.ts:92:4
   (f64.neg
    ;;@ unary.ts:92:5
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:93:0
  (set_global $unary/I
   ;;@ unary.ts:93:4
   (i64.extend_s/i32
    (f64.eq
     ;;@ unary.ts:93:5
     (get_global $unary/F)
     (f64.const 0)
    )
   )
  )
  ;;@ unary.ts:94:0
  (set_global $unary/F
   ;;@ unary.ts:94:4
   (block (result f64)
    (set_global $unary/F
     (f64.add
      ;;@ unary.ts:94:6
      (get_global $unary/F)
      (f64.const 1)
     )
    )
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:95:0
  (set_global $unary/F
   ;;@ unary.ts:95:4
   (block (result f64)
    (set_global $unary/F
     (f64.sub
      ;;@ unary.ts:95:6
      (get_global $unary/F)
      (f64.const 1)
     )
    )
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:96:0
  (set_global $unary/F
   ;;@ unary.ts:96:4
   (block (result f64)
    (set_local $3
     (get_global $unary/F)
    )
    (set_global $unary/F
     (f64.add
      (get_local $3)
      (f64.const 1)
     )
    )
    (get_local $3)
   )
  )
  ;;@ unary.ts:97:0
  (set_global $unary/F
   ;;@ unary.ts:97:4
   (block (result f64)
    (set_local $3
     (get_global $unary/F)
    )
    (set_global $unary/F
     (f64.sub
      (get_local $3)
      (f64.const 1)
     )
    )
    (get_local $3)
   )
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
  GLOBAL: unary/i
  GLOBAL: unary/I
  GLOBAL: unary/f
  GLOBAL: unary/F
[program.exports]
  
;)
