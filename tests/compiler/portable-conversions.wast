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
  (drop
   (i32.shr_s
    (i32.shl
     (get_global $portable-conversions/i)
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  (drop
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
  (drop
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
  (drop
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
  (drop
   (i32.shr_s
    (i32.shl
     (get_global $portable-conversions/i)
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  (drop
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
  (drop
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
  (drop
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
  (drop
   (get_global $portable-conversions/i)
  )
  (drop
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (i32.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i32.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (i64.extend_s/i32
    (get_global $portable-conversions/i)
   )
  )
  (drop
   (get_global $portable-conversions/I)
  )
  (drop
   (i64.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i64.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (get_global $portable-conversions/i)
  )
  (drop
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (i32.trunc_s/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i32.trunc_s/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (i32.and
    (get_global $portable-conversions/i)
    (i32.const 255)
   )
  )
  (drop
   (i32.and
    (i32.wrap/i64
     (get_global $portable-conversions/I)
    )
    (i32.const 255)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f32
     (get_global $portable-conversions/f)
    )
    (i32.const 255)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f64
     (get_global $portable-conversions/F)
    )
    (i32.const 255)
   )
  )
  (drop
   (i32.and
    (get_global $portable-conversions/i)
    (i32.const 65535)
   )
  )
  (drop
   (i32.and
    (i32.wrap/i64
     (get_global $portable-conversions/I)
    )
    (i32.const 65535)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f32
     (get_global $portable-conversions/f)
    )
    (i32.const 65535)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f64
     (get_global $portable-conversions/F)
    )
    (i32.const 65535)
   )
  )
  (drop
   (get_global $portable-conversions/i)
  )
  (drop
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (i64.extend_u/i32
    (get_global $portable-conversions/i)
   )
  )
  (drop
   (get_global $portable-conversions/I)
  )
  (drop
   (i64.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i64.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (get_global $portable-conversions/i)
  )
  (drop
   (i32.wrap/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (i32.trunc_u/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
   (i32.trunc_u/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (i32.and
    (get_global $portable-conversions/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.and
    (i32.wrap/i64
     (get_global $portable-conversions/I)
    )
    (i32.const 1)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f32
     (get_global $portable-conversions/f)
    )
    (i32.const 1)
   )
  )
  (drop
   (i32.and
    (i32.trunc_u/f64
     (get_global $portable-conversions/F)
    )
    (i32.const 1)
   )
  )
  (drop
   (f32.convert_s/i32
    (get_global $portable-conversions/i)
   )
  )
  (drop
   (f32.convert_s/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (get_global $portable-conversions/f)
  )
  (drop
   (f32.demote/f64
    (get_global $portable-conversions/F)
   )
  )
  (drop
   (f64.convert_s/i32
    (get_global $portable-conversions/i)
   )
  )
  (drop
   (f64.convert_s/i64
    (get_global $portable-conversions/I)
   )
  )
  (drop
   (f64.promote/f32
    (get_global $portable-conversions/f)
   )
  )
  (drop
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
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: parseFloat
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
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
