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
  (drop
   (if (result i32)
    (i32.eqz
     (i32.const 0)
    )
    (i32.const 0)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.eq
     (f64.const 0)
     (f64.const 0)
    )
    (f64.const 0)
    (unreachable)
   )
  )
  (drop
   (if (result i32)
    (i32.eqz
     (i32.const 1)
    )
    (unreachable)
    (i32.const 1)
   )
  )
  (drop
   (if (result f64)
    (f64.eq
     (f64.const 1)
     (f64.const 0)
    )
    (unreachable)
    (f64.const 1)
   )
  )
  (drop
   (if (result i32)
    (i32.eqz
     (tee_local $0
      (select
       (i32.const 1)
       (i32.const 2)
       (i32.eqz
        (i32.const 1)
       )
      )
     )
    )
    (unreachable)
    (get_local $0)
   )
  )
  (drop
   (if (result f64)
    (f64.eq
     (tee_local $1
      (select
       (f64.const 1)
       (f64.const 2)
       (f64.eq
        (f64.const 1)
        (f64.const 0)
       )
      )
     )
     (f64.const 0)
    )
    (unreachable)
    (get_local $1)
   )
  )
  (set_global $logical/i
   (select
    (i32.const 1)
    (i32.const 2)
    (i32.eqz
     (i32.const 1)
    )
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
   (select
    (i32.const 1)
    (i32.const 0)
    (i32.eqz
     (i32.const 0)
    )
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
   (select
    (i64.const 1)
    (i64.const 2)
    (i64.eqz
     (i64.const 1)
    )
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
   (select
    (i64.const 1)
    (i64.const 0)
    (i64.eqz
     (i64.const 0)
    )
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
   (select
    (f32.const 1)
    (f32.const 2)
    (f32.eq
     (f32.const 1)
     (f32.const 0)
    )
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
   (select
    (f32.const 1)
    (f32.const 0)
    (f32.eq
     (f32.const 0)
     (f32.const 0)
    )
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
   (select
    (f64.const 1)
    (f64.const 2)
    (f64.eq
     (f64.const 1)
     (f64.const 0)
    )
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
   (select
    (f64.const 1)
    (f64.const 0)
    (f64.eq
     (f64.const 0)
     (f64.const 0)
    )
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
