(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $FFFF (func (param f64 f64 f64) (result f64)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "computeLine" (func $../../examples/mandelbrot/assembly/index/computeLine))
 (func $~lib/math/NativeMath.log (; 0 ;) (; has Stack IR ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (if
   (i32.eqz
    (tee_local $2
     (i32.lt_u
      (tee_local $1
       (i32.wrap/i64
        (i64.shr_u
         (tee_local $4
          (i64.reinterpret/f64
           (get_local $0)
          )
         )
         (i64.const 32)
        )
       )
      )
      (i32.const 1048576)
     )
    )
   )
   (set_local $2
    (i32.shr_u
     (get_local $1)
     (i32.const 31)
    )
   )
  )
  (if
   (get_local $2)
   (block
    (if
     (i64.eq
      (i64.shl
       (get_local $4)
       (i64.const 1)
      )
      (i64.const 0)
     )
     (return
      (f64.div
       (f64.const -1)
       (f64.mul
        (get_local $0)
        (get_local $0)
       )
      )
     )
    )
    (if
     (i32.shr_u
      (get_local $1)
      (i32.const 31)
     )
     (return
      (f64.div
       (f64.sub
        (get_local $0)
        (get_local $0)
       )
       (f64.const 0)
      )
     )
    )
    (set_local $3
     (i32.const -54)
    )
    (set_local $1
     (i32.wrap/i64
      (i64.shr_u
       (tee_local $4
        (i64.reinterpret/f64
         (f64.mul
          (get_local $0)
          (f64.const 18014398509481984)
         )
        )
       )
       (i64.const 32)
      )
     )
    )
   )
   (if
    (i32.ge_u
     (get_local $1)
     (i32.const 2146435072)
    )
    (return
     (get_local $0)
    )
    (block
     (if
      (tee_local $2
       (i32.eq
        (get_local $1)
        (i32.const 1072693248)
       )
      )
      (set_local $2
       (i64.eq
        (i64.shl
         (get_local $4)
         (i64.const 32)
        )
        (i64.const 0)
       )
      )
     )
     (if
      (get_local $2)
      (return
       (f64.const 0)
      )
     )
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $3)
    (i32.sub
     (i32.shr_s
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 614242)
       )
      )
      (i32.const 20)
     )
     (i32.const 1023)
    )
   )
  )
  (set_local $0
   (f64.mul
    (tee_local $7
     (f64.mul
      (tee_local $6
       (f64.div
        (tee_local $5
         (f64.sub
          (f64.reinterpret/i64
           (i64.or
            (i64.shl
             (i64.extend_u/i32
              (i32.add
               (i32.and
                (get_local $1)
                (i32.const 1048575)
               )
               (i32.const 1072079006)
              )
             )
             (i64.const 32)
            )
            (i64.and
             (get_local $4)
             (i64.const 4294967295)
            )
           )
          )
          (f64.const 1)
         )
        )
        (f64.add
         (f64.const 2)
         (get_local $5)
        )
       )
      )
      (get_local $6)
     )
    )
    (get_local $7)
   )
  )
  (f64.add
   (f64.add
    (f64.sub
     (f64.add
      (f64.mul
       (get_local $6)
       (f64.add
        (tee_local $6
         (f64.mul
          (f64.mul
           (f64.const 0.5)
           (get_local $5)
          )
          (get_local $5)
         )
        )
        (f64.add
         (f64.mul
          (get_local $7)
          (f64.add
           (f64.const 0.6666666666666735)
           (f64.mul
            (get_local $0)
            (f64.add
             (f64.const 0.2857142874366239)
             (f64.mul
              (get_local $0)
              (f64.add
               (f64.const 0.1818357216161805)
               (f64.mul
                (get_local $0)
                (f64.const 0.14798198605116586)
               )
              )
             )
            )
           )
          )
         )
         (f64.mul
          (get_local $0)
          (f64.add
           (f64.const 0.3999999999940942)
           (f64.mul
            (get_local $0)
            (f64.add
             (f64.const 0.22222198432149784)
             (f64.mul
              (get_local $0)
              (f64.const 0.15313837699209373)
             )
            )
           )
          )
         )
        )
       )
      )
      (f64.mul
       (tee_local $0
        (f64.convert_s/i32
         (get_local $3)
        )
       )
       (f64.const 1.9082149292705877e-10)
      )
     )
     (get_local $6)
    )
    (get_local $5)
   )
   (f64.mul
    (get_local $0)
    (f64.const 0.6931471803691238)
   )
  )
 )
 (func $~lib/builtins/isFinite<f64> (; 1 ;) (; has Stack IR ;) (type $Fi) (param $0 f64) (result i32)
  (f64.eq
   (f64.sub
    (get_local $0)
    (get_local $0)
   )
   (f64.const 0)
  )
 )
 (func $../../examples/mandelbrot/assembly/index/clamp<f64> (; 2 ;) (; has Stack IR ;) (type $FFFF) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  (f64.min
   (f64.max
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $../../examples/mandelbrot/assembly/index/computeLine (; 3 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (set_local $11
   (f64.div
    (tee_local $6
     (f64.convert_u/i32
      (get_local $1)
     )
    )
    (f64.const 1.6)
   )
  )
  (set_local $9
   (f64.mul
    (f64.sub
     (f64.convert_u/i32
      (get_local $0)
     )
     (tee_local $8
      (f64.div
       (tee_local $4
        (f64.convert_u/i32
         (get_local $2)
        )
       )
       (f64.const 2)
      )
     )
    )
    (tee_local $12
     (f64.div
      (f64.const 10)
      (f64.min
       (f64.mul
        (f64.const 3)
        (get_local $6)
       )
       (f64.mul
        (f64.const 4)
        (get_local $4)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $7)
      (get_local $1)
     )
    )
    (set_local $10
     (f64.mul
      (f64.sub
       (f64.convert_u/i32
        (get_local $7)
       )
       (get_local $11)
      )
      (get_local $12)
     )
    )
    (set_local $4
     (f64.const 0)
    )
    (set_local $5
     (f64.const 0)
    )
    (set_local $2
     (i32.const 0)
    )
    (block $break|1
     (loop $continue|1
      (if
       (f64.le
        (f64.add
         (tee_local $6
          (f64.mul
           (get_local $4)
           (get_local $4)
          )
         )
         (tee_local $8
          (f64.mul
           (get_local $5)
           (get_local $5)
          )
         )
        )
        (f64.const 4)
       )
       (block
        (set_local $5
         (f64.add
          (f64.mul
           (f64.mul
            (f64.const 2)
            (get_local $4)
           )
           (get_local $5)
          )
          (get_local $9)
         )
        )
        (set_local $4
         (f64.add
          (f64.sub
           (get_local $6)
           (get_local $8)
          )
          (get_local $10)
         )
        )
        (br_if $break|1
         (i32.ge_u
          (get_local $2)
          (get_local $3)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (block $break|2
     (set_local $6
      (f64.min
       (f64.const 8)
       (f64.convert_u/i32
        (get_local $3)
       )
      )
     )
     (loop $repeat|2
      (br_if $break|2
       (i32.eqz
        (f64.lt
         (f64.convert_u/i32
          (get_local $2)
         )
         (get_local $6)
        )
       )
      )
      (set_local $8
       (f64.add
        (f64.sub
         (f64.mul
          (get_local $4)
          (get_local $4)
         )
         (f64.mul
          (get_local $5)
          (get_local $5)
         )
        )
        (get_local $10)
       )
      )
      (set_local $5
       (f64.add
        (f64.mul
         (f64.mul
          (f64.const 2)
          (get_local $4)
         )
         (get_local $5)
        )
        (get_local $9)
       )
      )
      (set_local $4
       (get_local $8)
      )
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|2)
     )
    )
    (i32.store16
     (i32.shl
      (i32.add
       (i32.mul
        (get_local $0)
        (get_local $1)
       )
       (get_local $7)
      )
      (i32.const 1)
     )
     (tee_local $2
      (if (result i32)
       (call $~lib/builtins/isFinite<f64>
        (tee_local $6
         (f64.div
          (call $~lib/math/NativeMath.log
           (call $~lib/math/NativeMath.log
            (f64.sqrt
             (f64.add
              (f64.mul
               (get_local $4)
               (get_local $4)
              )
              (f64.mul
               (get_local $5)
               (get_local $5)
              )
             )
            )
           )
          )
          (f64.const 0.6931471805599453)
         )
        )
       )
       (i32.trunc_u/f64
        (f64.mul
         (f64.const 2047)
         (call $../../examples/mandelbrot/assembly/index/clamp<f64>
          (f64.div
           (f64.sub
            (f64.convert_u/i32
             (i32.add
              (get_local $2)
              (i32.const 1)
             )
            )
            (get_local $6)
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
       (i32.const 2047)
      )
     )
    )
    (set_local $7
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
)
