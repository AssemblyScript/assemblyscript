(module
 (type $v (func))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (if
   (i32.eqz
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.gt_s
     (i32.const 1)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (f64.eq
    (f64.const 0.5)
    (f64.const 0)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.gt
     (f64.const 0.5)
     (f64.const 0.4)
    )
   )
   (unreachable)
  )
  (if
   (i64.eqz
    (i64.const 4294967296)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.gt_s
     (i64.const 4294967296)
     (i64.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (if (result i32)
     (i32.eqz
      (tee_local $0
       (i32.const 1)
      )
     )
     (unreachable)
     (get_local $0)
    )
   )
   (unreachable)
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
