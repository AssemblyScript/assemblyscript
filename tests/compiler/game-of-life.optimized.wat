(module
 (type $iiv (func (param i32 i32)))
 (type $F (func (result f64)))
 (type $v (func))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (global $../../examples/game-of-life/assembly/index/w (mut i32) (i32.const 0))
 (global $../../examples/game-of-life/assembly/index/h (mut i32) (i32.const 0))
 (global $../../examples/game-of-life/assembly/index/s (mut i32) (i32.const 0))
 (memory $0 1)
 (export "init" (func $../../examples/game-of-life/assembly/index/init))
 (export "step" (func $../../examples/game-of-life/assembly/index/step))
 (export "memory" (memory $0))
 (func $../../examples/game-of-life/assembly/index/init (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  (set_local $0
   (i32.const 0)
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $0)
     (get_global $../../examples/game-of-life/assembly/index/h)
    )
    (block
     (set_local $1
      (i32.const 0)
     )
     (loop $continue|1
      (if
       (i32.lt_s
        (get_local $1)
        (get_global $../../examples/game-of-life/assembly/index/w)
       )
       (block
        (set_local $2
         (get_local $1)
        )
        (set_local $3
         (get_local $0)
        )
        (set_local $4
         (if (result i32)
          (f64.gt
           (call $~lib/math/JSMath.random)
           (f64.const 0.15)
          )
          (i32.const 8723366)
          (i32.const -1666349)
         )
        )
        (i32.store
         (i32.shl
          (i32.add
           (i32.add
            (get_global $../../examples/game-of-life/assembly/index/s)
            (i32.mul
             (get_local $3)
             (get_global $../../examples/game-of-life/assembly/index/w)
            )
           )
           (get_local $2)
          )
          (i32.const 2)
         )
         (get_local $4)
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $../../examples/game-of-life/assembly/index/step (; 2 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $7
   (i32.sub
    (get_global $../../examples/game-of-life/assembly/index/h)
    (i32.const 1)
   )
  )
  (set_local $8
   (i32.sub
    (get_global $../../examples/game-of-life/assembly/index/w)
    (i32.const 1)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $0)
     (get_global $../../examples/game-of-life/assembly/index/h)
    )
    (block
     (set_local $5
      (select
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
       (get_local $7)
       (get_local $0)
      )
     )
     (set_local $6
      (select
       (i32.const 0)
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
       (i32.eq
        (get_local $0)
        (get_local $7)
       )
      )
     )
     (set_local $1
      (i32.const 0)
     )
     (loop $continue|1
      (if
       (i32.lt_s
        (get_local $1)
        (get_global $../../examples/game-of-life/assembly/index/w)
       )
       (block
        (set_local $2
         (i32.add
          (i32.add
           (i32.add
            (i32.add
             (i32.add
              (i32.add
               (i32.add
                (i32.and
                 (i32.load
                  (i32.shl
                   (i32.add
                    (i32.mul
                     (get_local $5)
                     (get_global $../../examples/game-of-life/assembly/index/w)
                    )
                    (tee_local $2
                     (select
                      (i32.sub
                       (get_local $1)
                       (i32.const 1)
                      )
                      (get_local $8)
                      (get_local $1)
                     )
                    )
                   )
                   (i32.const 2)
                  )
                 )
                 (i32.const 1)
                )
                (i32.and
                 (i32.load
                  (i32.shl
                   (i32.add
                    (i32.mul
                     (get_local $5)
                     (get_global $../../examples/game-of-life/assembly/index/w)
                    )
                    (get_local $1)
                   )
                   (i32.const 2)
                  )
                 )
                 (i32.const 1)
                )
               )
               (i32.and
                (i32.load
                 (i32.shl
                  (i32.add
                   (i32.mul
                    (get_local $5)
                    (get_global $../../examples/game-of-life/assembly/index/w)
                   )
                   (tee_local $3
                    (select
                     (i32.const 0)
                     (i32.add
                      (get_local $1)
                      (i32.const 1)
                     )
                     (i32.eq
                      (get_local $1)
                      (get_local $8)
                     )
                    )
                   )
                  )
                  (i32.const 2)
                 )
                )
                (i32.const 1)
               )
              )
              (i32.and
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $0)
                   (get_global $../../examples/game-of-life/assembly/index/w)
                  )
                  (get_local $2)
                 )
                 (i32.const 2)
                )
               )
               (i32.const 1)
              )
             )
             (i32.and
              (i32.load
               (i32.shl
                (i32.add
                 (i32.mul
                  (get_local $0)
                  (get_global $../../examples/game-of-life/assembly/index/w)
                 )
                 (get_local $3)
                )
                (i32.const 2)
               )
              )
              (i32.const 1)
             )
            )
            (i32.and
             (i32.load
              (i32.shl
               (i32.add
                (i32.mul
                 (get_local $6)
                 (get_global $../../examples/game-of-life/assembly/index/w)
                )
                (get_local $2)
               )
               (i32.const 2)
              )
             )
             (i32.const 1)
            )
           )
           (i32.and
            (i32.load
             (i32.shl
              (i32.add
               (i32.mul
                (get_local $6)
                (get_global $../../examples/game-of-life/assembly/index/w)
               )
               (get_local $1)
              )
              (i32.const 2)
             )
            )
            (i32.const 1)
           )
          )
          (i32.and
           (i32.load
            (i32.shl
             (i32.add
              (i32.mul
               (get_local $6)
               (get_global $../../examples/game-of-life/assembly/index/w)
              )
              (get_local $3)
             )
             (i32.const 2)
            )
           )
           (i32.const 1)
          )
         )
        )
        (if
         (i32.and
          (tee_local $4
           (i32.load
            (i32.shl
             (i32.add
              (i32.mul
               (get_local $0)
               (get_global $../../examples/game-of-life/assembly/index/w)
              )
              (get_local $1)
             )
             (i32.const 2)
            )
           )
          )
          (i32.const 1)
         )
         (if
          (i32.eq
           (i32.and
            (get_local $2)
            (i32.const 14)
           )
           (i32.const 2)
          )
          (i32.store
           (i32.shl
            (i32.add
             (i32.add
              (get_global $../../examples/game-of-life/assembly/index/s)
              (i32.mul
               (get_local $0)
               (get_global $../../examples/game-of-life/assembly/index/w)
              )
             )
             (get_local $1)
            )
            (i32.const 2)
           )
           (i32.or
            (i32.shl
             (tee_local $4
              (select
               (tee_local $4
                (i32.sub
                 (i32.shr_u
                  (tee_local $2
                   (get_local $4)
                  )
                  (i32.const 24)
                 )
                 (i32.const 7)
                )
               )
               (tee_local $3
                (i32.const 0)
               )
               (i32.gt_s
                (get_local $4)
                (get_local $3)
               )
              )
             )
             (i32.const 24)
            )
            (i32.and
             (get_local $2)
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
               (get_local $0)
               (get_global $../../examples/game-of-life/assembly/index/w)
              )
             )
             (get_local $1)
            )
            (i32.const 2)
           )
           (i32.const -8053850)
          )
         )
         (if
          (i32.eq
           (get_local $2)
           (i32.const 3)
          )
          (i32.store
           (i32.shl
            (i32.add
             (i32.add
              (get_global $../../examples/game-of-life/assembly/index/s)
              (i32.mul
               (get_local $0)
               (get_global $../../examples/game-of-life/assembly/index/w)
              )
             )
             (get_local $1)
            )
            (i32.const 2)
           )
           (i32.const -1666349)
          )
          (i32.store
           (i32.shl
            (i32.add
             (i32.add
              (get_global $../../examples/game-of-life/assembly/index/s)
              (i32.mul
               (get_local $0)
               (get_global $../../examples/game-of-life/assembly/index/w)
              )
             )
             (get_local $1)
            )
            (i32.const 2)
           )
           (i32.or
            (i32.shl
             (tee_local $2
              (select
               (tee_local $2
                (i32.sub
                 (i32.shr_u
                  (get_local $4)
                  (i32.const 24)
                 )
                 (i32.const 7)
                )
               )
               (tee_local $3
                (i32.const 0)
               )
               (i32.gt_s
                (get_local $2)
                (get_local $3)
               )
              )
             )
             (i32.const 24)
            )
            (i32.and
             (get_local $4)
             (i32.const 16777215)
            )
           )
          )
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
)
