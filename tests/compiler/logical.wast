(module
 (type $v (func))
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  (local $2 i64)
  (local $3 f32)
  (drop
   (if (result i32)
    (tee_local $0
     (i32.const 0)
    )
    (unreachable)
    (get_local $0)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $1
      (f64.const 0)
     )
     (f64.const 0)
    )
    (unreachable)
    (get_local $1)
   )
  )
  (drop
   (if (result i32)
    (tee_local $0
     (i32.const 1)
    )
    (get_local $0)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $1
      (f64.const 1)
     )
     (f64.const 0)
    )
    (get_local $1)
    (unreachable)
   )
  )
  (drop
   (if (result i32)
    (tee_local $0
     (if (result i32)
      (tee_local $0
       (i32.const 1)
      )
      (i32.const 2)
      (get_local $0)
     )
    )
    (get_local $0)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $1
      (if (result f64)
       (f64.ne
        (tee_local $1
         (f64.const 1)
        )
        (f64.const 0)
       )
       (f64.const 2)
       (get_local $1)
      )
     )
     (f64.const 0)
    )
    (get_local $1)
    (unreachable)
   )
  )
  (set_global $logical/i
   (if (result i32)
    (tee_local $0
     (i32.const 1)
    )
    (i32.const 2)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $logical/i)
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/i
   (if (result i32)
    (tee_local $0
     (i32.const 0)
    )
    (get_local $0)
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $logical/i)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $logical/I
   (if (result i64)
    (i64.ne
     (tee_local $2
      (i64.const 1)
     )
     (i64.const 0)
    )
    (i64.const 2)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $logical/I)
     (i64.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/I
   (if (result i64)
    (i64.ne
     (tee_local $2
      (i64.const 0)
     )
     (i64.const 0)
    )
    (get_local $2)
    (i64.const 1)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $logical/I)
     (i64.const 1)
    )
   )
   (unreachable)
  )
  (set_global $logical/f
   (if (result f32)
    (f32.ne
     (tee_local $3
      (f32.const 1)
     )
     (f32.const 0)
    )
    (f32.const 2)
    (get_local $3)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (get_global $logical/f)
     (f32.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/f
   (if (result f32)
    (f32.ne
     (tee_local $3
      (f32.const 0)
     )
     (f32.const 0)
    )
    (get_local $3)
    (f32.const 1)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (get_global $logical/f)
     (f32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $logical/F
   (if (result f64)
    (f64.ne
     (tee_local $1
      (f64.const 1)
     )
     (f64.const 0)
    )
    (f64.const 2)
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (get_global $logical/F)
     (f64.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/F
   (if (result f64)
    (f64.ne
     (tee_local $1
      (f64.const 0)
     )
     (f64.const 0)
    )
    (get_local $1)
    (f64.const 1)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (get_global $logical/F)
     (f64.const 1)
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
  GLOBAL: logical/i
  GLOBAL: logical/I
  GLOBAL: logical/f
  GLOBAL: logical/F
[program.exports]
  
;)
