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
  (local $9 i32)
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
                 (tee_local $9
                  (i32.lt_s
                   (get_local $8)
                   (i32.const 2)
                  )
                 )
                 (i32.const 0)
                )
                (get_local $9)
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
