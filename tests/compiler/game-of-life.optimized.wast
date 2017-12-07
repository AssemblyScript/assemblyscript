(module
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (global $game-of-life/w (mut i32) (i32.const 0))
 (global $game-of-life/h (mut i32) (i32.const 0))
 (global $game-of-life/s (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 4) "\08")
 (export "init" (func $game-of-life/init))
 (export "step" (func $game-of-life/step))
 (export "memory" (memory $0))
 (func $game-of-life/init (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (set_global $game-of-life/w
   (get_local $0)
  )
  (set_global $game-of-life/h
   (get_local $1)
  )
  (set_global $game-of-life/s
   (i32.mul
    (get_global $game-of-life/w)
    (get_global $game-of-life/h)
   )
  )
 )
 (func $game-of-life/step (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $6
   (i32.sub
    (get_global $game-of-life/h)
    (i32.const 1)
   )
  )
  (set_local $7
   (i32.sub
    (get_global $game-of-life/w)
    (i32.const 1)
   )
  )
  (set_local $0
   (i32.const 0)
  )
  (loop $continue|1.1
   (if
    (i32.lt_s
     (get_local $0)
     (get_global $game-of-life/h)
    )
    (block
     (set_local $4
      (select
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
       (get_local $6)
       (get_local $0)
      )
     )
     (set_local $5
      (select
       (i32.const 0)
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
       (i32.eq
        (get_local $0)
        (get_local $6)
       )
      )
     )
     (set_local $1
      (i32.const 0)
     )
     (loop $continue|1.2
      (if
       (i32.lt_s
        (get_local $1)
        (get_global $game-of-life/w)
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
                (i32.load8_u
                 (i32.add
                  (i32.mul
                   (get_local $4)
                   (get_global $game-of-life/w)
                  )
                  (tee_local $2
                   (select
                    (i32.sub
                     (get_local $1)
                     (i32.const 1)
                    )
                    (get_local $7)
                    (get_local $1)
                   )
                  )
                 )
                )
                (i32.load8_u
                 (i32.add
                  (i32.mul
                   (get_local $4)
                   (get_global $game-of-life/w)
                  )
                  (get_local $1)
                 )
                )
               )
               (i32.load8_u
                (i32.add
                 (i32.mul
                  (get_local $4)
                  (get_global $game-of-life/w)
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
                    (get_local $7)
                   )
                  )
                 )
                )
               )
              )
              (i32.load8_u
               (i32.add
                (i32.mul
                 (get_local $0)
                 (get_global $game-of-life/w)
                )
                (get_local $2)
               )
              )
             )
             (i32.load8_u
              (i32.add
               (i32.mul
                (get_local $0)
                (get_global $game-of-life/w)
               )
               (get_local $3)
              )
             )
            )
            (i32.load8_u
             (i32.add
              (i32.mul
               (get_local $5)
               (get_global $game-of-life/w)
              )
              (get_local $2)
             )
            )
           )
           (i32.load8_u
            (i32.add
             (i32.mul
              (get_local $5)
              (get_global $game-of-life/w)
             )
             (get_local $1)
            )
           )
          )
          (i32.load8_u
           (i32.add
            (i32.mul
             (get_local $5)
             (get_global $game-of-life/w)
            )
            (get_local $3)
           )
          )
         )
        )
        (if
         (i32.load8_u
          (i32.add
           (i32.mul
            (get_local $0)
            (get_global $game-of-life/w)
           )
           (get_local $1)
          )
         )
         (if
          (if (result i32)
           (tee_local $3
            (i32.lt_s
             (get_local $2)
             (i32.const 2)
            )
           )
           (get_local $3)
           (i32.gt_s
            (get_local $2)
            (i32.const 3)
           )
          )
          (i32.store8
           (i32.add
            (i32.add
             (get_global $game-of-life/s)
             (i32.mul
              (get_local $0)
              (get_global $game-of-life/w)
             )
            )
            (get_local $1)
           )
           (i32.const 0)
          )
         )
         (if
          (i32.eq
           (get_local $2)
           (i32.const 3)
          )
          (i32.store8
           (i32.add
            (i32.add
             (get_global $game-of-life/s)
             (i32.mul
              (get_local $0)
              (get_global $game-of-life/w)
             )
            )
            (get_local $1)
           )
           (i32.const 1)
          )
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1.2)
       )
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|1.1)
    )
   )
  )
 )
)
