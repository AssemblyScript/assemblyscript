(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $FFFF (func (param f64 f64 f64) (result f64)))
 (import "JSMath" "log" (func $~lib/math/JSMath.log (param f64) (result f64)))
 (import "JSMath" "LN2" (global $~lib/math/JSMath.LN2 f64))
 (global $../../examples/mandelbrot/assembly/index/NUM_COLORS i32 (i32.const 2048))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "computeLine" (func $../../examples/mandelbrot/assembly/index/computeLine))
 (export "memory" (memory $0))
 (func $isFinite<f64> (; 1 ;) (type $Fi) (param $0 f64) (result i32)
  (return
   (f64.eq
    (f64.sub
     (get_local $0)
     (get_local $0)
    )
    (f64.const 0)
   )
  )
 )
 (func $../../examples/mandelbrot/assembly/index/clamp<f64> (; 2 ;) (type $FFFF) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  (return
   (f64.min
    (f64.max
     (get_local $0)
     (get_local $1)
    )
    (get_local $2)
   )
  )
 )
 (func $../../examples/mandelbrot/assembly/index/computeLine (; 3 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  (local $15 f64)
  (local $16 i32)
  (local $17 i32)
  (set_local $4
   (f64.div
    (f64.convert_u/i32
     (get_local $1)
    )
    (f64.const 1.6)
   )
  )
  (set_local $5
   (f64.div
    (f64.convert_u/i32
     (get_local $2)
    )
    (f64.const 2)
   )
  )
  (set_local $6
   (f64.div
    (f64.const 10)
    (f64.min
     (f64.mul
      (f64.const 3)
      (f64.convert_u/i32
       (get_local $1)
      )
     )
     (f64.mul
      (f64.const 4)
      (f64.convert_u/i32
       (get_local $2)
      )
     )
    )
   )
  )
  (set_local $7
   (f64.mul
    (f64.sub
     (f64.convert_u/i32
      (get_local $0)
     )
     (get_local $5)
    )
    (get_local $6)
   )
  )
  (block $break|0
   (set_local $8
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $8)
      (get_local $1)
     )
     (block
      (block
       (set_local $9
        (f64.mul
         (f64.sub
          (f64.convert_u/i32
           (get_local $8)
          )
          (get_local $4)
         )
         (get_local $6)
        )
       )
       (block
        (set_local $10
         (f64.const 0)
        )
        (set_local $11
         (f64.const 0)
        )
       )
       (set_local $14
        (i32.const 0)
       )
       (block $break|1
        (loop $continue|1
         (if
          (f64.le
           (f64.add
            (tee_local $12
             (f64.mul
              (get_local $10)
              (get_local $10)
             )
            )
            (tee_local $13
             (f64.mul
              (get_local $11)
              (get_local $11)
             )
            )
           )
           (f64.const 4)
          )
          (block
           (block
            (set_local $15
             (f64.add
              (f64.sub
               (get_local $12)
               (get_local $13)
              )
              (get_local $9)
             )
            )
            (set_local $11
             (f64.add
              (f64.mul
               (f64.mul
                (f64.const 2)
                (get_local $10)
               )
               (get_local $11)
              )
              (get_local $7)
             )
            )
            (set_local $10
             (get_local $15)
            )
            (if
             (i32.ge_u
              (get_local $14)
              (get_local $3)
             )
             (br $break|1)
            )
            (set_local $14
             (i32.add
              (get_local $14)
              (i32.const 1)
             )
            )
           )
           (br $continue|1)
          )
         )
        )
       )
       (block $break|2
        (set_local $16
         (i32.const 0)
        )
        (loop $continue|2
         (if
          (i32.and
           (if (result i32)
            (tee_local $17
             (i32.lt_s
              (get_local $16)
              (i32.const 5)
             )
            )
            (i32.lt_u
             (get_local $14)
             (get_local $3)
            )
            (get_local $17)
           )
           (i32.const 1)
          )
          (block
           (block
            (set_local $15
             (f64.add
              (f64.sub
               (f64.mul
                (get_local $10)
                (get_local $10)
               )
               (f64.mul
                (get_local $11)
                (get_local $11)
               )
              )
              (get_local $9)
             )
            )
            (set_local $11
             (f64.add
              (f64.mul
               (f64.mul
                (f64.const 2)
                (get_local $10)
               )
               (get_local $11)
              )
              (get_local $7)
             )
            )
            (set_local $10
             (get_local $15)
            )
           )
           (block
            (set_local $16
             (i32.add
              (get_local $16)
              (i32.const 1)
             )
            )
            (set_local $14
             (i32.add
              (get_local $14)
              (i32.const 1)
             )
            )
           )
           (br $continue|2)
          )
         )
        )
       )
       (set_local $15
        (f64.div
         (call $~lib/math/JSMath.log
          (call $~lib/math/JSMath.log
           (f64.sqrt
            (f64.add
             (f64.mul
              (get_local $10)
              (get_local $10)
             )
             (f64.mul
              (get_local $11)
              (get_local $11)
             )
            )
           )
          )
         )
         (get_global $~lib/math/JSMath.LN2)
        )
       )
       (i32.store16
        (i32.shl
         (i32.add
          (i32.mul
           (get_local $0)
           (get_local $1)
          )
          (get_local $8)
         )
         (i32.const 1)
        )
        (if (result i32)
         (call $isFinite<f64>
          (get_local $15)
         )
         (i32.trunc_u/f64
          (f64.mul
           (f64.convert_s/i32
            (i32.sub
             (i32.const 2048)
             (i32.const 1)
            )
           )
           (call $../../examples/mandelbrot/assembly/index/clamp<f64>
            (f64.div
             (f64.sub
              (f64.convert_u/i32
               (i32.add
                (get_local $14)
                (i32.const 1)
               )
              )
              (get_local $15)
             )
             (f64.convert_u/i32
              (get_local $3)
             )
            )
            (f64.const 0)
            (f64.const 1)
           )
          )
         )
         (i32.div_s
          (i32.mul
           (i32.sub
            (i32.const 2048)
            (i32.const 1)
           )
           (get_local $14)
          )
          (get_local $3)
         )
        )
       )
      )
      (set_local $8
       (i32.add
        (get_local $8)
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
