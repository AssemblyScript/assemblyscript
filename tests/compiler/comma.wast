(module
 (type $v (func))
 (global $comma/a (mut i32) (i32.const 0))
 (global $comma/b (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (block
   (set_global $comma/b
    (block (result i32)
     (set_local $0
      (get_global $comma/a)
     )
     (set_global $comma/a
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (get_local $0)
    )
   )
   (drop
    (get_global $comma/a)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $comma/a)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $comma/b)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (block
   (set_global $comma/a
    (i32.add
     (get_global $comma/a)
     (i32.const 1)
    )
   )
   (set_global $comma/b
    (get_global $comma/a)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $comma/a)
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $comma/b)
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (set_global $comma/a
   (block (result i32)
    (set_global $comma/b
     (i32.const 0)
    )
    (get_global $comma/b)
   )
  )
  (set_global $comma/b
   (block (result i32)
    (set_global $comma/a
     (i32.add
      (get_global $comma/a)
      (i32.const 1)
     )
    )
    (get_global $comma/a)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $comma/a)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $comma/b)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $comma/a
   (block (result i32)
    (set_global $comma/a
     (i32.add
      (get_global $comma/a)
      (i32.const 1)
     )
    )
    (block (result i32)
     (set_global $comma/b
      (get_global $comma/a)
     )
     (get_global $comma/b)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $comma/a)
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $comma/b)
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (block $break|0
   (block
    (set_local $1
     (i32.const 0)
    )
   )
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $1)
      (get_global $comma/a)
     )
     (block
      (nop)
      (block
       (set_global $comma/a
        (i32.sub
         (get_global $comma/a)
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $1)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (block
   (drop
    (i32.const 1)
   )
   (drop
    (i32.const 2)
   )
   (drop
    (i32.const 3)
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
  GLOBAL: comma/a
  GLOBAL: comma/b
[program.exports]
  
;)
