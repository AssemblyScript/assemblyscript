(module
 (type $iiiv (func (param i32 i32 i32)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "update" (func $../../examples/mandelbrot/assembly/index/update))
 (export "memory" (memory $0))
 (func $../../examples/mandelbrot/assembly/index/update (; 0 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (set_local $3
   (f64.div
    (f64.convert_u/i32
     (get_local $0)
    )
    (f64.const 1.6)
   )
  )
  (set_local $4
   (f64.div
    (f64.convert_u/i32
     (get_local $1)
    )
    (f64.const 2)
   )
  )
  (set_local $5
   (f64.div
    (f64.const 4)
    (f64.convert_u/i32
     (get_local $0)
    )
   )
  )
  (block $break|0
   (set_local $6
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $6)
      (get_local $1)
     )
     (block
      (block
       (set_local $7
        (f64.mul
         (f64.sub
          (f64.convert_u/i32
           (get_local $6)
          )
          (get_local $4)
         )
         (get_local $5)
        )
       )
       (block $break|1
        (set_local $8
         (i32.const 0)
        )
        (loop $continue|1
         (if
          (i32.lt_u
           (get_local $8)
           (get_local $0)
          )
          (block
           (block
            (set_local $9
             (f64.mul
              (f64.sub
               (f64.convert_u/i32
                (get_local $8)
               )
               (get_local $3)
              )
              (get_local $5)
             )
            )
            (set_local $10
             (i32.const 0)
            )
            (block $break|2
             (block
              (set_local $11
               (f64.const 0)
              )
              (set_local $12
               (f64.const 0)
              )
             )
             (loop $continue|2
              (if
               (f64.le
                (f64.add
                 (f64.mul
                  (get_local $11)
                  (get_local $11)
                 )
                 (f64.mul
                  (get_local $12)
                  (get_local $12)
                 )
                )
                (f64.const 4)
               )
               (block
                (block
                 (set_local $13
                  (f64.add
                   (f64.sub
                    (f64.mul
                     (get_local $11)
                     (get_local $11)
                    )
                    (f64.mul
                     (get_local $12)
                     (get_local $12)
                    )
                   )
                   (get_local $9)
                  )
                 )
                 (set_local $12
                  (f64.add
                   (f64.mul
                    (f64.mul
                     (f64.const 2)
                     (get_local $11)
                    )
                    (get_local $12)
                   )
                   (get_local $7)
                  )
                 )
                 (set_local $11
                  (get_local $13)
                 )
                 (if
                  (i32.ge_u
                   (tee_local $10
                    (i32.add
                     (get_local $10)
                     (i32.const 1)
                    )
                   )
                   (get_local $2)
                  )
                  (br $break|2)
                 )
                )
                (set_local $10
                 (i32.add
                  (get_local $10)
                  (i32.const 1)
                 )
                )
                (br $continue|2)
               )
              )
             )
            )
            (i32.store8
             (i32.add
              (i32.mul
               (get_local $6)
               (get_local $0)
              )
              (get_local $8)
             )
             (i32.div_u
              (i32.mul
               (get_local $10)
               (i32.const 255)
              )
              (get_local $2)
             )
            )
           )
           (set_local $8
            (i32.add
             (get_local $8)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      (set_local $6
       (i32.add
        (get_local $6)
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
