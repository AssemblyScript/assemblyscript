(module
 (type $v (func))
 (global $portable-conversions/i (mut i32) (i32.const 0))
 (global $portable-conversions/I (mut i64) (i64.const 0))
 (global $portable-conversions/f (mut f32) (f32.const 0))
 (global $portable-conversions/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  ;;@ portable-conversions.ts:6:0
  (drop
   ;;@ portable-conversions.ts:6:3
   (i32.shr_s
    (i32.shl
     (get_global $portable-conversions/i)
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ portable-conversions.ts:7:0
  (drop
   ;;@ portable-conversions.ts:7:3
   (i32.shr_s
    (i32.shl
     (i32.wrap/i64
      (get_global $portable-conversions/I)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ portable-conversions.ts:8:0
  (drop
   ;;@ portable-conversions.ts:8:3
   (i32.shr_s
    (i32.shl
     (i32.trunc_s/f32
      (get_global $portable-conversions/f)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ portable-conversions.ts:9:0
  (drop
   ;;@ portable-conversions.ts:9:3
   (i32.shr_s
    (i32.shl
     (i32.trunc_s/f64
      (get_global $portable-conversions/F)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ portable-conversions.ts:11:0
  (drop
   ;;@ portable-conversions.ts:11:4
   (i32.shr_s
    (i32.shl
     (get_global $portable-conversions/i)
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  ;;@ portable-conversions.ts:12:0
  (drop
   ;;@ portable-conversions.ts:12:4
   (i32.shr_s
    (i32.shl
     (i32.wrap/i64
      (get_global $portable-conversions/I)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  ;;@ portable-conversions.ts:13:0
  (drop
   ;;@ portable-conversions.ts:13:4
   (i32.shr_s
    (i32.shl
     (i32.trunc_s/f32
      (get_global $portable-conversions/f)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  ;;@ portable-conversions.ts:14:0
  (drop
   ;;@ portable-conversions.ts:14:4
   (i32.shr_s
    (i32.shl
     (i32.trunc_s/f64
      (get_global $portable-conversions/F)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  ;;@ portable-conversions.ts:16:0
  (drop
   ;;@ portable-conversions.ts:16:4
   (get_global $portable-conversions/i)
  )
  ;;@ portable-conversions.ts:17:0
  (drop
   ;;@ portable-conversions.ts:17:4
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  ;;@ portable-conversions.ts:18:0
  (drop
   ;;@ portable-conversions.ts:18:4
   (i32.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:19:0
  (drop
   ;;@ portable-conversions.ts:19:4
   (i32.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:21:0
  (drop
   ;;@ portable-conversions.ts:21:4
   (i64.extend_s/i32
    (get_global $portable-conversions/i)
   )
  )
  ;;@ portable-conversions.ts:22:0
  (drop
   ;;@ portable-conversions.ts:22:4
   (get_global $portable-conversions/I)
  )
  ;;@ portable-conversions.ts:23:0
  (drop
   ;;@ portable-conversions.ts:23:4
   (i64.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:24:0
  (drop
   ;;@ portable-conversions.ts:24:4
   (i64.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:26:0
  (drop
   ;;@ portable-conversions.ts:26:6
   (get_global $portable-conversions/i)
  )
  ;;@ portable-conversions.ts:27:0
  (drop
   ;;@ portable-conversions.ts:27:6
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  ;;@ portable-conversions.ts:28:0
  (drop
   ;;@ portable-conversions.ts:28:6
   (i32.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:29:0
  (drop
   ;;@ portable-conversions.ts:29:6
   (i32.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:31:0
  (drop
   ;;@ portable-conversions.ts:31:3
   (i32.and
    (get_global $portable-conversions/i)
    (i32.const 255)
   )
  )
  ;;@ portable-conversions.ts:32:0
  (drop
   ;;@ portable-conversions.ts:32:3
   (i32.and
    (i32.wrap/i64
     (get_global $portable-conversions/I)
    )
    (i32.const 255)
   )
  )
  ;;@ portable-conversions.ts:33:0
  (drop
   ;;@ portable-conversions.ts:33:3
   (i32.and
    (i32.trunc_u/f32
     (get_global $portable-conversions/f)
    )
    (i32.const 255)
   )
  )
  ;;@ portable-conversions.ts:34:0
  (drop
   ;;@ portable-conversions.ts:34:3
   (i32.and
    (i32.trunc_u/f64
     (get_global $portable-conversions/F)
    )
    (i32.const 255)
   )
  )
  ;;@ portable-conversions.ts:36:0
  (drop
   ;;@ portable-conversions.ts:36:4
   (i32.and
    (get_global $portable-conversions/i)
    (i32.const 65535)
   )
  )
  ;;@ portable-conversions.ts:37:0
  (drop
   ;;@ portable-conversions.ts:37:4
   (i32.and
    (i32.wrap/i64
     (get_global $portable-conversions/I)
    )
    (i32.const 65535)
   )
  )
  ;;@ portable-conversions.ts:38:0
  (drop
   ;;@ portable-conversions.ts:38:4
   (i32.and
    (i32.trunc_u/f32
     (get_global $portable-conversions/f)
    )
    (i32.const 65535)
   )
  )
  ;;@ portable-conversions.ts:39:0
  (drop
   ;;@ portable-conversions.ts:39:4
   (i32.and
    (i32.trunc_u/f64
     (get_global $portable-conversions/F)
    )
    (i32.const 65535)
   )
  )
  ;;@ portable-conversions.ts:41:0
  (drop
   ;;@ portable-conversions.ts:41:4
   (get_global $portable-conversions/i)
  )
  ;;@ portable-conversions.ts:42:0
  (drop
   ;;@ portable-conversions.ts:42:4
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  ;;@ portable-conversions.ts:43:0
  (drop
   ;;@ portable-conversions.ts:43:4
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:44:0
  (drop
   ;;@ portable-conversions.ts:44:4
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:46:0
  (drop
   ;;@ portable-conversions.ts:46:4
   (i64.extend_u/i32
    (get_global $portable-conversions/i)
   )
  )
  ;;@ portable-conversions.ts:47:0
  (drop
   ;;@ portable-conversions.ts:47:4
   (get_global $portable-conversions/I)
  )
  ;;@ portable-conversions.ts:48:0
  (drop
   ;;@ portable-conversions.ts:48:4
   (i64.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:49:0
  (drop
   ;;@ portable-conversions.ts:49:4
   (i64.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:51:0
  (drop
   ;;@ portable-conversions.ts:51:6
   (get_global $portable-conversions/i)
  )
  ;;@ portable-conversions.ts:52:0
  (drop
   ;;@ portable-conversions.ts:52:6
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  ;;@ portable-conversions.ts:53:0
  (drop
   ;;@ portable-conversions.ts:53:6
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:54:0
  (drop
   ;;@ portable-conversions.ts:54:6
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:56:0
  (drop
   ;;@ portable-conversions.ts:56:5
   (i32.and
    (get_global $portable-conversions/i)
    (i32.const 1)
   )
  )
  ;;@ portable-conversions.ts:57:0
  (drop
   ;;@ portable-conversions.ts:57:5
   (i32.and
    (i32.wrap/i64
     (get_global $portable-conversions/I)
    )
    (i32.const 1)
   )
  )
  ;;@ portable-conversions.ts:58:0
  (drop
   ;;@ portable-conversions.ts:58:5
   (i32.and
    (i32.trunc_u/f32
     (get_global $portable-conversions/f)
    )
    (i32.const 1)
   )
  )
  ;;@ portable-conversions.ts:59:0
  (drop
   ;;@ portable-conversions.ts:59:5
   (i32.and
    (i32.trunc_u/f64
     (get_global $portable-conversions/F)
    )
    (i32.const 1)
   )
  )
  ;;@ portable-conversions.ts:61:0
  (drop
   ;;@ portable-conversions.ts:61:4
   (f32.convert_s/i32
    (get_global $portable-conversions/i)
   )
  )
  ;;@ portable-conversions.ts:62:0
  (drop
   ;;@ portable-conversions.ts:62:4
   (f32.convert_s/i64
    (get_global $portable-conversions/I)
   )
  )
  ;;@ portable-conversions.ts:63:0
  (drop
   ;;@ portable-conversions.ts:63:4
   (get_global $portable-conversions/f)
  )
  ;;@ portable-conversions.ts:64:0
  (drop
   ;;@ portable-conversions.ts:64:4
   (f32.demote/f64
    (get_global $portable-conversions/F)
   )
  )
  ;;@ portable-conversions.ts:66:0
  (drop
   ;;@ portable-conversions.ts:66:4
   (f64.convert_s/i32
    (get_global $portable-conversions/i)
   )
  )
  ;;@ portable-conversions.ts:67:0
  (drop
   ;;@ portable-conversions.ts:67:4
   (f64.convert_s/i64
    (get_global $portable-conversions/I)
   )
  )
  ;;@ portable-conversions.ts:68:0
  (drop
   ;;@ portable-conversions.ts:68:4
   (f64.promote/f32
    (get_global $portable-conversions/f)
   )
  )
  ;;@ portable-conversions.ts:69:0
  (drop
   ;;@ portable-conversions.ts:69:4
   (get_global $portable-conversions/F)
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
  GLOBAL: portable-conversions/i
  GLOBAL: portable-conversions/I
  GLOBAL: portable-conversions/f
  GLOBAL: portable-conversions/F
[program.exports]
  
;)
