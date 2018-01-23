(module
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (global $../../examples/game-of-life/assembly/game-of-life/w (mut i32) (i32.const 0))
 (global $../../examples/game-of-life/assembly/game-of-life/h (mut i32) (i32.const 0))
 (global $../../examples/game-of-life/assembly/game-of-life/s (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "init" (func $../../examples/game-of-life/assembly/game-of-life/init))
 (export "step" (func $../../examples/game-of-life/assembly/game-of-life/step))
 (export "memory" (memory $0))
 (func $../../examples/game-of-life/assembly/game-of-life/init (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (set_global $../../examples/game-of-life/assembly/game-of-life/w
   (get_local $0)
  )
  (set_global $../../examples/game-of-life/assembly/game-of-life/h
   (get_local $1)
  )
  (set_global $../../examples/game-of-life/assembly/game-of-life/s
   (i32.mul
    (get_global $../../examples/game-of-life/assembly/game-of-life/w)
    (get_global $../../examples/game-of-life/assembly/game-of-life/h)
   )
  )
 )
 (func $../../examples/game-of-life/assembly/game-of-life/step (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block
   (set_local $0
    (i32.sub
     (get_global $../../examples/game-of-life/assembly/game-of-life/h)
     (i32.const 1)
    )
   )
   (set_local $1
    (i32.sub
     (get_global $../../examples/game-of-life/assembly/game-of-life/w)
     (i32.const 1)
    )
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $2)
      (get_global $../../examples/game-of-life/assembly/game-of-life/h)
     )
     (block
      (block
       (block
        (set_local $3
         (select
          (get_local $0)
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
          (i32.eq
           (get_local $2)
           (i32.const 0)
          )
         )
        )
        (set_local $4
         (select
          (i32.const 0)
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
          (i32.eq
           (get_local $2)
           (get_local $0)
          )
         )
        )
       )
       (block $break|1
        (set_local $5
         (i32.const 0)
        )
        (loop $continue|1
         (if
          (i32.lt_u
           (get_local $5)
           (get_global $../../examples/game-of-life/assembly/game-of-life/w)
          )
          (block
           (block
            (block
             (set_local $6
              (select
               (get_local $1)
               (i32.sub
                (get_local $5)
                (i32.const 1)
               )
               (i32.eq
                (get_local $5)
                (i32.const 0)
               )
              )
             )
             (set_local $7
              (select
               (i32.const 0)
               (i32.add
                (get_local $5)
                (i32.const 1)
               )
               (i32.eq
                (get_local $5)
                (get_local $1)
               )
              )
             )
            )
            (set_local $8
             (i32.add
              (i32.add
               (i32.add
                (i32.add
                 (i32.add
                  (i32.add
                   (i32.add
                    (i32.load8_u
                     (i32.add
                      (i32.mul
                       (get_local $3)
                       (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                      )
                      (get_local $6)
                     )
                    )
                    (i32.load8_u
                     (i32.add
                      (i32.mul
                       (get_local $3)
                       (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                      )
                      (get_local $5)
                     )
                    )
                   )
                   (i32.load8_u
                    (i32.add
                     (i32.mul
                      (get_local $3)
                      (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                     )
                     (get_local $7)
                    )
                   )
                  )
                  (i32.load8_u
                   (i32.add
                    (i32.mul
                     (get_local $2)
                     (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                    )
                    (get_local $6)
                   )
                  )
                 )
                 (i32.load8_u
                  (i32.add
                   (i32.mul
                    (get_local $2)
                    (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                   )
                   (get_local $7)
                  )
                 )
                )
                (i32.load8_u
                 (i32.add
                  (i32.mul
                   (get_local $4)
                   (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                  )
                  (get_local $6)
                 )
                )
               )
               (i32.load8_u
                (i32.add
                 (i32.mul
                  (get_local $4)
                  (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                 )
                 (get_local $5)
                )
               )
              )
              (i32.load8_u
               (i32.add
                (i32.mul
                 (get_local $4)
                 (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                )
                (get_local $7)
               )
              )
             )
            )
            (if
             (i32.load8_u
              (i32.add
               (i32.mul
                (get_local $2)
                (get_global $../../examples/game-of-life/assembly/game-of-life/w)
               )
               (get_local $5)
              )
             )
             (if
              (i32.and
               (if (result i32)
                (i32.ne
                 (i32.lt_s
                  (get_local $8)
                  (i32.const 2)
                 )
                 (i32.const 0)
                )
                (i32.lt_s
                 (get_local $8)
                 (i32.const 2)
                )
                (i32.gt_s
                 (get_local $8)
                 (i32.const 3)
                )
               )
               (i32.const 1)
              )
              (i32.store8
               (i32.add
                (i32.add
                 (get_global $../../examples/game-of-life/assembly/game-of-life/s)
                 (i32.mul
                  (get_local $2)
                  (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                 )
                )
                (get_local $5)
               )
               (i32.const 0)
              )
             )
             (if
              (i32.eq
               (get_local $8)
               (i32.const 3)
              )
              (i32.store8
               (i32.add
                (i32.add
                 (get_global $../../examples/game-of-life/assembly/game-of-life/s)
                 (i32.mul
                  (get_local $2)
                  (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                 )
                )
                (get_local $5)
               )
               (i32.const 1)
              )
             )
            )
           )
           (set_local $5
            (i32.add
             (get_local $5)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
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
  GLOBAL: ../../examples/game-of-life/assembly/game-of-life/w
  GLOBAL: ../../examples/game-of-life/assembly/game-of-life/h
  GLOBAL: ../../examples/game-of-life/assembly/game-of-life/s
  FUNCTION_PROTOTYPE: ../../examples/game-of-life/assembly/game-of-life/init
  FUNCTION_PROTOTYPE: ../../examples/game-of-life/assembly/game-of-life/step
[program.exports]
  FUNCTION_PROTOTYPE: ../../examples/game-of-life/assembly/game-of-life/init
  FUNCTION_PROTOTYPE: ../../examples/game-of-life/assembly/game-of-life/step
  FUNCTION_PROTOTYPE: game-of-life/init
  FUNCTION_PROTOTYPE: game-of-life/step
;)
