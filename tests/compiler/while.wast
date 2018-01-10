(module
 (type $v (func))
 (global $while/n (mut i32) (i32.const 10))
 (global $while/m (mut i32) (i32.const 0))
 (global $while/o (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (block $break|0
   (loop $continue|0
    (if
     (get_global $while/n)
     (block
      (block
       (set_global $while/n
        (i32.sub
         (get_global $while/n)
         (i32.const 1)
        )
       )
       (set_global $while/m
        (i32.add
         (get_global $while/m)
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
     (get_global $while/n)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $while/m)
     (i32.const 10)
    )
   )
   (unreachable)
  )
  (set_global $while/n
   (i32.const 10)
  )
  (set_global $while/m
   (i32.const 0)
  )
  (block $break|1
   (loop $continue|1
    (if
     (get_global $while/n)
     (block
      (block
       (set_global $while/n
        (i32.sub
         (get_global $while/n)
         (i32.const 1)
        )
       )
       (set_global $while/m
        (i32.add
         (get_global $while/m)
         (i32.const 1)
        )
       )
       (block $break|2
        (loop $continue|2
         (if
          (get_global $while/n)
          (block
           (block
            (set_global $while/n
             (i32.sub
              (get_global $while/n)
              (i32.const 1)
             )
            )
            (set_global $while/o
             (i32.add
              (get_global $while/o)
              (i32.const 1)
             )
            )
           )
           (br $continue|2)
          )
         )
        )
       )
       (if
        (i32.eqz
         (i32.eq
          (get_global $while/n)
          (i32.const 0)
         )
        )
        (unreachable)
       )
       (if
        (i32.eqz
         (i32.eq
          (get_global $while/o)
          (i32.const 9)
         )
        )
        (unreachable)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $while/n)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $while/m)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $while/o)
     (i32.const 9)
    )
   )
   (unreachable)
  )
  (set_global $while/n
   (i32.const 1)
  )
  (set_global $while/m
   (i32.const 0)
  )
  (block $break|3
   (loop $continue|3
    (if
     (if (result i32)
      (i32.eqz
       (tee_local $0
        (block (result i32)
         (set_local $0
          (get_global $while/n)
         )
         (set_global $while/n
          (i32.sub
           (get_local $0)
           (i32.const 1)
          )
         )
         (get_local $0)
        )
       )
      )
      (get_local $0)
      (block (result i32)
       (set_global $while/m
        (i32.add
         (get_global $while/m)
         (i32.const 1)
        )
       )
       (get_global $while/m)
      )
     )
     (block
      (nop)
      (br $continue|3)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $while/n)
     (i32.sub
      (i32.const 0)
      (i32.const 1)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $while/m)
     (i32.const 1)
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
  GLOBAL: while/n
  GLOBAL: while/m
  GLOBAL: while/o
[program.exports]
  
;)
