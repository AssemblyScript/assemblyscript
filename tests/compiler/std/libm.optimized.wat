(module
 (type $FF (func (param f64) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $Ff (func (param f64) (result f32)))
 (global $std/libm/E f64 (f64.const 2.718281828459045))
 (global $std/libm/LN10 f64 (f64.const 2.302585092994046))
 (global $std/libm/LN2 f64 (f64.const 0.6931471805599453))
 (global $std/libm/LOG10E f64 (f64.const 0.4342944819032518))
 (global $std/libm/LOG2E f64 (f64.const 1.4426950408889634))
 (global $std/libm/PI f64 (f64.const 3.141592653589793))
 (global $std/libm/SQRT1_2 f64 (f64.const 0.7071067811865476))
 (global $std/libm/SQRT2 f64 (f64.const 1.4142135623730951))
 (memory $0 0)
 (export "E" (global $std/libm/E))
 (export "LN10" (global $std/libm/LN10))
 (export "LN2" (global $std/libm/LN2))
 (export "LOG10E" (global $std/libm/LOG10E))
 (export "LOG2E" (global $std/libm/LOG2E))
 (export "PI" (global $std/libm/PI))
 (export "SQRT1_2" (global $std/libm/SQRT1_2))
 (export "SQRT2" (global $std/libm/SQRT2))
 (export "abs" (func $std/libm/abs))
 (export "acos" (func $std/libm/acos))
 (export "acosh" (func $std/libm/acosh))
 (export "asin" (func $std/libm/asin))
 (export "asinh" (func $std/libm/asinh))
 (export "atan" (func $std/libm/atan))
 (export "atanh" (func $std/libm/atanh))
 (export "atan2" (func $std/libm/atan2))
 (export "cbrt" (func $std/libm/cbrt))
 (export "ceil" (func $std/libm/ceil))
 (export "clz32" (func $std/libm/clz32))
 (export "cos" (func $std/libm/cos))
 (export "cosh" (func $std/libm/cosh))
 (export "exp" (func $std/libm/exp))
 (export "expm1" (func $std/libm/expm1))
 (export "floor" (func $std/libm/floor))
 (export "fround" (func $std/libm/fround))
 (export "hypot" (func $std/libm/hypot))
 (export "imul" (func $std/libm/imul))
 (export "log" (func $std/libm/log))
 (export "log10" (func $std/libm/log10))
 (export "log1p" (func $std/libm/log1p))
 (export "log2" (func $std/libm/log2))
 (export "max" (func $std/libm/max))
 (export "min" (func $std/libm/min))
 (export "pow" (func $std/libm/pow))
 (export "round" (func $std/libm/round))
 (export "sign" (func $std/libm/sign))
 (export "sin" (func $std/libm/cos))
 (export "sinh" (func $std/libm/sinh))
 (export "sqrt" (func $std/libm/sqrt))
 (export "tan" (func $std/libm/cos))
 (export "tanh" (func $std/libm/tanh))
 (export "trunc" (func $std/libm/trunc))
 (export "memory" (memory $0))
 (func $std/libm/abs (; 0 ;) (type $FF) (param $0 f64) (result f64)
  (f64.abs
   (get_local $0)
  )
 )
 (func $~lib/math/R (; 1 ;) (type $FF) (param $0 f64) (result f64)
  (f64.div
   (f64.mul
    (get_local $0)
    (f64.add
     (f64.const 0.16666666666666666)
     (f64.mul
      (get_local $0)
      (f64.add
       (f64.const -0.3255658186224009)
       (f64.mul
        (get_local $0)
        (f64.add
         (f64.const 0.20121253213486293)
         (f64.mul
          (get_local $0)
          (f64.add
           (f64.const -0.04005553450067941)
           (f64.mul
            (get_local $0)
            (f64.add
             (f64.const 7.915349942898145e-04)
             (f64.mul
              (get_local $0)
              (f64.const 3.479331075960212e-05)
             )
            )
           )
          )
         )
        )
       )
      )
     )
    )
   )
   (f64.add
    (f64.const 1)
    (f64.mul
     (get_local $0)
     (f64.add
      (f64.const -2.403394911734414)
      (f64.mul
       (get_local $0)
       (f64.add
        (f64.const 2.0209457602335057)
        (f64.mul
         (get_local $0)
         (f64.add
          (f64.const -0.6882839716054533)
          (f64.mul
           (get_local $0)
           (f64.const 0.07703815055590194)
          )
         )
        )
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/math/NativeMath.acos (; 2 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (if
   (i32.ge_u
    (tee_local $2
     (i32.and
      (tee_local $4
       (i32.wrap/i64
        (i64.shr_u
         (i64.reinterpret/f64
          (get_local $0)
         )
         (i64.const 32)
        )
       )
      )
      (i32.const 2147483647)
     )
    )
    (i32.const 1072693248)
   )
   (block
    (if
     (i32.eqz
      (i32.or
       (i32.sub
        (get_local $2)
        (i32.const 1072693248)
       )
       (i32.wrap/i64
        (i64.reinterpret/f64
         (get_local $0)
        )
       )
      )
     )
     (block
      (if
       (i32.shr_u
        (get_local $4)
        (i32.const 31)
       )
       (return
        (f64.const 3.141592653589793)
       )
      )
      (return
       (f64.const 0)
      )
     )
    )
    (return
     (f64.div
      (f64.const 0)
      (f64.sub
       (get_local $0)
       (get_local $0)
      )
     )
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $2)
    (i32.const 1071644672)
   )
   (block
    (if
     (i32.le_u
      (get_local $2)
      (i32.const 1012924416)
     )
     (return
      (f64.const 1.5707963267948966)
     )
    )
    (return
     (f64.sub
      (f64.const 1.5707963267948966)
      (f64.sub
       (get_local $0)
       (f64.sub
        (f64.const 6.123233995736766e-17)
        (f64.mul
         (get_local $0)
         (call $~lib/math/R
          (f64.mul
           (get_local $0)
           (get_local $0)
          )
         )
        )
       )
      )
     )
    )
   )
  )
  (if
   (i32.shr_u
    (get_local $4)
    (i32.const 31)
   )
   (return
    (f64.mul
     (f64.const 2)
     (f64.sub
      (f64.const 1.5707963267948966)
      (f64.add
       (tee_local $0
        (f64.sqrt
         (tee_local $1
          (f64.mul
           (f64.add
            (f64.const 1)
            (get_local $0)
           )
           (f64.const 0.5)
          )
         )
        )
       )
       (f64.sub
        (f64.mul
         (call $~lib/math/R
          (get_local $1)
         )
         (get_local $0)
        )
        (f64.const 6.123233995736766e-17)
       )
      )
     )
    )
   )
  )
  (set_local $0
   (f64.sqrt
    (tee_local $1
     (f64.mul
      (f64.sub
       (f64.const 1)
       (get_local $0)
      )
      (f64.const 0.5)
     )
    )
   )
  )
  (set_local $5
   (f64.div
    (f64.sub
     (get_local $1)
     (f64.mul
      (tee_local $3
       (f64.reinterpret/i64
        (i64.and
         (i64.reinterpret/f64
          (get_local $0)
         )
         (i64.const -4294967296)
        )
       )
      )
      (get_local $3)
     )
    )
    (f64.add
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (f64.mul
   (f64.const 2)
   (f64.add
    (get_local $3)
    (f64.add
     (f64.mul
      (call $~lib/math/R
       (get_local $1)
      )
      (get_local $0)
     )
     (get_local $5)
    )
   )
  )
 )
 (func $std/libm/acos (; 3 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.acos
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.log1p (; 4 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 i64)
  (local $8 f64)
  (set_local $2
   (i32.const 1)
  )
  (if
   (i32.eqz
    (tee_local $5
     (i32.lt_u
      (tee_local $3
       (i32.wrap/i64
        (i64.shr_u
         (i64.reinterpret/f64
          (get_local $0)
         )
         (i64.const 32)
        )
       )
      )
      (i32.const 1071284858)
     )
    )
   )
   (set_local $5
    (i32.shr_u
     (get_local $3)
     (i32.const 31)
    )
   )
  )
  (if
   (get_local $5)
   (block
    (if
     (i32.ge_u
      (get_local $3)
      (i32.const -1074790400)
     )
     (block
      (if
       (f64.eq
        (get_local $0)
        (f64.const -1)
       )
       (return
        (f64.div
         (get_local $0)
         (f64.const 0)
        )
       )
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
    )
    (if
     (i32.lt_u
      (i32.shl
       (get_local $3)
       (i32.const 1)
      )
      (i32.const 2034237440)
     )
     (return
      (get_local $0)
     )
    )
    (if
     (i32.le_u
      (get_local $3)
      (i32.const -1076707644)
     )
     (block
      (set_local $2
       (i32.const 0)
      )
      (set_local $1
       (get_local $0)
      )
     )
    )
   )
   (if
    (i32.ge_u
     (get_local $3)
     (i32.const 2146435072)
    )
    (return
     (get_local $0)
    )
   )
  )
  (if
   (get_local $2)
   (block
    (set_local $4
     (if (result f64)
      (i32.lt_s
       (tee_local $2
        (i32.sub
         (i32.shr_u
          (tee_local $5
           (i32.add
            (i32.wrap/i64
             (i64.shr_u
              (tee_local $7
               (i64.reinterpret/f64
                (f64.add
                 (f64.const 1)
                 (get_local $0)
                )
               )
              )
              (i64.const 32)
             )
            )
            (i32.const 614242)
           )
          )
          (i32.const 20)
         )
         (i32.const 1023)
        )
       )
       (i32.const 54)
      )
      (block (result f64)
       (set_local $1
        (f64.reinterpret/i64
         (get_local $7)
        )
       )
       (f64.div
        (tee_local $4
         (if (result f64)
          (i32.ge_s
           (get_local $2)
           (i32.const 2)
          )
          (f64.sub
           (f64.const 1)
           (f64.sub
            (get_local $1)
            (get_local $0)
           )
          )
          (f64.sub
           (get_local $0)
           (f64.sub
            (get_local $1)
            (f64.const 1)
           )
          )
         )
        )
        (get_local $1)
       )
      )
      (f64.const 0)
     )
    )
    (set_local $1
     (f64.sub
      (f64.reinterpret/i64
       (i64.or
        (i64.shl
         (i64.extend_u/i32
          (i32.add
           (i32.and
            (get_local $5)
            (i32.const 1048575)
           )
           (i32.const 1072079006)
          )
         )
         (i64.const 32)
        )
        (i64.and
         (get_local $7)
         (i64.const 4294967295)
        )
       )
      )
      (f64.const 1)
     )
    )
   )
  )
  (set_local $0
   (f64.mul
    (tee_local $8
     (f64.mul
      (tee_local $6
       (f64.div
        (get_local $1)
        (f64.add
         (f64.const 2)
         (get_local $1)
        )
       )
      )
      (get_local $6)
     )
    )
    (get_local $8)
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
           (get_local $1)
          )
          (get_local $1)
         )
        )
        (f64.add
         (f64.mul
          (get_local $8)
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
      (f64.add
       (f64.mul
        (tee_local $0
         (f64.convert_s/i32
          (get_local $2)
         )
        )
        (f64.const 1.9082149292705877e-10)
       )
       (get_local $4)
      )
     )
     (get_local $6)
    )
    (get_local $1)
   )
   (f64.mul
    (get_local $0)
    (f64.const 0.6931471803691238)
   )
  )
 )
 (func $~lib/math/NativeMath.log (; 5 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $~lib/math/NativeMath.acosh (; 6 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (if
   (i64.lt_u
    (tee_local $1
     (i64.and
      (i64.shr_u
       (i64.reinterpret/f64
        (get_local $0)
       )
       (i64.const 52)
      )
      (i64.const 2047)
     )
    )
    (i64.const 1024)
   )
   (return
    (call $~lib/math/NativeMath.log1p
     (f64.add
      (tee_local $0
       (f64.sub
        (get_local $0)
        (f64.const 1)
       )
      )
      (f64.sqrt
       (f64.add
        (f64.mul
         (get_local $0)
         (get_local $0)
        )
        (f64.mul
         (f64.const 2)
         (get_local $0)
        )
       )
      )
     )
    )
   )
  )
  (if
   (i64.lt_u
    (get_local $1)
    (i64.const 1049)
   )
   (return
    (call $~lib/math/NativeMath.log
     (f64.sub
      (f64.mul
       (f64.const 2)
       (get_local $0)
      )
      (f64.div
       (f64.const 1)
       (f64.add
        (get_local $0)
        (f64.sqrt
         (f64.sub
          (f64.mul
           (get_local $0)
           (get_local $0)
          )
          (f64.const 1)
         )
        )
       )
      )
     )
    )
   )
  )
  (f64.add
   (call $~lib/math/NativeMath.log
    (get_local $0)
   )
   (f64.const 0.6931471805599453)
  )
 )
 (func $std/libm/acosh (; 7 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.acosh
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.asin (; 8 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (if
   (i32.ge_u
    (tee_local $2
     (i32.and
      (tee_local $3
       (i32.wrap/i64
        (i64.shr_u
         (i64.reinterpret/f64
          (get_local $0)
         )
         (i64.const 32)
        )
       )
      )
      (i32.const 2147483647)
     )
    )
    (i32.const 1072693248)
   )
   (block
    (if
     (i32.eqz
      (i32.or
       (i32.sub
        (get_local $2)
        (i32.const 1072693248)
       )
       (i32.wrap/i64
        (i64.reinterpret/f64
         (get_local $0)
        )
       )
      )
     )
     (return
      (f64.add
       (f64.mul
        (get_local $0)
        (f64.const 1.5707963267948966)
       )
       (f64.const 7.52316384526264e-37)
      )
     )
    )
    (return
     (f64.div
      (f64.const 0)
      (f64.sub
       (get_local $0)
       (get_local $0)
      )
     )
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $2)
    (i32.const 1071644672)
   )
   (block
    (if
     (tee_local $3
      (i32.lt_u
       (get_local $2)
       (i32.const 1045430272)
      )
     )
     (set_local $3
      (i32.ge_u
       (get_local $2)
       (i32.const 1048576)
      )
     )
    )
    (if
     (get_local $3)
     (return
      (get_local $0)
     )
    )
    (return
     (f64.add
      (get_local $0)
      (f64.mul
       (get_local $0)
       (call $~lib/math/R
        (f64.mul
         (get_local $0)
         (get_local $0)
        )
       )
      )
     )
    )
   )
  )
  (set_local $0
   (f64.sqrt
    (tee_local $1
     (f64.mul
      (f64.sub
       (f64.const 1)
       (f64.abs
        (get_local $0)
       )
      )
      (f64.const 0.5)
     )
    )
   )
  )
  (set_local $4
   (call $~lib/math/R
    (get_local $1)
   )
  )
  (set_local $0
   (if (result f64)
    (i32.ge_u
     (get_local $2)
     (i32.const 1072640819)
    )
    (f64.sub
     (f64.const 1.5707963267948966)
     (f64.sub
      (f64.mul
       (f64.const 2)
       (f64.add
        (get_local $0)
        (f64.mul
         (get_local $0)
         (get_local $4)
        )
       )
      )
      (f64.const 6.123233995736766e-17)
     )
    )
    (f64.sub
     (f64.const 0.7853981633974483)
     (f64.sub
      (f64.sub
       (f64.mul
        (f64.mul
         (f64.const 2)
         (get_local $0)
        )
        (get_local $4)
       )
       (f64.sub
        (f64.const 6.123233995736766e-17)
        (f64.mul
         (f64.const 2)
         (f64.div
          (f64.sub
           (get_local $1)
           (f64.mul
            (tee_local $1
             (f64.reinterpret/i64
              (i64.and
               (i64.reinterpret/f64
                (get_local $0)
               )
               (i64.const -4294967296)
              )
             )
            )
            (get_local $1)
           )
          )
          (f64.add
           (get_local $0)
           (get_local $1)
          )
         )
        )
       )
      )
      (f64.sub
       (f64.const 0.7853981633974483)
       (f64.mul
        (f64.const 2)
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (if
   (i32.shr_u
    (get_local $3)
    (i32.const 31)
   )
   (return
    (f64.neg
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $std/libm/asin (; 9 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.asin
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.asinh (; 10 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (set_local $1
   (i64.and
    (i64.shr_u
     (tee_local $2
      (i64.reinterpret/f64
       (get_local $0)
      )
     )
     (i64.const 52)
    )
    (i64.const 2047)
   )
  )
  (set_local $3
   (i64.shr_u
    (get_local $2)
    (i64.const 63)
   )
  )
  (set_local $0
   (f64.reinterpret/i64
    (i64.and
     (get_local $2)
     (i64.const 9223372036854775807)
    )
   )
  )
  (if
   (i64.ge_u
    (get_local $1)
    (i64.const 1049)
   )
   (set_local $0
    (f64.add
     (call $~lib/math/NativeMath.log
      (get_local $0)
     )
     (f64.const 0.6931471805599453)
    )
   )
   (if
    (i64.ge_u
     (get_local $1)
     (i64.const 1024)
    )
    (set_local $0
     (call $~lib/math/NativeMath.log
      (f64.add
       (f64.mul
        (f64.const 2)
        (get_local $0)
       )
       (f64.div
        (f64.const 1)
        (f64.add
         (f64.sqrt
          (f64.add
           (f64.mul
            (get_local $0)
            (get_local $0)
           )
           (f64.const 1)
          )
         )
         (get_local $0)
        )
       )
      )
     )
    )
    (if
     (i64.ge_u
      (get_local $1)
      (i64.const 997)
     )
     (set_local $0
      (call $~lib/math/NativeMath.log1p
       (f64.add
        (get_local $0)
        (f64.div
         (tee_local $0
          (f64.mul
           (get_local $0)
           (get_local $0)
          )
         )
         (f64.add
          (f64.sqrt
           (f64.add
            (get_local $0)
            (f64.const 1)
           )
          )
          (f64.const 1)
         )
        )
       )
      )
     )
    )
   )
  )
  (if
   (i64.ne
    (get_local $3)
    (i64.const 0)
   )
   (set_local $0
    (f64.neg
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $std/libm/asinh (; 11 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.asinh
   (get_local $0)
  )
 )
 (func $isNaN<f64> (; 12 ;) (type $Fi) (param $0 f64) (result i32)
  (f64.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.atan (; 13 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (set_local $4
   (i32.shr_u
    (tee_local $1
     (i32.wrap/i64
      (i64.shr_u
       (i64.reinterpret/f64
        (get_local $0)
       )
       (i64.const 32)
      )
     )
    )
    (i32.const 31)
   )
  )
  (if
   (i32.ge_u
    (tee_local $1
     (i32.and
      (get_local $1)
      (i32.const 2147483647)
     )
    )
    (i32.const 1141899264)
   )
   (block
    (if
     (call $isNaN<f64>
      (get_local $0)
     )
     (return
      (get_local $0)
     )
    )
    (return
     (tee_local $0
      (if (result f64)
       (get_local $4)
       (f64.const -1.5707963267948966)
       (f64.const 1.5707963267948966)
      )
     )
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $1)
    (i32.const 1071382528)
   )
   (block
    (if
     (i32.lt_u
      (get_local $1)
      (i32.const 1044381696)
     )
     (return
      (get_local $0)
     )
    )
    (set_local $1
     (i32.const -1)
    )
   )
   (block
    (set_local $0
     (f64.abs
      (get_local $0)
     )
    )
    (set_local $0
     (if (result f64)
      (i32.lt_u
       (get_local $1)
       (i32.const 1072889856)
      )
      (if (result f64)
       (i32.lt_u
        (get_local $1)
        (i32.const 1072037888)
       )
       (block (result f64)
        (set_local $1
         (i32.const 0)
        )
        (f64.div
         (f64.sub
          (f64.mul
           (f64.const 2)
           (get_local $0)
          )
          (f64.const 1)
         )
         (f64.add
          (f64.const 2)
          (get_local $0)
         )
        )
       )
       (block (result f64)
        (set_local $1
         (i32.const 1)
        )
        (f64.div
         (f64.sub
          (get_local $0)
          (f64.const 1)
         )
         (f64.add
          (get_local $0)
          (f64.const 1)
         )
        )
       )
      )
      (if (result f64)
       (i32.lt_u
        (get_local $1)
        (i32.const 1073971200)
       )
       (block (result f64)
        (set_local $1
         (i32.const 2)
        )
        (f64.div
         (f64.sub
          (get_local $0)
          (f64.const 1.5)
         )
         (f64.add
          (f64.const 1)
          (f64.mul
           (f64.const 1.5)
           (get_local $0)
          )
         )
        )
       )
       (block (result f64)
        (set_local $1
         (i32.const 3)
        )
        (f64.div
         (f64.const -1)
         (get_local $0)
        )
       )
      )
     )
    )
   )
  )
  (set_local $2
   (f64.mul
    (tee_local $3
     (f64.mul
      (get_local $0)
      (get_local $0)
     )
    )
    (get_local $3)
   )
  )
  (set_local $3
   (f64.mul
    (get_local $3)
    (f64.add
     (f64.const 0.3333333333333293)
     (f64.mul
      (get_local $2)
      (f64.add
       (f64.const 0.14285714272503466)
       (f64.mul
        (get_local $2)
        (f64.add
         (f64.const 0.09090887133436507)
         (f64.mul
          (get_local $2)
          (f64.add
           (f64.const 0.06661073137387531)
           (f64.mul
            (get_local $2)
            (f64.add
             (f64.const 0.049768779946159324)
             (f64.mul
              (get_local $2)
              (f64.const 0.016285820115365782)
             )
            )
           )
          )
         )
        )
       )
      )
     )
    )
   )
  )
  (set_local $2
   (f64.mul
    (get_local $2)
    (f64.add
     (f64.const -0.19999999999876483)
     (f64.mul
      (get_local $2)
      (f64.add
       (f64.const -0.11111110405462356)
       (f64.mul
        (get_local $2)
        (f64.add
         (f64.const -0.0769187620504483)
         (f64.mul
          (get_local $2)
          (f64.add
           (f64.const -0.058335701337905735)
           (f64.mul
            (get_local $2)
            (f64.const -0.036531572744216916)
           )
          )
         )
        )
       )
      )
     )
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (return
    (f64.sub
     (get_local $0)
     (f64.mul
      (get_local $0)
      (f64.add
       (get_local $3)
       (get_local $2)
      )
     )
    )
   )
  )
  (block $break|0
   (block $case4|0
    (block $case3|0
     (block $case2|0
      (block $case1|0
       (if
        (get_local $1)
        (block
         (block $tablify|0
          (br_table $case1|0 $case2|0 $case3|0 $tablify|0
           (i32.sub
            (get_local $1)
            (i32.const 1)
           )
          )
         )
         (br $case4|0)
        )
       )
       (set_local $3
        (f64.sub
         (f64.const 0.4636476090008061)
         (f64.sub
          (f64.sub
           (f64.mul
            (get_local $0)
            (f64.add
             (get_local $3)
             (get_local $2)
            )
           )
           (f64.const 2.2698777452961687e-17)
          )
          (get_local $0)
         )
        )
       )
       (br $break|0)
      )
      (set_local $3
       (f64.sub
        (f64.const 0.7853981633974483)
        (f64.sub
         (f64.sub
          (f64.mul
           (get_local $0)
           (f64.add
            (get_local $3)
            (get_local $2)
           )
          )
          (f64.const 3.061616997868383e-17)
         )
         (get_local $0)
        )
       )
      )
      (br $break|0)
     )
     (set_local $3
      (f64.sub
       (f64.const 0.982793723247329)
       (f64.sub
        (f64.sub
         (f64.mul
          (get_local $0)
          (f64.add
           (get_local $3)
           (get_local $2)
          )
         )
         (f64.const 1.3903311031230998e-17)
        )
        (get_local $0)
       )
      )
     )
     (br $break|0)
    )
    (set_local $3
     (f64.sub
      (f64.const 1.5707963267948966)
      (f64.sub
       (f64.sub
        (f64.mul
         (get_local $0)
         (f64.add
          (get_local $3)
          (get_local $2)
         )
        )
        (f64.const 6.123233995736766e-17)
       )
       (get_local $0)
      )
     )
    )
    (br $break|0)
   )
   (unreachable)
  )
  (if
   (get_local $4)
   (set_local $3
    (f64.neg
     (get_local $3)
    )
   )
  )
  (get_local $3)
 )
 (func $std/libm/atan (; 14 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.atan
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.atanh (; 15 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 f64)
  (set_local $2
   (i64.and
    (i64.shr_u
     (tee_local $1
      (i64.reinterpret/f64
       (get_local $0)
      )
     )
     (i64.const 52)
    )
    (i64.const 2047)
   )
  )
  (set_local $3
   (i64.shr_u
    (get_local $1)
    (i64.const 63)
   )
  )
  (set_local $0
   (f64.reinterpret/i64
    (i64.and
     (get_local $1)
     (i64.const 9223372036854775807)
    )
   )
  )
  (if
   (i64.lt_u
    (get_local $2)
    (i64.const 1022)
   )
   (if
    (i64.ge_u
     (get_local $2)
     (i64.const 991)
    )
    (set_local $0
     (f64.mul
      (f64.const 0.5)
      (call $~lib/math/NativeMath.log1p
       (f64.add
        (tee_local $4
         (f64.mul
          (f64.const 2)
          (get_local $0)
         )
        )
        (f64.div
         (f64.mul
          (get_local $4)
          (get_local $0)
         )
         (f64.sub
          (f64.const 1)
          (get_local $0)
         )
        )
       )
      )
     )
    )
   )
   (set_local $0
    (f64.mul
     (f64.const 0.5)
     (call $~lib/math/NativeMath.log1p
      (f64.mul
       (f64.const 2)
       (f64.div
        (get_local $0)
        (f64.sub
         (f64.const 1)
         (get_local $0)
        )
       )
      )
     )
    )
   )
  )
  (if
   (i64.ne
    (get_local $3)
    (i64.const 0)
   )
   (set_local $0
    (f64.neg
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $std/libm/atanh (; 16 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.atanh
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.atan2 (; 17 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (block $folding-inner0
   (if
    (i32.eqz
     (tee_local $2
      (call $isNaN<f64>
       (get_local $1)
      )
     )
    )
    (set_local $2
     (call $isNaN<f64>
      (get_local $0)
     )
    )
   )
   (if
    (get_local $2)
    (return
     (f64.add
      (get_local $1)
      (get_local $0)
     )
    )
   )
   (set_local $4
    (i32.wrap/i64
     (i64.shr_u
      (tee_local $6
       (i64.reinterpret/f64
        (get_local $1)
       )
      )
      (i64.const 32)
     )
    )
   )
   (set_local $2
    (i32.wrap/i64
     (get_local $6)
    )
   )
   (set_local $5
    (i32.wrap/i64
     (i64.shr_u
      (tee_local $6
       (i64.reinterpret/f64
        (get_local $0)
       )
      )
      (i64.const 32)
     )
    )
   )
   (set_local $7
    (i32.wrap/i64
     (get_local $6)
    )
   )
   (if
    (i32.eqz
     (i32.or
      (i32.sub
       (get_local $4)
       (i32.const 1072693248)
      )
      (get_local $2)
     )
    )
    (return
     (call $~lib/math/NativeMath.atan
      (get_local $0)
     )
    )
   )
   (set_local $3
    (i32.or
     (i32.shr_u
      (get_local $5)
      (i32.const 31)
     )
     (i32.and
      (i32.shr_u
       (get_local $4)
       (i32.const 30)
      )
      (i32.const 2)
     )
    )
   )
   (set_local $4
    (i32.and
     (get_local $4)
     (i32.const 2147483647)
    )
   )
   (if
    (i32.eqz
     (i32.or
      (tee_local $5
       (i32.and
        (get_local $5)
        (i32.const 2147483647)
       )
      )
      (get_local $7)
     )
    )
    (block $break|0
     (block $case3|0
      (block $case2|0
       (block $case1|0
        (br_if $case1|0
         (i32.eqz
          (get_local $3)
         )
        )
        (block $tablify|0
         (br_table $case1|0 $case2|0 $case3|0 $tablify|0
          (i32.sub
           (get_local $3)
           (i32.const 1)
          )
         )
        )
        (br $break|0)
       )
       (return
        (get_local $0)
       )
      )
      (return
       (f64.const 3.141592653589793)
      )
     )
     (return
      (f64.const -3.141592653589793)
     )
    )
   )
   (br_if $folding-inner0
    (i32.eqz
     (i32.or
      (get_local $4)
      (get_local $2)
     )
    )
   )
   (if
    (i32.eq
     (get_local $4)
     (i32.const 2146435072)
    )
    (if
     (i32.eq
      (get_local $5)
      (i32.const 2146435072)
     )
     (block $break|1
      (block $case3|1
       (block $case2|1
        (block $case1|1
         (if
          (get_local $3)
          (block
           (block $tablify|00
            (br_table $case1|1 $case2|1 $case3|1 $tablify|00
             (i32.sub
              (get_local $3)
              (i32.const 1)
             )
            )
           )
           (br $break|1)
          )
         )
         (return
          (f64.const 0.7853981633974483)
         )
        )
        (return
         (f64.const -0.7853981633974483)
        )
       )
       (return
        (f64.const 2.356194490192345)
       )
      )
      (return
       (f64.const -2.356194490192345)
      )
     )
     (block $break|2
      (block $case3|2
       (block $case2|2
        (block $case1|2
         (if
          (get_local $3)
          (block
           (block $tablify|01
            (br_table $case1|2 $case2|2 $case3|2 $tablify|01
             (i32.sub
              (get_local $3)
              (i32.const 1)
             )
            )
           )
           (br $break|2)
          )
         )
         (return
          (f64.const 0)
         )
        )
        (return
         (f64.const -0)
        )
       )
       (return
        (f64.const 3.141592653589793)
       )
      )
      (return
       (f64.const -3.141592653589793)
      )
     )
    )
   )
   (if
    (i32.eqz
     (tee_local $2
      (i32.lt_u
       (i32.add
        (get_local $4)
        (i32.const 67108864)
       )
       (get_local $5)
      )
     )
    )
    (set_local $2
     (i32.eq
      (get_local $5)
      (i32.const 2146435072)
     )
    )
   )
   (br_if $folding-inner0
    (get_local $2)
   )
   (if
    (tee_local $2
     (i32.and
      (get_local $3)
      (i32.const 2)
     )
    )
    (set_local $2
     (i32.lt_u
      (i32.add
       (get_local $5)
       (i32.const 67108864)
      )
      (get_local $4)
     )
    )
   )
   (set_local $0
    (if (result f64)
     (get_local $2)
     (f64.const 0)
     (call $~lib/math/NativeMath.atan
      (f64.abs
       (f64.div
        (get_local $0)
        (get_local $1)
       )
      )
     )
    )
   )
   (block $break|3
    (block $case3|3
     (block $case2|3
      (block $case1|3
       (if
        (tee_local $2
         (get_local $3)
        )
        (block
         (block $tablify|02
          (br_table $case1|3 $case2|3 $case3|3 $tablify|02
           (i32.sub
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         (br $break|3)
        )
       )
       (return
        (get_local $0)
       )
      )
      (return
       (f64.neg
        (get_local $0)
       )
      )
     )
     (return
      (f64.sub
       (f64.const 3.141592653589793)
       (f64.sub
        (get_local $0)
        (f64.const 1.2246467991473532e-16)
       )
      )
     )
    )
    (return
     (f64.sub
      (f64.sub
       (get_local $0)
       (f64.const 1.2246467991473532e-16)
      )
      (f64.const 3.141592653589793)
     )
    )
   )
   (unreachable)
  )
  (tee_local $0
   (if (result f64)
    (i32.and
     (get_local $3)
     (i32.const 1)
    )
    (f64.const -1.5707963267948966)
    (f64.const 1.5707963267948966)
   )
  )
 )
 (func $std/libm/atan2 (; 18 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (call $~lib/math/NativeMath.atan2
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/math/NativeMath.cbrt (; 19 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i64)
  (if
   (i32.ge_u
    (tee_local $3
     (i32.and
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
      (i32.const 2147483647)
     )
    )
    (i32.const 2146435072)
   )
   (return
    (f64.add
     (get_local $0)
     (get_local $0)
    )
   )
  )
  (set_local $3
   (if (result i32)
    (i32.lt_u
     (get_local $3)
     (i32.const 1048576)
    )
    (block (result i32)
     (if
      (i32.eqz
       (tee_local $3
        (i32.and
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
         (i32.const 2147483647)
        )
       )
      )
      (return
       (get_local $0)
      )
     )
     (i32.add
      (i32.div_u
       (get_local $3)
       (i32.const 3)
      )
      (i32.const 696219795)
     )
    )
    (i32.add
     (i32.div_u
      (get_local $3)
      (i32.const 3)
     )
     (i32.const 715094163)
    )
   )
  )
  (set_local $2
   (f64.mul
    (f64.mul
     (tee_local $1
      (f64.reinterpret/i64
       (i64.or
        (i64.and
         (get_local $4)
         (i64.const -9223372036854775808)
        )
        (i64.shl
         (i64.extend_u/i32
          (get_local $3)
         )
         (i64.const 32)
        )
       )
      )
     )
     (get_local $1)
    )
    (f64.div
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (set_local $2
   (f64.mul
    (tee_local $1
     (f64.reinterpret/i64
      (i64.and
       (i64.add
        (i64.reinterpret/f64
         (f64.mul
          (get_local $1)
          (f64.add
           (f64.add
            (f64.const 1.87595182427177)
            (f64.mul
             (get_local $2)
             (f64.add
              (f64.const -1.8849797954337717)
              (f64.mul
               (get_local $2)
               (f64.const 1.6214297201053545)
              )
             )
            )
           )
           (f64.mul
            (f64.mul
             (f64.mul
              (get_local $2)
              (get_local $2)
             )
             (get_local $2)
            )
            (f64.add
             (f64.const -0.758397934778766)
             (f64.mul
              (get_local $2)
              (f64.const 0.14599619288661245)
             )
            )
           )
          )
         )
        )
        (i64.const 2147483648)
       )
       (i64.const -1073741824)
      )
     )
    )
    (get_local $1)
   )
  )
  (f64.add
   (get_local $1)
   (f64.mul
    (get_local $1)
    (f64.div
     (f64.sub
      (tee_local $2
       (f64.div
        (get_local $0)
        (get_local $2)
       )
      )
      (get_local $1)
     )
     (f64.add
      (f64.add
       (get_local $1)
       (get_local $1)
      )
      (get_local $2)
     )
    )
   )
  )
 )
 (func $std/libm/cbrt (; 20 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.cbrt
   (get_local $0)
  )
 )
 (func $std/libm/ceil (; 21 ;) (type $FF) (param $0 f64) (result f64)
  (f64.ceil
   (get_local $0)
  )
 )
 (func $std/libm/clz32 (; 22 ;) (type $FF) (param $0 f64) (result f64)
  (f64.convert_s/i32
   (i32.clz
    (i32.trunc_s/f64
     (get_local $0)
    )
   )
  )
 )
 (func $~lib/math/NativeMath.cos (; 23 ;) (type $FF) (param $0 f64) (result f64)
  (unreachable)
 )
 (func $std/libm/cos (; 24 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.cos
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.expm1 (; 25 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (set_local $4
   (i32.wrap/i64
    (i64.shr_u
     (tee_local $5
      (i64.reinterpret/f64
       (get_local $0)
      )
     )
     (i64.const 63)
    )
   )
  )
  (if
   (i32.ge_u
    (tee_local $6
     (i32.wrap/i64
      (i64.and
       (i64.shr_u
        (get_local $5)
        (i64.const 32)
       )
       (i64.const 2147483647)
      )
     )
    )
    (i32.const 1078159482)
   )
   (block
    (if
     (call $isNaN<f64>
      (get_local $0)
     )
     (return
      (get_local $0)
     )
    )
    (if
     (get_local $4)
     (return
      (f64.const -1)
     )
    )
    (if
     (f64.gt
      (get_local $0)
      (f64.const 709.782712893384)
     )
     (return
      (f64.mul
       (get_local $0)
       (f64.const 8988465674311579538646525e283)
      )
     )
    )
   )
  )
  (if
   (i32.gt_u
    (get_local $6)
    (i32.const 1071001154)
   )
   (block
    (if
     (i32.lt_u
      (get_local $6)
      (i32.const 1072734898)
     )
     (set_local $0
      (if (result f64)
       (get_local $4)
       (block (result f64)
        (set_local $1
         (f64.const -1.9082149292705877e-10)
        )
        (set_local $2
         (i32.const -1)
        )
        (f64.add
         (get_local $0)
         (f64.const 0.6931471803691238)
        )
       )
       (block (result f64)
        (set_local $1
         (f64.const 1.9082149292705877e-10)
        )
        (set_local $2
         (i32.const 1)
        )
        (f64.sub
         (get_local $0)
         (f64.const 0.6931471803691238)
        )
       )
      )
     )
     (block
      (set_local $0
       (f64.sub
        (get_local $0)
        (f64.mul
         (tee_local $1
          (f64.convert_s/i32
           (tee_local $2
            (i32.trunc_s/f64
             (f64.add
              (tee_local $3
               (f64.mul
                (f64.const 1.4426950408889634)
                (get_local $0)
               )
              )
              (tee_local $1
               (if (result f64)
                (get_local $4)
                (f64.const -0.5)
                (f64.const 0.5)
               )
              )
             )
            )
           )
          )
         )
         (f64.const 0.6931471803691238)
        )
       )
      )
      (set_local $1
       (f64.mul
        (get_local $1)
        (f64.const 1.9082149292705877e-10)
       )
      )
     )
    )
    (set_local $7
     (f64.sub
      (f64.sub
       (get_local $0)
       (tee_local $0
        (f64.sub
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (get_local $1)
     )
    )
   )
   (if
    (i32.lt_u
     (get_local $6)
     (i32.const 1016070144)
    )
    (return
     (get_local $0)
    )
   )
  )
  (set_local $1
   (f64.add
    (f64.const 1)
    (f64.mul
     (tee_local $3
      (f64.mul
       (get_local $0)
       (tee_local $8
        (f64.mul
         (f64.const 0.5)
         (get_local $0)
        )
       )
      )
     )
     (f64.add
      (f64.const -0.03333333333333313)
      (f64.mul
       (get_local $3)
       (f64.add
        (f64.const 1.5873015872548146e-03)
        (f64.mul
         (get_local $3)
         (f64.add
          (f64.const -7.93650757867488e-05)
          (f64.mul
           (get_local $3)
           (f64.add
            (f64.const 4.008217827329362e-06)
            (f64.mul
             (get_local $3)
             (f64.const -2.0109921818362437e-07)
            )
           )
          )
         )
        )
       )
      )
     )
    )
   )
  )
  (set_local $1
   (f64.mul
    (get_local $3)
    (f64.div
     (f64.sub
      (get_local $1)
      (tee_local $1
       (f64.sub
        (f64.const 3)
        (f64.mul
         (get_local $1)
         (get_local $8)
        )
       )
      )
     )
     (f64.sub
      (f64.const 6)
      (f64.mul
       (get_local $0)
       (get_local $1)
      )
     )
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (f64.sub
     (get_local $0)
     (f64.sub
      (f64.mul
       (get_local $0)
       (get_local $1)
      )
      (get_local $3)
     )
    )
   )
  )
  (set_local $1
   (f64.sub
    (f64.sub
     (f64.mul
      (get_local $0)
      (f64.sub
       (get_local $1)
       (get_local $7)
      )
     )
     (get_local $7)
    )
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const -1)
   )
   (return
    (f64.sub
     (f64.mul
      (f64.const 0.5)
      (f64.sub
       (get_local $0)
       (get_local $1)
      )
     )
     (f64.const 0.5)
    )
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 1)
   )
   (block
    (if
     (f64.lt
      (get_local $0)
      (f64.const -0.25)
     )
     (return
      (f64.mul
       (f64.const -2)
       (f64.sub
        (get_local $1)
        (f64.add
         (get_local $0)
         (f64.const 0.5)
        )
       )
      )
     )
    )
    (return
     (f64.add
      (f64.const 1)
      (f64.mul
       (f64.const 2)
       (f64.sub
        (get_local $0)
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (set_local $3
   (f64.reinterpret/i64
    (i64.shl
     (i64.add
      (i64.extend_u/i32
       (get_local $2)
      )
      (i64.const 1023)
     )
     (i64.const 52)
    )
   )
  )
  (if
   (i32.eqz
    (tee_local $4
     (i32.lt_s
      (get_local $2)
      (i32.const 0)
     )
    )
   )
   (set_local $4
    (i32.gt_s
     (get_local $2)
     (i32.const 56)
    )
   )
  )
  (if
   (get_local $4)
   (block
    (set_local $0
     (f64.add
      (f64.sub
       (get_local $0)
       (get_local $1)
      )
      (f64.const 1)
     )
    )
    (return
     (f64.sub
      (tee_local $0
       (if (result f64)
        (i32.eq
         (get_local $2)
         (i32.const 1024)
        )
        (f64.mul
         (f64.mul
          (get_local $0)
          (f64.const 2)
         )
         (f64.const 8988465674311579538646525e283)
        )
        (f64.mul
         (get_local $0)
         (get_local $3)
        )
       )
      )
      (f64.const 1)
     )
    )
   )
  )
  (set_local $5
   (i64.shl
    (i64.sub
     (i64.const 1023)
     (i64.extend_u/i32
      (get_local $2)
     )
    )
    (i64.const 52)
   )
  )
  (tee_local $0
   (if (result f64)
    (i32.lt_s
     (get_local $2)
     (i32.const 20)
    )
    (f64.mul
     (f64.add
      (f64.sub
       (get_local $0)
       (get_local $1)
      )
      (f64.sub
       (f64.const 1)
       (f64.reinterpret/i64
        (get_local $5)
       )
      )
     )
     (get_local $3)
    )
    (f64.mul
     (f64.add
      (f64.sub
       (get_local $0)
       (f64.add
        (get_local $1)
        (f64.reinterpret/i64
         (get_local $5)
        )
       )
      )
      (f64.const 1)
     )
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/math/NativeMath.scalbn (; 26 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
  (local $2 f64)
  (set_local $2
   (get_local $0)
  )
  (if
   (i32.gt_s
    (get_local $1)
    (i32.const 1023)
   )
   (block
    (set_local $2
     (f64.mul
      (get_local $2)
      (f64.const 8988465674311579538646525e283)
     )
    )
    (if
     (i32.gt_s
      (tee_local $1
       (i32.sub
        (get_local $1)
        (i32.const 1023)
       )
      )
      (i32.const 1023)
     )
     (block
      (set_local $2
       (f64.mul
        (get_local $2)
        (f64.const 8988465674311579538646525e283)
       )
      )
      (if
       (i32.gt_s
        (tee_local $1
         (i32.sub
          (get_local $1)
          (i32.const 1023)
         )
        )
        (i32.const 1023)
       )
       (set_local $1
        (i32.const 1023)
       )
      )
     )
    )
   )
   (if
    (i32.lt_s
     (get_local $1)
     (i32.const -1022)
    )
    (block
     (set_local $2
      (f64.mul
       (get_local $2)
       (f64.const 2.2250738585072014e-308)
      )
     )
     (if
      (i32.lt_s
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 1022)
        )
       )
       (i32.const -1022)
      )
      (block
       (set_local $2
        (f64.mul
         (get_local $2)
         (f64.const 2.2250738585072014e-308)
        )
       )
       (if
        (i32.lt_s
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 1022)
          )
         )
         (i32.const -1022)
        )
        (set_local $1
         (i32.const -1022)
        )
       )
      )
     )
    )
   )
  )
  (f64.mul
   (get_local $2)
   (f64.reinterpret/i64
    (i64.shl
     (i64.add
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 1023)
     )
     (i64.const 52)
    )
   )
  )
 )
 (func $~lib/math/NativeMath.exp (; 27 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (set_local $3
   (i32.shr_u
    (tee_local $1
     (i32.wrap/i64
      (i64.shr_u
       (i64.reinterpret/f64
        (get_local $0)
       )
       (i64.const 32)
      )
     )
    )
    (i32.const 31)
   )
  )
  (if
   (i32.ge_u
    (tee_local $1
     (i32.and
      (get_local $1)
      (i32.const 2147483647)
     )
    )
    (i32.const 1082532651)
   )
   (block
    (if
     (call $isNaN<f64>
      (get_local $0)
     )
     (return
      (get_local $0)
     )
    )
    (if
     (f64.gt
      (get_local $0)
      (f64.const 709.782712893384)
     )
     (return
      (f64.mul
       (get_local $0)
       (f64.const 8988465674311579538646525e283)
      )
     )
    )
    (if
     (f64.lt
      (get_local $0)
      (f64.const -745.1332191019411)
     )
     (return
      (f64.const 0)
     )
    )
   )
  )
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1071001154)
   )
   (set_local $0
    (f64.sub
     (tee_local $5
      (f64.sub
       (get_local $0)
       (f64.mul
        (tee_local $0
         (f64.convert_s/i32
          (tee_local $2
           (if (result i32)
            (i32.ge_u
             (get_local $1)
             (i32.const 1072734898)
            )
            (i32.trunc_s/f64
             (f64.add
              (f64.mul
               (f64.const 1.4426950408889634)
               (get_local $0)
              )
              (f64.copysign
               (f64.const 0.5)
               (get_local $0)
              )
             )
            )
            (i32.sub
             (i32.sub
              (i32.const 1)
              (get_local $3)
             )
             (get_local $3)
            )
           )
          )
         )
        )
        (f64.const 0.6931471803691238)
       )
      )
     )
     (tee_local $4
      (f64.mul
       (get_local $0)
       (f64.const 1.9082149292705877e-10)
      )
     )
    )
   )
   (set_local $5
    (if (result f64)
     (i32.gt_u
      (get_local $1)
      (i32.const 1043333120)
     )
     (get_local $0)
     (return
      (f64.add
       (f64.const 1)
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $0
   (f64.add
    (f64.const 1)
    (f64.add
     (f64.sub
      (f64.div
       (f64.mul
        (get_local $0)
        (tee_local $0
         (f64.sub
          (get_local $0)
          (f64.mul
           (tee_local $0
            (f64.mul
             (get_local $0)
             (get_local $0)
            )
           )
           (f64.add
            (f64.const 0.16666666666666602)
            (f64.mul
             (get_local $0)
             (f64.add
              (f64.const -2.7777777777015593e-03)
              (f64.mul
               (get_local $0)
               (f64.add
                (f64.const 6.613756321437934e-05)
                (f64.mul
                 (get_local $0)
                 (f64.add
                  (f64.const -1.6533902205465252e-06)
                  (f64.mul
                   (get_local $0)
                   (f64.const 4.1381367970572385e-08)
                  )
                 )
                )
               )
              )
             )
            )
           )
          )
         )
        )
       )
       (f64.sub
        (f64.const 2)
        (get_local $0)
       )
      )
      (get_local $4)
     )
     (get_local $5)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (get_local $0)
   )
  )
  (call $~lib/math/NativeMath.scalbn
   (get_local $0)
   (get_local $2)
  )
 )
 (func $~lib/math/expo2 (; 28 ;) (type $FF) (param $0 f64) (result f64)
  (f64.mul
   (f64.mul
    (call $~lib/math/NativeMath.exp
     (f64.sub
      (get_local $0)
      (f64.const 1416.0996898839683)
     )
    )
    (f64.const 2247116418577894884661631e283)
   )
   (f64.const 2247116418577894884661631e283)
  )
 )
 (func $~lib/math/NativeMath.cosh (; 29 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i64)
  (set_local $0
   (f64.reinterpret/i64
    (tee_local $2
     (i64.and
      (i64.reinterpret/f64
       (get_local $0)
      )
      (i64.const 9223372036854775807)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (tee_local $1
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 32)
      )
     )
    )
    (i32.const 1072049730)
   )
   (block
    (if
     (i32.lt_u
      (get_local $1)
      (i32.const 1045430272)
     )
     (return
      (f64.const 1)
     )
    )
    (return
     (f64.add
      (f64.const 1)
      (f64.div
       (f64.mul
        (tee_local $0
         (call $~lib/math/NativeMath.expm1
          (get_local $0)
         )
        )
        (get_local $0)
       )
       (f64.mul
        (f64.const 2)
        (f64.add
         (f64.const 1)
         (get_local $0)
        )
       )
      )
     )
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $1)
    (i32.const 1082535490)
   )
   (return
    (f64.mul
     (f64.const 0.5)
     (f64.add
      (tee_local $0
       (call $~lib/math/NativeMath.exp
        (get_local $0)
       )
      )
      (f64.div
       (f64.const 1)
       (get_local $0)
      )
     )
    )
   )
  )
  (call $~lib/math/expo2
   (get_local $0)
  )
 )
 (func $std/libm/cosh (; 30 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.cosh
   (get_local $0)
  )
 )
 (func $std/libm/exp (; 31 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.exp
   (get_local $0)
  )
 )
 (func $std/libm/expm1 (; 32 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.expm1
   (get_local $0)
  )
 )
 (func $std/libm/floor (; 33 ;) (type $FF) (param $0 f64) (result f64)
  (f64.floor
   (get_local $0)
  )
 )
 (func $std/libm/fround (; 34 ;) (type $Ff) (param $0 f64) (result f32)
  (f32.demote/f64
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.hypot (; 35 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 f64)
  (if
   (i64.lt_u
    (tee_local $5
     (i64.and
      (i64.reinterpret/f64
       (get_local $0)
      )
      (i64.const 9223372036854775807)
     )
    )
    (tee_local $4
     (i64.and
      (i64.reinterpret/f64
       (get_local $1)
      )
      (i64.const 9223372036854775807)
     )
    )
   )
   (block
    (set_local $10
     (get_local $5)
    )
    (set_local $5
     (get_local $4)
    )
    (set_local $4
     (get_local $10)
    )
   )
  )
  (set_local $6
   (i32.wrap/i64
    (i64.shr_u
     (get_local $5)
     (i64.const 52)
    )
   )
  )
  (set_local $1
   (f64.reinterpret/i64
    (get_local $4)
   )
  )
  (if
   (i32.eq
    (tee_local $8
     (i32.wrap/i64
      (i64.shr_u
       (get_local $4)
       (i64.const 52)
      )
     )
    )
    (i32.const 2047)
   )
   (return
    (get_local $1)
   )
  )
  (set_local $0
   (f64.reinterpret/i64
    (get_local $5)
   )
  )
  (if
   (i32.eqz
    (tee_local $9
     (i32.eq
      (get_local $6)
      (i32.const 2047)
     )
    )
   )
   (set_local $9
    (i64.eq
     (get_local $4)
     (i64.const 0)
    )
   )
  )
  (if
   (get_local $9)
   (return
    (get_local $0)
   )
  )
  (if
   (i32.gt_s
    (i32.sub
     (get_local $6)
     (get_local $8)
    )
    (i32.const 64)
   )
   (return
    (f64.add
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (set_local $7
   (f64.const 1)
  )
  (if
   (i32.gt_s
    (get_local $6)
    (i32.const 1533)
   )
   (block
    (set_local $7
     (f64.const 5260135901548373507240989e186)
    )
    (set_local $0
     (f64.mul
      (get_local $0)
      (f64.const 1.90109156629516e-211)
     )
    )
    (set_local $1
     (f64.mul
      (get_local $1)
      (f64.const 1.90109156629516e-211)
     )
    )
   )
   (if
    (i32.lt_s
     (get_local $8)
     (i32.const 573)
    )
    (block
     (set_local $7
      (f64.const 1.90109156629516e-211)
     )
     (set_local $0
      (f64.mul
       (get_local $0)
       (f64.const 5260135901548373507240989e186)
      )
     )
     (set_local $1
      (f64.mul
       (get_local $1)
       (f64.const 5260135901548373507240989e186)
      )
     )
    )
   )
  )
  (set_local $3
   (f64.sub
    (get_local $0)
    (tee_local $2
     (f64.add
      (f64.sub
       (get_local $0)
       (tee_local $2
        (f64.mul
         (get_local $0)
         (f64.const 134217729)
        )
       )
      )
      (get_local $2)
     )
    )
   )
  )
  (set_local $11
   (f64.add
    (f64.add
     (f64.sub
      (f64.mul
       (get_local $2)
       (get_local $2)
      )
      (tee_local $0
       (f64.mul
        (get_local $0)
        (get_local $0)
       )
      )
     )
     (f64.mul
      (f64.mul
       (f64.const 2)
       (get_local $2)
      )
      (get_local $3)
     )
    )
    (f64.mul
     (get_local $3)
     (get_local $3)
    )
   )
  )
  (set_local $3
   (f64.sub
    (get_local $1)
    (tee_local $2
     (f64.add
      (f64.sub
       (get_local $1)
       (tee_local $2
        (f64.mul
         (get_local $1)
         (f64.const 134217729)
        )
       )
      )
      (get_local $2)
     )
    )
   )
  )
  (f64.mul
   (get_local $7)
   (f64.sqrt
    (f64.add
     (f64.add
      (f64.add
       (tee_local $2
        (f64.add
         (f64.add
          (f64.sub
           (f64.mul
            (get_local $2)
            (get_local $2)
           )
           (tee_local $1
            (f64.mul
             (get_local $1)
             (get_local $1)
            )
           )
          )
          (f64.mul
           (f64.mul
            (f64.const 2)
            (get_local $2)
           )
           (get_local $3)
          )
         )
         (f64.mul
          (get_local $3)
          (get_local $3)
         )
        )
       )
       (get_local $11)
      )
      (get_local $1)
     )
     (get_local $0)
    )
   )
  )
 )
 (func $std/libm/hypot (; 36 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (call $~lib/math/NativeMath.hypot
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/math/NativeMath.imul (; 37 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (f64.convert_s/i32
   (i32.mul
    (i32.trunc_s/f64
     (get_local $0)
    )
    (i32.trunc_s/f64
     (get_local $1)
    )
   )
  )
 )
 (func $std/libm/imul (; 38 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (call $~lib/math/NativeMath.imul
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/libm/log (; 39 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.log
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.log10 (; 40 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (if
   (i32.eqz
    (tee_local $3
     (i32.lt_u
      (tee_local $1
       (i32.wrap/i64
        (i64.shr_u
         (tee_local $5
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
   (set_local $3
    (i32.shr_u
     (get_local $1)
     (i32.const 31)
    )
   )
  )
  (if
   (get_local $3)
   (block
    (if
     (i64.eq
      (i64.shl
       (get_local $5)
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
    (set_local $4
     (i32.const -54)
    )
    (set_local $1
     (i32.wrap/i64
      (i64.shr_u
       (tee_local $5
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
      (tee_local $3
       (i32.eq
        (get_local $1)
        (i32.const 1072693248)
       )
      )
      (set_local $3
       (i64.eq
        (i64.shl
         (get_local $5)
         (i64.const 32)
        )
        (i64.const 0)
       )
      )
     )
     (if
      (get_local $3)
      (return
       (f64.const 0)
      )
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $4)
    (i32.sub
     (i32.shr_u
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
        (tee_local $2
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
             (get_local $5)
             (i64.const 4294967295)
            )
           )
          )
          (f64.const 1)
         )
        )
        (f64.add
         (f64.const 2)
         (get_local $2)
        )
       )
      )
      (get_local $6)
     )
    )
    (get_local $7)
   )
  )
  (set_local $8
   (f64.mul
    (tee_local $11
     (f64.convert_s/i32
      (get_local $4)
     )
    )
    (f64.const 0.30102999566361177)
   )
  )
  (f64.add
   (tee_local $6
    (f64.add
     (tee_local $6
      (f64.add
       (f64.add
        (f64.mul
         (get_local $11)
         (f64.const 3.694239077158931e-13)
        )
        (f64.mul
         (f64.add
          (tee_local $0
           (f64.add
            (f64.sub
             (f64.sub
              (get_local $2)
              (tee_local $10
               (f64.reinterpret/i64
                (i64.and
                 (i64.reinterpret/f64
                  (f64.sub
                   (get_local $2)
                   (tee_local $9
                    (f64.mul
                     (f64.mul
                      (f64.const 0.5)
                      (get_local $2)
                     )
                     (get_local $2)
                    )
                   )
                  )
                 )
                 (i64.const -4294967296)
                )
               )
              )
             )
             (get_local $9)
            )
            (f64.mul
             (get_local $6)
             (f64.add
              (get_local $9)
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
           )
          )
          (get_local $10)
         )
         (f64.const 2.5082946711645275e-11)
        )
       )
       (f64.mul
        (get_local $0)
        (f64.const 0.4342944818781689)
       )
      )
     )
     (f64.add
      (f64.sub
       (get_local $8)
       (tee_local $0
        (f64.add
         (get_local $8)
         (tee_local $2
          (f64.mul
           (get_local $10)
           (f64.const 0.4342944818781689)
          )
         )
        )
       )
      )
      (get_local $2)
     )
    )
   )
   (tee_local $2
    (get_local $0)
   )
  )
 )
 (func $std/libm/log10 (; 41 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.log10
   (get_local $0)
  )
 )
 (func $std/libm/log1p (; 42 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.log1p
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.log2 (; 43 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (if
   (i32.eqz
    (tee_local $3
     (i32.lt_u
      (tee_local $1
       (i32.wrap/i64
        (i64.shr_u
         (tee_local $6
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
   (set_local $3
    (i32.shr_u
     (get_local $1)
     (i32.const 31)
    )
   )
  )
  (if
   (get_local $3)
   (block
    (if
     (i64.eq
      (i64.shl
       (get_local $6)
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
    (set_local $5
     (i32.const -54)
    )
    (set_local $1
     (i32.wrap/i64
      (i64.shr_u
       (tee_local $6
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
      (tee_local $3
       (i32.eq
        (get_local $1)
        (i32.const 1072693248)
       )
      )
      (set_local $3
       (i64.eq
        (i64.shl
         (get_local $6)
         (i64.const 32)
        )
        (i64.const 0)
       )
      )
     )
     (if
      (get_local $3)
      (return
       (f64.const 0)
      )
     )
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $5)
    (i32.sub
     (i32.shr_u
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
      (tee_local $4
       (f64.div
        (tee_local $2
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
             (get_local $6)
             (i64.const 4294967295)
            )
           )
          )
          (f64.const 1)
         )
        )
        (f64.add
         (f64.const 2)
         (get_local $2)
        )
       )
      )
      (get_local $4)
     )
    )
    (get_local $7)
   )
  )
  (set_local $4
   (f64.add
    (f64.mul
     (f64.add
      (tee_local $0
       (f64.add
        (f64.sub
         (f64.sub
          (get_local $2)
          (tee_local $9
           (f64.reinterpret/i64
            (i64.and
             (i64.reinterpret/f64
              (f64.sub
               (get_local $2)
               (tee_local $8
                (f64.mul
                 (f64.mul
                  (f64.const 0.5)
                  (get_local $2)
                 )
                 (get_local $2)
                )
               )
              )
             )
             (i64.const -4294967296)
            )
           )
          )
         )
         (get_local $8)
        )
        (f64.mul
         (get_local $4)
         (f64.add
          (get_local $8)
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
       )
      )
      (get_local $9)
     )
     (f64.const 1.6751713164886512e-10)
    )
    (f64.mul
     (get_local $0)
     (f64.const 1.4426950407214463)
    )
   )
  )
  (set_local $0
   (f64.add
    (tee_local $7
     (f64.convert_s/i32
      (get_local $5)
     )
    )
    (tee_local $2
     (f64.mul
      (get_local $9)
      (f64.const 1.4426950407214463)
     )
    )
   )
  )
  (f64.add
   (tee_local $4
    (f64.add
     (get_local $4)
     (f64.add
      (f64.sub
       (get_local $7)
       (get_local $0)
      )
      (get_local $2)
     )
    )
   )
   (tee_local $2
    (get_local $0)
   )
  )
 )
 (func $std/libm/log2 (; 44 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.log2
   (get_local $0)
  )
 )
 (func $std/libm/max (; 45 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (f64.max
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/libm/min (; 46 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (f64.min
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/math/NativeMath.pow (; 47 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f64)
  (local $14 f64)
  (local $15 i32)
  (local $16 f64)
  (local $17 i64)
  (local $18 i32)
  (local $19 i32)
  (local $20 f64)
  (block $folding-inner1
   (block $folding-inner0
    (set_local $18
     (i32.wrap/i64
      (i64.shr_u
       (tee_local $17
        (i64.reinterpret/f64
         (get_local $0)
        )
       )
       (i64.const 32)
      )
     )
    )
    (set_local $7
     (i32.wrap/i64
      (get_local $17)
     )
    )
    (set_local $5
     (i32.and
      (get_local $18)
      (i32.const 2147483647)
     )
    )
    (if
     (i32.eqz
      (i32.or
       (tee_local $11
        (i32.and
         (tee_local $12
          (i32.wrap/i64
           (i64.shr_u
            (tee_local $17
             (i64.reinterpret/f64
              (get_local $1)
             )
            )
            (i64.const 32)
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (tee_local $19
        (i32.wrap/i64
         (get_local $17)
        )
       )
      )
     )
     (return
      (f64.const 1)
     )
    )
    (if
     (i32.eqz
      (tee_local $4
       (i32.gt_s
        (get_local $5)
        (i32.const 2146435072)
       )
      )
     )
     (if
      (tee_local $4
       (i32.eq
        (get_local $5)
        (i32.const 2146435072)
       )
      )
      (set_local $4
       (i32.ne
        (get_local $7)
        (i32.const 0)
       )
      )
     )
    )
    (if
     (i32.eqz
      (get_local $4)
     )
     (set_local $4
      (i32.gt_s
       (get_local $11)
       (i32.const 2146435072)
      )
     )
    )
    (if
     (i32.eqz
      (get_local $4)
     )
     (if
      (tee_local $4
       (i32.eq
        (get_local $11)
        (i32.const 2146435072)
       )
      )
      (set_local $4
       (i32.ne
        (get_local $19)
        (i32.const 0)
       )
      )
     )
    )
    (if
     (get_local $4)
     (return
      (f64.add
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (if
     (i32.lt_s
      (get_local $18)
      (i32.const 0)
     )
     (if
      (i32.ge_s
       (get_local $11)
       (i32.const 1128267776)
      )
      (set_local $15
       (i32.const 2)
      )
      (if
       (i32.ge_s
        (get_local $11)
        (i32.const 1072693248)
       )
       (if
        (i32.gt_s
         (tee_local $10
          (i32.sub
           (i32.shr_s
            (get_local $11)
            (i32.const 20)
           )
           (i32.const 1023)
          )
         )
         (i32.const 20)
        )
        (if
         (i32.eq
          (i32.shl
           (tee_local $4
            (i32.shr_u
             (get_local $19)
             (tee_local $8
              (i32.sub
               (i32.const 52)
               (get_local $10)
              )
             )
            )
           )
           (get_local $8)
          )
          (get_local $19)
         )
         (set_local $15
          (i32.sub
           (i32.const 2)
           (i32.and
            (get_local $4)
            (i32.const 1)
           )
          )
         )
        )
        (if
         (i32.eqz
          (get_local $19)
         )
         (if
          (i32.eq
           (i32.shl
            (tee_local $4
             (i32.shr_s
              (get_local $11)
              (tee_local $8
               (i32.sub
                (i32.const 20)
                (get_local $10)
               )
              )
             )
            )
            (get_local $8)
           )
           (get_local $11)
          )
          (set_local $15
           (i32.sub
            (i32.const 2)
            (i32.and
             (get_local $4)
             (i32.const 1)
            )
           )
          )
         )
        )
       )
      )
     )
    )
    (if
     (i32.eqz
      (get_local $19)
     )
     (block
      (if
       (i32.eq
        (get_local $11)
        (i32.const 2146435072)
       )
       (if
        (i32.or
         (i32.sub
          (get_local $5)
          (i32.const 1072693248)
         )
         (get_local $7)
        )
        (if
         (i32.ge_s
          (get_local $5)
          (i32.const 1072693248)
         )
         (block
          (if
           (i32.lt_s
            (get_local $12)
            (i32.const 0)
           )
           (set_local $1
            (f64.const 0)
           )
          )
          (return
           (get_local $1)
          )
         )
         (return
          (tee_local $0
           (if (result f64)
            (i32.ge_s
             (get_local $12)
             (i32.const 0)
            )
            (f64.const 0)
            (f64.neg
             (get_local $1)
            )
           )
          )
         )
        )
        (return
         (f64.const nan:0x8000000000000)
        )
       )
      )
      (if
       (i32.eq
        (get_local $11)
        (i32.const 1072693248)
       )
       (block
        (if
         (i32.ge_s
          (get_local $12)
          (i32.const 0)
         )
         (return
          (get_local $0)
         )
        )
        (return
         (f64.div
          (f64.const 1)
          (get_local $0)
         )
        )
       )
      )
      (if
       (i32.eq
        (get_local $12)
        (i32.const 1073741824)
       )
       (return
        (f64.mul
         (get_local $0)
         (get_local $0)
        )
       )
      )
      (if
       (i32.eq
        (get_local $12)
        (i32.const 1071644672)
       )
       (if
        (i32.ge_s
         (get_local $18)
         (i32.const 0)
        )
        (return
         (f64.sqrt
          (get_local $0)
         )
        )
       )
      )
     )
    )
    (set_local $2
     (f64.abs
      (get_local $0)
     )
    )
    (if
     (i32.eqz
      (get_local $7)
     )
     (block
      (if
       (i32.eqz
        (tee_local $4
         (i32.eq
          (get_local $5)
          (i32.const 2146435072)
         )
        )
       )
       (set_local $4
        (i32.eqz
         (get_local $5)
        )
       )
      )
      (if
       (i32.eqz
        (get_local $4)
       )
       (set_local $4
        (i32.eq
         (get_local $5)
         (i32.const 1072693248)
        )
       )
      )
      (if
       (get_local $4)
       (block
        (if
         (i32.lt_s
          (get_local $12)
          (i32.const 0)
         )
         (set_local $2
          (f64.div
           (f64.const 1)
           (get_local $2)
          )
         )
        )
        (if
         (i32.lt_s
          (get_local $18)
          (i32.const 0)
         )
         (if
          (i32.or
           (i32.sub
            (get_local $5)
            (i32.const 1072693248)
           )
           (get_local $15)
          )
          (if
           (i32.eq
            (get_local $15)
            (i32.const 1)
           )
           (set_local $2
            (f64.neg
             (get_local $2)
            )
           )
          )
          (set_local $2
           (f64.div
            (tee_local $0
             (f64.sub
              (get_local $2)
              (get_local $2)
             )
            )
            (get_local $0)
           )
          )
         )
        )
        (return
         (get_local $2)
        )
       )
      )
     )
    )
    (set_local $13
     (f64.const 1)
    )
    (if
     (i32.lt_s
      (get_local $18)
      (i32.const 0)
     )
     (block
      (if
       (i32.eqz
        (get_local $15)
       )
       (return
        (f64.div
         (tee_local $0
          (f64.sub
           (get_local $0)
           (get_local $0)
          )
         )
         (get_local $0)
        )
       )
      )
      (if
       (i32.eq
        (get_local $15)
        (i32.const 1)
       )
       (set_local $13
        (f64.const -1)
       )
      )
     )
    )
    (set_local $2
     (if (result f64)
      (i32.gt_s
       (get_local $11)
       (i32.const 1105199104)
      )
      (block (result f64)
       (if
        (i32.gt_s
         (get_local $11)
         (i32.const 1139802112)
        )
        (block
         (if
          (i32.le_s
           (get_local $5)
           (i32.const 1072693247)
          )
          (return
           (tee_local $0
            (if (result f64)
             (i32.lt_s
              (get_local $12)
              (i32.const 0)
             )
             (f64.const inf)
             (f64.const 0)
            )
           )
          )
         )
         (if
          (i32.ge_s
           (get_local $5)
           (i32.const 1072693248)
          )
          (return
           (tee_local $0
            (if (result f64)
             (i32.gt_s
              (get_local $12)
              (i32.const 0)
             )
             (f64.const inf)
             (f64.const 0)
            )
           )
          )
         )
        )
       )
       (if
        (i32.lt_s
         (get_local $5)
         (i32.const 1072693247)
        )
        (return
         (tee_local $0
          (if (result f64)
           (i32.lt_s
            (get_local $12)
            (i32.const 0)
           )
           (f64.mul
            (f64.mul
             (get_local $13)
             (f64.const 1.e+300)
            )
            (f64.const 1.e+300)
           )
           (f64.mul
            (f64.mul
             (get_local $13)
             (f64.const 1e-300)
            )
            (f64.const 1e-300)
           )
          )
         )
        )
       )
       (if
        (i32.gt_s
         (get_local $5)
         (i32.const 1072693248)
        )
        (return
         (tee_local $0
          (if (result f64)
           (i32.gt_s
            (get_local $12)
            (i32.const 0)
           )
           (f64.mul
            (f64.mul
             (get_local $13)
             (f64.const 1.e+300)
            )
            (f64.const 1.e+300)
           )
           (f64.mul
            (f64.mul
             (get_local $13)
             (f64.const 1e-300)
            )
            (f64.const 1e-300)
           )
          )
         )
        )
       )
       (set_local $0
        (f64.mul
         (f64.mul
          (tee_local $3
           (f64.sub
            (get_local $2)
            (f64.const 1)
           )
          )
          (get_local $3)
         )
         (f64.sub
          (f64.const 0.5)
          (f64.mul
           (get_local $3)
           (f64.sub
            (f64.const 0.3333333333333333)
            (f64.mul
             (get_local $3)
             (f64.const 0.25)
            )
           )
          )
         )
        )
       )
       (set_local $9
        (f64.add
         (tee_local $16
          (f64.mul
           (f64.const 1.4426950216293335)
           (get_local $3)
          )
         )
         (tee_local $6
          (f64.sub
           (f64.mul
            (get_local $3)
            (f64.const 1.9259629911266175e-08)
           )
           (f64.mul
            (get_local $0)
            (f64.const 1.4426950408889634)
           )
          )
         )
        )
       )
       (f64.sub
        (get_local $6)
        (f64.sub
         (tee_local $9
          (f64.reinterpret/i64
           (i64.and
            (i64.reinterpret/f64
             (get_local $9)
            )
            (i64.const -4294967296)
           )
          )
         )
         (get_local $16)
        )
       )
      )
      (block (result f64)
       (set_local $7
        (i32.const 0)
       )
       (if
        (i32.lt_s
         (get_local $5)
         (i32.const 1048576)
        )
        (block
         (set_local $7
          (i32.const -53)
         )
         (set_local $5
          (i32.wrap/i64
           (i64.shr_u
            (i64.reinterpret/f64
             (tee_local $2
              (f64.mul
               (get_local $2)
               (f64.const 9007199254740992)
              )
             )
            )
            (i64.const 32)
           )
          )
         )
        )
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.sub
          (i32.shr_s
           (get_local $5)
           (i32.const 20)
          )
          (i32.const 1023)
         )
        )
       )
       (set_local $5
        (i32.or
         (tee_local $8
          (i32.and
           (get_local $5)
           (i32.const 1048575)
          )
         )
         (i32.const 1072693248)
        )
       )
       (set_local $10
        (if (result i32)
         (i32.le_s
          (get_local $8)
          (i32.const 235662)
         )
         (i32.const 0)
         (if (result i32)
          (i32.lt_s
           (get_local $8)
           (i32.const 767610)
          )
          (i32.const 1)
          (block (result i32)
           (set_local $7
            (i32.add
             (get_local $7)
             (i32.const 1)
            )
           )
           (set_local $5
            (i32.add
             (get_local $5)
             (i32.const -1048576)
            )
           )
           (i32.const 0)
          )
         )
        )
       )
       (set_local $9
        (f64.mul
         (tee_local $16
          (f64.sub
           (tee_local $2
            (f64.reinterpret/i64
             (i64.or
              (i64.and
               (i64.reinterpret/f64
                (get_local $2)
               )
               (i64.const 4294967295)
              )
              (i64.shl
               (i64.extend_u/i32
                (get_local $5)
               )
               (i64.const 32)
              )
             )
            )
           )
           (tee_local $0
            (select
             (f64.const 1.5)
             (f64.const 1)
             (get_local $10)
            )
           )
          )
         )
         (tee_local $6
          (f64.div
           (f64.const 1)
           (f64.add
            (get_local $2)
            (get_local $0)
           )
          )
         )
        )
       )
       (set_local $2
        (f64.sub
         (get_local $2)
         (f64.sub
          (tee_local $3
           (f64.reinterpret/i64
            (i64.shl
             (i64.extend_u/i32
              (i32.add
               (i32.add
                (i32.or
                 (i32.shr_s
                  (get_local $5)
                  (i32.const 1)
                 )
                 (i32.const 536870912)
                )
                (i32.const 524288)
               )
               (i32.shl
                (get_local $10)
                (i32.const 18)
               )
              )
             )
             (i64.const 32)
            )
           )
          )
          (get_local $0)
         )
        )
       )
       (set_local $20
        (f64.mul
         (f64.mul
          (tee_local $14
           (f64.mul
            (get_local $9)
            (get_local $9)
           )
          )
          (get_local $14)
         )
         (f64.add
          (f64.const 0.5999999999999946)
          (f64.mul
           (get_local $14)
           (f64.add
            (f64.const 0.4285714285785502)
            (f64.mul
             (get_local $14)
             (f64.add
              (f64.const 0.33333332981837743)
              (f64.mul
               (get_local $14)
               (f64.add
                (f64.const 0.272728123808534)
                (f64.mul
                 (get_local $14)
                 (f64.add
                  (f64.const 0.23066074577556175)
                  (f64.mul
                   (get_local $14)
                   (f64.const 0.20697501780033842)
                  )
                 )
                )
               )
              )
             )
            )
           )
          )
         )
        )
       )
       (set_local $0
        (f64.mul
         (get_local $6)
         (f64.sub
          (f64.sub
           (get_local $16)
           (f64.mul
            (tee_local $6
             (f64.reinterpret/i64
              (i64.and
               (i64.reinterpret/f64
                (get_local $9)
               )
               (i64.const -4294967296)
              )
             )
            )
            (get_local $3)
           )
          )
          (f64.mul
           (get_local $6)
           (get_local $2)
          )
         )
        )
       )
       (set_local $3
        (f64.add
         (f64.add
          (f64.const 3)
          (tee_local $14
           (f64.mul
            (get_local $6)
            (get_local $6)
           )
          )
         )
         (tee_local $20
          (f64.add
           (get_local $20)
           (f64.mul
            (get_local $0)
            (f64.add
             (get_local $6)
             (get_local $9)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (f64.sub
         (get_local $20)
         (f64.sub
          (f64.sub
           (tee_local $3
            (f64.reinterpret/i64
             (i64.and
              (i64.reinterpret/f64
               (get_local $3)
              )
              (i64.const -4294967296)
             )
            )
           )
           (f64.const 3)
          )
          (get_local $14)
         )
        )
       )
       (set_local $0
        (f64.add
         (tee_local $16
          (f64.mul
           (get_local $6)
           (get_local $3)
          )
         )
         (tee_local $6
          (f64.add
           (f64.mul
            (get_local $0)
            (get_local $3)
           )
           (f64.mul
            (get_local $2)
            (get_local $9)
           )
          )
         )
        )
       )
       (set_local $6
        (f64.sub
         (get_local $6)
         (f64.sub
          (tee_local $0
           (f64.reinterpret/i64
            (i64.and
             (i64.reinterpret/f64
              (get_local $0)
             )
             (i64.const -4294967296)
            )
           )
          )
          (get_local $16)
         )
        )
       )
       (set_local $9
        (f64.add
         (f64.add
          (f64.add
           (tee_local $20
            (f64.mul
             (f64.const 0.9617967009544373)
             (get_local $0)
            )
           )
           (tee_local $2
            (f64.add
             (f64.add
              (f64.mul
               (f64.const -7.028461650952758e-09)
               (get_local $0)
              )
              (f64.mul
               (get_local $6)
               (f64.const 0.9617966939259756)
              )
             )
             (select
              (f64.const 1.350039202129749e-08)
              (f64.const 0)
              (get_local $10)
             )
            )
           )
          )
          (tee_local $0
           (select
            (f64.const 0.5849624872207642)
            (f64.const 0)
            (get_local $10)
           )
          )
         )
         (tee_local $3
          (f64.convert_s/i32
           (get_local $7)
          )
         )
        )
       )
       (f64.sub
        (get_local $2)
        (f64.sub
         (f64.sub
          (f64.sub
           (tee_local $9
            (f64.reinterpret/i64
             (i64.and
              (i64.reinterpret/f64
               (get_local $9)
              )
              (i64.const -4294967296)
             )
            )
           )
           (get_local $3)
          )
          (get_local $0)
         )
         (get_local $20)
        )
       )
      )
     )
    )
    (set_local $4
     (i32.wrap/i64
      (tee_local $17
       (i64.reinterpret/f64
        (tee_local $2
         (f64.add
          (tee_local $6
           (f64.add
            (f64.mul
             (f64.sub
              (get_local $1)
              (tee_local $0
               (f64.reinterpret/i64
                (i64.and
                 (i64.reinterpret/f64
                  (get_local $1)
                 )
                 (i64.const -4294967296)
                )
               )
              )
             )
             (get_local $9)
            )
            (f64.mul
             (get_local $1)
             (get_local $2)
            )
           )
          )
          (tee_local $0
           (f64.mul
            (get_local $0)
            (get_local $9)
           )
          )
         )
        )
       )
      )
     )
    )
    (if
     (i32.ge_s
      (tee_local $8
       (i32.wrap/i64
        (i64.shr_u
         (get_local $17)
         (i64.const 32)
        )
       )
      )
      (i32.const 1083179008)
     )
     (block
      (br_if $folding-inner1
       (i32.or
        (i32.sub
         (get_local $8)
         (i32.const 1083179008)
        )
        (get_local $4)
       )
      )
      (br_if $folding-inner1
       (f64.gt
        (f64.add
         (get_local $6)
         (f64.const 8.008566259537294e-17)
        )
        (f64.sub
         (get_local $2)
         (get_local $0)
        )
       )
      )
     )
     (if
      (i32.ge_s
       (i32.and
        (get_local $8)
        (i32.const 2147483647)
       )
       (i32.const 1083231232)
      )
      (block
       (br_if $folding-inner0
        (i32.or
         (i32.sub
          (get_local $8)
          (i32.const -1064252416)
         )
         (get_local $4)
        )
       )
       (br_if $folding-inner0
        (f64.le
         (get_local $6)
         (f64.sub
          (get_local $2)
          (get_local $0)
         )
        )
       )
      )
     )
    )
    (set_local $10
     (i32.sub
      (i32.shr_s
       (tee_local $4
        (i32.and
         (get_local $8)
         (i32.const 2147483647)
        )
       )
       (i32.const 20)
      )
      (i32.const 1023)
     )
    )
    (set_local $7
     (i32.const 0)
    )
    (if
     (i32.gt_s
      (get_local $4)
      (i32.const 1071644672)
     )
     (block
      (set_local $10
       (i32.sub
        (i32.shr_s
         (i32.and
          (tee_local $7
           (i32.add
            (get_local $8)
            (i32.shr_s
             (i32.const 1048576)
             (i32.add
              (get_local $10)
              (i32.const 1)
             )
            )
           )
          )
          (i32.const 2147483647)
         )
         (i32.const 20)
        )
        (i32.const 1023)
       )
      )
      (set_local $3
       (f64.reinterpret/i64
        (i64.shl
         (i64.extend_u/i32
          (i32.and
           (get_local $7)
           (i32.xor
            (i32.shr_s
             (i32.const 1048575)
             (get_local $10)
            )
            (i32.const -1)
           )
          )
         )
         (i64.const 32)
        )
       )
      )
      (set_local $7
       (i32.shr_s
        (i32.or
         (i32.and
          (get_local $7)
          (i32.const 1048575)
         )
         (i32.const 1048576)
        )
        (i32.sub
         (i32.const 20)
         (get_local $10)
        )
       )
      )
      (if
       (i32.lt_s
        (get_local $8)
        (i32.const 0)
       )
       (set_local $7
        (i32.sub
         (i32.const 0)
         (get_local $7)
        )
       )
      )
      (set_local $0
       (f64.sub
        (get_local $0)
        (get_local $3)
       )
      )
     )
    )
    (set_local $3
     (f64.mul
      (tee_local $2
       (f64.add
        (tee_local $16
         (f64.mul
          (tee_local $3
           (f64.reinterpret/i64
            (i64.and
             (i64.reinterpret/f64
              (f64.add
               (get_local $6)
               (get_local $0)
              )
             )
             (i64.const -4294967296)
            )
           )
          )
          (f64.const 0.6931471824645996)
         )
        )
        (tee_local $6
         (f64.add
          (f64.mul
           (f64.sub
            (get_local $6)
            (f64.sub
             (get_local $3)
             (get_local $0)
            )
           )
           (f64.const 0.6931471805599453)
          )
          (f64.mul
           (get_local $3)
           (f64.const -1.904654299957768e-09)
          )
         )
        )
       )
      )
      (get_local $2)
     )
    )
    (return
     (f64.mul
      (get_local $13)
      (tee_local $2
       (if (result f64)
        (i32.le_s
         (i32.shr_s
          (tee_local $8
           (i32.add
            (i32.wrap/i64
             (i64.shr_u
              (i64.reinterpret/f64
               (tee_local $2
                (f64.sub
                 (f64.const 1)
                 (f64.sub
                  (f64.sub
                   (f64.div
                    (f64.mul
                     (get_local $2)
                     (tee_local $9
                      (f64.sub
                       (get_local $2)
                       (f64.mul
                        (get_local $3)
                        (f64.add
                         (f64.const 0.16666666666666602)
                         (f64.mul
                          (get_local $3)
                          (f64.add
                           (f64.const -2.7777777777015593e-03)
                           (f64.mul
                            (get_local $3)
                            (f64.add
                             (f64.const 6.613756321437934e-05)
                             (f64.mul
                              (get_local $3)
                              (f64.add
                               (f64.const -1.6533902205465252e-06)
                               (f64.mul
                                (get_local $3)
                                (f64.const 4.1381367970572385e-08)
                               )
                              )
                             )
                            )
                           )
                          )
                         )
                        )
                       )
                      )
                     )
                    )
                    (f64.sub
                     (get_local $9)
                     (f64.const 2)
                    )
                   )
                   (f64.add
                    (tee_local $0
                     (f64.sub
                      (get_local $6)
                      (f64.sub
                       (get_local $2)
                       (get_local $16)
                      )
                     )
                    )
                    (f64.mul
                     (get_local $2)
                     (get_local $0)
                    )
                   )
                  )
                  (get_local $2)
                 )
                )
               )
              )
              (i64.const 32)
             )
            )
            (i32.shl
             (get_local $7)
             (i32.const 20)
            )
           )
          )
          (i32.const 20)
         )
         (i32.const 0)
        )
        (call $~lib/math/NativeMath.scalbn
         (get_local $2)
         (get_local $7)
        )
        (f64.reinterpret/i64
         (i64.or
          (i64.and
           (i64.reinterpret/f64
            (get_local $2)
           )
           (i64.const 4294967295)
          )
          (i64.shl
           (i64.extend_u/i32
            (get_local $8)
           )
           (i64.const 32)
          )
         )
        )
       )
      )
     )
    )
   )
   (return
    (f64.mul
     (f64.mul
      (get_local $13)
      (f64.const 1e-300)
     )
     (f64.const 1e-300)
    )
   )
  )
  (f64.mul
   (f64.mul
    (get_local $13)
    (f64.const 1.e+300)
   )
   (f64.const 1.e+300)
  )
 )
 (func $std/libm/pow (; 48 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (call $~lib/math/NativeMath.pow
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/math/NativeMath.round (; 49 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i64)
  (local $3 i32)
  (if
   (i32.ge_s
    (tee_local $3
     (i32.wrap/i64
      (i64.and
       (i64.shr_u
        (tee_local $2
         (i64.reinterpret/f64
          (get_local $0)
         )
        )
        (i64.const 52)
       )
       (i64.const 2047)
      )
     )
    )
    (i32.const 1075)
   )
   (return
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 1022)
   )
   (return
    (f64.mul
     (f64.const 0)
     (get_local $0)
    )
   )
  )
  (tee_local $1
   (if (result f64)
    (i64.ne
     (i64.shr_u
      (get_local $2)
      (i64.const 63)
     )
     (i64.const 0)
    )
    (if (result f64)
     (f64.ge
      (tee_local $1
       (f64.add
        (f64.sub
         (f64.sub
          (f64.const 4503599627370496)
          (get_local $0)
         )
         (f64.const 4503599627370496)
        )
        (get_local $0)
       )
      )
      (f64.const 0.5)
     )
     (f64.add
      (f64.sub
       (get_local $0)
       (get_local $1)
      )
      (f64.const 1)
     )
     (if (result f64)
      (f64.lt
       (get_local $1)
       (f64.const -0.5)
      )
      (f64.sub
       (f64.sub
        (get_local $0)
        (get_local $1)
       )
       (f64.const 1)
      )
      (f64.sub
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (if (result f64)
     (f64.gt
      (tee_local $1
       (f64.sub
        (f64.sub
         (f64.add
          (get_local $0)
          (f64.const 4503599627370496)
         )
         (f64.const 4503599627370496)
        )
        (get_local $0)
       )
      )
      (f64.const 0.5)
     )
     (f64.sub
      (f64.add
       (get_local $1)
       (get_local $0)
      )
      (f64.const 1)
     )
     (if (result f64)
      (f64.le
       (get_local $1)
       (f64.const -0.5)
      )
      (f64.add
       (f64.add
        (get_local $1)
        (get_local $0)
       )
       (f64.const 1)
      )
      (f64.add
       (get_local $1)
       (get_local $0)
      )
     )
    )
   )
  )
 )
 (func $std/libm/round (; 50 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.round
   (get_local $0)
  )
 )
 (func $std/libm/sign (; 51 ;) (type $FF) (param $0 f64) (result f64)
  (if (result f64)
   (f64.gt
    (f64.abs
     (get_local $0)
    )
    (f64.const 0)
   )
   (f64.copysign
    (f64.const 1)
    (get_local $0)
   )
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.sinh (; 52 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i64)
  (local $4 i32)
  (set_local $2
   (f64.const 0.5)
  )
  (if
   (i64.ne
    (i64.shr_u
     (tee_local $3
      (i64.reinterpret/f64
       (get_local $0)
      )
     )
     (i64.const 63)
    )
    (i64.const 0)
   )
   (set_local $2
    (f64.const -0.5)
   )
  )
  (set_local $1
   (f64.reinterpret/i64
    (tee_local $3
     (i64.and
      (get_local $3)
      (i64.const 9223372036854775807)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (tee_local $4
     (i32.wrap/i64
      (i64.shr_u
       (get_local $3)
       (i64.const 32)
      )
     )
    )
    (i32.const 1082535490)
   )
   (block
    (set_local $1
     (call $~lib/math/NativeMath.expm1
      (get_local $1)
     )
    )
    (if
     (i32.lt_u
      (get_local $4)
      (i32.const 1072693248)
     )
     (block
      (if
       (i32.lt_u
        (get_local $4)
        (i32.const 1045430272)
       )
       (return
        (get_local $0)
       )
      )
      (return
       (f64.mul
        (get_local $2)
        (f64.sub
         (f64.mul
          (f64.const 2)
          (get_local $1)
         )
         (f64.div
          (f64.mul
           (get_local $1)
           (get_local $1)
          )
          (f64.add
           (get_local $1)
           (f64.const 1)
          )
         )
        )
       )
      )
     )
    )
    (return
     (f64.mul
      (get_local $2)
      (f64.add
       (get_local $1)
       (f64.div
        (get_local $1)
        (f64.add
         (get_local $1)
         (f64.const 1)
        )
       )
      )
     )
    )
   )
  )
  (f64.mul
   (f64.mul
    (f64.const 2)
    (get_local $2)
   )
   (call $~lib/math/expo2
    (get_local $1)
   )
  )
 )
 (func $std/libm/sinh (; 53 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.sinh
   (get_local $0)
  )
 )
 (func $std/libm/sqrt (; 54 ;) (type $FF) (param $0 f64) (result f64)
  (f64.sqrt
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.tanh (; 55 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.wrap/i64
    (i64.shr_u
     (tee_local $1
      (i64.reinterpret/f64
       (get_local $0)
      )
     )
     (i64.const 63)
    )
   )
  )
  (set_local $0
   (f64.reinterpret/i64
    (tee_local $1
     (i64.and
      (get_local $1)
      (i64.const 9223372036854775807)
     )
    )
   )
  )
  (if
   (i32.gt_u
    (tee_local $2
     (i32.wrap/i64
      (i64.shr_u
       (get_local $1)
       (i64.const 32)
      )
     )
    )
    (i32.const 1071748074)
   )
   (set_local $0
    (if (result f64)
     (i32.gt_u
      (get_local $2)
      (i32.const 1077149696)
     )
     (f64.sub
      (f64.const 1)
      (f64.div
       (f64.const 0)
       (get_local $0)
      )
     )
     (f64.sub
      (f64.const 1)
      (f64.div
       (f64.const 2)
       (f64.add
        (call $~lib/math/NativeMath.expm1
         (f64.mul
          (f64.const 2)
          (get_local $0)
         )
        )
        (f64.const 2)
       )
      )
     )
    )
   )
   (if
    (i32.gt_u
     (get_local $2)
     (i32.const 1070618798)
    )
    (set_local $0
     (f64.div
      (tee_local $0
       (call $~lib/math/NativeMath.expm1
        (f64.mul
         (f64.const 2)
         (get_local $0)
        )
       )
      )
      (f64.add
       (get_local $0)
       (f64.const 2)
      )
     )
    )
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 1048576)
     )
     (set_local $0
      (f64.div
       (f64.neg
        (tee_local $0
         (call $~lib/math/NativeMath.expm1
          (f64.mul
           (f64.const -2)
           (get_local $0)
          )
         )
        )
       )
       (f64.add
        (get_local $0)
        (f64.const 2)
       )
      )
     )
    )
   )
  )
  (if
   (get_local $3)
   (set_local $0
    (f64.neg
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $std/libm/tanh (; 56 ;) (type $FF) (param $0 f64) (result f64)
  (call $~lib/math/NativeMath.tanh
   (get_local $0)
  )
 )
 (func $std/libm/trunc (; 57 ;) (type $FF) (param $0 f64) (result f64)
  (f64.trunc
   (get_local $0)
  )
 )
)
