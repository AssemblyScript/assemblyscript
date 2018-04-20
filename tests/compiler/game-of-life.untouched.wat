(module
 (type $iiv (func (param i32 i32)))
 (type $F (func (result f64)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $../../examples/game-of-life/assembly/index/RGB_ALIVE i32 (i32.const 15110867))
 (global $../../examples/game-of-life/assembly/index/RGB_DEAD i32 (i32.const 8723366))
 (global $../../examples/game-of-life/assembly/index/BIT_ROT i32 (i32.const 10))
 (global $../../examples/game-of-life/assembly/index/w (mut i32) (i32.const 0))
 (global $../../examples/game-of-life/assembly/index/h (mut i32) (i32.const 0))
 (global $../../examples/game-of-life/assembly/index/s (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1 (mut i64) (i64.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 4) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (export "init" (func $../../examples/game-of-life/assembly/index/init))
 (export "step" (func $../../examples/game-of-life/assembly/index/step))
 (export "memory" (memory $0))
 (func $~lib/math/NativeMath.random (; 1 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  (if
   (i32.eqz
    (get_global $~lib/math/random_seeded)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1007)
     (i32.const 24)
    )
    (unreachable)
   )
  )
  (set_local $0
   (get_global $~lib/math/random_state0)
  )
  (set_local $1
   (get_global $~lib/math/random_state1)
  )
  (set_global $~lib/math/random_state0
   (get_local $1)
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shl
     (get_local $0)
     (i64.const 23)
    )
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 17)
    )
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (get_local $1)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $1)
     (i64.const 26)
    )
   )
  )
  (set_global $~lib/math/random_state1
   (get_local $0)
  )
  (set_local $2
   (i64.or
    (i64.and
     (i64.add
      (get_local $1)
      (get_local $0)
     )
     (i64.const 4503599627370495)
    )
    (i64.const 4607182418800017408)
   )
  )
  (return
   (f64.sub
    (f64.reinterpret/i64
     (get_local $2)
    )
    (f64.const 1)
   )
  )
 )
 (func $../../examples/game-of-life/assembly/index/init (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_global $../../examples/game-of-life/assembly/index/w
   (get_local $0)
  )
  (set_global $../../examples/game-of-life/assembly/index/h
   (get_local $1)
  )
  (set_global $../../examples/game-of-life/assembly/index/s
   (i32.mul
    (get_local $0)
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_global $../../examples/game-of-life/assembly/index/h)
     )
     (block
      (block
       (block $break|1
        (set_local $3
         (i32.const 0)
        )
        (loop $continue|1
         (if
          (i32.lt_s
           (get_local $3)
           (get_global $../../examples/game-of-life/assembly/index/w)
          )
          (block
           (block
            (block $../../examples/game-of-life/assembly/index/set|inlined.0
             (set_local $4
              (get_local $3)
             )
             (set_local $5
              (get_local $2)
             )
             (set_local $6
              (if (result i32)
               (f64.gt
                (call $~lib/math/NativeMath.random)
                (f64.const 0.1)
               )
               (i32.and
                (i32.const 8723366)
                (i32.const 16777215)
               )
               (i32.or
                (i32.const 15110867)
                (i32.const -16777216)
               )
              )
             )
             (i32.store
              (i32.shl
               (i32.add
                (i32.add
                 (get_global $../../examples/game-of-life/assembly/index/s)
                 (i32.mul
                  (get_local $5)
                  (get_global $../../examples/game-of-life/assembly/index/w)
                 )
                )
                (get_local $4)
               )
               (i32.const 2)
              )
              (get_local $6)
             )
            )
           )
           (set_local $3
            (i32.add
             (get_local $3)
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
 (func $../../examples/game-of-life/assembly/index/step (; 3 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (block
   (set_local $0
    (i32.sub
     (get_global $../../examples/game-of-life/assembly/index/h)
     (i32.const 1)
    )
   )
   (set_local $1
    (i32.sub
     (get_global $../../examples/game-of-life/assembly/index/w)
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
     (i32.lt_s
      (get_local $2)
      (get_global $../../examples/game-of-life/assembly/index/h)
     )
     (block
      (block
       (block
        (set_local $3
         (if (result i32)
          (i32.eq
           (get_local $2)
           (i32.const 0)
          )
          (get_local $0)
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (set_local $4
         (if (result i32)
          (i32.eq
           (get_local $2)
           (get_local $0)
          )
          (i32.const 0)
          (i32.add
           (get_local $2)
           (i32.const 1)
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
          (i32.lt_s
           (get_local $5)
           (get_global $../../examples/game-of-life/assembly/index/w)
          )
          (block
           (block
            (block
             (set_local $6
              (if (result i32)
               (i32.eq
                (get_local $5)
                (i32.const 0)
               )
               (get_local $1)
               (i32.sub
                (get_local $5)
                (i32.const 1)
               )
              )
             )
             (set_local $7
              (if (result i32)
               (i32.eq
                (get_local $5)
                (get_local $1)
               )
               (i32.const 0)
               (i32.add
                (get_local $5)
                (i32.const 1)
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
                    (i32.and
                     (block $../../examples/game-of-life/assembly/index/get|inlined.0 (result i32)
                      (set_local $8
                       (get_local $6)
                      )
                      (set_local $9
                       (get_local $3)
                      )
                      (br $../../examples/game-of-life/assembly/index/get|inlined.0
                       (i32.load
                        (i32.shl
                         (i32.add
                          (i32.mul
                           (get_local $9)
                           (get_global $../../examples/game-of-life/assembly/index/w)
                          )
                          (get_local $8)
                         )
                         (i32.const 2)
                        )
                       )
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.and
                     (block $../../examples/game-of-life/assembly/index/get|inlined.1 (result i32)
                      (set_local $9
                       (get_local $5)
                      )
                      (set_local $8
                       (get_local $3)
                      )
                      (br $../../examples/game-of-life/assembly/index/get|inlined.1
                       (i32.load
                        (i32.shl
                         (i32.add
                          (i32.mul
                           (get_local $8)
                           (get_global $../../examples/game-of-life/assembly/index/w)
                          )
                          (get_local $9)
                         )
                         (i32.const 2)
                        )
                       )
                      )
                     )
                     (i32.const 1)
                    )
                   )
                   (i32.and
                    (block $../../examples/game-of-life/assembly/index/get|inlined.2 (result i32)
                     (set_local $8
                      (get_local $7)
                     )
                     (set_local $9
                      (get_local $3)
                     )
                     (br $../../examples/game-of-life/assembly/index/get|inlined.2
                      (i32.load
                       (i32.shl
                        (i32.add
                         (i32.mul
                          (get_local $9)
                          (get_global $../../examples/game-of-life/assembly/index/w)
                         )
                         (get_local $8)
                        )
                        (i32.const 2)
                       )
                      )
                     )
                    )
                    (i32.const 1)
                   )
                  )
                  (i32.and
                   (block $../../examples/game-of-life/assembly/index/get|inlined.3 (result i32)
                    (set_local $9
                     (get_local $6)
                    )
                    (set_local $8
                     (get_local $2)
                    )
                    (br $../../examples/game-of-life/assembly/index/get|inlined.3
                     (i32.load
                      (i32.shl
                       (i32.add
                        (i32.mul
                         (get_local $8)
                         (get_global $../../examples/game-of-life/assembly/index/w)
                        )
                        (get_local $9)
                       )
                       (i32.const 2)
                      )
                     )
                    )
                   )
                   (i32.const 1)
                  )
                 )
                 (i32.and
                  (block $../../examples/game-of-life/assembly/index/get|inlined.4 (result i32)
                   (set_local $8
                    (get_local $7)
                   )
                   (set_local $9
                    (get_local $2)
                   )
                   (br $../../examples/game-of-life/assembly/index/get|inlined.4
                    (i32.load
                     (i32.shl
                      (i32.add
                       (i32.mul
                        (get_local $9)
                        (get_global $../../examples/game-of-life/assembly/index/w)
                       )
                       (get_local $8)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                  )
                  (i32.const 1)
                 )
                )
                (i32.and
                 (block $../../examples/game-of-life/assembly/index/get|inlined.5 (result i32)
                  (set_local $9
                   (get_local $6)
                  )
                  (set_local $8
                   (get_local $4)
                  )
                  (br $../../examples/game-of-life/assembly/index/get|inlined.5
                   (i32.load
                    (i32.shl
                     (i32.add
                      (i32.mul
                       (get_local $8)
                       (get_global $../../examples/game-of-life/assembly/index/w)
                      )
                      (get_local $9)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                 (i32.const 1)
                )
               )
               (i32.and
                (block $../../examples/game-of-life/assembly/index/get|inlined.6 (result i32)
                 (set_local $8
                  (get_local $5)
                 )
                 (set_local $9
                  (get_local $4)
                 )
                 (br $../../examples/game-of-life/assembly/index/get|inlined.6
                  (i32.load
                   (i32.shl
                    (i32.add
                     (i32.mul
                      (get_local $9)
                      (get_global $../../examples/game-of-life/assembly/index/w)
                     )
                     (get_local $8)
                    )
                    (i32.const 2)
                   )
                  )
                 )
                )
                (i32.const 1)
               )
              )
              (i32.and
               (block $../../examples/game-of-life/assembly/index/get|inlined.7 (result i32)
                (set_local $9
                 (get_local $7)
                )
                (set_local $8
                 (get_local $4)
                )
                (br $../../examples/game-of-life/assembly/index/get|inlined.7
                 (i32.load
                  (i32.shl
                   (i32.add
                    (i32.mul
                     (get_local $8)
                     (get_global $../../examples/game-of-life/assembly/index/w)
                    )
                    (get_local $9)
                   )
                   (i32.const 2)
                  )
                 )
                )
               )
               (i32.const 1)
              )
             )
            )
            (set_local $10
             (block $../../examples/game-of-life/assembly/index/get|inlined.8 (result i32)
              (set_local $9
               (get_local $5)
              )
              (set_local $10
               (get_local $2)
              )
              (br $../../examples/game-of-life/assembly/index/get|inlined.8
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $10)
                   (get_global $../../examples/game-of-life/assembly/index/w)
                  )
                  (get_local $9)
                 )
                 (i32.const 2)
                )
               )
              )
             )
            )
            (if
             (i32.and
              (get_local $10)
              (i32.const 1)
             )
             (if
              (i32.eq
               (i32.and
                (get_local $8)
                (i32.const 14)
               )
               (i32.const 2)
              )
              (block $../../examples/game-of-life/assembly/index/rot|inlined.0
               (set_local $9
                (get_local $5)
               )
               (set_local $11
                (get_local $2)
               )
               (set_local $12
                (get_local $10)
               )
               (set_local $13
                (select
                 (tee_local $13
                  (i32.sub
                   (i32.shr_u
                    (get_local $12)
                    (i32.const 24)
                   )
                   (i32.const 10)
                  )
                 )
                 (tee_local $14
                  (i32.const 0)
                 )
                 (i32.gt_s
                  (get_local $13)
                  (get_local $14)
                 )
                )
               )
               (block $../../examples/game-of-life/assembly/index/set|inlined.1
                (set_local $14
                 (get_local $9)
                )
                (set_local $15
                 (get_local $11)
                )
                (set_local $16
                 (i32.or
                  (i32.shl
                   (get_local $13)
                   (i32.const 24)
                  )
                  (i32.and
                   (get_local $12)
                   (i32.const 16777215)
                  )
                 )
                )
                (i32.store
                 (i32.shl
                  (i32.add
                   (i32.add
                    (get_global $../../examples/game-of-life/assembly/index/s)
                    (i32.mul
                     (get_local $15)
                     (get_global $../../examples/game-of-life/assembly/index/w)
                    )
                   )
                   (get_local $14)
                  )
                  (i32.const 2)
                 )
                 (get_local $16)
                )
               )
              )
              (block $../../examples/game-of-life/assembly/index/set|inlined.2
               (set_local $13
                (get_local $5)
               )
               (set_local $12
                (get_local $2)
               )
               (set_local $11
                (i32.or
                 (i32.const 8723366)
                 (i32.const -16777216)
                )
               )
               (i32.store
                (i32.shl
                 (i32.add
                  (i32.add
                   (get_global $../../examples/game-of-life/assembly/index/s)
                   (i32.mul
                    (get_local $12)
                    (get_global $../../examples/game-of-life/assembly/index/w)
                   )
                  )
                  (get_local $13)
                 )
                 (i32.const 2)
                )
                (get_local $11)
               )
              )
             )
             (if
              (i32.eq
               (get_local $8)
               (i32.const 3)
              )
              (block $../../examples/game-of-life/assembly/index/set|inlined.3
               (set_local $11
                (get_local $5)
               )
               (set_local $12
                (get_local $2)
               )
               (set_local $13
                (i32.or
                 (i32.const 15110867)
                 (i32.const -16777216)
                )
               )
               (i32.store
                (i32.shl
                 (i32.add
                  (i32.add
                   (get_global $../../examples/game-of-life/assembly/index/s)
                   (i32.mul
                    (get_local $12)
                    (get_global $../../examples/game-of-life/assembly/index/w)
                   )
                  )
                  (get_local $11)
                 )
                 (i32.const 2)
                )
                (get_local $13)
               )
              )
              (block $../../examples/game-of-life/assembly/index/rot|inlined.1
               (set_local $13
                (get_local $5)
               )
               (set_local $12
                (get_local $2)
               )
               (set_local $11
                (get_local $10)
               )
               (set_local $9
                (select
                 (tee_local $9
                  (i32.sub
                   (i32.shr_u
                    (get_local $11)
                    (i32.const 24)
                   )
                   (i32.const 10)
                  )
                 )
                 (tee_local $16
                  (i32.const 0)
                 )
                 (i32.gt_s
                  (get_local $9)
                  (get_local $16)
                 )
                )
               )
               (block $../../examples/game-of-life/assembly/index/set|inlined.4
                (set_local $16
                 (get_local $13)
                )
                (set_local $15
                 (get_local $12)
                )
                (set_local $14
                 (i32.or
                  (i32.shl
                   (get_local $9)
                   (i32.const 24)
                  )
                  (i32.and
                   (get_local $11)
                   (i32.const 16777215)
                  )
                 )
                )
                (i32.store
                 (i32.shl
                  (i32.add
                   (i32.add
                    (get_global $../../examples/game-of-life/assembly/index/s)
                    (i32.mul
                     (get_local $15)
                     (get_global $../../examples/game-of-life/assembly/index/w)
                    )
                   )
                   (get_local $16)
                  )
                  (i32.const 2)
                 )
                 (get_local $14)
                )
               )
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
