(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $v (func))
 (global $memmove/base i32 (i32.const 8))
 (global $memmove/dest (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $memmove/memmove (; 0 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (get_local $0)
  )
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (get_local $3)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.rem_u
       (get_local $1)
       (i32.const 8)
      )
      (i32.rem_u
       (get_local $0)
       (i32.const 8)
      )
     )
     (block
      (block $break|0
       (loop $continue|0
        (if
         (i32.rem_u
          (get_local $0)
          (i32.const 8)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return
             (get_local $3)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
           (i32.store8
            (block (result i32)
             (set_local $4
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $4)
               (i32.const 1)
              )
             )
             (get_local $4)
            )
            (i32.load8_u
             (block (result i32)
              (set_local $4
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $4)
                (i32.const 1)
               )
              )
              (get_local $4)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      (block $break|1
       (loop $continue|1
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (i64.store
            (get_local $0)
            (i64.load
             (get_local $1)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (block (result i32)
           (set_local $4
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $4)
             (i32.const 1)
            )
           )
           (get_local $4)
          )
          (i32.load8_u
           (block (result i32)
            (set_local $4
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $4)
              (i32.const 1)
             )
            )
            (get_local $4)
           )
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.rem_u
       (get_local $1)
       (i32.const 8)
      )
      (i32.rem_u
       (get_local $0)
       (i32.const 8)
      )
     )
     (block
      (block $break|3
       (loop $continue|3
        (if
         (i32.rem_u
          (i32.add
           (get_local $0)
           (get_local $2)
          )
          (i32.const 8)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return
             (get_local $3)
            )
           )
           (i32.store8
            (i32.add
             (get_local $0)
             (tee_local $2
              (i32.sub
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            (i32.load8_u
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (i64.store
            (i32.add
             (get_local $0)
             (get_local $2)
            )
            (i64.load
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    (block $break|5
     (loop $continue|5
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (i32.add
           (get_local $0)
           (tee_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
          )
          (i32.load8_u
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $3)
  )
 )
 (func $start (; 1 ;) (type $v)
  (i64.store
   (i32.const 8)
   (i64.const 1229782938247303441)
  )
  (i64.store
   (i32.add
    (i32.const 8)
    (i32.const 8)
   )
   (i64.const 2459565876494606882)
  )
  (i64.store
   (i32.add
    (i32.const 8)
    (i32.const 16)
   )
   (i64.const 3689348814741910323)
  )
  (i64.store
   (i32.add
    (i32.const 8)
    (i32.const 24)
   )
   (i64.const 4919131752989213764)
  )
  (set_global $memmove/dest
   (call $memmove/memmove
    (i32.add
     (i32.const 8)
     (i32.const 1)
    )
    (i32.add
     (i32.const 8)
     (i32.const 16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $memmove/dest)
     (i32.add
      (i32.const 8)
      (i32.const 1)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.const 8)
     )
     (i64.const 1229783084848853777)
    )
   )
   (unreachable)
  )
  (set_global $memmove/dest
   (call $memmove/memmove
    (i32.const 8)
    (i32.const 8)
    (i32.const 32)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $memmove/dest)
     (i32.const 8)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.const 8)
     )
     (i64.const 1229783084848853777)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 8)
      )
     )
     (i64.const 2459565876494606882)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 16)
      )
     )
     (i64.const 3689348814741910323)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 24)
      )
     )
     (i64.const 4919131752989213764)
    )
   )
   (unreachable)
  )
  (set_global $memmove/dest
   (call $memmove/memmove
    (i32.add
     (i32.const 8)
     (i32.const 5)
    )
    (i32.add
     (i32.const 8)
     (i32.const 28)
    )
    (i32.const 3)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.const 8)
     )
     (i64.const 4919131679688438545)
    )
   )
   (unreachable)
  )
  (set_global $memmove/dest
   (call $memmove/memmove
    (i32.add
     (i32.const 8)
     (i32.const 8)
    )
    (i32.add
     (i32.const 8)
     (i32.const 16)
    )
    (i32.const 15)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.const 8)
     )
     (i64.const 4919131679688438545)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 8)
      )
     )
     (i64.const 3689348814741910323)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 16)
      )
     )
     (i64.const 3694152654344438852)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 24)
      )
     )
     (i64.const 4919131752989213764)
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
  FUNCTION_PROTOTYPE: memmove/memmove
  GLOBAL: memmove/base
  GLOBAL: memmove/dest
[program.exports]
  
;)
