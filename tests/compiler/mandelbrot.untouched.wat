(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $FFFF (func (param f64 f64 f64) (result f64)))
 (global $../../examples/mandelbrot/assembly/index/NUM_COLORS i32 (i32.const 2048))
 (global $~lib/math/NativeMath.LN2 f64 (f64.const 0.6931471805599453))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "computeLine" (func $../../examples/mandelbrot/assembly/index/computeLine))
 (func $~lib/math/NativeMath.log (; 0 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  (set_local $1
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $2
   (i32.wrap/i64
    (i64.shr_u
     (get_local $1)
     (i64.const 32)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.lt_u
      (get_local $2)
      (i32.const 1048576)
     )
    )
    (get_local $4)
    (i32.shr_u
     (get_local $2)
     (i32.const 31)
    )
   )
   (block
    (if
     (i64.eq
      (i64.shl
       (get_local $1)
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
      (get_local $2)
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
     (i32.sub
      (get_local $3)
      (i32.const 54)
     )
    )
    (set_local $0
     (f64.mul
      (get_local $0)
      (f64.const 18014398509481984)
     )
    )
    (set_local $1
     (i64.reinterpret/f64
      (get_local $0)
     )
    )
    (set_local $2
     (i32.wrap/i64
      (i64.shr_u
       (get_local $1)
       (i64.const 32)
      )
     )
    )
   )
   (if
    (i32.ge_u
     (get_local $2)
     (i32.const 2146435072)
    )
    (return
     (get_local $0)
    )
    (if
     (if (result i32)
      (tee_local $4
       (i32.eq
        (get_local $2)
        (i32.const 1072693248)
       )
      )
      (i64.eq
       (i64.shl
        (get_local $1)
        (i64.const 32)
       )
       (i64.const 0)
      )
      (get_local $4)
     )
     (return
      (f64.const 0)
     )
    )
   )
  )
  (set_local $2
   (i32.add
    (get_local $2)
    (i32.sub
     (i32.const 1072693248)
     (i32.const 1072079006)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $3)
    (i32.sub
     (i32.shr_s
      (get_local $2)
      (i32.const 20)
     )
     (i32.const 1023)
    )
   )
  )
  (set_local $2
   (i32.add
    (i32.and
     (get_local $2)
     (i32.const 1048575)
    )
    (i32.const 1072079006)
   )
  )
  (set_local $1
   (i64.or
    (i64.shl
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.const 32)
    )
    (i64.and
     (get_local $1)
     (i64.const 4294967295)
    )
   )
  )
  (set_local $0
   (f64.reinterpret/i64
    (get_local $1)
   )
  )
  (set_local $5
   (f64.sub
    (get_local $0)
    (f64.const 1)
   )
  )
  (set_local $6
   (f64.mul
    (f64.mul
     (f64.const 0.5)
     (get_local $5)
    )
    (get_local $5)
   )
  )
  (set_local $7
   (f64.div
    (get_local $5)
    (f64.add
     (f64.const 2)
     (get_local $5)
    )
   )
  )
  (set_local $8
   (f64.mul
    (get_local $7)
    (get_local $7)
   )
  )
  (set_local $9
   (f64.mul
    (get_local $8)
    (get_local $8)
   )
  )
  (set_local $10
   (f64.mul
    (get_local $9)
    (f64.add
     (f64.const 0.3999999999940942)
     (f64.mul
      (get_local $9)
      (f64.add
       (f64.const 0.22222198432149784)
       (f64.mul
        (get_local $9)
        (f64.const 0.15313837699209373)
       )
      )
     )
    )
   )
  )
  (set_local $11
   (f64.mul
    (get_local $8)
    (f64.add
     (f64.const 0.6666666666666735)
     (f64.mul
      (get_local $9)
      (f64.add
       (f64.const 0.2857142874366239)
       (f64.mul
        (get_local $9)
        (f64.add
         (f64.const 0.1818357216161805)
         (f64.mul
          (get_local $9)
          (f64.const 0.14798198605116586)
         )
        )
       )
      )
     )
    )
   )
  )
  (set_local $12
   (f64.add
    (get_local $11)
    (get_local $10)
   )
  )
  (set_local $13
   (get_local $3)
  )
  (f64.add
   (f64.add
    (f64.sub
     (f64.add
      (f64.mul
       (get_local $7)
       (f64.add
        (get_local $6)
        (get_local $12)
       )
      )
      (f64.mul
       (f64.convert_s/i32
        (get_local $13)
       )
       (f64.const 1.9082149292705877e-10)
      )
     )
     (get_local $6)
    )
    (get_local $5)
   )
   (f64.mul
    (f64.convert_s/i32
     (get_local $13)
    )
    (f64.const 0.6931471803691238)
   )
  )
 )
 (func $~lib/builtins/isFinite<f64> (; 1 ;) (type $Fi) (param $0 f64) (result i32)
  (f64.eq
   (f64.sub
    (get_local $0)
    (get_local $0)
   )
   (f64.const 0)
  )
 )
 (func $../../examples/mandelbrot/assembly/index/clamp<f64> (; 2 ;) (type $FFFF) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  (f64.min
   (f64.max
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
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
  (local $16 f64)
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
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $8)
       (get_local $1)
      )
     )
    )
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
     (set_local $10
      (f64.const 0)
     )
     (set_local $11
      (f64.const 0)
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
      (set_local $15
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
           (get_local $14)
          )
          (get_local $15)
         )
        )
       )
       (block
        (set_local $16
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
         (get_local $16)
        )
       )
       (set_local $14
        (i32.add
         (get_local $14)
         (i32.const 1)
        )
       )
       (br $repeat|2)
      )
     )
     (set_local $15
      (f64.div
       (call $~lib/math/NativeMath.log
        (call $~lib/math/NativeMath.log
         (block $~lib/math/NativeMath.sqrt|inlined.0 (result f64)
          (set_local $15
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
          (f64.sqrt
           (get_local $15)
          )
         )
        )
       )
       (get_global $~lib/math/NativeMath.LN2)
      )
     )
     (set_local $17
      (if (result i32)
       (call $~lib/builtins/isFinite<f64>
        (get_local $15)
       )
       (i32.trunc_u/f64
        (f64.mul
         (f64.convert_s/i32
          (i32.sub
           (get_global $../../examples/mandelbrot/assembly/index/NUM_COLORS)
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
       (i32.sub
        (get_global $../../examples/mandelbrot/assembly/index/NUM_COLORS)
        (i32.const 1)
       )
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
      (get_local $17)
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
)
