(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FFFii (func (param f64 f64 f64 i32) (result i32)))
 (type $Fi (func (param f64) (result i32)))
 (type $FFFF (func (param f64 f64 f64) (result f64)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $Fv (func (param f64)))
 (type $fffii (func (param f32 f32 f32 i32) (result i32)))
 (type $fi (func (param f32) (result i32)))
 (type $ffff (func (param f32 f32 f32) (result f32)))
 (type $fif (func (param f32 i32) (result f32)))
 (type $FiFFii (func (param f64 i32 f64 f64 i32) (result i32)))
 (type $fiffii (func (param f32 i32 f32 f32 i32) (result i32)))
 (type $FF (func (param f64) (result f64)))
 (type $ff (func (param f32) (result f32)))
 (type $FFFFii (func (param f64 f64 f64 f64 i32) (result i32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $ffffii (func (param f32 f32 f32 f32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $F (func (result f64)))
 (type $Iv (func (param i64)))
 (type $II (func (param i64) (result i64)))
 (type $f (func (result f32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "JSMath" "E" (global $~lib/math/JSMath.E f64))
 (import "env" "logf" (func $std/math/logf (param f64)))
 (import "JSMath" "LN2" (global $~lib/math/JSMath.LN2 f64))
 (import "JSMath" "LN10" (global $~lib/math/JSMath.LN10 f64))
 (import "JSMath" "LOG2E" (global $~lib/math/JSMath.LOG2E f64))
 (import "JSMath" "PI" (global $~lib/math/JSMath.PI f64))
 (import "JSMath" "SQRT1_2" (global $~lib/math/JSMath.SQRT1_2 f64))
 (import "JSMath" "SQRT2" (global $~lib/math/JSMath.SQRT2 f64))
 (import "JSMath" "abs" (func $~lib/math/JSMath.abs (param f64) (result f64)))
 (import "JSMath" "acos" (func $~lib/math/JSMath.acos (param f64) (result f64)))
 (import "JSMath" "acosh" (func $~lib/math/JSMath.acosh (param f64) (result f64)))
 (import "JSMath" "asin" (func $~lib/math/JSMath.asin (param f64) (result f64)))
 (import "JSMath" "asinh" (func $~lib/math/JSMath.asinh (param f64) (result f64)))
 (import "JSMath" "atan" (func $~lib/math/JSMath.atan (param f64) (result f64)))
 (import "JSMath" "atanh" (func $~lib/math/JSMath.atanh (param f64) (result f64)))
 (import "JSMath" "atan2" (func $~lib/math/JSMath.atan2 (param f64 f64) (result f64)))
 (import "JSMath" "cbrt" (func $~lib/math/JSMath.cbrt (param f64) (result f64)))
 (import "JSMath" "ceil" (func $~lib/math/JSMath.ceil (param f64) (result f64)))
 (import "JSMath" "cosh" (func $~lib/math/JSMath.cosh (param f64) (result f64)))
 (import "JSMath" "exp" (func $~lib/math/JSMath.exp (param f64) (result f64)))
 (import "JSMath" "expm1" (func $~lib/math/JSMath.expm1 (param f64) (result f64)))
 (import "JSMath" "floor" (func $~lib/math/JSMath.floor (param f64) (result f64)))
 (import "JSMath" "hypot" (func $~lib/math/JSMath.hypot (param f64 f64) (result f64)))
 (import "JSMath" "log" (func $~lib/math/JSMath.log (param f64) (result f64)))
 (import "JSMath" "log10" (func $~lib/math/JSMath.log10 (param f64) (result f64)))
 (import "JSMath" "log1p" (func $~lib/math/JSMath.log1p (param f64) (result f64)))
 (import "JSMath" "log2" (func $~lib/math/JSMath.log2 (param f64) (result f64)))
 (import "JSMath" "max" (func $~lib/math/JSMath.max (param f64 f64) (result f64)))
 (import "JSMath" "min" (func $~lib/math/JSMath.min (param f64 f64) (result f64)))
 (import "JSOp" "mod" (func $std/math/JSOp.mod (param f64 f64) (result f64)))
 (import "JSMath" "pow" (func $~lib/math/JSMath.pow (param f64 f64) (result f64)))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (import "JSMath" "sign" (func $~lib/math/JSMath.sign (param f64) (result f64)))
 (import "JSMath" "sinh" (func $~lib/math/JSMath.sinh (param f64) (result f64)))
 (import "JSMath" "sqrt" (func $~lib/math/JSMath.sqrt (param f64) (result f64)))
 (import "JSMath" "tanh" (func $~lib/math/JSMath.tanh (param f64) (result f64)))
 (import "JSMath" "trunc" (func $~lib/math/JSMath.trunc (param f64) (result f64)))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1 (mut i64) (i64.const 0))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00s\00t\00d\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 36) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $isNaN<f64> (; 31 ;) (type $Fi) (param $0 f64) (result i32)
  (f64.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $std/math/signbit (; 32 ;) (type $Fi) (param $0 f64) (result i32)
  (i32.wrap/i64
   (i64.shr_u
    (i64.reinterpret/f64
     (get_local $0)
    )
    (i64.const 63)
   )
  )
 )
 (func $isFinite<f64> (; 33 ;) (type $Fi) (param $0 f64) (result i32)
  (f64.eq
   (f64.sub
    (get_local $0)
    (get_local $0)
   )
   (f64.const 0)
  )
 )
 (func $std/math/eulp (; 34 ;) (type $Fi) (param $0 f64) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (tee_local $1
     (i32.wrap/i64
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
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (i32.add
   (get_local $1)
   (i32.const -1075)
  )
 )
 (func $~lib/math/NativeMath.scalbn (; 35 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
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
 (func $std/math/ulperr (; 36 ;) (type $FFFF) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  (local $3 i32)
  (if
   (tee_local $3
    (call $isNaN<f64>
     (get_local $0)
    )
   )
   (set_local $3
    (call $isNaN<f64>
     (get_local $1)
    )
   )
  )
  (if
   (get_local $3)
   (return
    (f64.const 0)
   )
  )
  (if
   (f64.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (call $std/math/signbit
       (get_local $0)
      )
      (call $std/math/signbit
       (get_local $1)
      )
     )
     (return
      (get_local $2)
     )
    )
    (return
     (f64.const inf)
    )
   )
  )
  (if
   (i32.eqz
    (call $isFinite<f64>
     (get_local $0)
    )
   )
   (block
    (set_local $0
     (f64.copysign
      (f64.const 8988465674311579538646525e283)
      (get_local $0)
     )
    )
    (set_local $1
     (f64.mul
      (get_local $1)
      (f64.const 0.5)
     )
    )
   )
  )
  (f64.add
   (call $~lib/math/NativeMath.scalbn
    (f64.sub
     (get_local $0)
     (get_local $1)
    )
    (i32.sub
     (i32.const 0)
     (call $std/math/eulp
      (get_local $1)
     )
    )
   )
   (get_local $2)
  )
 )
 (func $std/math/check<f64> (; 37 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 f64)
  (if
   (f64.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (call $isNaN<f64>
    (get_local $1)
   )
   (return
    (call $isNaN<f64>
     (get_local $0)
    )
   )
  )
  (if
   (f64.ge
    (f64.abs
     (tee_local $4
      (call $std/math/ulperr
       (get_local $0)
       (get_local $1)
       (get_local $2)
      )
     )
    )
    (f64.const 1.5)
   )
   (block
    (call $std/math/logf
     (f64.abs
      (get_local $4)
     )
    )
    (return
     (i32.const 0)
    )
   )
  )
  (i32.const 1)
 )
 (func $isNaN<f32> (; 38 ;) (type $fi) (param $0 f32) (result i32)
  (f32.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $std/math/signbitf (; 39 ;) (type $fi) (param $0 f32) (result i32)
  (i32.shr_u
   (i32.reinterpret/f32
    (get_local $0)
   )
   (i32.const 31)
  )
 )
 (func $isFinite<f32> (; 40 ;) (type $fi) (param $0 f32) (result i32)
  (f32.eq
   (f32.sub
    (get_local $0)
    (get_local $0)
   )
   (f32.const 0)
  )
 )
 (func $std/math/eulpf (; 41 ;) (type $fi) (param $0 f32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (tee_local $1
     (i32.and
      (i32.shr_u
       (i32.reinterpret/f32
        (get_local $0)
       )
       (i32.const 23)
      )
      (i32.const 255)
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (i32.add
   (get_local $1)
   (i32.const -150)
  )
 )
 (func $~lib/math/NativeMathf.scalbn (; 42 ;) (type $fif) (param $0 f32) (param $1 i32) (result f32)
  (local $2 f32)
  (set_local $2
   (get_local $0)
  )
  (if
   (i32.gt_s
    (get_local $1)
    (i32.const 127)
   )
   (block
    (set_local $2
     (f32.mul
      (get_local $2)
      (f32.const 1701411834604692317316873e14)
     )
    )
    (if
     (i32.gt_s
      (tee_local $1
       (i32.sub
        (get_local $1)
        (i32.const 127)
       )
      )
      (i32.const 127)
     )
     (block
      (set_local $2
       (f32.mul
        (get_local $2)
        (f32.const 1701411834604692317316873e14)
       )
      )
      (if
       (i32.gt_s
        (tee_local $1
         (i32.sub
          (get_local $1)
          (i32.const 127)
         )
        )
        (i32.const 127)
       )
       (set_local $1
        (i32.const 127)
       )
      )
     )
    )
   )
   (if
    (i32.lt_s
     (get_local $1)
     (i32.const -126)
    )
    (block
     (set_local $2
      (f32.mul
       (get_local $2)
       (f32.const 1.1754943508222875e-38)
      )
     )
     (if
      (i32.lt_s
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 126)
        )
       )
       (i32.const -126)
      )
      (block
       (set_local $2
        (f32.mul
         (get_local $2)
         (f32.const 1.1754943508222875e-38)
        )
       )
       (if
        (i32.lt_s
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 126)
          )
         )
         (i32.const -126)
        )
        (set_local $1
         (i32.const -126)
        )
       )
      )
     )
    )
   )
  )
  (f32.mul
   (get_local $2)
   (f32.reinterpret/i32
    (i32.shl
     (i32.add
      (get_local $1)
      (i32.const 127)
     )
     (i32.const 23)
    )
   )
  )
 )
 (func $std/math/ulperrf (; 43 ;) (type $ffff) (param $0 f32) (param $1 f32) (param $2 f32) (result f32)
  (local $3 i32)
  (if
   (tee_local $3
    (call $isNaN<f32>
     (get_local $0)
    )
   )
   (set_local $3
    (call $isNaN<f32>
     (get_local $1)
    )
   )
  )
  (if
   (get_local $3)
   (return
    (f32.const 0)
   )
  )
  (if
   (f32.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (call $std/math/signbitf
       (get_local $0)
      )
      (call $std/math/signbitf
       (get_local $1)
      )
     )
     (return
      (get_local $2)
     )
    )
    (return
     (f32.const inf)
    )
   )
  )
  (if
   (i32.eqz
    (call $isFinite<f32>
     (get_local $0)
    )
   )
   (block
    (set_local $0
     (f32.copysign
      (f32.const 1701411834604692317316873e14)
      (get_local $0)
     )
    )
    (set_local $1
     (f32.mul
      (get_local $1)
      (f32.const 0.5)
     )
    )
   )
  )
  (f32.add
   (call $~lib/math/NativeMathf.scalbn
    (f32.sub
     (get_local $0)
     (get_local $1)
    )
    (i32.sub
     (i32.const 0)
     (call $std/math/eulpf
      (get_local $1)
     )
    )
   )
   (get_local $2)
  )
 )
 (func $std/math/check<f32> (; 44 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (local $4 f32)
  (if
   (f32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (call $isNaN<f32>
    (get_local $1)
   )
   (return
    (call $isNaN<f32>
     (get_local $0)
    )
   )
  )
  (if
   (f32.ge
    (f32.abs
     (tee_local $4
      (call $std/math/ulperrf
       (get_local $0)
       (get_local $1)
       (get_local $2)
      )
     )
    )
    (f32.const 1.5)
   )
   (block
    (call $std/math/logf
     (f64.promote/f32
      (f32.abs
       (get_local $4)
      )
     )
    )
    (return
     (i32.const 0)
    )
   )
  )
  (i32.const 1)
 )
 (func $std/math/test_scalbn (; 45 ;) (type $FiFFii) (param $0 f64) (param $1 i32) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (call $std/math/check<f64>
   (call $~lib/math/NativeMath.scalbn
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $std/math/test_scalbnf (; 46 ;) (type $fiffii) (param $0 f32) (param $1 i32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.scalbn
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $std/math/test_abs (; 47 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (f64.abs
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.abs
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_absf (; 48 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (f32.abs
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/R (; 49 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $~lib/math/NativeMath.acos (; 50 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_acos (; 51 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.acos
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.acos
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/Rf (; 52 ;) (type $ff) (param $0 f32) (result f32)
  (f32.div
   (f32.mul
    (get_local $0)
    (f32.add
     (f32.const 0.16666586697101593)
     (f32.mul
      (get_local $0)
      (f32.add
       (f32.const -0.04274342209100723)
       (f32.mul
        (get_local $0)
        (f32.const -0.008656363002955914)
       )
      )
     )
    )
   )
   (f32.add
    (f32.const 1)
    (f32.mul
     (get_local $0)
     (f32.const -0.7066296339035034)
    )
   )
  )
 )
 (func $~lib/math/NativeMathf.acos (; 53 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (if
   (i32.ge_u
    (tee_local $3
     (i32.and
      (tee_local $1
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 2147483647)
     )
    )
    (i32.const 1065353216)
   )
   (block
    (if
     (i32.eq
      (get_local $3)
      (i32.const 1065353216)
     )
     (block
      (if
       (i32.shr_u
        (get_local $1)
        (i32.const 31)
       )
       (return
        (f32.const 3.141592502593994)
       )
      )
      (return
       (f32.const 0)
      )
     )
    )
    (return
     (f32.div
      (f32.const 0)
      (f32.sub
       (get_local $0)
       (get_local $0)
      )
     )
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $3)
    (i32.const 1056964608)
   )
   (block
    (if
     (i32.le_u
      (get_local $3)
      (i32.const 847249408)
     )
     (return
      (f32.const 1.570796251296997)
     )
    )
    (return
     (f32.sub
      (f32.const 1.570796251296997)
      (f32.sub
       (get_local $0)
       (f32.sub
        (f32.const 7.549789415861596e-08)
        (f32.mul
         (get_local $0)
         (call $~lib/math/Rf
          (f32.mul
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
    (get_local $1)
    (i32.const 31)
   )
   (return
    (f32.mul
     (f32.const 2)
     (f32.sub
      (f32.const 1.570796251296997)
      (f32.add
       (tee_local $2
        (f32.sqrt
         (tee_local $0
          (f32.mul
           (f32.add
            (f32.const 1)
            (get_local $0)
           )
           (f32.const 0.5)
          )
         )
        )
       )
       (f32.sub
        (f32.mul
         (call $~lib/math/Rf
          (get_local $0)
         )
         (get_local $2)
        )
        (f32.const 7.549789415861596e-08)
       )
      )
     )
    )
   )
  )
  (set_local $1
   (i32.reinterpret/f32
    (tee_local $2
     (f32.sqrt
      (tee_local $0
       (f32.mul
        (f32.sub
         (f32.const 1)
         (get_local $0)
        )
        (f32.const 0.5)
       )
      )
     )
    )
   )
  )
  (set_local $5
   (f32.div
    (f32.sub
     (get_local $0)
     (f32.mul
      (tee_local $4
       (f32.reinterpret/i32
        (i32.and
         (get_local $1)
         (i32.const -4096)
        )
       )
      )
      (get_local $4)
     )
    )
    (f32.add
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (f32.mul
   (f32.const 2)
   (f32.add
    (get_local $4)
    (f32.add
     (f32.mul
      (call $~lib/math/Rf
       (get_local $0)
      )
      (get_local $2)
     )
     (get_local $5)
    )
   )
  )
 )
 (func $std/math/test_acosf (; 54 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.acos
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.log1p (; 55 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $~lib/math/NativeMath.log (; 56 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $~lib/math/NativeMath.acosh (; 57 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_acosh (; 58 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.acosh
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.acosh
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.log1p (; 59 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (set_local $2
   (i32.const 1)
  )
  (if
   (i32.eqz
    (tee_local $5
     (i32.lt_u
      (tee_local $3
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 1054086096)
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
      (i32.const -1082130432)
     )
     (block
      (if
       (f32.eq
        (get_local $0)
        (f32.const -1)
       )
       (return
        (f32.div
         (get_local $0)
         (f32.const 0)
        )
       )
      )
      (return
       (f32.div
        (f32.sub
         (get_local $0)
         (get_local $0)
        )
        (f32.const 0)
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
      (i32.const 1728053248)
     )
     (return
      (get_local $0)
     )
    )
    (if
     (i32.le_u
      (get_local $3)
      (i32.const -1097468391)
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
     (i32.const 2139095040)
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
     (if (result f32)
      (i32.lt_s
       (tee_local $2
        (i32.sub
         (i32.shr_u
          (tee_local $5
           (i32.add
            (i32.reinterpret/f32
             (tee_local $1
              (f32.add
               (f32.const 1)
               (get_local $0)
              )
             )
            )
            (i32.const 4913933)
           )
          )
          (i32.const 23)
         )
         (i32.const 127)
        )
       )
       (i32.const 25)
      )
      (f32.div
       (tee_local $4
        (if (result f32)
         (i32.ge_s
          (get_local $2)
          (i32.const 2)
         )
         (f32.sub
          (f32.const 1)
          (f32.sub
           (get_local $1)
           (get_local $0)
          )
         )
         (f32.sub
          (get_local $0)
          (f32.sub
           (get_local $1)
           (f32.const 1)
          )
         )
        )
       )
       (get_local $1)
      )
      (f32.const 0)
     )
    )
    (set_local $1
     (f32.sub
      (f32.reinterpret/i32
       (i32.add
        (i32.and
         (get_local $5)
         (i32.const 8388607)
        )
        (i32.const 1060439283)
       )
      )
      (f32.const 1)
     )
    )
   )
  )
  (set_local $0
   (f32.mul
    (tee_local $7
     (f32.mul
      (tee_local $6
       (f32.div
        (get_local $1)
        (f32.add
         (f32.const 2)
         (get_local $1)
        )
       )
      )
      (get_local $6)
     )
    )
    (get_local $7)
   )
  )
  (f32.add
   (f32.add
    (f32.sub
     (f32.add
      (f32.mul
       (get_local $6)
       (f32.add
        (tee_local $6
         (f32.mul
          (f32.mul
           (f32.const 0.5)
           (get_local $1)
          )
          (get_local $1)
         )
        )
        (f32.add
         (f32.mul
          (get_local $7)
          (f32.add
           (f32.const 0.6666666269302368)
           (f32.mul
            (get_local $0)
            (f32.const 0.2849878668785095)
           )
          )
         )
         (f32.mul
          (get_local $0)
          (f32.add
           (f32.const 0.40000972151756287)
           (f32.mul
            (get_local $0)
            (f32.const 0.24279078841209412)
           )
          )
         )
        )
       )
      )
      (f32.add
       (f32.mul
        (tee_local $0
         (f32.convert_s/i32
          (get_local $2)
         )
        )
        (f32.const 9.05800061445916e-06)
       )
       (get_local $4)
      )
     )
     (get_local $6)
    )
    (get_local $1)
   )
   (f32.mul
    (get_local $0)
    (f32.const 0.6931381225585938)
   )
  )
 )
 (func $~lib/math/NativeMathf.log (; 60 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (if
   (i32.eqz
    (tee_local $5
     (i32.lt_u
      (tee_local $1
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 8388608)
     )
    )
   )
   (set_local $5
    (i32.shr_u
     (get_local $1)
     (i32.const 31)
    )
   )
  )
  (if
   (get_local $5)
   (block
    (if
     (i32.eqz
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (return
      (f32.div
       (f32.const -1)
       (f32.mul
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
      (f32.div
       (f32.sub
        (get_local $0)
        (get_local $0)
       )
       (f32.const 0)
      )
     )
    )
    (set_local $3
     (i32.const -25)
    )
    (set_local $1
     (i32.reinterpret/f32
      (f32.mul
       (get_local $0)
       (f32.const 33554432)
      )
     )
    )
   )
   (if
    (i32.ge_u
     (get_local $1)
     (i32.const 2139095040)
    )
    (return
     (get_local $0)
    )
    (if
     (i32.eq
      (get_local $1)
      (i32.const 1065353216)
     )
     (return
      (f32.const 0)
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
        (i32.const 4913933)
       )
      )
      (i32.const 23)
     )
     (i32.const 127)
    )
   )
  )
  (set_local $2
   (f32.mul
    (tee_local $6
     (f32.mul
      (tee_local $4
       (f32.div
        (tee_local $0
         (f32.sub
          (f32.reinterpret/i32
           (i32.add
            (i32.and
             (get_local $1)
             (i32.const 8388607)
            )
            (i32.const 1060439283)
           )
          )
          (f32.const 1)
         )
        )
        (f32.add
         (f32.const 2)
         (get_local $0)
        )
       )
      )
      (get_local $4)
     )
    )
    (get_local $6)
   )
  )
  (f32.add
   (f32.add
    (f32.sub
     (f32.add
      (f32.mul
       (get_local $4)
       (f32.add
        (tee_local $4
         (f32.mul
          (f32.mul
           (f32.const 0.5)
           (get_local $0)
          )
          (get_local $0)
         )
        )
        (f32.add
         (f32.mul
          (get_local $6)
          (f32.add
           (f32.const 0.6666666269302368)
           (f32.mul
            (get_local $2)
            (f32.const 0.2849878668785095)
           )
          )
         )
         (f32.mul
          (get_local $2)
          (f32.add
           (f32.const 0.40000972151756287)
           (f32.mul
            (get_local $2)
            (f32.const 0.24279078841209412)
           )
          )
         )
        )
       )
      )
      (f32.mul
       (tee_local $2
        (f32.convert_s/i32
         (get_local $3)
        )
       )
       (f32.const 9.05800061445916e-06)
      )
     )
     (get_local $4)
    )
    (get_local $0)
   )
   (f32.mul
    (get_local $2)
    (f32.const 0.6931381225585938)
   )
  )
 )
 (func $~lib/math/NativeMathf.acosh (; 61 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (if
   (i32.lt_u
    (tee_local $1
     (i32.and
      (i32.reinterpret/f32
       (get_local $0)
      )
      (i32.const 2147483647)
     )
    )
    (i32.const 1073741824)
   )
   (return
    (call $~lib/math/NativeMathf.log1p
     (f32.add
      (tee_local $0
       (f32.sub
        (get_local $0)
        (f32.const 1)
       )
      )
      (f32.sqrt
       (f32.add
        (f32.mul
         (get_local $0)
         (get_local $0)
        )
        (f32.mul
         (f32.const 2)
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
    (i32.const 1166016512)
   )
   (return
    (call $~lib/math/NativeMathf.log
     (f32.sub
      (f32.mul
       (f32.const 2)
       (get_local $0)
      )
      (f32.div
       (f32.const 1)
       (f32.add
        (get_local $0)
        (f32.sqrt
         (f32.sub
          (f32.mul
           (get_local $0)
           (get_local $0)
          )
          (f32.const 1)
         )
        )
       )
      )
     )
    )
   )
  )
  (f32.add
   (call $~lib/math/NativeMathf.log
    (get_local $0)
   )
   (f32.const 0.6931471824645996)
  )
 )
 (func $std/math/test_acoshf (; 62 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.acosh
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.asin (; 63 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_asin (; 64 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.asin
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.asin
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.asin (; 65 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (if
   (i32.ge_u
    (tee_local $2
     (i32.and
      (tee_local $1
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 2147483647)
     )
    )
    (i32.const 1065353216)
   )
   (block
    (if
     (i32.eq
      (get_local $2)
      (i32.const 1065353216)
     )
     (return
      (f32.add
       (f32.mul
        (get_local $0)
        (f32.const 1.5707963705062866)
       )
       (f32.const 7.52316384526264e-37)
      )
     )
    )
    (return
     (f32.div
      (f32.const 0)
      (f32.sub
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
    (i32.const 1056964608)
   )
   (block
    (if
     (tee_local $1
      (i32.lt_u
       (get_local $2)
       (i32.const 964689920)
      )
     )
     (set_local $1
      (i32.ge_u
       (get_local $2)
       (i32.const 8388608)
      )
     )
    )
    (if
     (get_local $1)
     (return
      (get_local $0)
     )
    )
    (return
     (f32.add
      (get_local $0)
      (f32.mul
       (get_local $0)
       (call $~lib/math/Rf
        (f32.mul
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
   (f32.demote/f64
    (f64.sub
     (f64.const 1.5707963705062866)
     (f64.mul
      (f64.const 2)
      (f64.add
       (tee_local $3
        (f64.sqrt
         (f64.promote/f32
          (tee_local $0
           (f32.mul
            (f32.sub
             (f32.const 1)
             (f32.abs
              (get_local $0)
             )
            )
            (f32.const 0.5)
           )
          )
         )
        )
       )
       (f64.mul
        (get_local $3)
        (f64.promote/f32
         (call $~lib/math/Rf
          (get_local $0)
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
    (get_local $1)
    (i32.const 31)
   )
   (return
    (f32.neg
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $std/math/test_asinf (; 66 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.asin
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.asinh (; 67 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_asinh (; 68 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.asinh
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.asinh
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.asinh (; 69 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.shr_u
    (tee_local $1
     (i32.reinterpret/f32
      (get_local $0)
     )
    )
    (i32.const 31)
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (tee_local $1
     (tee_local $2
      (i32.and
       (get_local $1)
       (i32.const 2147483647)
      )
     )
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 1166016512)
   )
   (set_local $0
    (f32.add
     (call $~lib/math/NativeMathf.log
      (get_local $0)
     )
     (f32.const 0.6931471824645996)
    )
   )
   (if
    (i32.ge_u
     (get_local $2)
     (i32.const 1073741824)
    )
    (set_local $0
     (call $~lib/math/NativeMathf.log
      (f32.add
       (f32.mul
        (f32.const 2)
        (get_local $0)
       )
       (f32.div
        (f32.const 1)
        (f32.add
         (f32.sqrt
          (f32.add
           (f32.mul
            (get_local $0)
            (get_local $0)
           )
           (f32.const 1)
          )
         )
         (get_local $0)
        )
       )
      )
     )
    )
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 964689920)
     )
     (set_local $0
      (call $~lib/math/NativeMathf.log1p
       (f32.add
        (get_local $0)
        (f32.div
         (tee_local $0
          (f32.mul
           (get_local $0)
           (get_local $0)
          )
         )
         (f32.add
          (f32.sqrt
           (f32.add
            (get_local $0)
            (f32.const 1)
           )
          )
          (f32.const 1)
         )
        )
       )
      )
     )
    )
   )
  )
  (if
   (get_local $3)
   (set_local $0
    (f32.neg
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $std/math/test_asinhf (; 70 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.asinh
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.atan (; 71 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_atan (; 72 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.atan
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.atan
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.atan (; 73 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (set_local $4
   (i32.shr_u
    (tee_local $1
     (i32.reinterpret/f32
      (get_local $0)
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
    (i32.const 1283457024)
   )
   (block
    (if
     (call $isNaN<f32>
      (get_local $0)
     )
     (return
      (get_local $0)
     )
    )
    (return
     (tee_local $0
      (if (result f32)
       (get_local $4)
       (f32.const -1.570796251296997)
       (f32.const 1.570796251296997)
      )
     )
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $1)
    (i32.const 1054867456)
   )
   (block
    (if
     (i32.lt_u
      (get_local $1)
      (i32.const 964689920)
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
     (f32.abs
      (get_local $0)
     )
    )
    (set_local $0
     (if (result f32)
      (i32.lt_u
       (get_local $1)
       (i32.const 1066926080)
      )
      (if (result f32)
       (i32.lt_u
        (get_local $1)
        (i32.const 1060110336)
       )
       (block (result f32)
        (set_local $1
         (i32.const 0)
        )
        (f32.div
         (f32.sub
          (f32.mul
           (f32.const 2)
           (get_local $0)
          )
          (f32.const 1)
         )
         (f32.add
          (f32.const 2)
          (get_local $0)
         )
        )
       )
       (block (result f32)
        (set_local $1
         (i32.const 1)
        )
        (f32.div
         (f32.sub
          (get_local $0)
          (f32.const 1)
         )
         (f32.add
          (get_local $0)
          (f32.const 1)
         )
        )
       )
      )
      (if (result f32)
       (i32.lt_u
        (get_local $1)
        (i32.const 1075576832)
       )
       (block (result f32)
        (set_local $1
         (i32.const 2)
        )
        (f32.div
         (f32.sub
          (get_local $0)
          (f32.const 1.5)
         )
         (f32.add
          (f32.const 1)
          (f32.mul
           (f32.const 1.5)
           (get_local $0)
          )
         )
        )
       )
       (block (result f32)
        (set_local $1
         (i32.const 3)
        )
        (f32.div
         (f32.const -1)
         (get_local $0)
        )
       )
      )
     )
    )
   )
  )
  (set_local $3
   (f32.mul
    (tee_local $2
     (f32.mul
      (get_local $0)
      (get_local $0)
     )
    )
    (get_local $2)
   )
  )
  (set_local $2
   (f32.mul
    (get_local $2)
    (f32.add
     (f32.const 0.333333283662796)
     (f32.mul
      (get_local $3)
      (f32.add
       (f32.const 0.14253635704517365)
       (f32.mul
        (get_local $3)
        (f32.const 0.06168760731816292)
       )
      )
     )
    )
   )
  )
  (set_local $3
   (f32.mul
    (get_local $3)
    (f32.add
     (f32.const -0.19999158382415771)
     (f32.mul
      (get_local $3)
      (f32.const -0.106480173766613)
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
    (f32.sub
     (get_local $0)
     (f32.mul
      (get_local $0)
      (f32.add
       (get_local $2)
       (get_local $3)
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
       (set_local $2
        (f32.sub
         (f32.const 0.46364760398864746)
         (f32.sub
          (f32.sub
           (f32.mul
            (get_local $0)
            (f32.add
             (get_local $2)
             (get_local $3)
            )
           )
           (f32.const 5.01215824399992e-09)
          )
          (get_local $0)
         )
        )
       )
       (br $break|0)
      )
      (set_local $2
       (f32.sub
        (f32.const 0.7853981256484985)
        (f32.sub
         (f32.sub
          (f32.mul
           (get_local $0)
           (f32.add
            (get_local $2)
            (get_local $3)
           )
          )
          (f32.const 3.774894707930798e-08)
         )
         (get_local $0)
        )
       )
      )
      (br $break|0)
     )
     (set_local $2
      (f32.sub
       (f32.const 0.9827936887741089)
       (f32.sub
        (f32.sub
         (f32.mul
          (get_local $0)
          (f32.add
           (get_local $2)
           (get_local $3)
          )
         )
         (f32.const 3.447321716976148e-08)
        )
        (get_local $0)
       )
      )
     )
     (br $break|0)
    )
    (set_local $2
     (f32.sub
      (f32.const 1.570796251296997)
      (f32.sub
       (f32.sub
        (f32.mul
         (get_local $0)
         (f32.add
          (get_local $2)
          (get_local $3)
         )
        )
        (f32.const 7.549789415861596e-08)
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
   (set_local $2
    (f32.neg
     (get_local $2)
    )
   )
  )
  (get_local $2)
 )
 (func $std/math/test_atanf (; 74 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.atan
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.atanh (; 75 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_atanh (; 76 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.atanh
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.atanh
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.atanh (; 77 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (set_local $2
   (i32.shr_u
    (tee_local $1
     (i32.reinterpret/f32
      (get_local $0)
     )
    )
    (i32.const 31)
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (tee_local $1
     (i32.and
      (get_local $1)
      (i32.const 2147483647)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $1)
    (i32.const 1056964608)
   )
   (if
    (i32.ge_u
     (get_local $1)
     (i32.const 796917760)
    )
    (set_local $0
     (f32.mul
      (f32.const 0.5)
      (call $~lib/math/NativeMathf.log1p
       (f32.add
        (tee_local $3
         (f32.mul
          (f32.const 2)
          (get_local $0)
         )
        )
        (f32.div
         (f32.mul
          (get_local $3)
          (get_local $0)
         )
         (f32.sub
          (f32.const 1)
          (get_local $0)
         )
        )
       )
      )
     )
    )
   )
   (set_local $0
    (f32.mul
     (f32.const 0.5)
     (call $~lib/math/NativeMathf.log1p
      (f32.mul
       (f32.const 2)
       (f32.div
        (get_local $0)
        (f32.sub
         (f32.const 1)
         (get_local $0)
        )
       )
      )
     )
    )
   )
  )
  (if
   (get_local $2)
   (set_local $0
    (f32.neg
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $std/math/test_atanhf (; 78 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.atanh
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.atan2 (; 79 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
 (func $std/math/test_atan2 (; 80 ;) (type $FFFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (local $5 i32)
  (tee_local $4
   (if (result i32)
    (tee_local $5
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.atan2
       (get_local $0)
       (get_local $1)
      )
      (get_local $2)
      (get_local $3)
      (get_local $4)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.atan2
       (get_local $0)
       (get_local $1)
      )
     )
     (get_local $2)
     (get_local $3)
     (get_local $4)
    )
    (get_local $5)
   )
  )
 )
 (func $~lib/math/NativeMathf.atan2 (; 81 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $folding-inner0
   (if
    (i32.eqz
     (tee_local $2
      (call $isNaN<f32>
       (get_local $1)
      )
     )
    )
    (set_local $2
     (call $isNaN<f32>
      (get_local $0)
     )
    )
   )
   (if
    (get_local $2)
    (return
     (f32.add
      (get_local $1)
      (get_local $0)
     )
    )
   )
   (set_local $4
    (i32.reinterpret/f32
     (get_local $0)
    )
   )
   (if
    (i32.eq
     (tee_local $5
      (i32.reinterpret/f32
       (get_local $1)
      )
     )
     (i32.const 1065353216)
    )
    (return
     (call $~lib/math/NativeMathf.atan
      (get_local $0)
     )
    )
   )
   (set_local $3
    (i32.or
     (i32.shr_u
      (get_local $4)
      (i32.const 31)
     )
     (i32.and
      (i32.shr_u
       (get_local $5)
       (i32.const 30)
      )
      (i32.const 2)
     )
    )
   )
   (set_local $5
    (i32.and
     (get_local $5)
     (i32.const 2147483647)
    )
   )
   (if
    (i32.eqz
     (tee_local $4
      (i32.and
       (get_local $4)
       (i32.const 2147483647)
      )
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
       (f32.const 3.1415927410125732)
      )
     )
     (return
      (f32.const -3.1415927410125732)
     )
    )
   )
   (br_if $folding-inner0
    (i32.eqz
     (get_local $5)
    )
   )
   (if
    (i32.eq
     (get_local $5)
     (i32.const 2139095040)
    )
    (if
     (i32.eq
      (get_local $4)
      (i32.const 2139095040)
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
          (f32.const 0.7853981852531433)
         )
        )
        (return
         (f32.const -0.7853981852531433)
        )
       )
       (return
        (f32.const 2.356194496154785)
       )
      )
      (return
       (f32.const -2.356194496154785)
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
          (f32.const 0)
         )
        )
        (return
         (f32.const 0)
        )
       )
       (return
        (f32.const 3.1415927410125732)
       )
      )
      (return
       (f32.const -3.1415927410125732)
      )
     )
    )
   )
   (if
    (i32.eqz
     (tee_local $2
      (i32.lt_u
       (i32.add
        (get_local $5)
        (i32.const 218103808)
       )
       (get_local $4)
      )
     )
    )
    (set_local $2
     (i32.eq
      (get_local $4)
      (i32.const 2139095040)
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
       (get_local $4)
       (i32.const 218103808)
      )
      (get_local $5)
     )
    )
   )
   (set_local $0
    (if (result f32)
     (get_local $2)
     (f32.const 0)
     (call $~lib/math/NativeMathf.atan
      (f32.abs
       (f32.div
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
       (f32.neg
        (get_local $0)
       )
      )
     )
     (return
      (f32.sub
       (f32.const 3.1415927410125732)
       (f32.sub
        (get_local $0)
        (f32.const -8.742277657347586e-08)
       )
      )
     )
    )
    (return
     (f32.sub
      (f32.sub
       (get_local $0)
       (f32.const -8.742277657347586e-08)
      )
      (f32.const 3.1415927410125732)
     )
    )
   )
   (unreachable)
  )
  (tee_local $0
   (if (result f32)
    (i32.and
     (get_local $3)
     (i32.const 1)
    )
    (f32.const -1.5707963705062866)
    (f32.const 1.5707963705062866)
   )
  )
 )
 (func $std/math/test_atan2f (; 82 ;) (type $ffffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.atan2
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $~lib/math/NativeMath.cbrt (; 83 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_cbrt (; 84 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.cbrt
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.cbrt
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.cbrt (; 85 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (if
   (i32.ge_u
    (tee_local $3
     (i32.and
      (tee_local $5
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 2147483647)
     )
    )
    (i32.const 2139095040)
   )
   (return
    (f32.add
     (get_local $0)
     (get_local $0)
    )
   )
  )
  (set_local $3
   (if (result i32)
    (i32.lt_u
     (get_local $3)
     (i32.const 8388608)
    )
    (block (result i32)
     (if
      (i32.eqz
       (get_local $3)
      )
      (return
       (get_local $0)
      )
     )
     (i32.add
      (i32.div_u
       (i32.and
        (tee_local $5
         (i32.reinterpret/f32
          (f32.mul
           (get_local $0)
           (f32.const 16777216)
          )
         )
        )
        (i32.const 2147483647)
       )
       (i32.const 3)
      )
      (i32.const 642849266)
     )
    )
    (i32.add
     (i32.div_u
      (get_local $3)
      (i32.const 3)
     )
     (i32.const 709958130)
    )
   )
  )
  (set_local $2
   (f64.mul
    (f64.mul
     (tee_local $1
      (f64.promote/f32
       (f32.reinterpret/i32
        (i32.or
         (i32.and
          (get_local $5)
          (i32.const -2147483648)
         )
         (get_local $3)
        )
       )
      )
     )
     (get_local $1)
    )
    (get_local $1)
   )
  )
  (f32.demote/f64
   (f64.div
    (f64.mul
     (tee_local $1
      (f64.div
       (f64.mul
        (get_local $1)
        (f64.add
         (tee_local $6
          (f64.add
           (tee_local $4
            (f64.promote/f32
             (get_local $0)
            )
           )
           (get_local $4)
          )
         )
         (get_local $2)
        )
       )
       (f64.add
        (f64.add
         (get_local $4)
         (get_local $2)
        )
        (get_local $2)
       )
      )
     )
     (f64.add
      (get_local $6)
      (tee_local $2
       (f64.mul
        (f64.mul
         (get_local $1)
         (get_local $1)
        )
        (get_local $1)
       )
      )
     )
    )
    (f64.add
     (f64.add
      (get_local $4)
      (get_local $2)
     )
     (get_local $2)
    )
   )
  )
 )
 (func $std/math/test_cbrtf (; 86 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.cbrt
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/math/test_ceil (; 87 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (f64.ceil
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.ceil
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_ceilf (; 88 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (f32.ceil
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.expm1 (; 89 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $~lib/math/NativeMath.exp (; 90 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $~lib/math/expo2 (; 91 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $~lib/math/NativeMath.cosh (; 92 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_cosh (; 93 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.cosh
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.cosh
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.expm1 (; 94 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (set_local $2
   (i32.shr_u
    (tee_local $3
     (i32.reinterpret/f32
      (get_local $0)
     )
    )
    (i32.const 31)
   )
  )
  (if
   (i32.ge_u
    (tee_local $3
     (i32.and
      (get_local $3)
      (i32.const 2147483647)
     )
    )
    (i32.const 1100331076)
   )
   (block
    (if
     (i32.gt_u
      (get_local $3)
      (i32.const 2139095040)
     )
     (return
      (get_local $0)
     )
    )
    (if
     (get_local $2)
     (return
      (f32.const -1)
     )
    )
    (if
     (f32.gt
      (get_local $0)
      (f32.const 88.7216796875)
     )
     (return
      (f32.mul
       (get_local $0)
       (f32.const 1701411834604692317316873e14)
      )
     )
    )
   )
  )
  (if
   (i32.gt_u
    (get_local $3)
    (i32.const 1051816472)
   )
   (block
    (if
     (i32.lt_u
      (get_local $3)
      (i32.const 1065686418)
     )
     (set_local $0
      (if (result f32)
       (get_local $2)
       (block (result f32)
        (set_local $1
         (f32.const -9.05800061445916e-06)
        )
        (set_local $2
         (i32.const -1)
        )
        (f32.add
         (get_local $0)
         (f32.const 0.6931381225585938)
        )
       )
       (block (result f32)
        (set_local $1
         (f32.const 9.05800061445916e-06)
        )
        (set_local $2
         (i32.const 1)
        )
        (f32.sub
         (get_local $0)
         (f32.const 0.6931381225585938)
        )
       )
      )
     )
     (block
      (set_local $0
       (f32.sub
        (get_local $0)
        (f32.mul
         (tee_local $1
          (f32.convert_s/i32
           (tee_local $2
            (i32.trunc_s/f32
             (f32.add
              (tee_local $4
               (f32.mul
                (f32.const 1.4426950216293335)
                (get_local $0)
               )
              )
              (tee_local $1
               (if (result f32)
                (get_local $2)
                (f32.const -0.5)
                (f32.const 0.5)
               )
              )
             )
            )
           )
          )
         )
         (f32.const 0.6931381225585938)
        )
       )
      )
      (set_local $1
       (f32.mul
        (get_local $1)
        (f32.const 9.05800061445916e-06)
       )
      )
     )
    )
    (set_local $5
     (f32.sub
      (f32.sub
       (get_local $0)
       (tee_local $0
        (f32.sub
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (get_local $1)
     )
    )
   )
   (set_local $2
    (if (result i32)
     (i32.lt_u
      (get_local $3)
      (i32.const 855638016)
     )
     (return
      (get_local $0)
     )
     (i32.const 0)
    )
   )
  )
  (set_local $1
   (f32.add
    (f32.const 1)
    (f32.mul
     (tee_local $4
      (f32.mul
       (get_local $0)
       (tee_local $6
        (f32.mul
         (f32.const 0.5)
         (get_local $0)
        )
       )
      )
     )
     (f32.add
      (f32.const -0.03333321213722229)
      (f32.mul
       (get_local $4)
       (f32.const 1.5807170420885086e-03)
      )
     )
    )
   )
  )
  (set_local $1
   (f32.mul
    (get_local $4)
    (f32.div
     (f32.sub
      (get_local $1)
      (tee_local $1
       (f32.sub
        (f32.const 3)
        (f32.mul
         (get_local $1)
         (get_local $6)
        )
       )
      )
     )
     (f32.sub
      (f32.const 6)
      (f32.mul
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
    (f32.sub
     (get_local $0)
     (f32.sub
      (f32.mul
       (get_local $0)
       (get_local $1)
      )
      (get_local $4)
     )
    )
   )
  )
  (set_local $1
   (f32.sub
    (f32.sub
     (f32.mul
      (get_local $0)
      (f32.sub
       (get_local $1)
       (get_local $5)
      )
     )
     (get_local $5)
    )
    (get_local $4)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const -1)
   )
   (return
    (f32.sub
     (f32.mul
      (f32.const 0.5)
      (f32.sub
       (get_local $0)
       (get_local $1)
      )
     )
     (f32.const 0.5)
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
     (f32.lt
      (get_local $0)
      (f32.const -0.25)
     )
     (return
      (f32.mul
       (f32.const -2)
       (f32.sub
        (get_local $1)
        (f32.add
         (get_local $0)
         (f32.const 0.5)
        )
       )
      )
     )
    )
    (return
     (f32.add
      (f32.const 1)
      (f32.mul
       (f32.const 2)
       (f32.sub
        (get_local $0)
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (set_local $4
   (f32.reinterpret/i32
    (i32.shl
     (i32.add
      (get_local $2)
      (i32.const 127)
     )
     (i32.const 23)
    )
   )
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.lt_s
      (get_local $2)
      (i32.const 0)
     )
    )
   )
   (set_local $3
    (i32.gt_s
     (get_local $2)
     (i32.const 56)
    )
   )
  )
  (if
   (get_local $3)
   (block
    (set_local $0
     (f32.add
      (f32.sub
       (get_local $0)
       (get_local $1)
      )
      (f32.const 1)
     )
    )
    (return
     (f32.sub
      (tee_local $0
       (if (result f32)
        (i32.eq
         (get_local $2)
         (i32.const 128)
        )
        (f32.mul
         (f32.mul
          (get_local $0)
          (f32.const 2)
         )
         (f32.const 1701411834604692317316873e14)
        )
        (f32.mul
         (get_local $0)
         (get_local $4)
        )
       )
      )
      (f32.const 1)
     )
    )
   )
  )
  (set_local $3
   (i32.shl
    (i32.sub
     (i32.const 127)
     (get_local $2)
    )
    (i32.const 23)
   )
  )
  (tee_local $0
   (if (result f32)
    (i32.lt_s
     (get_local $2)
     (i32.const 23)
    )
    (f32.mul
     (f32.add
      (f32.sub
       (get_local $0)
       (get_local $1)
      )
      (f32.sub
       (f32.const 1)
       (f32.reinterpret/i32
        (get_local $3)
       )
      )
     )
     (get_local $4)
    )
    (f32.mul
     (f32.add
      (f32.sub
       (get_local $0)
       (f32.add
        (get_local $1)
        (f32.reinterpret/i32
         (get_local $3)
        )
       )
      )
      (f32.const 1)
     )
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/math/NativeMathf.exp (; 95 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (set_local $1
   (i32.shr_u
    (tee_local $2
     (i32.reinterpret/f32
      (get_local $0)
     )
    )
    (i32.const 31)
   )
  )
  (if
   (i32.ge_u
    (tee_local $2
     (i32.and
      (get_local $2)
      (i32.const 2147483647)
     )
    )
    (i32.const 1118743632)
   )
   (block
    (if
     (tee_local $3
      (i32.ge_u
       (get_local $2)
       (i32.const 1118925336)
      )
     )
     (set_local $3
      (i32.eqz
       (get_local $1)
      )
     )
    )
    (if
     (get_local $3)
     (return
      (f32.mul
       (get_local $0)
       (f32.const 1701411834604692317316873e14)
      )
     )
    )
    (if
     (tee_local $3
      (if (result i32)
       (get_local $1)
       (i32.ge_u
        (get_local $2)
        (i32.const 1120924085)
       )
       (get_local $1)
      )
     )
     (return
      (f32.const 0)
     )
    )
   )
  )
  (if
   (i32.gt_u
    (get_local $2)
    (i32.const 1051816472)
   )
   (set_local $0
    (f32.sub
     (tee_local $4
      (f32.sub
       (get_local $0)
       (f32.mul
        (tee_local $0
         (f32.convert_s/i32
          (tee_local $1
           (if (result i32)
            (i32.gt_u
             (get_local $2)
             (i32.const 1065686418)
            )
            (i32.trunc_s/f32
             (f32.add
              (f32.mul
               (f32.const 1.4426950216293335)
               (get_local $0)
              )
              (f32.copysign
               (f32.const 0.5)
               (get_local $0)
              )
             )
            )
            (i32.sub
             (i32.sub
              (i32.const 1)
              (get_local $1)
             )
             (get_local $1)
            )
           )
          )
         )
        )
        (f32.const 0.693145751953125)
       )
      )
     )
     (tee_local $5
      (f32.mul
       (get_local $0)
       (f32.const 1.428606765330187e-06)
      )
     )
    )
   )
   (set_local $1
    (if (result i32)
     (i32.gt_u
      (get_local $2)
      (i32.const 956301312)
     )
     (block (result i32)
      (set_local $4
       (get_local $0)
      )
      (i32.const 0)
     )
     (return
      (f32.add
       (f32.const 1)
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $0
   (f32.add
    (f32.const 1)
    (f32.add
     (f32.sub
      (f32.div
       (f32.mul
        (get_local $0)
        (tee_local $0
         (f32.sub
          (get_local $0)
          (f32.mul
           (tee_local $0
            (f32.mul
             (get_local $0)
             (get_local $0)
            )
           )
           (f32.add
            (f32.const 0.16666625440120697)
            (f32.mul
             (get_local $0)
             (f32.const -2.7667332906275988e-03)
            )
           )
          )
         )
        )
       )
       (f32.sub
        (f32.const 2)
        (get_local $0)
       )
      )
      (get_local $5)
     )
     (get_local $4)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (return
    (get_local $0)
   )
  )
  (call $~lib/math/NativeMathf.scalbn
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/math/expo2f (; 96 ;) (type $ff) (param $0 f32) (result f32)
  (f32.mul
   (f32.mul
    (call $~lib/math/NativeMathf.exp
     (f32.sub
      (get_local $0)
      (f32.const 162.88958740234375)
     )
    )
    (f32.const 1661534994731144841129758e11)
   )
   (f32.const 1661534994731144841129758e11)
  )
 )
 (func $~lib/math/NativeMathf.cosh (; 97 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (set_local $0
   (f32.reinterpret/i32
    (tee_local $1
     (i32.and
      (i32.reinterpret/f32
       (get_local $0)
      )
      (i32.const 2147483647)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $1)
    (i32.const 1060205079)
   )
   (block
    (if
     (i32.lt_u
      (get_local $1)
      (i32.const 964689920)
     )
     (return
      (f32.const 1)
     )
    )
    (return
     (f32.add
      (f32.const 1)
      (f32.div
       (f32.mul
        (tee_local $0
         (call $~lib/math/NativeMathf.expm1
          (get_local $0)
         )
        )
        (get_local $0)
       )
       (f32.mul
        (f32.const 2)
        (f32.add
         (f32.const 1)
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
    (i32.const 1118925335)
   )
   (return
    (f32.mul
     (f32.const 0.5)
     (f32.add
      (tee_local $0
       (call $~lib/math/NativeMathf.exp
        (get_local $0)
       )
      )
      (f32.div
       (f32.const 1)
       (get_local $0)
      )
     )
    )
   )
  )
  (call $~lib/math/expo2f
   (get_local $0)
  )
 )
 (func $std/math/test_coshf (; 98 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.cosh
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/math/test_exp (; 99 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.exp
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.exp
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_expf (; 100 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.exp
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/math/test_expm1 (; 101 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.expm1
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.expm1
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_expm1f (; 102 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.expm1
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/math/test_floor (; 103 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (f64.floor
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.floor
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_floorf (; 104 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (f32.floor
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.hypot (; 105 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
 (func $std/math/test_hypot (; 106 ;) (type $FFFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (local $5 i32)
  (tee_local $4
   (if (result i32)
    (tee_local $5
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.hypot
       (get_local $0)
       (get_local $1)
      )
      (get_local $2)
      (get_local $3)
      (get_local $4)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.hypot
       (get_local $0)
       (get_local $1)
      )
     )
     (get_local $2)
     (get_local $3)
     (get_local $4)
    )
    (get_local $5)
   )
  )
 )
 (func $~lib/math/NativeMathf.hypot (; 107 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f64)
  (if
   (i32.lt_u
    (tee_local $3
     (i32.and
      (i32.reinterpret/f32
       (get_local $0)
      )
      (i32.const 2147483647)
     )
    )
    (tee_local $2
     (i32.and
      (i32.reinterpret/f32
       (get_local $1)
      )
      (i32.const 2147483647)
     )
    )
   )
   (block
    (set_local $4
     (get_local $3)
    )
    (set_local $3
     (get_local $2)
    )
    (set_local $2
     (get_local $4)
    )
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (get_local $3)
   )
  )
  (set_local $1
   (f32.reinterpret/i32
    (get_local $2)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2139095040)
   )
   (return
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (tee_local $4
     (i32.ge_u
      (get_local $3)
      (i32.const 2139095040)
     )
    )
   )
   (set_local $4
    (i32.eqz
     (get_local $2)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (set_local $4
    (i32.ge_u
     (i32.sub
      (get_local $3)
      (get_local $2)
     )
     (i32.const 209715200)
    )
   )
  )
  (if
   (get_local $4)
   (return
    (f32.add
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (set_local $5
   (f32.const 1)
  )
  (if
   (i32.ge_u
    (get_local $3)
    (i32.const 1568669696)
   )
   (block
    (set_local $5
     (f32.const 1237940039285380274899124e3)
    )
    (set_local $0
     (f32.mul
      (get_local $0)
      (f32.const 8.077935669463161e-28)
     )
    )
    (set_local $1
     (f32.mul
      (get_local $1)
      (f32.const 8.077935669463161e-28)
     )
    )
   )
   (if
    (i32.lt_u
     (get_local $2)
     (i32.const 562036736)
    )
    (block
     (set_local $5
      (f32.const 8.077935669463161e-28)
     )
     (set_local $0
      (f32.mul
       (get_local $0)
       (f32.const 1237940039285380274899124e3)
      )
     )
     (set_local $1
      (f32.mul
       (get_local $1)
       (f32.const 1237940039285380274899124e3)
      )
     )
    )
   )
  )
  (f32.mul
   (get_local $5)
   (f32.sqrt
    (f32.demote/f64
     (f64.add
      (f64.mul
       (tee_local $6
        (f64.promote/f32
         (get_local $0)
        )
       )
       (get_local $6)
      )
      (f64.mul
       (tee_local $6
        (f64.promote/f32
         (get_local $1)
        )
       )
       (get_local $6)
      )
     )
    )
   )
  )
 )
 (func $std/math/test_hypotf (; 108 ;) (type $ffffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.hypot
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $std/math/test_log (; 109 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.log
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.log
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_logf (; 110 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.log
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.log10 (; 111 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_log10 (; 112 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.log10
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.log10
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.log10 (; 113 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (if
   (i32.eqz
    (tee_local $4
     (i32.lt_u
      (tee_local $1
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 8388608)
     )
    )
   )
   (set_local $4
    (i32.shr_u
     (get_local $1)
     (i32.const 31)
    )
   )
  )
  (if
   (get_local $4)
   (block
    (if
     (i32.eqz
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (return
      (f32.div
       (f32.const -1)
       (f32.mul
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
      (f32.div
       (f32.sub
        (get_local $0)
        (get_local $0)
       )
       (f32.const 0)
      )
     )
    )
    (set_local $2
     (i32.const -25)
    )
    (set_local $1
     (i32.reinterpret/f32
      (f32.mul
       (get_local $0)
       (f32.const 33554432)
      )
     )
    )
   )
   (if
    (i32.ge_u
     (get_local $1)
     (i32.const 2139095040)
    )
    (return
     (get_local $0)
    )
    (if
     (i32.eq
      (get_local $1)
      (i32.const 1065353216)
     )
     (return
      (f32.const 0)
     )
    )
   )
  )
  (set_local $2
   (i32.add
    (get_local $2)
    (i32.sub
     (i32.shr_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 4913933)
       )
      )
      (i32.const 23)
     )
     (i32.const 127)
    )
   )
  )
  (set_local $3
   (f32.mul
    (tee_local $6
     (f32.mul
      (tee_local $5
       (f32.div
        (tee_local $0
         (f32.sub
          (f32.reinterpret/i32
           (i32.add
            (i32.and
             (get_local $1)
             (i32.const 8388607)
            )
            (i32.const 1060439283)
           )
          )
          (f32.const 1)
         )
        )
        (f32.add
         (f32.const 2)
         (get_local $0)
        )
       )
      )
      (get_local $5)
     )
    )
    (get_local $6)
   )
  )
  (f32.add
   (f32.add
    (f32.add
     (f32.add
      (f32.mul
       (tee_local $9
        (f32.convert_s/i32
         (get_local $2)
        )
       )
       (f32.const 7.903415166765626e-07)
      )
      (f32.mul
       (f32.add
        (tee_local $0
         (f32.add
          (f32.sub
           (f32.sub
            (get_local $0)
            (tee_local $8
             (f32.reinterpret/i32
              (i32.and
               (i32.reinterpret/f32
                (f32.sub
                 (get_local $0)
                 (tee_local $7
                  (f32.mul
                   (f32.mul
                    (f32.const 0.5)
                    (get_local $0)
                   )
                   (get_local $0)
                  )
                 )
                )
               )
               (i32.const -4096)
              )
             )
            )
           )
           (get_local $7)
          )
          (f32.mul
           (get_local $5)
           (f32.add
            (get_local $7)
            (f32.add
             (f32.mul
              (get_local $6)
              (f32.add
               (f32.const 0.6666666269302368)
               (f32.mul
                (get_local $3)
                (f32.const 0.2849878668785095)
               )
              )
             )
             (f32.mul
              (get_local $3)
              (f32.add
               (f32.const 0.40000972151756287)
               (f32.mul
                (get_local $3)
                (f32.const 0.24279078841209412)
               )
              )
             )
            )
           )
          )
         )
        )
        (get_local $8)
       )
       (f32.const -3.168997136526741e-05)
      )
     )
     (f32.mul
      (get_local $0)
      (f32.const 0.434326171875)
     )
    )
    (f32.mul
     (get_local $8)
     (f32.const 0.434326171875)
    )
   )
   (f32.mul
    (get_local $9)
    (f32.const 0.3010292053222656)
   )
  )
 )
 (func $std/math/test_log10f (; 114 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.log10
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/math/test_log1p (; 115 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.log1p
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.log1p
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_log1pf (; 116 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.log1p
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.log2 (; 117 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_log2 (; 118 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.log2
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.log2
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.log2 (; 119 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (if
   (i32.eqz
    (tee_local $4
     (i32.lt_u
      (tee_local $1
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 8388608)
     )
    )
   )
   (set_local $4
    (i32.shr_u
     (get_local $1)
     (i32.const 31)
    )
   )
  )
  (if
   (get_local $4)
   (block
    (if
     (i32.eqz
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (return
      (f32.div
       (f32.const -1)
       (f32.mul
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
      (f32.div
       (f32.sub
        (get_local $0)
        (get_local $0)
       )
       (f32.const 0)
      )
     )
    )
    (set_local $2
     (i32.const -25)
    )
    (set_local $1
     (i32.reinterpret/f32
      (f32.mul
       (get_local $0)
       (f32.const 33554432)
      )
     )
    )
   )
   (if
    (i32.ge_u
     (get_local $1)
     (i32.const 2139095040)
    )
    (return
     (get_local $0)
    )
    (if
     (i32.eq
      (get_local $1)
      (i32.const 1065353216)
     )
     (return
      (f32.const 0)
     )
    )
   )
  )
  (set_local $2
   (i32.add
    (get_local $2)
    (i32.sub
     (i32.shr_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 4913933)
       )
      )
      (i32.const 23)
     )
     (i32.const 127)
    )
   )
  )
  (set_local $3
   (f32.mul
    (tee_local $6
     (f32.mul
      (tee_local $5
       (f32.div
        (tee_local $0
         (f32.sub
          (f32.reinterpret/i32
           (i32.add
            (i32.and
             (get_local $1)
             (i32.const 8388607)
            )
            (i32.const 1060439283)
           )
          )
          (f32.const 1)
         )
        )
        (f32.add
         (f32.const 2)
         (get_local $0)
        )
       )
      )
      (get_local $5)
     )
    )
    (get_local $6)
   )
  )
  (f32.add
   (f32.add
    (f32.add
     (f32.mul
      (f32.add
       (tee_local $0
        (f32.add
         (f32.sub
          (f32.sub
           (get_local $0)
           (tee_local $8
            (f32.reinterpret/i32
             (i32.and
              (i32.reinterpret/f32
               (f32.sub
                (get_local $0)
                (tee_local $7
                 (f32.mul
                  (f32.mul
                   (f32.const 0.5)
                   (get_local $0)
                  )
                  (get_local $0)
                 )
                )
               )
              )
              (i32.const -4096)
             )
            )
           )
          )
          (get_local $7)
         )
         (f32.mul
          (get_local $5)
          (f32.add
           (get_local $7)
           (f32.add
            (f32.mul
             (get_local $6)
             (f32.add
              (f32.const 0.6666666269302368)
              (f32.mul
               (get_local $3)
               (f32.const 0.2849878668785095)
              )
             )
            )
            (f32.mul
             (get_local $3)
             (f32.add
              (f32.const 0.40000972151756287)
              (f32.mul
               (get_local $3)
               (f32.const 0.24279078841209412)
              )
             )
            )
           )
          )
         )
        )
       )
       (get_local $8)
      )
      (f32.const -1.7605285393074155e-04)
     )
     (f32.mul
      (get_local $0)
      (f32.const 1.44287109375)
     )
    )
    (f32.mul
     (get_local $8)
     (f32.const 1.44287109375)
    )
   )
   (f32.convert_s/i32
    (get_local $2)
   )
  )
 )
 (func $std/math/test_log2f (; 120 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.log2
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/math/test_max (; 121 ;) (type $FFFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (local $5 i32)
  (tee_local $4
   (if (result i32)
    (tee_local $5
     (call $std/math/check<f64>
      (f64.max
       (get_local $0)
       (get_local $1)
      )
      (get_local $2)
      (get_local $3)
      (get_local $4)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.max
       (get_local $0)
       (get_local $1)
      )
     )
     (get_local $2)
     (get_local $3)
     (get_local $4)
    )
    (get_local $5)
   )
  )
 )
 (func $std/math/test_maxf (; 122 ;) (type $ffffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (call $std/math/check<f32>
   (f32.max
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $std/math/test_min (; 123 ;) (type $FFFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (local $5 i32)
  (tee_local $4
   (if (result i32)
    (tee_local $5
     (call $std/math/check<f64>
      (f64.min
       (get_local $0)
       (get_local $1)
      )
      (get_local $2)
      (get_local $3)
      (get_local $4)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.min
       (get_local $0)
       (get_local $1)
      )
     )
     (get_local $2)
     (get_local $3)
     (get_local $4)
    )
    (get_local $5)
   )
  )
 )
 (func $std/math/test_minf (; 124 ;) (type $ffffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (call $std/math/check<f32>
   (f32.min
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $~lib/math/NativeMath.mod (; 125 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $folding-inner0
   (set_local $3
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
   (set_local $6
    (i32.wrap/i64
     (i64.and
      (i64.shr_u
       (tee_local $5
        (i64.reinterpret/f64
         (get_local $1)
        )
       )
       (i64.const 52)
      )
      (i64.const 2047)
     )
    )
   )
   (set_local $8
    (i32.wrap/i64
     (i64.shr_u
      (get_local $2)
      (i64.const 63)
     )
    )
   )
   (if
    (i32.eqz
     (tee_local $7
      (i64.eq
       (i64.shl
        (get_local $5)
        (i64.const 1)
       )
       (i64.const 0)
      )
     )
    )
    (set_local $7
     (call $isNaN<f64>
      (get_local $1)
     )
    )
   )
   (if
    (i32.eqz
     (get_local $7)
    )
    (set_local $7
     (i32.eq
      (get_local $3)
      (i32.const 2047)
     )
    )
   )
   (if
    (get_local $7)
    (return
     (f64.div
      (tee_local $0
       (f64.mul
        (get_local $0)
        (get_local $1)
       )
      )
      (get_local $0)
     )
    )
   )
   (if
    (i64.le_u
     (i64.shl
      (get_local $2)
      (i64.const 1)
     )
     (i64.shl
      (get_local $5)
      (i64.const 1)
     )
    )
    (block
     (br_if $folding-inner0
      (i64.eq
       (i64.shl
        (get_local $2)
        (i64.const 1)
       )
       (i64.shl
        (get_local $5)
        (i64.const 1)
       )
      )
     )
     (return
      (get_local $0)
     )
    )
   )
   (set_local $2
    (if (result i64)
     (get_local $3)
     (i64.or
      (i64.and
       (get_local $2)
       (i64.const 4503599627370495)
      )
      (i64.const 4503599627370496)
     )
     (block (result i64)
      (block $break|0
       (set_local $4
        (i64.shl
         (get_local $2)
         (i64.const 12)
        )
       )
       (loop $repeat|0
        (br_if $break|0
         (i32.eqz
          (i64.eqz
           (i64.shr_u
            (get_local $4)
            (i64.const 63)
           )
          )
         )
        )
        (set_local $3
         (i32.sub
          (get_local $3)
          (i32.const 1)
         )
        )
        (set_local $4
         (i64.shl
          (get_local $4)
          (i64.const 1)
         )
        )
        (br $repeat|0)
       )
      )
      (i64.shl
       (get_local $2)
       (i64.extend_u/i32
        (i32.sub
         (i32.const 1)
         (get_local $3)
        )
       )
      )
     )
    )
   )
   (set_local $5
    (if (result i64)
     (get_local $6)
     (i64.or
      (i64.and
       (get_local $5)
       (i64.const 4503599627370495)
      )
      (i64.const 4503599627370496)
     )
     (block (result i64)
      (block $break|1
       (set_local $4
        (i64.shl
         (get_local $5)
         (i64.const 12)
        )
       )
       (loop $repeat|1
        (br_if $break|1
         (i32.eqz
          (i64.eqz
           (i64.shr_u
            (get_local $4)
            (i64.const 63)
           )
          )
         )
        )
        (set_local $6
         (i32.sub
          (get_local $6)
          (i32.const 1)
         )
        )
        (set_local $4
         (i64.shl
          (get_local $4)
          (i64.const 1)
         )
        )
        (br $repeat|1)
       )
      )
      (i64.shl
       (get_local $5)
       (i64.extend_u/i32
        (i32.sub
         (i32.const 1)
         (get_local $6)
        )
       )
      )
     )
    )
   )
   (block $break|2
    (loop $repeat|2
     (br_if $break|2
      (i32.le_s
       (get_local $3)
       (get_local $6)
      )
     )
     (if
      (i64.eqz
       (i64.shr_u
        (tee_local $4
         (i64.sub
          (get_local $2)
          (get_local $5)
         )
        )
        (i64.const 63)
       )
      )
      (block
       (br_if $folding-inner0
        (i64.eqz
         (get_local $4)
        )
       )
       (set_local $2
        (get_local $4)
       )
      )
     )
     (set_local $2
      (i64.shl
       (get_local $2)
       (i64.const 1)
      )
     )
     (set_local $3
      (i32.sub
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $repeat|2)
    )
   )
   (if
    (i64.eqz
     (i64.shr_u
      (tee_local $4
       (i64.sub
        (get_local $2)
        (get_local $5)
       )
      )
      (i64.const 63)
     )
    )
    (block
     (br_if $folding-inner0
      (i64.eqz
       (get_local $4)
      )
     )
     (set_local $2
      (get_local $4)
     )
    )
   )
   (block $break|3
    (loop $repeat|3
     (br_if $break|3
      (i32.eqz
       (i64.eqz
        (i64.shr_u
         (get_local $2)
         (i64.const 52)
        )
       )
      )
     )
     (set_local $3
      (i32.sub
       (get_local $3)
       (i32.const 1)
      )
     )
     (set_local $2
      (i64.shl
       (get_local $2)
       (i64.const 1)
      )
     )
     (br $repeat|3)
    )
   )
   (return
    (f64.reinterpret/i64
     (i64.or
      (tee_local $2
       (if (result i64)
        (i32.gt_s
         (get_local $3)
         (i32.const 0)
        )
        (i64.or
         (i64.sub
          (get_local $2)
          (i64.const 4503599627370496)
         )
         (i64.shl
          (i64.extend_u/i32
           (get_local $3)
          )
          (i64.const 52)
         )
        )
        (i64.shr_u
         (get_local $2)
         (i64.extend_u/i32
          (i32.sub
           (i32.const 1)
           (get_local $3)
          )
         )
        )
       )
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $8)
       )
       (i64.const 63)
      )
     )
    )
   )
  )
  (f64.mul
   (f64.const 0)
   (get_local $0)
  )
 )
 (func $std/math/test_mod (; 126 ;) (type $FFFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (local $5 i32)
  (tee_local $4
   (if (result i32)
    (tee_local $5
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.mod
       (get_local $0)
       (get_local $1)
      )
      (get_local $2)
      (get_local $3)
      (get_local $4)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $std/math/JSOp.mod
       (get_local $0)
       (get_local $1)
      )
     )
     (get_local $2)
     (get_local $3)
     (get_local $4)
    )
    (get_local $5)
   )
  )
 )
 (func $~lib/math/NativeMathf.mod (; 127 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $folding-inner0
   (set_local $4
    (i32.and
     (i32.shr_u
      (tee_local $2
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 23)
     )
     (i32.const 255)
    )
   )
   (set_local $6
    (i32.and
     (i32.shr_u
      (tee_local $5
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
      (i32.const 23)
     )
     (i32.const 255)
    )
   )
   (set_local $7
    (i32.and
     (get_local $2)
     (i32.const -2147483648)
    )
   )
   (if
    (i32.eqz
     (tee_local $3
      (i32.eqz
       (i32.shl
        (get_local $5)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $3
     (call $isNaN<f32>
      (get_local $1)
     )
    )
   )
   (if
    (i32.eqz
     (get_local $3)
    )
    (set_local $3
     (i32.eq
      (get_local $4)
      (i32.const 255)
     )
    )
   )
   (if
    (get_local $3)
    (return
     (f32.div
      (tee_local $0
       (f32.mul
        (get_local $0)
        (get_local $1)
       )
      )
      (get_local $0)
     )
    )
   )
   (if
    (i32.le_u
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
     (i32.shl
      (get_local $5)
      (i32.const 1)
     )
    )
    (block
     (br_if $folding-inner0
      (i32.eq
       (i32.shl
        (get_local $2)
        (i32.const 1)
       )
       (i32.shl
        (get_local $5)
        (i32.const 1)
       )
      )
     )
     (return
      (get_local $0)
     )
    )
   )
   (set_local $2
    (if (result i32)
     (get_local $4)
     (i32.or
      (i32.and
       (get_local $2)
       (i32.const 8388607)
      )
      (i32.const 8388608)
     )
     (block (result i32)
      (block $break|0
       (set_local $3
        (i32.shl
         (get_local $2)
         (i32.const 9)
        )
       )
       (loop $repeat|0
        (br_if $break|0
         (i32.shr_u
          (get_local $3)
          (i32.const 31)
         )
        )
        (set_local $4
         (i32.sub
          (get_local $4)
          (i32.const 1)
         )
        )
        (set_local $3
         (i32.shl
          (get_local $3)
          (i32.const 1)
         )
        )
        (br $repeat|0)
       )
      )
      (i32.shl
       (get_local $2)
       (i32.sub
        (i32.const 1)
        (get_local $4)
       )
      )
     )
    )
   )
   (set_local $5
    (if (result i32)
     (get_local $6)
     (i32.or
      (i32.and
       (get_local $5)
       (i32.const 8388607)
      )
      (i32.const 8388608)
     )
     (block (result i32)
      (block $break|1
       (set_local $3
        (i32.shl
         (get_local $5)
         (i32.const 9)
        )
       )
       (loop $repeat|1
        (br_if $break|1
         (i32.shr_u
          (get_local $3)
          (i32.const 31)
         )
        )
        (set_local $6
         (i32.sub
          (get_local $6)
          (i32.const 1)
         )
        )
        (set_local $3
         (i32.shl
          (get_local $3)
          (i32.const 1)
         )
        )
        (br $repeat|1)
       )
      )
      (i32.shl
       (get_local $5)
       (i32.sub
        (i32.const 1)
        (get_local $6)
       )
      )
     )
    )
   )
   (block $break|2
    (loop $repeat|2
     (br_if $break|2
      (i32.le_s
       (get_local $4)
       (get_local $6)
      )
     )
     (if
      (i32.eqz
       (i32.shr_u
        (tee_local $3
         (i32.sub
          (get_local $2)
          (get_local $5)
         )
        )
        (i32.const 31)
       )
      )
      (block
       (br_if $folding-inner0
        (i32.eqz
         (get_local $3)
        )
       )
       (set_local $2
        (get_local $3)
       )
      )
     )
     (set_local $2
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $4
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (br $repeat|2)
    )
   )
   (if
    (i32.eqz
     (i32.shr_u
      (tee_local $3
       (i32.sub
        (get_local $2)
        (get_local $5)
       )
      )
      (i32.const 31)
     )
    )
    (block
     (br_if $folding-inner0
      (i32.eqz
       (get_local $3)
      )
     )
     (set_local $2
      (get_local $3)
     )
    )
   )
   (block $break|3
    (loop $repeat|3
     (br_if $break|3
      (i32.shr_u
       (get_local $2)
       (i32.const 23)
      )
     )
     (set_local $4
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (set_local $2
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $repeat|3)
    )
   )
   (return
    (f32.reinterpret/i32
     (i32.or
      (tee_local $2
       (if (result i32)
        (i32.gt_s
         (get_local $4)
         (i32.const 0)
        )
        (i32.or
         (i32.sub
          (get_local $2)
          (i32.const 8388608)
         )
         (i32.shl
          (get_local $4)
          (i32.const 23)
         )
        )
        (i32.shr_u
         (get_local $2)
         (i32.sub
          (i32.const 1)
          (get_local $4)
         )
        )
       )
      )
      (get_local $7)
     )
    )
   )
  )
  (f32.mul
   (f32.const 0)
   (get_local $0)
  )
 )
 (func $std/math/test_modf (; 128 ;) (type $ffffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.mod
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $~lib/math/NativeMath.pow (; 129 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
 (func $std/math/test_pow (; 130 ;) (type $FFFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (local $5 i32)
  (tee_local $4
   (if (result i32)
    (tee_local $5
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.pow
       (get_local $0)
       (get_local $1)
      )
      (get_local $2)
      (get_local $3)
      (get_local $4)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.pow
       (get_local $0)
       (get_local $1)
      )
     )
     (get_local $2)
     (get_local $3)
     (get_local $4)
    )
    (get_local $5)
   )
  )
 )
 (func $~lib/math/NativeMathf.pow (; 131 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (block $folding-inner1
   (block $folding-inner0
    (set_local $6
     (i32.and
      (tee_local $7
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 2147483647)
     )
    )
    (if
     (i32.eqz
      (tee_local $12
       (i32.and
        (tee_local $13
         (i32.reinterpret/f32
          (get_local $1)
         )
        )
        (i32.const 2147483647)
       )
      )
     )
     (return
      (f32.const 1)
     )
    )
    (if
     (i32.eqz
      (tee_local $5
       (i32.gt_s
        (get_local $6)
        (i32.const 2139095040)
       )
      )
     )
     (set_local $5
      (i32.gt_s
       (get_local $12)
       (i32.const 2139095040)
      )
     )
    )
    (if
     (get_local $5)
     (return
      (f32.add
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (if
     (i32.lt_s
      (get_local $7)
      (i32.const 0)
     )
     (if
      (i32.ge_s
       (get_local $12)
       (i32.const 1266679808)
      )
      (set_local $4
       (i32.const 2)
      )
      (if
       (i32.ge_s
        (get_local $12)
        (i32.const 1065353216)
       )
       (if
        (i32.eq
         (i32.shl
          (tee_local $8
           (i32.shr_s
            (get_local $12)
            (tee_local $5
             (i32.sub
              (i32.const 150)
              (i32.shr_s
               (get_local $12)
               (i32.const 23)
              )
             )
            )
           )
          )
          (get_local $5)
         )
         (get_local $12)
        )
        (set_local $4
         (i32.sub
          (i32.const 2)
          (i32.and
           (get_local $8)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
    )
    (if
     (i32.eq
      (get_local $12)
      (i32.const 2139095040)
     )
     (if
      (i32.eq
       (get_local $6)
       (i32.const 1065353216)
      )
      (return
       (f32.const nan:0x400000)
      )
      (if
       (i32.gt_s
        (get_local $6)
        (i32.const 1065353216)
       )
       (block
        (if
         (i32.lt_s
          (get_local $13)
          (i32.const 0)
         )
         (set_local $1
          (f32.const 0)
         )
        )
        (return
         (get_local $1)
        )
       )
       (return
        (tee_local $0
         (if (result f32)
          (i32.ge_s
           (get_local $13)
           (i32.const 0)
          )
          (f32.const 0)
          (f32.neg
           (get_local $1)
          )
         )
        )
       )
      )
     )
    )
    (if
     (i32.eq
      (get_local $12)
      (i32.const 1065353216)
     )
     (block
      (if
       (i32.lt_s
        (get_local $13)
        (i32.const 0)
       )
       (set_local $0
        (f32.div
         (f32.const 1)
         (get_local $0)
        )
       )
      )
      (return
       (get_local $0)
      )
     )
    )
    (if
     (i32.eq
      (get_local $13)
      (i32.const 1073741824)
     )
     (return
      (f32.mul
       (get_local $0)
       (get_local $0)
      )
     )
    )
    (if
     (i32.eq
      (get_local $13)
      (i32.const 1056964608)
     )
     (if
      (i32.ge_s
       (get_local $7)
       (i32.const 0)
      )
      (return
       (f32.sqrt
        (get_local $0)
       )
      )
     )
    )
    (set_local $2
     (f32.abs
      (get_local $0)
     )
    )
    (if
     (i32.eqz
      (tee_local $5
       (i32.eq
        (get_local $6)
        (i32.const 2139095040)
       )
      )
     )
     (set_local $5
      (i32.eqz
       (get_local $6)
      )
     )
    )
    (if
     (i32.eqz
      (get_local $5)
     )
     (set_local $5
      (i32.eq
       (get_local $6)
       (i32.const 1065353216)
      )
     )
    )
    (if
     (get_local $5)
     (block
      (if
       (i32.lt_s
        (get_local $13)
        (i32.const 0)
       )
       (set_local $2
        (f32.div
         (f32.const 1)
         (get_local $2)
        )
       )
      )
      (if
       (i32.lt_s
        (get_local $7)
        (i32.const 0)
       )
       (if
        (i32.or
         (i32.sub
          (get_local $6)
          (i32.const 1065353216)
         )
         (get_local $4)
        )
        (if
         (i32.eq
          (get_local $4)
          (i32.const 1)
         )
         (set_local $2
          (f32.neg
           (get_local $2)
          )
         )
        )
        (set_local $2
         (f32.div
          (tee_local $0
           (f32.sub
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
    (set_local $10
     (f32.const 1)
    )
    (if
     (i32.lt_s
      (get_local $7)
      (i32.const 0)
     )
     (block
      (if
       (i32.eqz
        (get_local $4)
       )
       (return
        (f32.div
         (tee_local $0
          (f32.sub
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
        (get_local $4)
        (i32.const 1)
       )
       (set_local $10
        (f32.const -1)
       )
      )
     )
    )
    (set_local $2
     (if (result f32)
      (i32.gt_s
       (get_local $12)
       (i32.const 1291845632)
      )
      (block (result f32)
       (if
        (i32.lt_s
         (get_local $6)
         (i32.const 1065353208)
        )
        (return
         (tee_local $0
          (if (result f32)
           (i32.lt_s
            (get_local $13)
            (i32.const 0)
           )
           (f32.mul
            (f32.mul
             (get_local $10)
             (f32.const 1000000015047466219876688e6)
            )
            (f32.const 1000000015047466219876688e6)
           )
           (f32.mul
            (f32.mul
             (get_local $10)
             (f32.const 1.0000000031710769e-30)
            )
            (f32.const 1.0000000031710769e-30)
           )
          )
         )
        )
       )
       (if
        (i32.gt_s
         (get_local $6)
         (i32.const 1065353223)
        )
        (return
         (tee_local $0
          (if (result f32)
           (i32.gt_s
            (get_local $13)
            (i32.const 0)
           )
           (f32.mul
            (f32.mul
             (get_local $10)
             (f32.const 1000000015047466219876688e6)
            )
            (f32.const 1000000015047466219876688e6)
           )
           (f32.mul
            (f32.mul
             (get_local $10)
             (f32.const 1.0000000031710769e-30)
            )
            (f32.const 1.0000000031710769e-30)
           )
          )
         )
        )
       )
       (set_local $0
        (f32.mul
         (f32.mul
          (tee_local $3
           (f32.sub
            (get_local $2)
            (f32.const 1)
           )
          )
          (get_local $3)
         )
         (f32.sub
          (f32.const 0.5)
          (f32.mul
           (get_local $3)
           (f32.sub
            (f32.const 0.3333333432674408)
            (f32.mul
             (get_local $3)
             (f32.const 0.25)
            )
           )
          )
         )
        )
       )
       (set_local $5
        (i32.reinterpret/f32
         (f32.add
          (tee_local $15
           (f32.mul
            (f32.const 1.44268798828125)
            (get_local $3)
           )
          )
          (tee_local $16
           (f32.sub
            (f32.mul
             (get_local $3)
             (f32.const 7.052607543300837e-06)
            )
            (f32.mul
             (get_local $0)
             (f32.const 1.4426950216293335)
            )
           )
          )
         )
        )
       )
       (f32.sub
        (get_local $16)
        (f32.sub
         (tee_local $11
          (f32.reinterpret/i32
           (i32.and
            (get_local $5)
            (i32.const -4096)
           )
          )
         )
         (get_local $15)
        )
       )
      )
      (block (result f32)
       (set_local $4
        (i32.const 0)
       )
       (if
        (i32.lt_s
         (get_local $6)
         (i32.const 8388608)
        )
        (block
         (set_local $4
          (i32.const -24)
         )
         (set_local $6
          (i32.reinterpret/f32
           (f32.mul
            (get_local $2)
            (f32.const 16777216)
           )
          )
         )
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.sub
          (i32.shr_s
           (get_local $6)
           (i32.const 23)
          )
          (i32.const 127)
         )
        )
       )
       (set_local $6
        (i32.or
         (tee_local $8
          (i32.and
           (get_local $6)
           (i32.const 8388607)
          )
         )
         (i32.const 1065353216)
        )
       )
       (set_local $7
        (if (result i32)
         (i32.le_s
          (get_local $8)
          (i32.const 1885297)
         )
         (i32.const 0)
         (if (result i32)
          (i32.lt_s
           (get_local $8)
           (i32.const 6140887)
          )
          (i32.const 1)
          (block (result i32)
           (set_local $4
            (i32.add
             (get_local $4)
             (i32.const 1)
            )
           )
           (set_local $6
            (i32.sub
             (get_local $6)
             (i32.const 8388608)
            )
           )
           (i32.const 0)
          )
         )
        )
       )
       (set_local $3
        (f32.reinterpret/i32
         (i32.and
          (i32.reinterpret/f32
           (tee_local $9
            (f32.mul
             (tee_local $15
              (f32.sub
               (tee_local $2
                (f32.reinterpret/i32
                 (get_local $6)
                )
               )
               (tee_local $0
                (select
                 (f32.const 1.5)
                 (f32.const 1)
                 (get_local $7)
                )
               )
              )
             )
             (tee_local $16
              (f32.div
               (f32.const 1)
               (f32.add
                (get_local $2)
                (get_local $0)
               )
              )
             )
            )
           )
          )
          (i32.const -4096)
         )
        )
       )
       (set_local $2
        (f32.sub
         (get_local $2)
         (f32.sub
          (tee_local $11
           (f32.reinterpret/i32
            (i32.add
             (i32.add
              (i32.or
               (i32.and
                (i32.shr_s
                 (get_local $6)
                 (i32.const 1)
                )
                (i32.const -4096)
               )
               (i32.const 536870912)
              )
              (i32.const 4194304)
             )
             (i32.shl
              (get_local $7)
              (i32.const 21)
             )
            )
           )
          )
          (get_local $0)
         )
        )
       )
       (set_local $17
        (f32.mul
         (f32.mul
          (tee_local $14
           (f32.mul
            (get_local $9)
            (get_local $9)
           )
          )
          (get_local $14)
         )
         (f32.add
          (f32.const 0.6000000238418579)
          (f32.mul
           (get_local $14)
           (f32.add
            (f32.const 0.4285714328289032)
            (f32.mul
             (get_local $14)
             (f32.add
              (f32.const 0.3333333432674408)
              (f32.mul
               (get_local $14)
               (f32.add
                (f32.const 0.2727281153202057)
                (f32.mul
                 (get_local $14)
                 (f32.add
                  (f32.const 0.23066075146198273)
                  (f32.mul
                   (get_local $14)
                   (f32.const 0.20697501301765442)
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
       (set_local $5
        (i32.reinterpret/f32
         (f32.add
          (f32.add
           (f32.const 3)
           (tee_local $14
            (f32.mul
             (get_local $3)
             (get_local $3)
            )
           )
          )
          (tee_local $17
           (f32.add
            (get_local $17)
            (f32.mul
             (tee_local $0
              (f32.mul
               (get_local $16)
               (f32.sub
                (f32.sub
                 (get_local $15)
                 (f32.mul
                  (get_local $3)
                  (get_local $11)
                 )
                )
                (f32.mul
                 (get_local $3)
                 (get_local $2)
                )
               )
              )
             )
             (f32.add
              (get_local $3)
              (get_local $9)
             )
            )
           )
          )
         )
        )
       )
       (set_local $2
        (f32.sub
         (get_local $17)
         (f32.sub
          (f32.sub
           (tee_local $11
            (f32.reinterpret/i32
             (i32.and
              (get_local $5)
              (i32.const -4096)
             )
            )
           )
           (f32.const 3)
          )
          (get_local $14)
         )
        )
       )
       (set_local $5
        (i32.reinterpret/f32
         (f32.add
          (tee_local $15
           (f32.mul
            (get_local $3)
            (get_local $11)
           )
          )
          (tee_local $16
           (f32.add
            (f32.mul
             (get_local $0)
             (get_local $11)
            )
            (f32.mul
             (get_local $2)
             (get_local $9)
            )
           )
          )
         )
        )
       )
       (set_local $9
        (f32.sub
         (get_local $16)
         (f32.sub
          (tee_local $0
           (f32.reinterpret/i32
            (i32.and
             (get_local $5)
             (i32.const -4096)
            )
           )
          )
          (get_local $15)
         )
        )
       )
       (set_local $5
        (i32.reinterpret/f32
         (f32.add
          (f32.add
           (f32.add
            (tee_local $17
             (f32.mul
              (f32.const 0.9619140625)
              (get_local $0)
             )
            )
            (tee_local $2
             (f32.add
              (f32.add
               (f32.mul
                (f32.const -1.1736857413779944e-04)
                (get_local $0)
               )
               (f32.mul
                (get_local $9)
                (f32.const 0.9617967009544373)
               )
              )
              (select
               (f32.const 1.5632208487659227e-06)
               (f32.const 0)
               (get_local $7)
              )
             )
            )
           )
           (tee_local $0
            (select
             (f32.const 0.5849609375)
             (f32.const 0)
             (get_local $7)
            )
           )
          )
          (tee_local $3
           (f32.convert_s/i32
            (get_local $4)
           )
          )
         )
        )
       )
       (f32.sub
        (get_local $2)
        (f32.sub
         (f32.sub
          (f32.sub
           (tee_local $11
            (f32.reinterpret/i32
             (i32.and
              (get_local $5)
              (i32.const -4096)
             )
            )
           )
           (get_local $3)
          )
          (get_local $0)
         )
         (get_local $17)
        )
       )
      )
     )
    )
    (br_if $folding-inner0
     (i32.gt_s
      (tee_local $8
       (i32.reinterpret/f32
        (tee_local $2
         (f32.add
          (tee_local $9
           (f32.add
            (f32.mul
             (f32.sub
              (get_local $1)
              (tee_local $0
               (f32.reinterpret/i32
                (i32.and
                 (i32.reinterpret/f32
                  (get_local $1)
                 )
                 (i32.const -4096)
                )
               )
              )
             )
             (get_local $11)
            )
            (f32.mul
             (get_local $1)
             (get_local $2)
            )
           )
          )
          (tee_local $0
           (f32.mul
            (get_local $0)
            (get_local $11)
           )
          )
         )
        )
       )
      )
      (i32.const 1124073472)
     )
    )
    (if
     (i32.eq
      (get_local $8)
      (i32.const 1124073472)
     )
     (br_if $folding-inner0
      (f32.gt
       (f32.add
        (get_local $9)
        (f32.const 4.299566569443414e-08)
       )
       (f32.sub
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (if
      (i32.gt_s
       (i32.and
        (get_local $8)
        (i32.const 2147483647)
       )
       (i32.const 1125515264)
      )
      (br $folding-inner1)
      (if
       (i32.eq
        (get_local $8)
        (i32.const -1021968384)
       )
       (br_if $folding-inner1
        (f32.le
         (get_local $9)
         (f32.sub
          (get_local $2)
          (get_local $0)
         )
        )
       )
      )
     )
    )
    (set_local $7
     (i32.sub
      (i32.shr_s
       (tee_local $5
        (i32.and
         (get_local $8)
         (i32.const 2147483647)
        )
       )
       (i32.const 23)
      )
      (i32.const 127)
     )
    )
    (set_local $4
     (i32.const 0)
    )
    (if
     (i32.gt_s
      (get_local $5)
      (i32.const 1056964608)
     )
     (block
      (set_local $7
       (i32.sub
        (i32.shr_s
         (i32.and
          (tee_local $4
           (i32.add
            (get_local $8)
            (i32.shr_s
             (i32.const 8388608)
             (i32.add
              (get_local $7)
              (i32.const 1)
             )
            )
           )
          )
          (i32.const 2147483647)
         )
         (i32.const 23)
        )
        (i32.const 127)
       )
      )
      (set_local $3
       (f32.reinterpret/i32
        (i32.and
         (get_local $4)
         (i32.xor
          (i32.shr_s
           (i32.const 8388607)
           (get_local $7)
          )
          (i32.const -1)
         )
        )
       )
      )
      (set_local $4
       (i32.shr_s
        (i32.or
         (i32.and
          (get_local $4)
          (i32.const 8388607)
         )
         (i32.const 8388608)
        )
        (i32.sub
         (i32.const 23)
         (get_local $7)
        )
       )
      )
      (if
       (i32.lt_s
        (get_local $8)
        (i32.const 0)
       )
       (set_local $4
        (i32.sub
         (i32.const 0)
         (get_local $4)
        )
       )
      )
      (set_local $0
       (f32.sub
        (get_local $0)
        (get_local $3)
       )
      )
     )
    )
    (set_local $3
     (f32.mul
      (tee_local $2
       (f32.add
        (tee_local $15
         (f32.mul
          (tee_local $3
           (f32.reinterpret/i32
            (i32.and
             (i32.reinterpret/f32
              (f32.add
               (get_local $9)
               (get_local $0)
              )
             )
             (i32.const -32768)
            )
           )
          )
          (f32.const 0.693145751953125)
         )
        )
        (tee_local $16
         (f32.add
          (f32.mul
           (f32.sub
            (get_local $9)
            (f32.sub
             (get_local $3)
             (get_local $0)
            )
           )
           (f32.const 0.6931471824645996)
          )
          (f32.mul
           (get_local $3)
           (f32.const 1.4286065379565116e-06)
          )
         )
        )
       )
      )
      (get_local $2)
     )
    )
    (return
     (f32.mul
      (get_local $10)
      (tee_local $2
       (if (result f32)
        (i32.le_s
         (i32.shr_s
          (tee_local $8
           (i32.add
            (i32.reinterpret/f32
             (tee_local $2
              (f32.sub
               (f32.const 1)
               (f32.sub
                (f32.sub
                 (f32.div
                  (f32.mul
                   (get_local $2)
                   (tee_local $11
                    (f32.sub
                     (get_local $2)
                     (f32.mul
                      (get_local $3)
                      (f32.add
                       (f32.const 0.1666666716337204)
                       (f32.mul
                        (get_local $3)
                        (f32.add
                         (f32.const -2.7777778450399637e-03)
                         (f32.mul
                          (get_local $3)
                          (f32.add
                           (f32.const 6.61375597701408e-05)
                           (f32.mul
                            (get_local $3)
                            (f32.add
                             (f32.const -1.6533901998627698e-06)
                             (f32.mul
                              (get_local $3)
                              (f32.const 4.138136944220605e-08)
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
                  (f32.sub
                   (get_local $11)
                   (f32.const 2)
                  )
                 )
                 (f32.add
                  (tee_local $0
                   (f32.sub
                    (get_local $16)
                    (f32.sub
                     (get_local $2)
                     (get_local $15)
                    )
                   )
                  )
                  (f32.mul
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
            (i32.shl
             (get_local $4)
             (i32.const 23)
            )
           )
          )
          (i32.const 23)
         )
         (i32.const 0)
        )
        (call $~lib/math/NativeMathf.scalbn
         (get_local $2)
         (get_local $4)
        )
        (f32.reinterpret/i32
         (get_local $8)
        )
       )
      )
     )
    )
   )
   (return
    (f32.mul
     (f32.mul
      (get_local $10)
      (f32.const 1000000015047466219876688e6)
     )
     (f32.const 1000000015047466219876688e6)
    )
   )
  )
  (f32.mul
   (f32.mul
    (get_local $10)
    (f32.const 1.0000000031710769e-30)
   )
   (f32.const 1.0000000031710769e-30)
  )
 )
 (func $std/math/test_powf (; 132 ;) (type $ffffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.pow
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $~lib/math/murmurHash3 (; 133 ;) (type $II) (param $0 i64) (result i64)
  (i64.xor
   (tee_local $0
    (i64.mul
     (i64.xor
      (tee_local $0
       (i64.mul
        (i64.xor
         (get_local $0)
         (i64.shr_u
          (get_local $0)
          (i64.const 33)
         )
        )
        (i64.const -49064778989728563)
       )
      )
      (i64.shr_u
       (get_local $0)
       (i64.const 33)
      )
     )
     (i64.const -4265267296055464877)
    )
   )
   (i64.shr_u
    (get_local $0)
    (i64.const 33)
   )
  )
 )
 (func $~lib/math/NativeMath.seedRandom (; 134 ;) (type $Iv) (param $0 i64)
  (if
   (i64.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 1000)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_global $~lib/math/random_seeded
   (i32.const 1)
  )
  (set_global $~lib/math/random_state0
   (call $~lib/math/murmurHash3
    (get_local $0)
   )
  )
  (set_global $~lib/math/random_state1
   (call $~lib/math/murmurHash3
    (get_global $~lib/math/random_state0)
   )
  )
 )
 (func $~lib/math/NativeMath.random (; 135 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (if
   (i32.eqz
    (get_global $~lib/math/random_seeded)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 1007)
     (i32.const 24)
    )
    (unreachable)
   )
  )
  (set_local $0
   (get_global $~lib/math/random_state0)
  )
  (set_global $~lib/math/random_state0
   (tee_local $1
    (get_global $~lib/math/random_state1)
   )
  )
  (set_global $~lib/math/random_state1
   (tee_local $0
    (i64.xor
     (i64.xor
      (i64.xor
       (tee_local $0
        (i64.xor
         (get_local $0)
         (i64.shl
          (get_local $0)
          (i64.const 23)
         )
        )
       )
       (i64.shr_u
        (get_local $0)
        (i64.const 17)
       )
      )
      (get_local $1)
     )
     (i64.shr_u
      (get_local $1)
      (i64.const 26)
     )
    )
   )
  )
  (f64.sub
   (f64.reinterpret/i64
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
   (f64.const 1)
  )
 )
 (func $~lib/math/NativeMathf.random (; 136 ;) (type $f) (result f32)
  (local $0 f32)
  (loop $continue|0
   (br_if $continue|0
    (f32.eq
     (tee_local $0
      (f32.demote/f64
       (call $~lib/math/NativeMath.random)
      )
     )
     (f32.const 1)
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/math/NativeMath.round (; 137 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_round (; 138 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (call $std/math/check<f64>
   (call $~lib/math/NativeMath.round
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMathf.round (; 139 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.ge_s
    (tee_local $3
     (i32.and
      (i32.shr_u
       (tee_local $2
        (i32.reinterpret/f32
         (get_local $0)
        )
       )
       (i32.const 23)
      )
      (i32.const 255)
     )
    )
    (i32.const 150)
   )
   (return
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 126)
   )
   (return
    (f32.mul
     (f32.const 0)
     (get_local $0)
    )
   )
  )
  (tee_local $1
   (if (result f32)
    (i32.shr_u
     (get_local $2)
     (i32.const 31)
    )
    (if (result f32)
     (f32.ge
      (tee_local $1
       (f32.add
        (f32.sub
         (f32.sub
          (f32.const 8388608)
          (get_local $0)
         )
         (f32.const 8388608)
        )
        (get_local $0)
       )
      )
      (f32.const 0.5)
     )
     (f32.add
      (f32.sub
       (get_local $0)
       (get_local $1)
      )
      (f32.const 1)
     )
     (if (result f32)
      (f32.lt
       (get_local $1)
       (f32.const -0.5)
      )
      (f32.sub
       (f32.sub
        (get_local $0)
        (get_local $1)
       )
       (f32.const 1)
      )
      (f32.sub
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (if (result f32)
     (f32.gt
      (tee_local $1
       (f32.sub
        (f32.sub
         (f32.add
          (get_local $0)
          (f32.const 8388608)
         )
         (f32.const 8388608)
        )
        (get_local $0)
       )
      )
      (f32.const 0.5)
     )
     (f32.sub
      (f32.add
       (get_local $1)
       (get_local $0)
      )
      (f32.const 1)
     )
     (if (result f32)
      (f32.le
       (get_local $1)
       (f32.const -0.5)
      )
      (f32.add
       (f32.add
        (get_local $1)
        (get_local $0)
       )
       (f32.const 1)
      )
      (f32.add
       (get_local $1)
       (get_local $0)
      )
     )
    )
   )
  )
 )
 (func $std/math/test_roundf (; 140 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.round
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/math/test_sign (; 141 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
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
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.sign
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_signf (; 142 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (if
   (f32.gt
    (f32.abs
     (get_local $0)
    )
    (f32.const 0)
   )
   (set_local $0
    (f32.copysign
     (f32.const 1)
     (get_local $0)
    )
   )
  )
  (call $std/math/check<f32>
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.rem (; 143 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (set_local $3
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
  (set_local $6
   (i32.wrap/i64
    (i64.and
     (i64.shr_u
      (tee_local $7
       (i64.reinterpret/f64
        (get_local $1)
       )
      )
      (i64.const 52)
     )
     (i64.const 2047)
    )
   )
  )
  (set_local $9
   (i32.wrap/i64
    (i64.shr_u
     (get_local $2)
     (i64.const 63)
    )
   )
  )
  (set_local $10
   (i32.wrap/i64
    (i64.shr_u
     (get_local $7)
     (i64.const 63)
    )
   )
  )
  (if
   (i32.eqz
    (tee_local $5
     (i64.eq
      (i64.shl
       (get_local $7)
       (i64.const 1)
      )
      (i64.const 0)
     )
    )
   )
   (set_local $5
    (call $isNaN<f64>
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $5)
   )
   (set_local $5
    (i32.eq
     (get_local $3)
     (i32.const 2047)
    )
   )
  )
  (if
   (get_local $5)
   (return
    (f64.div
     (tee_local $0
      (f64.mul
       (get_local $0)
       (get_local $1)
      )
     )
     (get_local $0)
    )
   )
  )
  (if
   (i64.eq
    (i64.shl
     (get_local $2)
     (i64.const 1)
    )
    (i64.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $2
   (if (result i64)
    (get_local $3)
    (i64.or
     (i64.and
      (get_local $2)
      (i64.const 4503599627370495)
     )
     (i64.const 4503599627370496)
    )
    (block (result i64)
     (block $break|0
      (set_local $4
       (i64.shl
        (get_local $2)
        (i64.const 12)
       )
      )
      (loop $repeat|0
       (br_if $break|0
        (i64.ne
         (i64.shr_u
          (get_local $4)
          (i64.const 63)
         )
         (i64.const 0)
        )
       )
       (set_local $3
        (i32.sub
         (get_local $3)
         (i32.const 1)
        )
       )
       (set_local $4
        (i64.shl
         (get_local $4)
         (i64.const 1)
        )
       )
       (br $repeat|0)
      )
     )
     (i64.shl
      (get_local $2)
      (i64.extend_u/i32
       (i32.sub
        (i32.const 1)
        (get_local $3)
       )
      )
     )
    )
   )
  )
  (set_local $7
   (if (result i64)
    (get_local $6)
    (i64.or
     (i64.and
      (get_local $7)
      (i64.const 4503599627370495)
     )
     (i64.const 4503599627370496)
    )
    (block (result i64)
     (block $break|1
      (set_local $4
       (i64.shl
        (get_local $7)
        (i64.const 12)
       )
      )
      (loop $repeat|1
       (br_if $break|1
        (i64.ne
         (i64.shr_u
          (get_local $4)
          (i64.const 63)
         )
         (i64.const 0)
        )
       )
       (set_local $6
        (i32.sub
         (get_local $6)
         (i32.const 1)
        )
       )
       (set_local $4
        (i64.shl
         (get_local $4)
         (i64.const 1)
        )
       )
       (br $repeat|1)
      )
     )
     (i64.shl
      (get_local $7)
      (i64.extend_u/i32
       (i32.sub
        (i32.const 1)
        (get_local $6)
       )
      )
     )
    )
   )
  )
  (block $break|2
   (if
    (i32.lt_s
     (get_local $3)
     (get_local $6)
    )
    (block
     (br_if $break|2
      (i32.eq
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
       (get_local $6)
      )
     )
     (return
      (get_local $0)
     )
    )
   )
   (block $break|3
    (loop $repeat|3
     (br_if $break|3
      (i32.le_s
       (get_local $3)
       (get_local $6)
      )
     )
     (if
      (i64.eq
       (i64.shr_u
        (tee_local $4
         (i64.sub
          (get_local $2)
          (get_local $7)
         )
        )
        (i64.const 63)
       )
       (i64.const 0)
      )
      (block
       (set_local $2
        (get_local $4)
       )
       (set_local $8
        (i32.add
         (get_local $8)
         (i32.const 1)
        )
       )
      )
     )
     (set_local $2
      (i64.shl
       (get_local $2)
       (i64.const 1)
      )
     )
     (set_local $8
      (i32.shl
       (get_local $8)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.sub
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $repeat|3)
    )
   )
   (if
    (i64.eq
     (i64.shr_u
      (tee_local $4
       (i64.sub
        (get_local $2)
        (get_local $7)
       )
      )
      (i64.const 63)
     )
     (i64.const 0)
    )
    (block
     (set_local $2
      (get_local $4)
     )
     (set_local $8
      (i32.add
       (get_local $8)
       (i32.const 1)
      )
     )
    )
   )
   (if
    (i64.eq
     (get_local $2)
     (i64.const 0)
    )
    (set_local $3
     (i32.const -60)
    )
    (block $break|4
     (loop $repeat|4
      (br_if $break|4
       (i64.ne
        (i64.shr_u
         (get_local $2)
         (i64.const 52)
        )
        (i64.const 0)
       )
      )
      (set_local $2
       (i64.shl
        (get_local $2)
        (i64.const 1)
       )
      )
      (set_local $3
       (i32.sub
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $repeat|4)
     )
    )
   )
  )
  (set_local $0
   (f64.reinterpret/i64
    (tee_local $2
     (if (result i64)
      (i32.gt_s
       (get_local $3)
       (i32.const 0)
      )
      (i64.or
       (i64.sub
        (get_local $2)
        (i64.const 4503599627370496)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 52)
       )
      )
      (i64.shr_u
       (get_local $2)
       (i64.extend_u/i32
        (i32.sub
         (i32.const 1)
         (get_local $3)
        )
       )
      )
     )
    )
   )
  )
  (if
   (get_local $10)
   (set_local $1
    (f64.neg
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (tee_local $5
     (i32.eq
      (get_local $3)
      (get_local $6)
     )
    )
   )
   (if
    (tee_local $5
     (i32.eq
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (get_local $6)
     )
    )
    (if
     (i32.eqz
      (tee_local $5
       (f64.gt
        (f64.mul
         (f64.const 2)
         (get_local $0)
        )
        (get_local $1)
       )
      )
     )
     (if
      (tee_local $5
       (f64.eq
        (f64.mul
         (f64.const 2)
         (get_local $0)
        )
        (get_local $1)
       )
      )
      (set_local $5
       (i32.and
        (get_local $8)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (if
   (get_local $5)
   (set_local $0
    (f64.sub
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (if
   (get_local $9)
   (set_local $0
    (f64.neg
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $std/math/test_rem (; 144 ;) (type $FFFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (call $std/math/check<f64>
   (call $~lib/math/NativeMath.rem
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $~lib/math/NativeMathf.rem (; 145 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $4
   (i32.and
    (i32.shr_u
     (tee_local $3
      (i32.reinterpret/f32
       (get_local $0)
      )
     )
     (i32.const 23)
    )
    (i32.const 255)
   )
  )
  (set_local $5
   (i32.and
    (i32.shr_u
     (tee_local $6
      (i32.reinterpret/f32
       (get_local $1)
      )
     )
     (i32.const 23)
    )
    (i32.const 255)
   )
  )
  (set_local $8
   (i32.shr_u
    (get_local $3)
    (i32.const 31)
   )
  )
  (set_local $9
   (i32.shr_u
    (get_local $6)
    (i32.const 31)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.eqz
      (i32.shl
       (get_local $6)
       (i32.const 1)
      )
     )
    )
   )
   (set_local $2
    (call $isNaN<f32>
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (set_local $2
    (i32.eq
     (get_local $4)
     (i32.const 255)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (f32.div
     (tee_local $0
      (f32.mul
       (get_local $0)
       (get_local $1)
      )
     )
     (get_local $0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (if (result i32)
    (get_local $4)
    (i32.or
     (i32.and
      (get_local $3)
      (i32.const 8388607)
     )
     (i32.const 8388608)
    )
    (block (result i32)
     (block $break|0
      (set_local $2
       (i32.shl
        (get_local $3)
        (i32.const 9)
       )
      )
      (loop $repeat|0
       (br_if $break|0
        (i32.shr_u
         (get_local $2)
         (i32.const 31)
        )
       )
       (set_local $4
        (i32.sub
         (get_local $4)
         (i32.const 1)
        )
       )
       (set_local $2
        (i32.shl
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $repeat|0)
      )
     )
     (i32.shl
      (get_local $3)
      (i32.sub
       (i32.const 1)
       (get_local $4)
      )
     )
    )
   )
  )
  (set_local $6
   (if (result i32)
    (get_local $5)
    (i32.or
     (i32.and
      (get_local $6)
      (i32.const 8388607)
     )
     (i32.const 8388608)
    )
    (block (result i32)
     (block $break|1
      (set_local $2
       (i32.shl
        (get_local $6)
        (i32.const 9)
       )
      )
      (loop $repeat|1
       (br_if $break|1
        (i32.shr_u
         (get_local $2)
         (i32.const 31)
        )
       )
       (set_local $5
        (i32.sub
         (get_local $5)
         (i32.const 1)
        )
       )
       (set_local $2
        (i32.shl
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $repeat|1)
      )
     )
     (i32.shl
      (get_local $6)
      (i32.sub
       (i32.const 1)
       (get_local $5)
      )
     )
    )
   )
  )
  (block $break|2
   (if
    (i32.lt_s
     (get_local $4)
     (get_local $5)
    )
    (block
     (br_if $break|2
      (i32.eq
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
       (get_local $5)
      )
     )
     (return
      (get_local $0)
     )
    )
   )
   (block $break|3
    (loop $repeat|3
     (br_if $break|3
      (i32.le_s
       (get_local $4)
       (get_local $5)
      )
     )
     (if
      (i32.eqz
       (i32.shr_u
        (tee_local $2
         (i32.sub
          (get_local $3)
          (get_local $6)
         )
        )
        (i32.const 31)
       )
      )
      (block
       (set_local $3
        (get_local $2)
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.const 1)
        )
       )
      )
     )
     (set_local $3
      (i32.shl
       (get_local $3)
       (i32.const 1)
      )
     )
     (set_local $7
      (i32.shl
       (get_local $7)
       (i32.const 1)
      )
     )
     (set_local $4
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (br $repeat|3)
    )
   )
   (if
    (i32.eqz
     (i32.shr_u
      (tee_local $2
       (i32.sub
        (get_local $3)
        (get_local $6)
       )
      )
      (i32.const 31)
     )
    )
    (block
     (set_local $3
      (get_local $2)
     )
     (set_local $7
      (i32.add
       (get_local $7)
       (i32.const 1)
      )
     )
    )
   )
   (if
    (get_local $3)
    (block $break|4
     (loop $repeat|4
      (br_if $break|4
       (i32.shr_u
        (get_local $3)
        (i32.const 23)
       )
      )
      (set_local $3
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $4
       (i32.sub
        (get_local $4)
        (i32.const 1)
       )
      )
      (br $repeat|4)
     )
    )
    (set_local $4
     (i32.const -30)
    )
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (tee_local $3
     (if (result i32)
      (i32.gt_s
       (get_local $4)
       (i32.const 0)
      )
      (i32.or
       (i32.sub
        (get_local $3)
        (i32.const 8388608)
       )
       (i32.shl
        (get_local $4)
        (i32.const 23)
       )
      )
      (i32.shr_u
       (get_local $3)
       (i32.sub
        (i32.const 1)
        (get_local $4)
       )
      )
     )
    )
   )
  )
  (if
   (get_local $9)
   (set_local $1
    (f32.neg
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.eq
      (get_local $4)
      (get_local $5)
     )
    )
   )
   (if
    (tee_local $2
     (i32.eq
      (i32.add
       (get_local $4)
       (i32.const 1)
      )
      (get_local $5)
     )
    )
    (if
     (i32.eqz
      (tee_local $2
       (f32.gt
        (f32.mul
         (f32.const 2)
         (get_local $0)
        )
        (get_local $1)
       )
      )
     )
     (if
      (tee_local $2
       (f32.eq
        (f32.mul
         (f32.const 2)
         (get_local $0)
        )
        (get_local $1)
       )
      )
      (set_local $2
       (i32.and
        (get_local $7)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (if
   (get_local $2)
   (set_local $0
    (f32.sub
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (if
   (get_local $8)
   (set_local $0
    (f32.neg
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $std/math/test_remf (; 146 ;) (type $ffffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.rem
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $~lib/math/NativeMath.sinh (; 147 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_sinh (; 148 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.sinh
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.sinh
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.sinh (; 149 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 f32)
  (set_local $3
   (f32.const 0.5)
  )
  (if
   (i32.shr_u
    (tee_local $2
     (i32.reinterpret/f32
      (get_local $0)
     )
    )
    (i32.const 31)
   )
   (set_local $3
    (f32.const -0.5)
   )
  )
  (set_local $1
   (f32.reinterpret/i32
    (tee_local $2
     (i32.and
      (get_local $2)
      (i32.const 2147483647)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $2)
    (i32.const 1118925335)
   )
   (block
    (set_local $1
     (call $~lib/math/NativeMathf.expm1
      (get_local $1)
     )
    )
    (if
     (i32.lt_u
      (get_local $2)
      (i32.const 1065353216)
     )
     (block
      (if
       (i32.lt_u
        (get_local $2)
        (i32.const 964689920)
       )
       (return
        (get_local $0)
       )
      )
      (return
       (f32.mul
        (get_local $3)
        (f32.sub
         (f32.mul
          (f32.const 2)
          (get_local $1)
         )
         (f32.div
          (f32.mul
           (get_local $1)
           (get_local $1)
          )
          (f32.add
           (get_local $1)
           (f32.const 1)
          )
         )
        )
       )
      )
     )
    )
    (return
     (f32.mul
      (get_local $3)
      (f32.add
       (get_local $1)
       (f32.div
        (get_local $1)
        (f32.add
         (get_local $1)
         (f32.const 1)
        )
       )
      )
     )
    )
   )
  )
  (f32.mul
   (f32.mul
    (f32.const 2)
    (get_local $3)
   )
   (call $~lib/math/expo2f
    (get_local $1)
   )
  )
 )
 (func $std/math/test_sinhf (; 150 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.sinh
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/math/test_sqrt (; 151 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (f64.sqrt
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.sqrt
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_sqrtf (; 152 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (f32.sqrt
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/math/NativeMath.tanh (; 153 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_tanh (; 154 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (call $~lib/math/NativeMath.tanh
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.tanh
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $~lib/math/NativeMathf.tanh (; 155 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (i32.shr_u
    (tee_local $1
     (i32.reinterpret/f32
      (get_local $0)
     )
    )
    (i32.const 31)
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (tee_local $1
     (i32.and
      (get_local $1)
      (i32.const 2147483647)
     )
    )
   )
  )
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1057791828)
   )
   (set_local $0
    (if (result f32)
     (i32.gt_u
      (get_local $1)
      (i32.const 1092616192)
     )
     (f32.add
      (f32.const 1)
      (f32.div
       (f32.const 0)
       (get_local $0)
      )
     )
     (f32.sub
      (f32.const 1)
      (f32.div
       (f32.const 2)
       (f32.add
        (call $~lib/math/NativeMathf.expm1
         (f32.mul
          (f32.const 2)
          (get_local $0)
         )
        )
        (f32.const 2)
       )
      )
     )
    )
   )
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 1048757624)
    )
    (set_local $0
     (f32.div
      (tee_local $0
       (call $~lib/math/NativeMathf.expm1
        (f32.mul
         (f32.const 2)
         (get_local $0)
        )
       )
      )
      (f32.add
       (get_local $0)
       (f32.const 2)
      )
     )
    )
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 8388608)
     )
     (set_local $0
      (f32.div
       (f32.neg
        (tee_local $0
         (call $~lib/math/NativeMathf.expm1
          (f32.mul
           (f32.const -2)
           (get_local $0)
          )
         )
        )
       )
       (f32.add
        (get_local $0)
        (f32.const 2)
       )
      )
     )
    )
   )
  )
  (if
   (get_local $2)
   (set_local $0
    (f32.neg
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $std/math/test_tanhf (; 156 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (call $~lib/math/NativeMathf.tanh
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/math/test_trunc (; 157 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $3
   (if (result i32)
    (tee_local $4
     (call $std/math/check<f64>
      (f64.trunc
       (get_local $0)
      )
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
    (call $std/math/check<f64>
     (tee_local $0
      (call $~lib/math/JSMath.trunc
       (get_local $0)
      )
     )
     (get_local $1)
     (get_local $2)
     (get_local $3)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_truncf (; 158 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (call $std/math/check<f32>
   (f32.trunc
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $start (; 159 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 f32)
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 2.718281828459045)
     (get_global $~lib/math/JSMath.E)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 119)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 0.6931471805599453)
     (get_global $~lib/math/JSMath.LN2)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 120)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 2.302585092994046)
     (get_global $~lib/math/JSMath.LN10)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 121)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 1.4426950408889634)
     (get_global $~lib/math/JSMath.LOG2E)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 122)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 3.141592653589793)
     (get_global $~lib/math/JSMath.PI)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 123)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 0.7071067811865476)
     (get_global $~lib/math/JSMath.SQRT1_2)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 124)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 1.4142135623730951)
     (get_global $~lib/math/JSMath.SQRT2)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 125)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f32>
     (f32.const 2.7182817459106445)
     (f32.demote/f64
      (get_global $~lib/math/JSMath.E)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 127)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f32>
     (f32.const 0.6931471824645996)
     (f32.demote/f64
      (get_global $~lib/math/JSMath.LN2)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 128)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f32>
     (f32.const 2.3025851249694824)
     (f32.demote/f64
      (get_global $~lib/math/JSMath.LN10)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 129)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f32>
     (f32.const 1.4426950216293335)
     (f32.demote/f64
      (get_global $~lib/math/JSMath.LOG2E)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 130)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f32>
     (f32.const 3.1415927410125732)
     (f32.demote/f64
      (get_global $~lib/math/JSMath.PI)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 131)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f32>
     (f32.const 0.7071067690849304)
     (f32.demote/f64
      (get_global $~lib/math/JSMath.SQRT1_2)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 132)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f32>
     (f32.const 1.4142135381698608)
     (f32.demote/f64
      (get_global $~lib/math/JSMath.SQRT2)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 133)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const -8.06684839057968)
     (i32.const -2)
     (f64.const -2.01671209764492)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 144)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 4.345239849338305)
     (i32.const -1)
     (f64.const 2.1726199246691524)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 145)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const -8.38143342755525)
     (i32.const 0)
     (f64.const -8.38143342755525)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 146)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const -6.531673581913484)
     (i32.const 1)
     (f64.const -13.063347163826968)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 147)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 9.267056966972586)
     (i32.const 2)
     (f64.const 37.06822786789034)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 148)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 0.6619858980995045)
     (i32.const 3)
     (f64.const 5.295887184796036)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 149)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const -0.4066039223853553)
     (i32.const 4)
     (f64.const -6.505662758165685)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 150)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 0.5617597462207241)
     (i32.const 5)
     (f64.const 17.97631187906317)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 151)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 0.7741522965913037)
     (i32.const 6)
     (f64.const 49.545746981843436)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 152)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const -0.6787637026394024)
     (i32.const 7)
     (f64.const -86.88175393784351)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 153)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 0)
     (i32.const 2147483647)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 156)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 0)
     (i32.const -2147483647)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 157)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const -0)
     (i32.const 2147483647)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 158)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const nan:0x8000000000000)
     (i32.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 159)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const inf)
     (i32.const 0)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 160)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const -inf)
     (i32.const 0)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 161)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 1)
     (i32.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 162)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 1)
     (i32.const 1)
     (f64.const 2)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 163)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 1)
     (i32.const -1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 164)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 1)
     (i32.const 2147483647)
     (f64.const inf)
     (f64.const 0)
     (i32.const 17)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 165)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const nan:0x8000000000000)
     (i32.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 166)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const inf)
     (i32.const 2147483647)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 167)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const inf)
     (i32.const -2147483647)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 168)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const -inf)
     (i32.const 2147483647)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 169)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 8988465674311579538646525e283)
     (i32.const -2097)
     (f64.const 5e-324)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 170)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 5e-324)
     (i32.const 2097)
     (f64.const 8988465674311579538646525e283)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 171)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 1.000244140625)
     (i32.const -1074)
     (f64.const 5e-324)
     (f64.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 172)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 0.7499999999999999)
     (i32.const -1073)
     (f64.const 5e-324)
     (f64.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 173)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.const 0.5000000000000012)
     (i32.const -1024)
     (f64.const 2.781342323134007e-309)
     (f64.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 174)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const -8.066848754882812)
     (i32.const -2)
     (f32.const -2.016712188720703)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 183)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 4.345239639282227)
     (i32.const -1)
     (f32.const 2.1726198196411133)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 184)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const -8.381433486938477)
     (i32.const 0)
     (f32.const -8.381433486938477)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 185)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const -6.531673431396484)
     (i32.const 1)
     (f32.const -13.063346862792969)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 186)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 9.267057418823242)
     (i32.const 2)
     (f32.const 37.06822967529297)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 187)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 0.6619858741760254)
     (i32.const 3)
     (f32.const 5.295886993408203)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 188)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const -0.40660393238067627)
     (i32.const 4)
     (f32.const -6.50566291809082)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 189)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 0.5617597699165344)
     (i32.const 5)
     (f32.const 17.9763126373291)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 190)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 0.7741522789001465)
     (i32.const 6)
     (f32.const 49.545745849609375)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 191)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const -0.6787636876106262)
     (i32.const 7)
     (f32.const -86.88175201416016)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 192)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 0)
     (i32.const 2147483647)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 195)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 0)
     (i32.const -2147483647)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 196)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const -0)
     (i32.const 2147483647)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 197)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const nan:0x400000)
     (i32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 198)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const inf)
     (i32.const 0)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 199)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const -inf)
     (i32.const 0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 200)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 1)
     (i32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 201)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 1)
     (i32.const 1)
     (f32.const 2)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 202)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 1)
     (i32.const -1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 203)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 1)
     (i32.const 2147483647)
     (f32.const inf)
     (f32.const 0)
     (i32.const 17)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 204)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const nan:0x400000)
     (i32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 205)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const inf)
     (i32.const 2147483647)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 206)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const inf)
     (i32.const -2147483647)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 207)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const -inf)
     (i32.const 2147483647)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 208)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 1701411834604692317316873e14)
     (i32.const -276)
     (f32.const 1.401298464324817e-45)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 209)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 1.401298464324817e-45)
     (i32.const 276)
     (f32.const 1701411834604692317316873e14)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 210)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 1.000244140625)
     (i32.const -149)
     (f32.const 1.401298464324817e-45)
     (f32.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 211)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 0.7499999403953552)
     (i32.const -148)
     (f32.const 1.401298464324817e-45)
     (f32.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 212)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.const 0.5000006556510925)
     (i32.const -128)
     (f32.const 1.4693693398263237e-39)
     (f32.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 213)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const -8.06684839057968)
     (f64.const 8.06684839057968)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 225)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const 4.345239849338305)
     (f64.const 4.345239849338305)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 226)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const -8.38143342755525)
     (f64.const 8.38143342755525)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 227)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const -6.531673581913484)
     (f64.const 6.531673581913484)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 228)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const 9.267056966972586)
     (f64.const 9.267056966972586)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 229)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const 0.6619858980995045)
     (f64.const 0.6619858980995045)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 230)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const -0.4066039223853553)
     (f64.const 0.4066039223853553)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 231)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const 0.5617597462207241)
     (f64.const 0.5617597462207241)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 232)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const 0.7741522965913037)
     (f64.const 0.7741522965913037)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 233)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const -0.6787637026394024)
     (f64.const 0.6787637026394024)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 234)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 237)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const -0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 238)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 239)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const -1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 240)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 241)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const -inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 242)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 243)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const -8.066848754882812)
     (f32.const 8.066848754882812)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 252)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const 4.345239639282227)
     (f32.const 4.345239639282227)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 253)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const -8.381433486938477)
     (f32.const 8.381433486938477)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 254)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const -6.531673431396484)
     (f32.const 6.531673431396484)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 255)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const 9.267057418823242)
     (f32.const 9.267057418823242)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 256)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const 0.6619858741760254)
     (f32.const 0.6619858741760254)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 257)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const -0.40660393238067627)
     (f32.const 0.40660393238067627)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 258)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const 0.5617597699165344)
     (f32.const 0.5617597699165344)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 259)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const 0.7741522789001465)
     (f32.const 0.7741522789001465)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 260)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const -0.6787636876106262)
     (f32.const 0.6787636876106262)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 261)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 264)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const -0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 265)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 266)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const -1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 268)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const -inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 269)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 270)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const -8.06684839057968)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 282)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const 4.345239849338305)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 283)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const -8.38143342755525)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 284)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const -6.531673581913484)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 285)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const 9.267056966972586)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 286)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const 0.6619858980995045)
     (f64.const 0.8473310828433507)
     (f64.const -0.41553276777267456)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 287)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const -0.4066039223853553)
     (f64.const 1.989530071088669)
     (f64.const 0.4973946213722229)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 288)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const 0.5617597462207241)
     (f64.const 0.9742849645674904)
     (f64.const -0.4428897500038147)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 289)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const 0.7741522965913037)
     (f64.const 0.6854215158636222)
     (f64.const -0.12589527666568756)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 290)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const -0.6787637026394024)
     (f64.const 2.316874138205964)
     (f64.const -0.17284949123859406)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 291)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const 0)
     (f64.const 1.5707963267948966)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 294)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const -1)
     (f64.const 3.141592653589793)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 295)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 296)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const 1.0000000000000002)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 297)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const -1.0000000000000002)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 298)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 299)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 300)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 301)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const -0.5309227209592985)
     (f64.const 2.1304853799705463)
     (f64.const 0.1391008496284485)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 302)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.const 0.4939556746399746)
     (f64.const 1.0541629875851946)
     (f64.const 0.22054767608642578)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 303)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const -8.066848754882812)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 312)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const 4.345239639282227)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 313)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const -8.381433486938477)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 314)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const -6.531673431396484)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 315)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const 9.267057418823242)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 316)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const 0.6619858741760254)
     (f32.const 0.8473311066627502)
     (f32.const -0.13588131964206696)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 317)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const -0.40660393238067627)
     (f32.const 1.989530086517334)
     (f32.const 0.03764917701482773)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 318)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const 0.5617597699165344)
     (f32.const 0.9742849469184875)
     (f32.const 0.18443739414215088)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 319)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const 0.7741522789001465)
     (f32.const 0.6854215264320374)
     (f32.const -0.29158344864845276)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 320)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const -0.6787636876106262)
     (f32.const 2.3168740272521973)
     (f32.const -0.3795364499092102)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 321)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const 0)
     (f32.const 1.5707963705062866)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 324)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const -1)
     (f32.const 3.1415927410125732)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 325)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 326)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const 1.0000001192092896)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 327)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const -1.0000001192092896)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 328)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 329)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 330)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 331)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const 0.49965065717697144)
     (f32.const 1.0476008653640747)
     (f32.const -0.21161814033985138)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 332)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const -0.5051405429840088)
     (f32.const 2.1003410816192627)
     (f32.const -0.20852705836296082)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 333)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.const -0.5189794898033142)
     (f32.const 2.116452932357788)
     (f32.const -0.14600826799869537)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 334)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const -8.06684839057968)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 346)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 4.345239849338305)
     (f64.const 2.1487163980597503)
     (f64.const -0.291634738445282)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 347)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const -8.38143342755525)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 348)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const -6.531673581913484)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 349)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 9.267056966972586)
     (f64.const 2.91668914109908)
     (f64.const -0.24191908538341522)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 350)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 0.6619858980995045)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 351)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const -0.4066039223853553)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 352)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 0.5617597462207241)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 353)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 0.7741522965913037)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 354)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const -0.6787637026394024)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 355)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 358)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 359)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 360)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 0.9999923706054688)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 361)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 362)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 363)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 364)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 1.1060831199926429)
     (f64.const 0.4566373404384803)
     (f64.const -0.29381608963012695)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 380)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 1.1089809557628658)
     (f64.const 0.4627246859959428)
     (f64.const -0.3990095555782318)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 382)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.const 1.1169429159875521)
     (f64.const 0.47902433134075284)
     (f64.const -0.321674108505249)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 383)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const -8.066848754882812)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 392)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const 4.345239639282227)
     (f32.const 2.148716449737549)
     (f32.const 0.4251045286655426)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 393)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const -8.381433486938477)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 394)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const -6.531673431396484)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 395)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const 9.267057418823242)
     (f32.const 2.916689157485962)
     (f32.const -0.1369788944721222)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 396)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const 0.6619858741760254)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 397)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const -0.40660393238067627)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 398)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const 0.5617597699165344)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 399)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const 0.7741522789001465)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 400)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const -0.6787636876106262)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 401)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 404)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 405)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 406)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const 0.9999923706054688)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 407)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 408)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 409)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 410)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.const -1125899906842624)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 411)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const -8.06684839057968)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 423)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const 4.345239849338305)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 424)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const -8.38143342755525)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 425)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const -6.531673581913484)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 426)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const 9.267056966972586)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 427)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const 0.6619858980995045)
     (f64.const 0.7234652439515459)
     (f64.const -0.13599912822246552)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 428)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const -0.4066039223853553)
     (f64.const -0.41873374429377225)
     (f64.const -0.09264230728149414)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 429)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const 0.5617597462207241)
     (f64.const 0.5965113622274062)
     (f64.const -0.10864213854074478)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 430)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const 0.7741522965913037)
     (f64.const 0.8853748109312743)
     (f64.const -0.4256366193294525)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 431)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const -0.6787637026394024)
     (f64.const -0.7460778114110673)
     (f64.const 0.13986606895923615)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 432)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const 1)
     (f64.const 1.5707963267948966)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 435)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const -1)
     (f64.const -1.5707963267948966)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 436)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 437)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 438)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const 1.0000000000000002)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 439)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const -1.0000000000000002)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 440)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 441)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 442)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 443)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.const 0.5073043929119148)
     (f64.const 0.5320538997772349)
     (f64.const -0.16157317161560059)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 444)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const -8.066848754882812)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 453)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const 4.345239639282227)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 454)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const -8.381433486938477)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 455)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const -6.531673431396484)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 456)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const 9.267057418823242)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 457)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const 0.6619858741760254)
     (f32.const 0.7234652042388916)
     (f32.const -0.1307632476091385)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 458)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const -0.40660393238067627)
     (f32.const -0.41873374581336975)
     (f32.const 0.3161141574382782)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 459)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const 0.5617597699165344)
     (f32.const 0.5965113639831543)
     (f32.const -0.4510819613933563)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 460)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const 0.7741522789001465)
     (f32.const 0.8853747844696045)
     (f32.const 0.02493886835873127)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 461)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const -0.6787636876106262)
     (f32.const -0.7460777759552002)
     (f32.const 0.2515012323856354)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 462)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const 1)
     (f32.const 1.5707963705062866)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 465)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const -1)
     (f32.const -1.5707963705062866)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 466)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 467)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 468)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const 1.0000001192092896)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 469)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const -1.0000001192092896)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 470)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 471)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 472)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 473)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.const 0.5004770159721375)
     (f32.const 0.5241496562957764)
     (f32.const -0.29427099227905273)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 474)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const -8.06684839057968)
     (f64.const -2.784729878387861)
     (f64.const -0.4762189984321594)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 486)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const 4.345239849338305)
     (f64.const 2.175213389013164)
     (f64.const -0.02728751301765442)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 487)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const -8.38143342755525)
     (f64.const -2.822706083697696)
     (f64.const 0.20985257625579834)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 488)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const -6.531673581913484)
     (f64.const -2.575619446591922)
     (f64.const 0.3113134205341339)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 489)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const 9.267056966972586)
     (f64.const 2.9225114951048674)
     (f64.const 0.4991756081581116)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 490)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const 0.6619858980995045)
     (f64.const 0.6212462762707166)
     (f64.const -0.4697347581386566)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 491)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const -0.4066039223853553)
     (f64.const -0.39615990393192035)
     (f64.const -0.40814438462257385)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 492)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const 0.5617597462207241)
     (f64.const 0.5357588870255474)
     (f64.const 0.3520713150501251)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 493)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const 0.7741522965913037)
     (f64.const 0.7123571263197349)
     (f64.const 0.13371451199054718)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 494)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const -0.6787637026394024)
     (f64.const -0.635182348903198)
     (f64.const 0.04749670997262001)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 495)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 498)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 499)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 500)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 501)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 502)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const -8.066848754882812)
     (f32.const -2.7847299575805664)
     (f32.const -0.14418013393878937)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 531)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const 4.345239639282227)
     (f32.const 2.17521333694458)
     (f32.const -0.020796965807676315)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 532)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const -8.381433486938477)
     (f32.const -2.8227059841156006)
     (f32.const 0.44718533754348755)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 533)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const -6.531673431396484)
     (f32.const -2.5756194591522217)
     (f32.const -0.14822272956371307)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 534)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const 9.267057418823242)
     (f32.const 2.922511577606201)
     (f32.const 0.14270681142807007)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 535)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const 0.6619858741760254)
     (f32.const 0.6212462782859802)
     (f32.const 0.3684912919998169)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 536)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const -0.40660393238067627)
     (f32.const -0.39615991711616516)
     (f32.const -0.13170306384563446)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 537)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const 0.5617597699165344)
     (f32.const 0.535758912563324)
     (f32.const 0.08184859901666641)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 538)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const 0.7741522789001465)
     (f32.const 0.7123571038246155)
     (f32.const -0.14270737767219543)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 539)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const -0.6787636876106262)
     (f32.const -0.6351823210716248)
     (f32.const 0.2583143711090088)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 540)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 543)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 544)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 545)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 546)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 547)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const -8.06684839057968)
     (f64.const -1.4474613762633468)
     (f64.const 0.14857111871242523)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 559)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const 4.345239849338305)
     (f64.const 1.344597927114538)
     (f64.const -0.08170335739850998)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 560)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const -8.38143342755525)
     (f64.const -1.4520463463295539)
     (f64.const -0.07505480200052261)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 561)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const -6.531673581913484)
     (f64.const -1.4188758658752532)
     (f64.const -0.057633496820926666)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 562)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const 9.267056966972586)
     (f64.const 1.463303145448706)
     (f64.const 0.1606956422328949)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 563)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const 0.6619858980995045)
     (f64.const 0.5847550670238325)
     (f64.const 0.4582556486129761)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 564)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const -0.4066039223853553)
     (f64.const -0.3861864177552131)
     (f64.const -0.2574281692504883)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 565)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const 0.5617597462207241)
     (f64.const 0.5118269531628881)
     (f64.const -0.11444277316331863)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 566)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const 0.7741522965913037)
     (f64.const 0.6587802431653822)
     (f64.const -0.11286488175392151)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 567)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const -0.6787637026394024)
     (f64.const -0.5963307826973472)
     (f64.const -0.2182842344045639)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 568)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 571)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 572)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const 1)
     (f64.const 0.7853981633974483)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 573)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const -1)
     (f64.const -0.7853981633974483)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 574)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const inf)
     (f64.const 1.5707963267948966)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 575)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const -inf)
     (f64.const -1.5707963267948966)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 576)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 577)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.const 0.6929821535674624)
     (f64.const 0.6060004555152562)
     (f64.const -0.17075790464878082)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 578)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const -8.066848754882812)
     (f32.const -1.4474613666534424)
     (f32.const 0.12686480581760406)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 587)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const 4.345239639282227)
     (f32.const 1.3445979356765747)
     (f32.const 0.16045434772968292)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 588)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const -8.381433486938477)
     (f32.const -1.4520463943481445)
     (f32.const -0.39581751823425293)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 589)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const -6.531673431396484)
     (f32.const -1.418875813484192)
     (f32.const 0.410570353269577)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 590)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const 9.267057418823242)
     (f32.const 1.4633032083511353)
     (f32.const 0.48403501510620117)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 591)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const 0.6619858741760254)
     (f32.const 0.5847550630569458)
     (f32.const 0.2125193476676941)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 592)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const -0.40660393238067627)
     (f32.const -0.386186420917511)
     (f32.const 0.18169628083705902)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 593)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const 0.5617597699165344)
     (f32.const 0.5118269920349121)
     (f32.const 0.3499770760536194)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 594)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const 0.7741522789001465)
     (f32.const 0.6587802171707153)
     (f32.const -0.2505330741405487)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 595)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const -0.6787636876106262)
     (f32.const -0.5963307619094849)
     (f32.const 0.17614826560020447)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 596)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 599)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 600)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const 1)
     (f32.const 0.7853981852531433)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 601)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const -1)
     (f32.const -0.7853981852531433)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 602)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const inf)
     (f32.const 1.5707963705062866)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 603)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const -inf)
     (f32.const -1.5707963705062866)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 604)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 605)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const -8.06684839057968)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 617)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 4.345239849338305)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 618)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const -8.38143342755525)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 619)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const -6.531673581913484)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 620)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 9.267056966972586)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 621)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 0.6619858980995045)
     (f64.const 0.7963404371347943)
     (f64.const 0.21338365972042084)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 622)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const -0.4066039223853553)
     (f64.const -0.43153570730602897)
     (f64.const -0.4325666129589081)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 623)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 0.5617597462207241)
     (f64.const 0.6354006111644578)
     (f64.const -0.06527865678071976)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 624)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 0.7741522965913037)
     (f64.const 1.0306085575277995)
     (f64.const 0.14632052183151245)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 625)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const -0.6787637026394024)
     (f64.const -0.8268179645205255)
     (f64.const 0.1397128701210022)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 626)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 629)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 630)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 631)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 632)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 633)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 1)
     (f64.const inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 634)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const -1)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 635)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 1.0000152587890625)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 636)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const -1.0000152587890625)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 637)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 1.3552527156068805e-20)
     (f64.const 1.3552527156068805e-20)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 638)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 9.332636185032189e-302)
     (f64.const 9.332636185032189e-302)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 639)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 5.562684646268003e-309)
     (f64.const 5.562684646268003e-309)
     (f64.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 640)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const -5.562684646268003e-309)
     (f64.const -5.562684646268003e-309)
     (f64.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 641)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanh
     (f64.const 8988465674311579538646525e283)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 642)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const -8.066848754882812)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 651)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 4.345239639282227)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 652)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const -8.381433486938477)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 653)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const -6.531673431396484)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 654)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 9.267057418823242)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 655)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 0.6619858741760254)
     (f32.const 0.7963404059410095)
     (f32.const 0.19112196564674377)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 656)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const -0.40660393238067627)
     (f32.const -0.4315357208251953)
     (f32.const -0.05180925130844116)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 657)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 0.5617597699165344)
     (f32.const 0.635400652885437)
     (f32.const 0.11911056190729141)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 658)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 0.7741522789001465)
     (f32.const 1.0306085348129272)
     (f32.const 0.1798270344734192)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 659)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const -0.6787636876106262)
     (f32.const -0.8268179297447205)
     (f32.const 0.11588983237743378)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 660)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 663)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 664)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 665)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 666)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 667)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 1)
     (f32.const inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 668)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const -1)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 669)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 1.0000152587890625)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 670)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const -1.0000152587890625)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 671)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 1.3552527156068805e-20)
     (f32.const 1.3552527156068805e-20)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 672)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 7.888609052210118e-31)
     (f32.const 7.888609052210118e-31)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 673)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 2.938735877055719e-39)
     (f32.const 2.938735877055719e-39)
     (f32.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 674)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const -2.938735877055719e-39)
     (f32.const -2.938735877055719e-39)
     (f32.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 675)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanhf
     (f32.const 1701411834604692317316873e14)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 676)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -8.06684839057968)
     (f64.const 4.535662560676869)
     (f64.const -1.0585895402489023)
     (f64.const 0.09766263514757156)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 688)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 4.345239849338305)
     (f64.const -8.88799136300345)
     (f64.const 2.6868734126013067)
     (f64.const 0.35833948850631714)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 689)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -8.38143342755525)
     (f64.const -2.763607337379588)
     (f64.const -1.889300091849528)
     (f64.const -0.46235957741737366)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 690)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -6.531673581913484)
     (f64.const 4.567535276842744)
     (f64.const -0.9605469021111489)
     (f64.const -0.21524477005004883)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 691)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 9.267056966972586)
     (f64.const 4.811392084359796)
     (f64.const 1.0919123946142109)
     (f64.const 0.3894443213939667)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 692)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -6.450045556060236)
     (f64.const 0.6620717923376739)
     (f64.const -1.468508500616424)
     (f64.const -0.448591411113739)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 693)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 7.858890253041697)
     (f64.const 0.05215452675006225)
     (f64.const 1.5641600512601268)
     (f64.const 0.3784842789173126)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 694)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -0.792054511984896)
     (f64.const 7.67640268511754)
     (f64.const -0.10281658910678508)
     (f64.const -0.13993260264396667)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 695)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 0.615702673197924)
     (f64.const 2.0119025790324803)
     (f64.const 0.29697974004493516)
     (f64.const 0.44753071665763855)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 696)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -0.5587586823609152)
     (f64.const 0.03223983060263804)
     (f64.const -1.5131612053303916)
     (f64.const 0.39708876609802246)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 697)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 700)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 0)
     (f64.const -0)
     (f64.const 3.141592653589793)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 701)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 0)
     (f64.const -1)
     (f64.const 3.141592653589793)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 702)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 0)
     (f64.const -inf)
     (f64.const 3.141592653589793)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 703)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 704)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 0)
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 705)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -0)
     (f64.const 0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 706)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -0)
     (f64.const -0)
     (f64.const -3.141592653589793)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 707)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -0)
     (f64.const -1)
     (f64.const -3.141592653589793)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 708)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -0)
     (f64.const -inf)
     (f64.const -3.141592653589793)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 709)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -0)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 710)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -0)
     (f64.const inf)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 711)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -1)
     (f64.const 0)
     (f64.const -1.5707963267948966)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 712)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -1)
     (f64.const -0)
     (f64.const -1.5707963267948966)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 713)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 1)
     (f64.const 0)
     (f64.const 1.5707963267948966)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 714)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 1)
     (f64.const -0)
     (f64.const 1.5707963267948966)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 715)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -1)
     (f64.const inf)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 716)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 1)
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 717)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -1)
     (f64.const -inf)
     (f64.const -3.141592653589793)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 718)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 1)
     (f64.const -inf)
     (f64.const 3.141592653589793)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 719)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const inf)
     (f64.const 0)
     (f64.const 1.5707963267948966)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 720)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -inf)
     (f64.const 0)
     (f64.const -1.5707963267948966)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 721)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const inf)
     (f64.const inf)
     (f64.const 0.7853981633974483)
     (f64.const -0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 722)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const inf)
     (f64.const -inf)
     (f64.const 2.356194490192345)
     (f64.const -0.20682445168495178)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 723)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -inf)
     (f64.const inf)
     (f64.const -0.7853981633974483)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 724)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const -inf)
     (f64.const -inf)
     (f64.const -2.356194490192345)
     (f64.const 0.20682445168495178)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 725)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 1.1125369292536007e-308)
     (f64.const 1)
     (f64.const 1.1125369292536007e-308)
     (f64.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 726)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 1)
     (f64.const 8988465674311579538646525e283)
     (f64.const 1.1125369292536007e-308)
     (f64.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 727)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 1.5)
     (f64.const 8988465674311579538646525e283)
     (f64.const 1.668805393880401e-308)
     (f64.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 728)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2
     (f64.const 1.5)
     (f64.const -8988465674311579538646525e283)
     (f64.const 3.141592653589793)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 729)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -8.066848754882812)
     (f32.const 4.535662651062012)
     (f32.const -1.0585895776748657)
     (f32.const -0.22352588176727295)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 738)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 4.345239639282227)
     (f32.const -8.887990951538086)
     (f32.const 2.686873435974121)
     (f32.const 0.09464472532272339)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 739)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -8.381433486938477)
     (f32.const -2.7636072635650635)
     (f32.const -1.8893001079559326)
     (f32.const -0.21941901743412018)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 740)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -6.531673431396484)
     (f32.const 4.567535400390625)
     (f32.const -0.9605468511581421)
     (f32.const 0.46015575528144836)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 741)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 9.267057418823242)
     (f32.const 4.811392307281494)
     (f32.const 1.0919123888015747)
     (f32.const -0.05708503723144531)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 742)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -6.450045585632324)
     (f32.const 0.6620717644691467)
     (f32.const -1.4685084819793701)
     (f32.const 0.19611206650733948)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 743)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 7.858890056610107)
     (f32.const 0.052154526114463806)
     (f32.const 1.5641601085662842)
     (f32.const 0.48143187165260315)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 744)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -0.7920545339584351)
     (f32.const 7.676402568817139)
     (f32.const -0.10281659662723541)
     (f32.const -0.4216274917125702)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 745)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 0.6157026886940002)
     (f32.const 2.0119025707244873)
     (f32.const 0.29697975516319275)
     (f32.const 0.2322007566690445)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 746)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -0.5587586760520935)
     (f32.const 0.03223983198404312)
     (f32.const -1.5131611824035645)
     (f32.const 0.16620726883411407)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 747)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 750)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 0)
     (f32.const -0)
     (f32.const 3.1415927410125732)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 751)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 0)
     (f32.const -1)
     (f32.const 3.1415927410125732)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 752)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 0)
     (f32.const -inf)
     (f32.const 3.1415927410125732)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 753)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 754)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 0)
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 755)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -0)
     (f32.const 0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 756)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -0)
     (f32.const -0)
     (f32.const -3.1415927410125732)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 757)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -0)
     (f32.const -1)
     (f32.const -3.1415927410125732)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 758)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -0)
     (f32.const -inf)
     (f32.const -3.1415927410125732)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 759)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -0)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 760)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -0)
     (f32.const inf)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 761)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -1)
     (f32.const 0)
     (f32.const -1.5707963705062866)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 762)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -1)
     (f32.const -0)
     (f32.const -1.5707963705062866)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 763)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 1)
     (f32.const 0)
     (f32.const 1.5707963705062866)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 764)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 1)
     (f32.const -0)
     (f32.const 1.5707963705062866)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 765)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -1)
     (f32.const inf)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 766)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 1)
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 767)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -1)
     (f32.const -inf)
     (f32.const -3.1415927410125732)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 768)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 1)
     (f32.const -inf)
     (f32.const 3.1415927410125732)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 769)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const inf)
     (f32.const 0)
     (f32.const 1.5707963705062866)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 770)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -inf)
     (f32.const 0)
     (f32.const -1.5707963705062866)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 771)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const inf)
     (f32.const inf)
     (f32.const 0.7853981852531433)
     (f32.const 0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 772)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const inf)
     (f32.const -inf)
     (f32.const 2.356194496154785)
     (f32.const 0.02500828728079796)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 773)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -inf)
     (f32.const inf)
     (f32.const -0.7853981852531433)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 774)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const -inf)
     (f32.const -inf)
     (f32.const -2.356194496154785)
     (f32.const -0.02500828728079796)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 775)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 5.877471754111438e-39)
     (f32.const 1)
     (f32.const 5.877471754111438e-39)
     (f32.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 776)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan2f
     (f32.const 1)
     (f32.const 1701411834604692317316873e14)
     (f32.const 5.877471754111438e-39)
     (f32.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 777)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const -8.06684839057968)
     (f64.const -2.0055552545020245)
     (f64.const 0.46667951345443726)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 789)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const 4.345239849338305)
     (f64.const 1.6318162410515635)
     (f64.const -0.08160271495580673)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 790)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const -8.38143342755525)
     (f64.const -2.031293910673361)
     (f64.const -0.048101816326379776)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 791)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const -6.531673581913484)
     (f64.const -1.8692820012204925)
     (f64.const 0.08624018728733063)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 792)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const 9.267056966972586)
     (f64.const 2.100457720859702)
     (f64.const -0.2722989022731781)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 793)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const 0.6619858980995045)
     (f64.const 0.8715311470455973)
     (f64.const 0.4414918124675751)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 794)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const -0.4066039223853553)
     (f64.const -0.740839030300223)
     (f64.const 0.016453813761472702)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 795)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const 0.5617597462207241)
     (f64.const 0.8251195400559286)
     (f64.const 0.30680638551712036)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 796)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const 0.7741522965913037)
     (f64.const 0.9182102478959914)
     (f64.const 0.06543998420238495)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 797)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const -0.6787637026394024)
     (f64.const -0.8788326906580094)
     (f64.const -0.2016713172197342)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 798)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 801)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 802)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 803)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 804)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 805)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const 9.313225746154785e-10)
     (f64.const 0.0009765625)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 806)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const -9.313225746154785e-10)
     (f64.const -0.0009765625)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 807)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 808)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 809)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.const 8)
     (f64.const 2)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 810)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const -8.066848754882812)
     (f32.const -2.0055553913116455)
     (f32.const -0.44719240069389343)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 819)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const 4.345239639282227)
     (f32.const 1.6318162679672241)
     (f32.const 0.44636252522468567)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 820)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const -8.381433486938477)
     (f32.const -2.0312938690185547)
     (f32.const 0.19483426213264465)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 821)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const -6.531673431396484)
     (f32.const -1.8692820072174072)
     (f32.const -0.17075514793395996)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 822)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const 9.267057418823242)
     (f32.const 2.1004576683044434)
     (f32.const -0.36362043023109436)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 823)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const 0.6619858741760254)
     (f32.const 0.8715311288833618)
     (f32.const -0.12857209146022797)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 824)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const -0.40660393238067627)
     (f32.const -0.7408390641212463)
     (f32.const -0.4655757546424866)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 825)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const 0.5617597699165344)
     (f32.const 0.8251195549964905)
     (f32.const 0.05601907894015312)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 826)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const 0.7741522789001465)
     (f32.const 0.9182102680206299)
     (f32.const 0.45498204231262207)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 827)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const -0.6787636876106262)
     (f32.const -0.8788326978683472)
     (f32.const -0.22978967428207397)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 828)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 831)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 832)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 833)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 834)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 835)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const 9.313225746154785e-10)
     (f32.const 0.0009765625)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 836)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const -9.313225746154785e-10)
     (f32.const -0.0009765625)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 837)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 838)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 839)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.const 8)
     (f32.const 2)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 840)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -8.06684839057968)
     (f64.const -8)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 852)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 4.345239849338305)
     (f64.const 5)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 853)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -8.38143342755525)
     (f64.const -8)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 854)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -6.531673581913484)
     (f64.const -6)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 855)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 9.267056966972586)
     (f64.const 10)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 856)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0.6619858980995045)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 857)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0.4066039223853553)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 858)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0.5617597462207241)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 859)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0.7741522965913037)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 860)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0.6787637026394024)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 861)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 864)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 865)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 866)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 867)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 868)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 869)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 870)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 871)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0.5)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 872)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 1.0000152587890625)
     (f64.const 2)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 873)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -1.0000152587890625)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 874)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0.9999923706054688)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 875)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0.9999923706054688)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 876)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 7.888609052210118e-31)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 877)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -7.888609052210118e-31)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 878)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 879)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 880)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 881)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 882)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 883)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 884)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 885)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 886)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0.5)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 887)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 1.0000152587890625)
     (f64.const 2)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 888)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -1.0000152587890625)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 889)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0.9999923706054688)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 890)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0.9999923706054688)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 891)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 7.888609052210118e-31)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 892)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -7.888609052210118e-31)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 893)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 894)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 895)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 896)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 897)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 898)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 899)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 900)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 901)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0.5)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 902)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 1.0000152587890625)
     (f64.const 2)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 903)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -1.0000152587890625)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 904)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 0.9999923706054688)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 905)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -0.9999923706054688)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 906)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const 7.888609052210118e-31)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 907)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceil
     (f64.const -7.888609052210118e-31)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 908)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -8.066848754882812)
     (f32.const -8)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 917)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 4.345239639282227)
     (f32.const 5)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 918)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -8.381433486938477)
     (f32.const -8)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 919)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -6.531673431396484)
     (f32.const -6)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 920)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 9.267057418823242)
     (f32.const 10)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 921)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0.6619858741760254)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 922)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0.40660393238067627)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 923)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0.5617597699165344)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 924)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0.7741522789001465)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 925)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0.6787636876106262)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 926)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 929)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 930)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 931)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 932)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 933)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 934)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 935)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 936)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0.5)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 937)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 1.0000152587890625)
     (f32.const 2)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 938)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -1.0000152587890625)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 939)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0.9999923706054688)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 940)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0.9999923706054688)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 941)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 7.888609052210118e-31)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 942)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -7.888609052210118e-31)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 943)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 944)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 945)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 946)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 947)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 948)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 949)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 950)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 951)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0.5)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 952)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 1.0000152587890625)
     (f32.const 2)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 953)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -1.0000152587890625)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 954)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0.9999923706054688)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 955)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0.9999923706054688)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 956)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 7.888609052210118e-31)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 957)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -7.888609052210118e-31)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 958)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 959)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 960)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 961)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 962)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 963)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 964)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 965)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 966)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0.5)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 967)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 1.0000152587890625)
     (f32.const 2)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 968)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -1.0000152587890625)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 969)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 0.9999923706054688)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 970)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -0.9999923706054688)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 971)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const 7.888609052210118e-31)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 972)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_ceilf
     (f32.const -7.888609052210118e-31)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 973)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const -8.06684839057968)
     (f64.const 1593.5209938862329)
     (f64.const -0.38098856806755066)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1110)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const 4.345239849338305)
     (f64.const 38.56174928426729)
     (f64.const -0.2712278366088867)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1111)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const -8.38143342755525)
     (f64.const 2182.630979595893)
     (f64.const 0.0817827582359314)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1112)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const -6.531673581913484)
     (f64.const 343.273849250879)
     (f64.const -0.429940402507782)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1113)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const 9.267056966972586)
     (f64.const 5291.779170005587)
     (f64.const -0.1592995822429657)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1114)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const 0.6619858980995045)
     (f64.const 1.2272321957342842)
     (f64.const 0.23280741274356842)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1115)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const -0.4066039223853553)
     (f64.const 1.083808541871197)
     (f64.const -0.3960916996002197)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const 0.5617597462207241)
     (f64.const 1.1619803583175077)
     (f64.const 0.37748390436172485)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1117)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const 0.7741522965913037)
     (f64.const 1.3149236876276706)
     (f64.const 0.43587008118629456)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1118)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const -0.6787637026394024)
     (f64.const 1.2393413245934533)
     (f64.const 0.10201606154441833)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1119)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1122)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1123)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1124)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const -inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1125)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1126)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const -8.066848754882812)
     (f32.const 1593.5216064453125)
     (f32.const 0.26242581009864807)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1135)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const 4.345239639282227)
     (f32.const 38.56174087524414)
     (f32.const -0.08168885856866837)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1136)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const -8.381433486938477)
     (f32.const 2182.631103515625)
     (f32.const -0.02331414446234703)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1137)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const -6.531673431396484)
     (f32.const 343.2738037109375)
     (f32.const 0.20081493258476257)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1138)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const 9.267057418823242)
     (f32.const 5291.78173828125)
     (f32.const 0.36286723613739014)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1139)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const 0.6619858741760254)
     (f32.const 1.2272322177886963)
     (f32.const 0.32777416706085205)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1140)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const -0.40660393238067627)
     (f32.const 1.0838085412979126)
     (f32.const -0.039848703891038895)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1141)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const 0.5617597699165344)
     (f32.const 1.161980390548706)
     (f32.const 0.15274477005004883)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1142)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const 0.7741522789001465)
     (f32.const 1.314923644065857)
     (f32.const -0.2387111485004425)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1143)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const -0.6787636876106262)
     (f32.const 1.2393412590026855)
     (f32.const -0.45791932940483093)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1144)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1147)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1148)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1149)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const -inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1150)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1151)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const -8.06684839057968)
     (f64.const 3.137706068161745e-04)
     (f64.const -0.2599197328090668)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1163)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const 4.345239849338305)
     (f64.const 77.11053017112141)
     (f64.const -0.02792675793170929)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1164)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const -8.38143342755525)
     (f64.const 2.290813384916323e-04)
     (f64.const -0.24974334239959717)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1165)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const -6.531673581913484)
     (f64.const 1.4565661260931588e-03)
     (f64.const -0.4816822409629822)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1166)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const 9.267056966972586)
     (f64.const 10583.558245524993)
     (f64.const 0.17696762084960938)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1167)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const 0.6619858980995045)
     (f64.const 1.9386384525571998)
     (f64.const -0.4964246451854706)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1168)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const -0.4066039223853553)
     (f64.const 0.6659078892838025)
     (f64.const -0.10608318448066711)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1169)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const 0.5617597462207241)
     (f64.const 1.7537559518626311)
     (f64.const -0.39162111282348633)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1170)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const 0.7741522965913037)
     (f64.const 2.1687528885129246)
     (f64.const -0.2996125817298889)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1171)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const -0.6787637026394024)
     (f64.const 0.5072437089402843)
     (f64.const 0.47261738777160645)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1172)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1175)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1176)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const 1)
     (f64.const 2.718281828459045)
     (f64.const -0.3255307376384735)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1177)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const -1)
     (f64.const 0.36787944117144233)
     (f64.const 0.22389651834964752)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1178)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1179)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const -inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1180)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1181)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const 1.0397214889526365)
     (f64.const 2.828429155876411)
     (f64.const 0.18803080916404724)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1182)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const -1.0397214889526365)
     (f64.const 0.35355313670217847)
     (f64.const 0.2527272403240204)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1183)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const 1.0397210121154785)
     (f64.const 2.8284278071766122)
     (f64.const -0.4184139370918274)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1184)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.const 1.0397214889526367)
     (f64.const 2.8284291558764116)
     (f64.const -0.22618377208709717)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1185)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const -8.066848754882812)
     (f32.const 3.1377049162983894e-04)
     (f32.const -0.030193336308002472)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1194)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 4.345239639282227)
     (f32.const 77.11051177978516)
     (f32.const -0.2875460684299469)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1195)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const -8.381433486938477)
     (f32.const 2.2908132814336568e-04)
     (f32.const 0.2237040400505066)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1196)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const -6.531673431396484)
     (f32.const 1.4565663877874613e-03)
     (f32.const 0.36469703912734985)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1197)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 9.267057418823242)
     (f32.const 10583.5634765625)
     (f32.const 0.45962104201316833)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1198)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 0.6619858741760254)
     (f32.const 1.93863844871521)
     (f32.const 0.3568260967731476)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1199)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const -0.40660393238067627)
     (f32.const 0.6659078598022461)
     (f32.const -0.38294991850852966)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1200)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 0.5617597699165344)
     (f32.const 1.753756046295166)
     (f32.const 0.44355490803718567)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1201)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 0.7741522789001465)
     (f32.const 2.168752908706665)
     (f32.const 0.24562469124794006)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1202)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const -0.6787636876106262)
     (f32.const 0.5072436928749084)
     (f32.const -0.3974292278289795)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1203)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1206)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1207)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 1)
     (f32.const 2.7182817459106445)
     (f32.const -0.3462330996990204)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1208)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const -1)
     (f32.const 0.3678794503211975)
     (f32.const 0.3070148527622223)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1209)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1210)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const -inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1211)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1212)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 88.72283172607422)
     (f32.const 340279851902147610656242e15)
     (f32.const -0.09067153930664062)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1213)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 88.72283935546875)
     (f32.const inf)
     (f32.const 0)
     (i32.const 17)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1214)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const -103.97207641601562)
     (f32.const 1.401298464324817e-45)
     (f32.const 0.49999967217445374)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1215)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const -103.97208404541016)
     (f32.const 0)
     (f32.const -0.49999651312828064)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1216)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 0.3465735614299774)
     (f32.const 1.4142135381698608)
     (f32.const 0.13922421634197235)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1217)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 0.3465735912322998)
     (f32.const 1.4142135381698608)
     (f32.const -0.21432916820049286)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1218)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.const 0.3465736210346222)
     (f32.const 1.4142136573791504)
     (f32.const 0.43211743235588074)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1219)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const -8.06684839057968)
     (f64.const -0.9996862293931839)
     (f64.const -0.2760058343410492)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1231)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const 4.345239849338305)
     (f64.const 76.11053017112141)
     (f64.const -0.02792675793170929)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1232)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const -8.38143342755525)
     (f64.const -0.9997709186615084)
     (f64.const 0.10052496194839478)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1233)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const -6.531673581913484)
     (f64.const -0.9985434338739069)
     (f64.const -0.27437829971313477)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1234)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const 9.267056966972586)
     (f64.const 10582.558245524993)
     (f64.const 0.17696762084960938)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1235)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const 0.6619858980995045)
     (f64.const 0.9386384525571999)
     (f64.const 0.007150684483349323)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1236)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const -0.4066039223853553)
     (f64.const -0.3340921107161975)
     (f64.const -0.21216636896133423)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1237)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const 0.5617597462207241)
     (f64.const 0.7537559518626312)
     (f64.const 0.21675777435302734)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1238)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const 0.7741522965913037)
     (f64.const 1.1687528885129248)
     (f64.const 0.4007748067378998)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1239)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const -0.6787637026394024)
     (f64.const -0.4927562910597158)
     (f64.const -0.05476519837975502)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1240)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1243)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1244)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const 1)
     (f64.const 1.7182818284590453)
     (f64.const 0.348938524723053)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1245)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const -1)
     (f64.const -0.6321205588285577)
     (f64.const 0.11194825917482376)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1246)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1247)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const -inf)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1248)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1249)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const 2.225073858507201e-308)
     (f64.const 2.225073858507201e-308)
     (f64.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1250)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.const -2.225073858507201e-308)
     (f64.const -2.225073858507201e-308)
     (f64.const 0)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1251)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const -8.066848754882812)
     (f32.const -0.9996862411499023)
     (f32.const -0.19532723724842072)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1260)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const 4.345239639282227)
     (f32.const 76.11051177978516)
     (f32.const -0.2875460684299469)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1261)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const -8.381433486938477)
     (f32.const -0.9997709393501282)
     (f32.const -0.34686920046806335)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1262)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const -6.531673431396484)
     (f32.const -0.9985434412956238)
     (f32.const -0.1281939446926117)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1263)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const 9.267057418823242)
     (f32.const 10582.5634765625)
     (f32.const 0.45962104201316833)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1264)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const 0.6619858741760254)
     (f32.const 0.9386383891105652)
     (f32.const -0.28634780645370483)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1265)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const -0.40660393238067627)
     (f32.const -0.3340921103954315)
     (f32.const 0.23410017788410187)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1266)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const 0.5617597699165344)
     (f32.const 0.7537559866905212)
     (f32.const -0.11289017647504807)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const 0.7741522789001465)
     (f32.const 1.168752908706665)
     (f32.const 0.4912493824958801)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1268)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const -0.6787636876106262)
     (f32.const -0.49275627732276917)
     (f32.const 0.20514154434204102)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1269)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1272)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1273)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const 1)
     (f32.const 1.718281865119934)
     (f32.const 0.3075338304042816)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1274)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const -1)
     (f32.const -0.6321205496788025)
     (f32.const 0.15350742638111115)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1275)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1276)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const -inf)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1277)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1278)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -8.06684839057968)
     (f64.const -9)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1290)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 4.345239849338305)
     (f64.const 4)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1291)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -8.38143342755525)
     (f64.const -9)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1292)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -6.531673581913484)
     (f64.const -7)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1293)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 9.267056966972586)
     (f64.const 9)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1294)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 0.6619858980995045)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1295)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -0.4066039223853553)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1296)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 0.5617597462207241)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1297)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 0.7741522965913037)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1298)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -0.6787637026394024)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1299)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1302)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1303)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1304)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1305)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1306)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1307)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1308)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 0.5)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1309)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -0.5)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1310)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 1.0000152587890625)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1311)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -1.0000152587890625)
     (f64.const -2)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1312)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 0.9999923706054688)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1313)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -0.9999923706054688)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1314)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const 7.888609052210118e-31)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1315)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floor
     (f64.const -7.888609052210118e-31)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1316)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -8.066848754882812)
     (f32.const -9)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1325)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 4.345239639282227)
     (f32.const 4)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1326)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -8.381433486938477)
     (f32.const -9)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1327)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -6.531673431396484)
     (f32.const -7)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1328)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 9.267057418823242)
     (f32.const 9)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1329)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 0.6619858741760254)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1330)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -0.40660393238067627)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1331)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 0.5617597699165344)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1332)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 0.7741522789001465)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1333)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -0.6787636876106262)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1334)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1337)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1338)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1339)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1340)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1341)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1342)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1343)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 0.5)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1344)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -0.5)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1345)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 1.0000152587890625)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1346)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -1.0000152587890625)
     (f32.const -2)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1347)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 0.9999923706054688)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1348)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -0.9999923706054688)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1349)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const 7.888609052210118e-31)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1350)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_floorf
     (f32.const -7.888609052210118e-31)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1351)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const -8.06684839057968)
     (f64.const 4.535662560676869)
     (f64.const 9.25452742288464)
     (f64.const -0.31188681721687317)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1363)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 4.345239849338305)
     (f64.const -8.88799136300345)
     (f64.const 9.893305808328252)
     (f64.const 0.4593673348426819)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1364)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const -8.38143342755525)
     (f64.const -2.763607337379588)
     (f64.const 8.825301797432132)
     (f64.const -0.1701754331588745)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1365)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const -6.531673581913484)
     (f64.const 4.567535276842744)
     (f64.const 7.970265885519092)
     (f64.const -0.3176782727241516)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1366)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 9.267056966972586)
     (f64.const 4.811392084359796)
     (f64.const 10.441639651824575)
     (f64.const -0.2693633437156677)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1367)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const -6.450045556060236)
     (f64.const 0.6620717923376739)
     (f64.const 6.483936052542593)
     (f64.const 0.35618898272514343)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1368)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 7.858890253041697)
     (f64.const 0.05215452675006225)
     (f64.const 7.859063309581766)
     (f64.const 0.08044655621051788)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1369)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const -0.792054511984896)
     (f64.const 7.67640268511754)
     (f64.const 7.717156764899584)
     (f64.const 0.05178084969520569)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1370)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 0.615702673197924)
     (f64.const 2.0119025790324803)
     (f64.const 2.104006123874314)
     (f64.const -0.0918039008975029)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1371)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const -0.5587586823609152)
     (f64.const 0.03223983060263804)
     (f64.const 0.5596880129062913)
     (f64.const 0.1383407711982727)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1372)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 3)
     (f64.const 4)
     (f64.const 5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1375)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const -3)
     (f64.const 4)
     (f64.const 5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1376)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 4)
     (f64.const 3)
     (f64.const 5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1377)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 4)
     (f64.const -3)
     (f64.const 5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1378)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const -3)
     (f64.const -4)
     (f64.const 5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1379)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 1797693134862315708145274e284)
     (f64.const 0)
     (f64.const 1797693134862315708145274e284)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1380)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 1797693134862315708145274e284)
     (f64.const -0)
     (f64.const 1797693134862315708145274e284)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1381)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 5e-324)
     (f64.const 0)
     (f64.const 5e-324)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1382)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 5e-324)
     (f64.const -0)
     (f64.const 5e-324)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1383)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const inf)
     (f64.const 1)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1384)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 1)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1385)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1386)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const nan:0x8000000000000)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1387)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const -inf)
     (f64.const 1)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1388)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 1)
     (f64.const -inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1389)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1390)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const nan:0x8000000000000)
     (f64.const -inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1391)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const nan:0x8000000000000)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1392)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1393)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const -8.066848754882812)
     (f32.const 4.535662651062012)
     (f32.const 9.254528045654297)
     (f32.const 0.2735958993434906)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1402)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 4.345239639282227)
     (f32.const -8.887990951538086)
     (f32.const 9.893305778503418)
     (f32.const 0.4530770778656006)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1403)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const -8.381433486938477)
     (f32.const -2.7636072635650635)
     (f32.const 8.825302124023438)
     (f32.const 0.30755728483200073)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1404)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const -6.531673431396484)
     (f32.const 4.567535400390625)
     (f32.const 7.970265865325928)
     (f32.const 0.06785223633050919)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1405)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 9.267057418823242)
     (f32.const 4.811392307281494)
     (f32.const 10.44163990020752)
     (f32.const -0.26776307821273804)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1406)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const -6.450045585632324)
     (f32.const 0.6620717644691467)
     (f32.const 6.483936309814453)
     (f32.const 0.48381292819976807)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1407)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 7.858890056610107)
     (f32.const 0.052154526114463806)
     (f32.const 7.859063148498535)
     (f32.const 0.07413065433502197)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1408)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const -0.7920545339584351)
     (f32.const 7.676402568817139)
     (f32.const 7.717156887054443)
     (f32.const 0.4940592646598816)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1409)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 0.6157026886940002)
     (f32.const 2.0119025707244873)
     (f32.const 2.104006052017212)
     (f32.const -0.287089467048645)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1410)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const -0.5587586760520935)
     (f32.const 0.03223983198404312)
     (f32.const 0.5596880316734314)
     (f32.const 0.4191940724849701)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1411)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 3)
     (f32.const 4)
     (f32.const 5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1414)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const -3)
     (f32.const 4)
     (f32.const 5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1415)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 4)
     (f32.const 3)
     (f32.const 5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1416)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 4)
     (f32.const -3)
     (f32.const 5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1417)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const -3)
     (f32.const -4)
     (f32.const 5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1418)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 3402823466385288598117041e14)
     (f32.const 0)
     (f32.const 3402823466385288598117041e14)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1419)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 3402823466385288598117041e14)
     (f32.const -0)
     (f32.const 3402823466385288598117041e14)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1420)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 1.401298464324817e-45)
     (f32.const 0)
     (f32.const 1.401298464324817e-45)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1421)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 1.401298464324817e-45)
     (f32.const -0)
     (f32.const 1.401298464324817e-45)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1422)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const inf)
     (f32.const 1)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1423)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 1)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1424)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1425)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const nan:0x400000)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1426)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const -inf)
     (f32.const 1)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1427)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 1)
     (f32.const -inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1428)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1429)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const nan:0x400000)
     (f32.const -inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1430)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const nan:0x400000)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1431)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1432)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const -8.06684839057968)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1444)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const 4.345239849338305)
     (f64.const 1.4690809584224322)
     (f64.const -0.3412533402442932)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1445)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const -8.38143342755525)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1446)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const -6.531673581913484)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1447)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const 9.267056966972586)
     (f64.const 2.2264658498795615)
     (f64.const 0.3638114035129547)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1448)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const 0.6619858980995045)
     (f64.const -0.4125110252365137)
     (f64.const -0.29108747839927673)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1449)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const -0.4066039223853553)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1450)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const 0.5617597462207241)
     (f64.const -0.5766810183195862)
     (f64.const -0.10983199626207352)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1451)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const 0.7741522965913037)
     (f64.const -0.2559866591263865)
     (f64.const -0.057990044355392456)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1452)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const -0.6787637026394024)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1453)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const 0)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1456)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const -0)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1457)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const -7.888609052210118e-31)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1458)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1459)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1460)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1461)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1462)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1463)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const 0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1472)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const -0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1473)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const -7.888609052210118e-31)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1474)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1475)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1476)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1477)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1478)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1479)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const 0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1482)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const -0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1483)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const -7.888609052210118e-31)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1484)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1485)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1486)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1487)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1488)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1489)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const -8.06684839057968)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1501)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const 4.345239849338305)
     (f64.const 0.6380137537120029)
     (f64.const -0.2088824063539505)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1502)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const -8.38143342755525)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1503)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const -6.531673581913484)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1504)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const 9.267056966972586)
     (f64.const 0.9669418327487274)
     (f64.const -0.06120431795716286)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1505)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const 0.6619858980995045)
     (f64.const -0.17915126198447093)
     (f64.const 0.39090874791145325)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1506)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const -0.4066039223853553)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1507)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const 0.5617597462207241)
     (f64.const -0.25044938407454437)
     (f64.const -0.3046841621398926)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1508)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const 0.7741522965913037)
     (f64.const -0.11117359349943837)
     (f64.const -0.31503361463546753)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1509)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const -0.6787637026394024)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1510)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const 0)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1513)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const -0)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1514)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const -7.888609052210118e-31)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1515)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1516)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1517)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1518)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1519)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1520)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const -8.066848754882812)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1529)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const 4.345239639282227)
     (f32.const 0.6380137205123901)
     (f32.const -0.20476758480072021)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1530)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const -8.381433486938477)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1531)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const -6.531673431396484)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1532)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const 9.267057418823242)
     (f32.const 0.9669418334960938)
     (f32.const -0.34273025393486023)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1533)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const 0.6619858741760254)
     (f32.const -0.1791512817144394)
     (f32.const -0.27078554034233093)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1534)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const -0.40660393238067627)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1535)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const 0.5617597699165344)
     (f32.const -0.25044935941696167)
     (f32.const 0.2126826047897339)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1536)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const 0.7741522789001465)
     (f32.const -0.1111735999584198)
     (f32.const 0.46515095233917236)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1537)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const -0.6787636876106262)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1538)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const 0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1541)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const -0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1542)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const -7.888609052210118e-31)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1543)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1544)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1545)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1546)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1547)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1548)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const -8.06684839057968)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1560)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const 4.345239849338305)
     (f64.const 1.6762064170601734)
     (f64.const 0.46188199520111084)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1561)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const -8.38143342755525)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1562)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const -6.531673581913484)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1563)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const 9.267056966972586)
     (f64.const 2.3289404168523826)
     (f64.const -0.411114901304245)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1564)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const 0.6619858980995045)
     (f64.const 0.5080132114992477)
     (f64.const -0.29306045174598694)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1565)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const -0.4066039223853553)
     (f64.const -0.5218931811663979)
     (f64.const -0.25825726985931396)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1566)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const 0.5617597462207241)
     (f64.const 0.4458132279488102)
     (f64.const -0.13274887204170227)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1567)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const 0.7741522965913037)
     (f64.const 0.5733227294648414)
     (f64.const 0.02716583013534546)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1568)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const -0.6787637026394024)
     (f64.const -1.1355782978128564)
     (f64.const 0.2713092863559723)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1569)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1572)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1573)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const -7.888609052210118e-31)
     (f64.const -7.888609052210118e-31)
     (f64.const 1.7763568394002505e-15)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1574)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const 1)
     (f64.const 0.6931471805599453)
     (f64.const -0.2088811695575714)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1575)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const -1)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1576)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1577)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1578)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1579)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -8.066848754882812)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1588)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const 4.345239639282227)
     (f32.const 1.676206350326538)
     (f32.const -0.23014859855175018)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1589)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -8.381433486938477)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1590)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -6.531673431396484)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1591)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const 9.267057418823242)
     (f32.const 2.3289403915405273)
     (f32.const -0.29075589776039124)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1592)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const 0.6619858741760254)
     (f32.const 0.5080131888389587)
     (f32.const -0.1386766880750656)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1593)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -0.40660393238067627)
     (f32.const -0.5218932032585144)
     (f32.const -0.08804433047771454)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1594)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const 0.5617597699165344)
     (f32.const 0.44581323862075806)
     (f32.const -0.15101368725299835)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1595)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const 0.7741522789001465)
     (f32.const 0.5733227133750916)
     (f32.const -0.10264533013105392)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1596)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -0.6787636876106262)
     (f32.const -1.1355782747268677)
     (f32.const -0.19879481196403503)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1597)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1600)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1601)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -7.888609052210118e-31)
     (f32.const -7.888609052210118e-31)
     (f32.const 3.308722450212111e-24)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1602)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const 1)
     (f32.const 0.6931471824645996)
     (f32.const 0.031954795122146606)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1603)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -1)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1604)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1605)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1606)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1607)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -1.1754942106924411e-38)
     (f32.const -1.1754942106924411e-38)
     (f32.const 4.930380657631324e-32)
     (i32.const 9)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1608)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const -8.06684839057968)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1620)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const 4.345239849338305)
     (f64.const 2.1194358133804485)
     (f64.const -0.10164877772331238)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1621)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const -8.38143342755525)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1622)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const -6.531673581913484)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1623)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const 9.267056966972586)
     (f64.const 3.2121112403298744)
     (f64.const -0.15739446878433228)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1624)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const 0.6619858980995045)
     (f64.const -0.5951276104207402)
     (f64.const 0.3321485221385956)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1625)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const -0.4066039223853553)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1626)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const 0.5617597462207241)
     (f64.const -0.8319748453044644)
     (f64.const 0.057555437088012695)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1627)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const 0.7741522965913037)
     (f64.const -0.36931068365537134)
     (f64.const -0.19838279485702515)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1628)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const -0.6787637026394024)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1629)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const 0)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1632)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const -0)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1633)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const -7.888609052210118e-31)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1634)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1635)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1636)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1637)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1638)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1639)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const -8.066848754882812)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1648)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const 4.345239639282227)
     (f32.const 2.1194357872009277)
     (f32.const 0.18271538615226746)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1649)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const -8.381433486938477)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1650)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const -6.531673431396484)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1651)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const 9.267057418823242)
     (f32.const 3.212111234664917)
     (f32.const -0.3188050389289856)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1652)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const 0.6619858741760254)
     (f32.const -0.5951276421546936)
     (f32.const 0.34231460094451904)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1653)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const -0.40660393238067627)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1654)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const 0.5617597699165344)
     (f32.const -0.8319748044013977)
     (f32.const -0.33473604917526245)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1655)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const 0.7741522789001465)
     (f32.const -0.3693107068538666)
     (f32.const 0.3278401792049408)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1656)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const -0.6787636876106262)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1657)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const 0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1660)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const -0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1661)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const -7.888609052210118e-31)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1662)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1663)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1664)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1665)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1666)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1667)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -8.06684839057968)
     (f64.const 4.535662560676869)
     (f64.const 4.535662560676869)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1679)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 4.345239849338305)
     (f64.const -8.88799136300345)
     (f64.const 4.345239849338305)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1680)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -8.38143342755525)
     (f64.const -2.763607337379588)
     (f64.const -2.763607337379588)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1681)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -6.531673581913484)
     (f64.const 4.567535276842744)
     (f64.const 4.567535276842744)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1682)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 9.267056966972586)
     (f64.const 4.811392084359796)
     (f64.const 9.267056966972586)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1683)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -6.450045556060236)
     (f64.const 0.6620717923376739)
     (f64.const 0.6620717923376739)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1684)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 7.858890253041697)
     (f64.const 0.05215452675006225)
     (f64.const 7.858890253041697)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1685)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0.792054511984896)
     (f64.const 7.67640268511754)
     (f64.const 7.67640268511754)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1686)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 0.615702673197924)
     (f64.const 2.0119025790324803)
     (f64.const 2.0119025790324803)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1687)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0.5587586823609152)
     (f64.const 0.03223983060263804)
     (f64.const 0.03223983060263804)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1688)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 0)
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1691)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0)
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1692)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1693)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0.5)
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1694)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 1)
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1695)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -1)
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1696)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const inf)
     (f64.const 1)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1697)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -inf)
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1698)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const nan:0x8000000000000)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1699)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 0)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1700)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1701)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 0.5)
     (f64.const -1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1702)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0.5)
     (f64.const -1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1703)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 1)
     (f64.const -1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1704)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -1)
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1705)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const inf)
     (f64.const -1)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1706)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -inf)
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1707)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const nan:0x8000000000000)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1708)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1709)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 0)
     (f64.const -0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1710)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 0)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1711)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 0)
     (f64.const -inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1712)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1713)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1714)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0)
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1715)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1716)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0)
     (f64.const -inf)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1717)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1718)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 1)
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1719)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1720)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const inf)
     (f64.const 0)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1721)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -inf)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1722)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1723)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -1)
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1724)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const inf)
     (f64.const -0)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1725)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -inf)
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1726)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const nan:0x8000000000000)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1727)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const inf)
     (f64.const 2)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1728)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const inf)
     (f64.const -0.5)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1729)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1730)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -inf)
     (f64.const 2)
     (f64.const 2)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1731)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -inf)
     (f64.const -0.5)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1732)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1733)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1734)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1735)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1736)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 1)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1737)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -1)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1738)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const inf)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1739)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -inf)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1740)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 1)
     (f64.const -inf)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1741)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -1)
     (f64.const -inf)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1742)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const inf)
     (f64.const -inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1743)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -inf)
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1744)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 1.75)
     (f64.const 0.5)
     (f64.const 1.75)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1745)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -1.75)
     (f64.const 0.5)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1746)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const 1.75)
     (f64.const -0.5)
     (f64.const 1.75)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1747)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_max
     (f64.const -1.75)
     (f64.const -0.5)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1748)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -8.066848754882812)
     (f32.const 4.535662651062012)
     (f32.const 4.535662651062012)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1757)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 4.345239639282227)
     (f32.const -8.887990951538086)
     (f32.const 4.345239639282227)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1758)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -8.381433486938477)
     (f32.const -2.7636072635650635)
     (f32.const -2.7636072635650635)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1759)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -6.531673431396484)
     (f32.const 4.567535400390625)
     (f32.const 4.567535400390625)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1760)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 9.267057418823242)
     (f32.const 4.811392307281494)
     (f32.const 9.267057418823242)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1761)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -6.450045585632324)
     (f32.const 0.6620717644691467)
     (f32.const 0.6620717644691467)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1762)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 7.858890056610107)
     (f32.const 0.052154526114463806)
     (f32.const 7.858890056610107)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1763)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0.7920545339584351)
     (f32.const 7.676402568817139)
     (f32.const 7.676402568817139)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1764)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 0.6157026886940002)
     (f32.const 2.0119025707244873)
     (f32.const 2.0119025707244873)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1765)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0.5587586760520935)
     (f32.const 0.03223983198404312)
     (f32.const 0.03223983198404312)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1766)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 0)
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1769)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0)
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1770)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1771)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0.5)
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1772)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 1)
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1773)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -1)
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1774)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const inf)
     (f32.const 1)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1775)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -inf)
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1776)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const nan:0x400000)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1777)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 0)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1778)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1779)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 0.5)
     (f32.const -1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1780)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0.5)
     (f32.const -1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1781)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 1)
     (f32.const -1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1782)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -1)
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1783)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const inf)
     (f32.const -1)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1784)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -inf)
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1785)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const nan:0x400000)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1786)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1787)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 0)
     (f32.const -0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1788)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 0)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1789)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 0)
     (f32.const -inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1790)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1791)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0)
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1792)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0)
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1793)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1794)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0)
     (f32.const -inf)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1795)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1796)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 1)
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1797)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1798)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const inf)
     (f32.const 0)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1799)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -inf)
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1800)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const nan:0x400000)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1801)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -1)
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1802)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const inf)
     (f32.const -0)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1803)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -inf)
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1804)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const nan:0x400000)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1805)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const inf)
     (f32.const 2)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1806)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const inf)
     (f32.const -0.5)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1807)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1808)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -inf)
     (f32.const 2)
     (f32.const 2)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1809)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -inf)
     (f32.const -0.5)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1810)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1811)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1812)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1813)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1814)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 1)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1815)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -1)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1816)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const inf)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1817)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -inf)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1818)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 1)
     (f32.const -inf)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1819)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -1)
     (f32.const -inf)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1820)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const inf)
     (f32.const -inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1821)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1822)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 1.75)
     (f32.const 0.5)
     (f32.const 1.75)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1823)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -1.75)
     (f32.const 0.5)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1824)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const 1.75)
     (f32.const -0.5)
     (f32.const 1.75)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1825)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_maxf
     (f32.const -1.75)
     (f32.const -0.5)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1826)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -8.06684839057968)
     (f64.const 4.535662560676869)
     (f64.const -8.06684839057968)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1838)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 4.345239849338305)
     (f64.const -8.88799136300345)
     (f64.const -8.88799136300345)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1839)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -8.38143342755525)
     (f64.const -2.763607337379588)
     (f64.const -8.38143342755525)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1840)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -6.531673581913484)
     (f64.const 4.567535276842744)
     (f64.const -6.531673581913484)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1841)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 9.267056966972586)
     (f64.const 4.811392084359796)
     (f64.const 4.811392084359796)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1842)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -6.450045556060236)
     (f64.const 0.6620717923376739)
     (f64.const -6.450045556060236)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1843)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 7.858890253041697)
     (f64.const 0.05215452675006225)
     (f64.const 0.05215452675006225)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1844)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0.792054511984896)
     (f64.const 7.67640268511754)
     (f64.const -0.792054511984896)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1845)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 0.615702673197924)
     (f64.const 2.0119025790324803)
     (f64.const 0.615702673197924)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1846)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0.5587586823609152)
     (f64.const 0.03223983060263804)
     (f64.const -0.5587586823609152)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1847)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1850)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1851)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1852)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0.5)
     (f64.const 1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1853)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 1)
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1854)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -1)
     (f64.const 1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1855)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const inf)
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1856)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -inf)
     (f64.const 1)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1857)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const nan:0x8000000000000)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1858)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 0)
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1859)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0)
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1860)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 0.5)
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1861)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0.5)
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1862)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 1)
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1863)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -1)
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1864)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const inf)
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1865)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -inf)
     (f64.const -1)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1866)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const nan:0x8000000000000)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1867)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1868)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 0)
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1869)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 0)
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1870)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 0)
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1871)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1872)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0)
     (f64.const 0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1873)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0)
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1874)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0)
     (f64.const inf)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1875)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0)
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1876)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1877)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1878)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -1)
     (f64.const 0)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1879)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1880)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -inf)
     (f64.const 0)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1881)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1882)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -1)
     (f64.const -0)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1883)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const inf)
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1884)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -inf)
     (f64.const -0)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1885)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const nan:0x8000000000000)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1886)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const inf)
     (f64.const 2)
     (f64.const 2)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1887)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const inf)
     (f64.const -0.5)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1888)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1889)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -inf)
     (f64.const 2)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1890)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -inf)
     (f64.const -0.5)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1891)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1892)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1893)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1894)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1895)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 1)
     (f64.const inf)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1896)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -1)
     (f64.const inf)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1897)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const inf)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1898)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -inf)
     (f64.const inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1899)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 1)
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1900)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -1)
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1901)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const inf)
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1902)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -inf)
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1903)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 1.75)
     (f64.const 0.5)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1904)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -1.75)
     (f64.const 0.5)
     (f64.const -1.75)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1905)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const 1.75)
     (f64.const -0.5)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1906)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_min
     (f64.const -1.75)
     (f64.const -0.5)
     (f64.const -1.75)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1907)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -8.066848754882812)
     (f32.const 4.535662651062012)
     (f32.const -8.066848754882812)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1916)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 4.345239639282227)
     (f32.const -8.887990951538086)
     (f32.const -8.887990951538086)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1917)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -8.381433486938477)
     (f32.const -2.7636072635650635)
     (f32.const -8.381433486938477)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1918)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -6.531673431396484)
     (f32.const 4.567535400390625)
     (f32.const -6.531673431396484)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1919)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 9.267057418823242)
     (f32.const 4.811392307281494)
     (f32.const 4.811392307281494)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1920)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -6.450045585632324)
     (f32.const 0.6620717644691467)
     (f32.const -6.450045585632324)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1921)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 7.858890056610107)
     (f32.const 0.052154526114463806)
     (f32.const 0.052154526114463806)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1922)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0.7920545339584351)
     (f32.const 7.676402568817139)
     (f32.const -0.7920545339584351)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1923)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 0.6157026886940002)
     (f32.const 2.0119025707244873)
     (f32.const 0.6157026886940002)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1924)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0.5587586760520935)
     (f32.const 0.03223983198404312)
     (f32.const -0.5587586760520935)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1925)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1928)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1929)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1930)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0.5)
     (f32.const 1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1931)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 1)
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1932)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -1)
     (f32.const 1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1933)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const inf)
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1934)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -inf)
     (f32.const 1)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1935)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const nan:0x400000)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1936)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 0)
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1937)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0)
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1938)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 0.5)
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1939)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0.5)
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1940)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 1)
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1941)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -1)
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1942)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const inf)
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1943)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -inf)
     (f32.const -1)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1944)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const nan:0x400000)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1945)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1946)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 0)
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1947)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 0)
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1948)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 0)
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1949)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1950)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0)
     (f32.const 0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1951)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0)
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1952)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0)
     (f32.const inf)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1953)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0)
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1954)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1955)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1956)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -1)
     (f32.const 0)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1957)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1958)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -inf)
     (f32.const 0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1959)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const nan:0x400000)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1960)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -1)
     (f32.const -0)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1961)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const inf)
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1962)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -inf)
     (f32.const -0)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1963)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const nan:0x400000)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1964)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const inf)
     (f32.const 2)
     (f32.const 2)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1965)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const inf)
     (f32.const -0.5)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1966)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1967)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -inf)
     (f32.const 2)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1968)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -inf)
     (f32.const -0.5)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1969)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1970)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1971)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1972)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1973)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 1)
     (f32.const inf)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1974)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -1)
     (f32.const inf)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1975)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const inf)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1976)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -inf)
     (f32.const inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1977)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 1)
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1978)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -1)
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1979)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const inf)
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1980)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1981)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 1.75)
     (f32.const 0.5)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1982)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -1.75)
     (f32.const 0.5)
     (f32.const -1.75)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1983)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const 1.75)
     (f32.const -0.5)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1984)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_minf
     (f32.const -1.75)
     (f32.const -0.5)
     (f32.const -1.75)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1985)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -8.06684839057968)
     (f64.const 4.535662560676869)
     (f64.const -3.531185829902812)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2001)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 4.345239849338305)
     (f64.const -8.88799136300345)
     (f64.const 4.345239849338305)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2002)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -8.38143342755525)
     (f64.const -2.763607337379588)
     (f64.const -0.09061141541648476)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2003)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -6.531673581913484)
     (f64.const 4.567535276842744)
     (f64.const -1.9641383050707404)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2004)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 9.267056966972586)
     (f64.const 4.811392084359796)
     (f64.const 4.45566488261279)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2005)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -6.450045556060236)
     (f64.const 0.6620717923376739)
     (f64.const -0.4913994250211714)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2006)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 7.858890253041697)
     (f64.const 0.05215452675006225)
     (f64.const 0.035711240532359426)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2007)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0.792054511984896)
     (f64.const 7.67640268511754)
     (f64.const -0.792054511984896)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2008)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 0.615702673197924)
     (f64.const 2.0119025790324803)
     (f64.const 0.615702673197924)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2009)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0.5587586823609152)
     (f64.const 0.03223983060263804)
     (f64.const -0.0106815621160685)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2010)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2013)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2014)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2015)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0.5)
     (f64.const 1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2016)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2017)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2018)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 1.5)
     (f64.const 1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2019)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1.5)
     (f64.const 1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2020)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 2)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2021)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -2)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2022)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const inf)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2023)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -inf)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2024)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const nan:0x8000000000000)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2025)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 0)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2026)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2027)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 0.5)
     (f64.const -1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2028)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0.5)
     (f64.const -1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2029)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 1)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2030)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2031)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 1.5)
     (f64.const -1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2032)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1.5)
     (f64.const -1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2033)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 2)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2034)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -2)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2035)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const inf)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2036)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -inf)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2037)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const nan:0x8000000000000)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2038)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 0)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2039)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 0)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2040)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 0)
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2041)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 0)
     (f64.const -inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2042)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2043)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2044)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2045)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0)
     (f64.const inf)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2046)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0)
     (f64.const -inf)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2047)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2048)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 1)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2049)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2050)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const inf)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2051)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -inf)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2052)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2053)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2054)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const inf)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2055)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -inf)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2056)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const nan:0x8000000000000)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2057)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const inf)
     (f64.const 2)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2058)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const inf)
     (f64.const -0.5)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2059)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2060)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -inf)
     (f64.const 2)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2061)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -inf)
     (f64.const -0.5)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2062)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2063)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2064)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2065)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2066)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 1)
     (f64.const inf)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2067)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1)
     (f64.const inf)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2068)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const inf)
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2069)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -inf)
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2070)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 1)
     (f64.const -inf)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2071)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1)
     (f64.const -inf)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2072)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const inf)
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2073)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -inf)
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2074)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 1.75)
     (f64.const 0.5)
     (f64.const 0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2075)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1.75)
     (f64.const 0.5)
     (f64.const -0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2076)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const 1.75)
     (f64.const -0.5)
     (f64.const 0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2077)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_mod
     (f64.const -1.75)
     (f64.const -0.5)
     (f64.const -0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2078)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -8.066848754882812)
     (f32.const 4.535662651062012)
     (f32.const -3.531186103820801)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2087)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 4.345239639282227)
     (f32.const -8.887990951538086)
     (f32.const 4.345239639282227)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2088)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -8.381433486938477)
     (f32.const -2.7636072635650635)
     (f32.const -0.09061169624328613)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2089)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -6.531673431396484)
     (f32.const 4.567535400390625)
     (f32.const -1.9641380310058594)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2090)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 9.267057418823242)
     (f32.const 4.811392307281494)
     (f32.const 4.455665111541748)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2091)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -6.450045585632324)
     (f32.const 0.6620717644691467)
     (f32.const -0.49139970541000366)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2092)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 7.858890056610107)
     (f32.const 0.052154526114463806)
     (f32.const 0.0357111394405365)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2093)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0.7920545339584351)
     (f32.const 7.676402568817139)
     (f32.const -0.7920545339584351)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2094)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 0.6157026886940002)
     (f32.const 2.0119025707244873)
     (f32.const 0.6157026886940002)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2095)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0.5587586760520935)
     (f32.const 0.03223983198404312)
     (f32.const -0.010681532323360443)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2096)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2099)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2100)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2101)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0.5)
     (f32.const 1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2102)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2103)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2104)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 1.5)
     (f32.const 1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2105)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1.5)
     (f32.const 1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2106)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 2)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2107)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -2)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2108)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const inf)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2109)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -inf)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2110)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const nan:0x400000)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2111)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 0)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2112)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2113)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 0.5)
     (f32.const -1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2114)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0.5)
     (f32.const -1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2115)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 1)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2117)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 1.5)
     (f32.const -1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2118)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1.5)
     (f32.const -1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2119)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 2)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2120)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -2)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2121)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const inf)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2122)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -inf)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2123)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const nan:0x400000)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2124)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 0)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2125)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 0)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2126)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 0)
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2127)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 0)
     (f32.const -inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2128)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2129)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2130)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2131)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0)
     (f32.const inf)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2132)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0)
     (f32.const -inf)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2133)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2134)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 1)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2135)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2136)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const inf)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2137)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -inf)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2138)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const nan:0x400000)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2139)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2140)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const inf)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2141)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -inf)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2142)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const nan:0x400000)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2143)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const inf)
     (f32.const 2)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2144)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const inf)
     (f32.const -0.5)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2145)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2146)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -inf)
     (f32.const 2)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2147)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -inf)
     (f32.const -0.5)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2148)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2149)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2150)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2151)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2152)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 1)
     (f32.const inf)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2153)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1)
     (f32.const inf)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2154)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const inf)
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2155)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -inf)
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2156)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 1)
     (f32.const -inf)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2157)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1)
     (f32.const -inf)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2158)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const inf)
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2159)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2160)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 1.75)
     (f32.const 0.5)
     (f32.const 0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2161)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1.75)
     (f32.const 0.5)
     (f32.const -0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2162)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const 1.75)
     (f32.const -0.5)
     (f32.const 0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2163)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_modf
     (f32.const -1.75)
     (f32.const -0.5)
     (f32.const -0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2164)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -8.06684839057968)
     (f64.const 4.535662560676869)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2176)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 4.345239849338305)
     (f64.const -8.88799136300345)
     (f64.const 2.1347118825587285e-06)
     (f64.const 0.3250160217285156)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2177)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -8.38143342755525)
     (f64.const -2.763607337379588)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2178)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -6.531673581913484)
     (f64.const 4.567535276842744)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2179)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 9.267056966972586)
     (f64.const 4.811392084359796)
     (f64.const 44909.29941512966)
     (f64.const -0.26659080386161804)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2180)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -6.450045556060236)
     (f64.const 0.6620717923376739)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2181)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 7.858890253041697)
     (f64.const 0.05215452675006225)
     (f64.const 1.1135177413458652)
     (f64.const -0.37168607115745544)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2182)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.792054511984896)
     (f64.const 7.67640268511754)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2183)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0.615702673197924)
     (f64.const 2.0119025790324803)
     (f64.const 0.37690773521380183)
     (f64.const 0.32473301887512207)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2184)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5587586823609152)
     (f64.const 0.03223983060263804)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2185)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2188)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2189)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const 3)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2190)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const 2)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2191)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2192)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const 0.5)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2193)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2194)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2195)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const -0.5)
     (f64.const inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2196)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const -1)
     (f64.const inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2197)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const -2)
     (f64.const inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2198)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const -3)
     (f64.const inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2199)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const -4)
     (f64.const inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2200)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.const -inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2201)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2202)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2203)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const 3)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2204)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const 2)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2205)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2206)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const 0.5)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2207)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2208)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2209)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const -0.5)
     (f64.const inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2210)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const -1)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2211)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const -2)
     (f64.const inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2212)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const -3)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2213)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const -4)
     (f64.const inf)
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2214)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.const -inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2215)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2216)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2217)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2218)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1)
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2219)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2220)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5)
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2221)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const nan:0x8000000000000)
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2222)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2223)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2224)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1)
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2225)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2226)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5)
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2227)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2228)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2229)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2230)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.const 2)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2231)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2232)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.const -2)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2233)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.const -3)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2234)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.const 0.5)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2235)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2236)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1)
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2237)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1)
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2238)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1)
     (f64.const 3)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2239)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1)
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2240)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1)
     (f64.const -0.5)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2241)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1)
     (f64.const -3)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2242)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5)
     (f64.const 0.5)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2243)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5)
     (f64.const 1.5)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2244)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5)
     (f64.const 2)
     (f64.const 0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2245)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5)
     (f64.const 3)
     (f64.const -0.125)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2246)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5)
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2247)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5)
     (f64.const -inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2248)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2249)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0.5)
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2250)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0.5)
     (f64.const -inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2251)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0.5)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2252)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1.5)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2253)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1.5)
     (f64.const -inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2254)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1.5)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2255)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2256)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2257)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const -inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2258)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const 3)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2259)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const 2)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2260)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const 1)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2261)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const 0.5)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2262)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const -0.5)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2263)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2264)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.const -2)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2265)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2266)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2268)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const 3)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2269)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const 2)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2270)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const 1)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2271)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const 0.5)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2272)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const -0.5)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2273)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2274)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -inf)
     (f64.const -2)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2275)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const nan:0x8000000000000)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2276)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const nan:0x8000000000000)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2277)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -2)
     (f64.const 1)
     (f64.const -2)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2278)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -2)
     (f64.const -1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2279)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -8.066848754882812)
     (f32.const 4.535662651062012)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2288)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 4.345239639282227)
     (f32.const -8.887990951538086)
     (f32.const 2.134714122803416e-06)
     (f32.const 0.1436440795660019)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2289)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -8.381433486938477)
     (f32.const -2.7636072635650635)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2290)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -6.531673431396484)
     (f32.const 4.567535400390625)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2291)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 9.267057418823242)
     (f32.const 4.811392307281494)
     (f32.const 44909.33203125)
     (f32.const -0.05356409028172493)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2292)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -6.450045585632324)
     (f32.const 0.6620717644691467)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2293)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 7.858890056610107)
     (f32.const 0.052154526114463806)
     (f32.const 1.1135177612304688)
     (f32.const 0.19122089445590973)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2294)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.7920545339584351)
     (f32.const 7.676402568817139)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2295)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0.6157026886940002)
     (f32.const 2.0119025707244873)
     (f32.const 0.3769077658653259)
     (f32.const 0.337149053812027)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2296)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5587586760520935)
     (f32.const 0.03223983198404312)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2297)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2300)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2301)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const 3)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2302)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const 2)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2303)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2304)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const 0.5)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2305)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2306)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2307)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const -0.5)
     (f32.const inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2308)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const -1)
     (f32.const inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2309)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const -2)
     (f32.const inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2310)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const -3)
     (f32.const inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2311)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const -4)
     (f32.const inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2312)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.const -inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2313)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2314)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2315)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const 3)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2316)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const 2)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2317)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2318)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const 0.5)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2319)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2320)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2321)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const -0.5)
     (f32.const inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2322)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const -1)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2323)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const -2)
     (f32.const inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2324)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const -3)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2325)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const -4)
     (f32.const inf)
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2326)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.const -inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2327)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const nan:0x400000)
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2328)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2329)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2330)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1)
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2331)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2332)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5)
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2333)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const nan:0x400000)
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2334)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2335)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2336)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1)
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2337)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2338)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5)
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2339)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2340)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2341)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2342)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.const 2)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2343)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2344)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.const -2)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2345)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.const -3)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2346)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.const 0.5)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2347)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2348)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1)
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2349)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1)
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2350)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1)
     (f32.const 3)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2351)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1)
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2352)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1)
     (f32.const -0.5)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2353)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1)
     (f32.const -3)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2354)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5)
     (f32.const 0.5)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2355)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5)
     (f32.const 1.5)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2356)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5)
     (f32.const 2)
     (f32.const 0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2357)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5)
     (f32.const 3)
     (f32.const -0.125)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2358)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5)
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2359)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5)
     (f32.const -inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2360)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2361)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0.5)
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2362)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0.5)
     (f32.const -inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2363)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0.5)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2364)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1.5)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2365)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1.5)
     (f32.const -inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2366)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1.5)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2367)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2368)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2369)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const -inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2370)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const 3)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2371)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const 2)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2372)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const 1)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2373)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const 0.5)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2374)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const -0.5)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2375)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2376)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.const -2)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2377)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2378)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2379)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2380)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const 3)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2381)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const 2)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2382)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const 1)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2383)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const 0.5)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2384)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const -0.5)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2385)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2386)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -inf)
     (f32.const -2)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2387)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const nan:0x400000)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2388)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const nan:0x400000)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2389)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -2)
     (f32.const 1)
     (f32.const -2)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2390)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -2)
     (f32.const -1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2391)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $~lib/math/NativeMath.seedRandom
   (i64.reinterpret/f64
    (call $~lib/math/JSMath.random)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (f64.lt
       (f64.convert_s/i32
        (get_local $0)
       )
       (f64.const 1e6)
      )
     )
    )
    (if
     (tee_local $1
      (f64.ge
       (tee_local $2
        (call $~lib/math/NativeMath.random)
       )
       (f64.const 0)
      )
     )
     (set_local $1
      (f64.lt
       (get_local $2)
       (f64.const 1)
      )
     )
    )
    (if
     (get_local $1)
     (block
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 2400)
       (i32.const 2)
      )
      (unreachable)
     )
    )
   )
  )
  (call $~lib/math/NativeMath.seedRandom
   (i64.reinterpret/f64
    (call $~lib/math/JSMath.random)
   )
  )
  (block $break|1
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (f64.lt
       (f64.convert_s/i32
        (get_local $0)
       )
       (f64.const 1e6)
      )
     )
    )
    (if
     (tee_local $1
      (f32.ge
       (tee_local $3
        (call $~lib/math/NativeMathf.random)
       )
       (f32.const 0)
      )
     )
     (set_local $1
      (f32.lt
       (get_local $3)
       (f32.const 1)
      )
     )
    )
    (if
     (get_local $1)
     (block
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $repeat|1)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 2408)
       (i32.const 2)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -8.06684839057968)
     (f64.const -8)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2422)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 4.345239849338305)
     (f64.const 4)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2423)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -8.38143342755525)
     (f64.const -8)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2424)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -6.531673581913484)
     (f64.const -7)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2425)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 9.267056966972586)
     (f64.const 9)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2426)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 0.6619858980995045)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2427)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -0.4066039223853553)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2428)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 0.5617597462207241)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2429)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 0.7741522965913037)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2430)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -0.6787637026394024)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2431)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2434)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2435)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2436)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2437)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2438)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2439)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2440)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2441)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -0.5)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2442)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 1.5)
     (f64.const 2)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2443)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -1.5)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2444)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 1.0000152587890625)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2445)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -1.0000152587890625)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2446)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 0.9999923706054688)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2447)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -0.9999923706054688)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2448)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 7.888609052210118e-31)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2449)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -7.888609052210118e-31)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2450)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -8.066848754882812)
     (f32.const -8)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2459)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 4.345239639282227)
     (f32.const 4)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2460)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -8.381433486938477)
     (f32.const -8)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2461)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -6.531673431396484)
     (f32.const -7)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2462)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 9.267057418823242)
     (f32.const 9)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2463)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 0.6619858741760254)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2464)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -0.40660393238067627)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2465)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 0.5617597699165344)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2466)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 0.7741522789001465)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2467)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -0.6787636876106262)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2468)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2471)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2472)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2473)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2474)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2475)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2476)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2477)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2478)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -0.5)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2479)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const 1.5)
     (f64.const 2)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2480)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_round
     (f64.const -1.5)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2481)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 1.0000152587890625)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2482)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -1.0000152587890625)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2483)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 0.9999923706054688)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2484)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -0.9999923706054688)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2485)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const 7.888609052210118e-31)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2486)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_roundf
     (f32.const -7.888609052210118e-31)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2487)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sign
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2498)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sign
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2499)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sign
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2500)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sign
     (f64.const 2)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2501)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sign
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2502)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sign
     (f64.const -2)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2503)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sign
     (f64.const inf)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2504)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sign
     (f64.const -inf)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2505)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sign
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2506)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_signf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2514)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_signf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2515)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_signf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2516)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_signf
     (f32.const 2)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2517)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_signf
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2518)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_signf
     (f32.const -2)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2519)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_signf
     (f32.const inf)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2520)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_signf
     (f32.const -inf)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2521)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_signf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2522)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -8.06684839057968)
     (f64.const 4.535662560676869)
     (f64.const 1.0044767307740567)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2533)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 4.345239849338305)
     (f64.const -8.88799136300345)
     (f64.const 4.345239849338305)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2534)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -8.38143342755525)
     (f64.const -2.763607337379588)
     (f64.const -0.09061141541648476)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2535)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -6.531673581913484)
     (f64.const 4.567535276842744)
     (f64.const -1.9641383050707404)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2536)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 9.267056966972586)
     (f64.const 4.811392084359796)
     (f64.const -0.35572720174700656)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2537)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -6.450045556060236)
     (f64.const 0.6620717923376739)
     (f64.const 0.17067236731650248)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2538)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 7.858890253041697)
     (f64.const 0.05215452675006225)
     (f64.const -0.016443286217702822)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2539)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0.792054511984896)
     (f64.const 7.67640268511754)
     (f64.const -0.792054511984896)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2540)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 0.615702673197924)
     (f64.const 2.0119025790324803)
     (f64.const 0.615702673197924)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2541)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0.5587586823609152)
     (f64.const 0.03223983060263804)
     (f64.const -0.0106815621160685)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2542)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2545)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2546)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2547)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0.5)
     (f64.const 1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2548)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2549)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2550)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 1.5)
     (f64.const 1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2551)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1.5)
     (f64.const 1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2552)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 2)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2553)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -2)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2554)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const inf)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2555)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -inf)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2556)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const nan:0x8000000000000)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2557)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 0)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2558)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2559)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 0.5)
     (f64.const -1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2560)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0.5)
     (f64.const -1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2561)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 1)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2562)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2563)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 1.5)
     (f64.const -1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2564)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1.5)
     (f64.const -1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2565)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 2)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2566)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -2)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2567)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const inf)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2568)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -inf)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2569)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const nan:0x8000000000000)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2570)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 0)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2571)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 0)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2572)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 0)
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2573)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 0)
     (f64.const -inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2574)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2575)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2576)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2577)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0)
     (f64.const inf)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2578)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0)
     (f64.const -inf)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2579)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2580)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 1)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2581)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2582)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const inf)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2583)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -inf)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2584)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2585)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2586)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const inf)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2587)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -inf)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2588)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const nan:0x8000000000000)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2589)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const inf)
     (f64.const 2)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2590)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const inf)
     (f64.const -0.5)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2591)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2592)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -inf)
     (f64.const 2)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2593)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -inf)
     (f64.const -0.5)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2594)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2595)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2596)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2597)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2598)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 1)
     (f64.const inf)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2599)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1)
     (f64.const inf)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2600)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const inf)
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2601)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -inf)
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2602)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 1)
     (f64.const -inf)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2603)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1)
     (f64.const -inf)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2604)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const inf)
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2605)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -inf)
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2606)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 1.75)
     (f64.const 0.5)
     (f64.const -0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2607)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1.75)
     (f64.const 0.5)
     (f64.const 0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2608)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 1.75)
     (f64.const -0.5)
     (f64.const -0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2609)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const -1.75)
     (f64.const -0.5)
     (f64.const 0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2610)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_rem
     (f64.const 8e-323)
     (f64.const inf)
     (f64.const 8e-323)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2611)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -8.066848754882812)
     (f32.const 4.535662651062012)
     (f32.const 1.004476547241211)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2620)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 4.345239639282227)
     (f32.const -8.887990951538086)
     (f32.const 4.345239639282227)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2621)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -8.381433486938477)
     (f32.const -2.7636072635650635)
     (f32.const -0.09061169624328613)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2622)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -6.531673431396484)
     (f32.const 4.567535400390625)
     (f32.const -1.9641380310058594)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2623)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 9.267057418823242)
     (f32.const 4.811392307281494)
     (f32.const -0.3557271957397461)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2624)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -6.450045585632324)
     (f32.const 0.6620717644691467)
     (f32.const 0.17067205905914307)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2625)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 7.858890056610107)
     (f32.const 0.052154526114463806)
     (f32.const -0.016443386673927307)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2626)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0.7920545339584351)
     (f32.const 7.676402568817139)
     (f32.const -0.7920545339584351)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2627)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 0.6157026886940002)
     (f32.const 2.0119025707244873)
     (f32.const 0.6157026886940002)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2628)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0.5587586760520935)
     (f32.const 0.03223983198404312)
     (f32.const -0.010681532323360443)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2629)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2632)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2633)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2634)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0.5)
     (f32.const 1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2635)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2636)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2637)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 1.5)
     (f32.const 1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2638)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1.5)
     (f32.const 1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2639)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 2)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2640)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -2)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2641)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const inf)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2642)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -inf)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2643)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const nan:0x400000)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2644)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 0)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2645)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2646)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 0.5)
     (f32.const -1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2647)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0.5)
     (f32.const -1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2648)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 1)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2649)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2650)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 1.5)
     (f32.const -1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2651)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1.5)
     (f32.const -1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2652)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 2)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2653)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -2)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2654)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const inf)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2655)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -inf)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2656)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const nan:0x400000)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2657)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 0)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2658)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 0)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2659)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 0)
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2660)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 0)
     (f32.const -inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2661)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2662)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2663)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2664)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0)
     (f32.const inf)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2665)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0)
     (f32.const -inf)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2666)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2667)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 1)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2668)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2669)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const inf)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2670)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -inf)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2671)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const nan:0x400000)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2672)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2673)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const inf)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2674)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -inf)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2675)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const nan:0x400000)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2676)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const inf)
     (f32.const 2)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2677)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const inf)
     (f32.const -0.5)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2678)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2679)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -inf)
     (f32.const 2)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2680)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -inf)
     (f32.const -0.5)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2681)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2682)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2683)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2684)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2685)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 1)
     (f32.const inf)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2686)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1)
     (f32.const inf)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2687)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const inf)
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2688)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -inf)
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2689)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 1)
     (f32.const -inf)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2690)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1)
     (f32.const -inf)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2691)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const inf)
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2692)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2693)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 1.75)
     (f32.const 0.5)
     (f32.const -0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2694)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1.75)
     (f32.const 0.5)
     (f32.const 0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2695)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 1.75)
     (f32.const -0.5)
     (f32.const -0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2696)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const -1.75)
     (f32.const -0.5)
     (f32.const 0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2697)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_remf
     (f32.const 5.877471754111438e-39)
     (f32.const inf)
     (f32.const 5.877471754111438e-39)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2698)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const -8.06684839057968)
     (f64.const -1593.5206801156262)
     (f64.const -0.2138727605342865)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2763)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const 4.345239849338305)
     (f64.const 38.54878088685412)
     (f64.const 0.21537430584430695)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2764)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const -8.38143342755525)
     (f64.const -2182.6307505145546)
     (f64.const 0.16213826835155487)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2765)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const -6.531673581913484)
     (f64.const -343.2723926847529)
     (f64.const 0.20479513704776764)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2766)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const 9.267056966972586)
     (f64.const 5291.7790755194055)
     (f64.const -0.48676517605781555)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2767)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const 0.6619858980995045)
     (f64.const 0.7114062568229157)
     (f64.const -0.4584641456604004)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2768)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const -0.4066039223853553)
     (f64.const -0.41790065258739445)
     (f64.const 0.37220045924186707)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2769)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const 0.5617597462207241)
     (f64.const 0.5917755935451237)
     (f64.const 0.46178996562957764)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2770)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const 0.7741522965913037)
     (f64.const 0.8538292008852542)
     (f64.const -0.07019051909446716)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2771)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const -0.6787637026394024)
     (f64.const -0.732097615653169)
     (f64.const 0.26858529448509216)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2772)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2775)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2776)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2777)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2778)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2779)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const -8.066848754882812)
     (f32.const -1593.521240234375)
     (f32.const 0.1671663224697113)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2788)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const 4.345239639282227)
     (f32.const 38.548770904541016)
     (f32.const -0.49340328574180603)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2789)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const -8.381433486938477)
     (f32.const -2182.630859375)
     (f32.const 0.0849970355629921)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2790)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const -6.531673431396484)
     (f32.const -343.2723388671875)
     (f32.const 0.0704190656542778)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2791)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const 9.267057418823242)
     (f32.const 5291.78125)
     (f32.const -0.44362515211105347)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2792)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const 0.6619858741760254)
     (f32.const 0.7114062309265137)
     (f32.const 0.058103885501623154)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2793)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const -0.40660393238067627)
     (f32.const -0.4179006516933441)
     (f32.const 0.39349499344825745)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2794)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const 0.5617597699165344)
     (f32.const 0.5917755961418152)
     (f32.const -0.4183797240257263)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2795)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const 0.7741522789001465)
     (f32.const 0.8538292050361633)
     (f32.const 0.45992106199264526)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2796)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const -0.6787636876106262)
     (f32.const -0.7320976257324219)
     (f32.const -0.48159059882164)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2797)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2800)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2801)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2802)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2803)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2804)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const -8.06684839057968)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2816)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 4.345239849338305)
     (f64.const 2.0845238903256313)
     (f64.const -0.07180261611938477)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2817)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const -8.38143342755525)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2818)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const -6.531673581913484)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2819)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 9.267056966972586)
     (f64.const 3.0441841217266385)
     (f64.const -0.01546262577176094)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2820)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 0.6619858980995045)
     (f64.const 0.8136251582267503)
     (f64.const -0.08618157356977463)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2821)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const -0.4066039223853553)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2822)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 0.5617597462207241)
     (f64.const 0.7495063350104014)
     (f64.const -0.0981396734714508)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2823)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 0.7741522965913037)
     (f64.const 0.879859248170583)
     (f64.const -0.37124353647232056)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2824)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const -0.6787637026394024)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2825)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2828)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2829)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const -inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2830)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2831)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2832)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2833)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2834)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 4)
     (f64.const 2)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2835)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1e-323)
     (f64.const 3.1434555694052576e-162)
     (f64.const 0.43537619709968567)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2836)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1.5e-323)
     (f64.const 3.849931087076416e-162)
     (f64.const -0.45194002985954285)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2837)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 5e-324)
     (f64.const 2.2227587494850775e-162)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2838)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const -5e-324)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2839)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 0.9999999999999999)
     (f64.const 0.9999999999999999)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2840)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1.9999999999999998)
     (f64.const 1.414213562373095)
     (f64.const -0.21107041835784912)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2841)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1.0000000000000002)
     (f64.const 1)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2842)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.0000000000000004)
     (f64.const 1.4142135623730951)
     (f64.const -0.27173060178756714)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2843)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1.0000000000000002)
     (f64.const 1)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2844)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 0.9999999999999999)
     (f64.const 0.9999999999999999)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2845)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const -1797693134862315708145274e284)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2846)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1797693134862315708145274e284)
     (f64.const 1340780792994259561100831e130)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2847)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 179769313486231490980915e285)
     (f64.const 134078079299425926338769e131)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2848)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1797693134862314111473026e284)
     (f64.const 1340780792994258965674548e130)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2849)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1797693134862313313136902e284)
     (f64.const 1340780792994258667961407e130)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2850)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1797693134862312514800778e284)
     (f64.const 1340780792994258370248265e130)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2851)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1797693134862311716464655e284)
     (f64.const 1340780792994258072535124e130)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2852)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1797693134862310918128531e284)
     (f64.const 1340780792994257774821982e130)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2853)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1797693134862310119792407e284)
     (f64.const 1340780792994257477108841e130)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2854)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1797693134862309321456283e284)
     (f64.const 1340780792994257179395699e130)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2855)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1797693134862308523120159e284)
     (f64.const 1340780792994256881682558e130)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2856)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1797693134862307724784036e284)
     (f64.const 1340780792994256583969417e130)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2857)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.225073858507203e-308)
     (f64.const 1.4916681462400417e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2858)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.225073858507205e-308)
     (f64.const 1.4916681462400423e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2859)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.225073858507207e-308)
     (f64.const 1.491668146240043e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2860)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.225073858507209e-308)
     (f64.const 1.4916681462400437e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2861)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.225073858507211e-308)
     (f64.const 1.4916681462400443e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2862)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.2250738585072127e-308)
     (f64.const 1.491668146240045e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2863)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.2250738585072147e-308)
     (f64.const 1.4916681462400457e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2864)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.2250738585072167e-308)
     (f64.const 1.4916681462400463e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2865)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.2250738585072187e-308)
     (f64.const 1.491668146240047e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2866)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.2250738585072207e-308)
     (f64.const 1.4916681462400476e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2867)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.2250738585072226e-308)
     (f64.const 1.4916681462400483e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2868)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.2250738585072246e-308)
     (f64.const 1.491668146240049e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2869)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.2250738585072266e-308)
     (f64.const 1.4916681462400496e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2870)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.2250738585072286e-308)
     (f64.const 1.4916681462400503e-154)
     (f64.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2871)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 92.35130391890645)
     (f64.const 9.609958580499006)
     (f64.const 0.4998137056827545)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2872)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 93.3599596388916)
     (f64.const 9.662295774757238)
     (f64.const -0.49979978799819946)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2873)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 95.42049628886124)
     (f64.const 9.76834153215689)
     (f64.const -0.49997270107269287)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2874)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 95.87916941885449)
     (f64.const 9.791790919890728)
     (f64.const 0.4998766779899597)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2875)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 96.84804174884022)
     (f64.const 9.841140266698785)
     (f64.const 0.499801903963089)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2876)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 97.43639050883155)
     (f64.const 9.87098731175517)
     (f64.const 0.4997696280479431)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2877)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 97.50957979883047)
     (f64.const 9.874693909120955)
     (f64.const 0.49999818205833435)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2878)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 97.80496893882612)
     (f64.const 9.88963947466368)
     (f64.const -0.4999580681324005)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2879)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 98.2751822888192)
     (f64.const 9.913383997849534)
     (f64.const 0.49979931116104126)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2880)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 99.47293564880155)
     (f64.const 9.973611966023219)
     (f64.const -0.4999540448188782)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2881)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 100.57047130878539)
     (f64.const 10.028483001370914)
     (f64.const -0.49996453523635864)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2882)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 100.60954608878481)
     (f64.const 10.030431002144665)
     (f64.const 0.49975672364234924)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2883)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 100.67909109878379)
     (f64.const 10.033897104255344)
     (f64.const -0.4997771382331848)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2884)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 101.12268095877725)
     (f64.const 10.055977374615422)
     (f64.const 0.49988678097724915)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2885)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 101.3027691287746)
     (f64.const 10.064927676281366)
     (f64.const 0.4999105632305145)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2886)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.45932313565507e-307)
     (f64.const 4.9591563149945874e-154)
     (f64.const -0.4998999834060669)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2887)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 5.610957305180409e-307)
     (f64.const 7.490632353266584e-154)
     (f64.const -0.4999343752861023)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2888)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 5.8073887977408524e-307)
     (f64.const 7.62062254526548e-154)
     (f64.const -0.49989569187164307)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2889)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 7.026137080471427e-307)
     (f64.const 8.382205605013174e-154)
     (f64.const 0.49980640411376953)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2890)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 8.438697769194972e-307)
     (f64.const 9.186238495268328e-154)
     (f64.const -0.4999065697193146)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2891)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1.1607792515836795e-306)
     (f64.const 1.0773946591586944e-153)
     (f64.const -0.49997684359550476)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2892)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1.2827413827423193e-306)
     (f64.const 1.1325817333606962e-153)
     (f64.const -0.4999513030052185)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2893)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 1.7116604596087457e-306)
     (f64.const 1.3083044216117078e-153)
     (f64.const -0.49986395239830017)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2894)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.038173251686994e-306)
     (f64.const 1.4276460526639628e-153)
     (f64.const 0.4998403787612915)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2895)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.171572060856931e-306)
     (f64.const 1.4736254818836879e-153)
     (f64.const 0.4999290406703949)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2896)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.4681399631804094e-306)
     (f64.const 1.5710314965589996e-153)
     (f64.const 0.49989044666290283)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2897)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.5175533964200588e-306)
     (f64.const 1.5866799918131124e-153)
     (f64.const -0.4997701048851013)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2898)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 2.6461505468829625e-306)
     (f64.const 1.6266992797941982e-153)
     (f64.const 0.4998672902584076)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2899)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 3.8167076367720413e-306)
     (f64.const 1.9536395872248397e-153)
     (f64.const 0.49983471632003784)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2900)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.const 4.5743220778562766e-306)
     (f64.const 2.1387664851161936e-153)
     (f64.const 0.49985939264297485)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2901)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const -8.066848754882812)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2910)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 4.345239639282227)
     (f32.const 2.084523916244507)
     (f32.const 0.3200402557849884)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2911)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const -8.381433486938477)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2912)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const -6.531673431396484)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2913)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 9.267057418823242)
     (f32.const 3.0441842079162598)
     (f32.const 0.05022354796528816)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2914)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 0.6619858741760254)
     (f32.const 0.813625156879425)
     (f32.const 0.2240506112575531)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2915)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const -0.40660393238067627)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2916)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 0.5617597699165344)
     (f32.const 0.7495063543319702)
     (f32.const 0.05895441770553589)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2917)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 0.7741522789001465)
     (f32.const 0.879859209060669)
     (f32.const -0.4874873757362366)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2918)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const -0.6787636876106262)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2919)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2922)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2923)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const -inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2924)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2925)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2926)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2927)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2928)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 4)
     (f32.const 2)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2929)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 2.802596928649634e-45)
     (f32.const 5.293955920339377e-23)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2930)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 4.203895392974451e-45)
     (f32.const 6.483745598763743e-23)
     (f32.const 0.37388554215431213)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2931)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 1.401298464324817e-45)
     (f32.const 3.743392066509216e-23)
     (f32.const -0.20303145051002502)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2932)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const -1.401298464324817e-45)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2933)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 3402823466385288598117041e14)
     (f32.const 18446742974197923840)
     (f32.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2934)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const -3402823466385288598117041e14)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2935)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 0.9999998807907104)
     (f32.const 0.9999999403953552)
     (f32.const 2.980232594040899e-08)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2936)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 0.9999999403953552)
     (f32.const 0.9999999403953552)
     (f32.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2937)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 1.999999761581421)
     (f32.const 1.4142134189605713)
     (f32.const -0.4959246516227722)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2938)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 1.9999998807907104)
     (f32.const 1.4142135381698608)
     (f32.const 0.15052194893360138)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2939)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 1.0000001192092896)
     (f32.const 1)
     (f32.const -0.5)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2940)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 1.000000238418579)
     (f32.const 1.0000001192092896)
     (f32.const 5.960463766996327e-08)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2941)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 2.000000238418579)
     (f32.const 1.4142136573791504)
     (f32.const 0.08986179530620575)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2942)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.const 2.000000476837158)
     (f32.const 1.41421377658844)
     (f32.const 0.3827550709247589)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2943)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const -8.06684839057968)
     (f64.const -0.999999803096032)
     (f64.const 0.012793331407010555)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3008)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const 4.345239849338305)
     (f64.const 0.9996636978961307)
     (f64.const 0.1573508232831955)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3009)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const -8.38143342755525)
     (f64.const -0.9999998950434862)
     (f64.const 0.27985066175460815)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3010)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const -6.531673581913484)
     (f64.const -0.9999957568392429)
     (f64.const -0.44285574555397034)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3011)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const 9.267056966972586)
     (f64.const 0.9999999821447234)
     (f64.const 0.4462755024433136)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3012)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const 0.6619858980995045)
     (f64.const 0.5796835018635275)
     (f64.const 0.4892043173313141)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3013)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const -0.4066039223853553)
     (f64.const -0.3855853099901652)
     (f64.const 0.35993871092796326)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3014)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const 0.5617597462207241)
     (f64.const 0.5092819248700439)
     (f64.const -0.39436522126197815)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3015)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const 0.7741522965913037)
     (f64.const 0.6493374550318555)
     (f64.const -0.4899396002292633)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3016)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const -0.6787637026394024)
     (f64.const -0.590715084799841)
     (f64.const -0.0145387789234519)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3017)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3020)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3021)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const inf)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3022)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const -inf)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3023)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3024)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const -8.066848754882812)
     (f32.const -0.9999998211860657)
     (f32.const -0.3034979999065399)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3033)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const 4.345239639282227)
     (f32.const 0.9996637105941772)
     (f32.const 0.2154078334569931)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3034)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const -8.381433486938477)
     (f32.const -0.9999998807907104)
     (f32.const 0.23912210762500763)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3035)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const -6.531673431396484)
     (f32.const -0.999995768070221)
     (f32.const -0.18844597041606903)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3036)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const 9.267057418823242)
     (f32.const 1)
     (f32.const 0.1497807800769806)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3037)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const 0.6619858741760254)
     (f32.const 0.5796834826469421)
     (f32.const -0.05590476095676422)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3038)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const -0.40660393238067627)
     (f32.const -0.38558530807495117)
     (f32.const 0.349787175655365)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3039)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const 0.5617597699165344)
     (f32.const 0.5092819333076477)
     (f32.const -0.1528785079717636)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3040)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const 0.7741522789001465)
     (f32.const 0.6493374705314636)
     (f32.const 0.4317026138305664)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3041)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const -0.6787636876106262)
     (f32.const -0.5907150506973267)
     (f32.const 0.4079873859882355)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3042)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3045)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3046)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const inf)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3047)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const -inf)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3048)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3049)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -8.06684839057968)
     (f64.const -8)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3061)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 4.345239849338305)
     (f64.const 4)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3062)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -8.38143342755525)
     (f64.const -8)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3063)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -6.531673581913484)
     (f64.const -6)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3064)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 9.267056966972586)
     (f64.const 9)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3065)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 0.6619858980995045)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3066)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -0.4066039223853553)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3067)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 0.5617597462207241)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3068)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 0.7741522965913037)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3069)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -0.6787637026394024)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3070)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3073)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3074)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -inf)
     (f64.const -inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3075)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3076)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -0)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3077)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3078)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -1)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3079)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 0.5)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3080)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -0.5)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3081)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 1.0000152587890625)
     (f64.const 1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3082)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -1.0000152587890625)
     (f64.const -1)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3083)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 0.9999923706054688)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3084)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -0.9999923706054688)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3085)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const 7.888609052210118e-31)
     (f64.const 0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3086)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_trunc
     (f64.const -7.888609052210118e-31)
     (f64.const -0)
     (f64.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3087)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -8.066848754882812)
     (f32.const -8)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3096)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 4.345239639282227)
     (f32.const 4)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3097)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -8.381433486938477)
     (f32.const -8)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3098)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -6.531673431396484)
     (f32.const -6)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3099)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 9.267057418823242)
     (f32.const 9)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3100)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 0.6619858741760254)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3101)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -0.40660393238067627)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3102)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 0.5617597699165344)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3103)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 0.7741522789001465)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3104)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -0.6787636876106262)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3105)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3108)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3109)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -inf)
     (f32.const -inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3110)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 0)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3111)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -0)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3112)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3113)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -1)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3114)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 0.5)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3115)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -0.5)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 1.0000152587890625)
     (f32.const 1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3117)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -1.0000152587890625)
     (f32.const -1)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3118)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 0.9999923706054688)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3119)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -0.9999923706054688)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3120)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const 7.888609052210118e-31)
     (f32.const 0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3121)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_truncf
     (f32.const -7.888609052210118e-31)
     (f32.const -0)
     (f32.const 0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3122)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
