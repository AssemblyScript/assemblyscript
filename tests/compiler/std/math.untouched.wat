(module
 (type $i (func (result i32)))
 (type $F (func (result f64)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FFFii (func (param f64 f64 f64 i32) (result i32)))
 (type $FFFF (func (param f64 f64 f64) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $Fv (func (param f64)))
 (type $FiFFii (func (param f64 i32 f64 f64 i32) (result i32)))
 (type $fiffii (func (param f32 i32 f32 f32 i32) (result i32)))
 (type $fif (func (param f32 i32) (result f32)))
 (type $f (func (result f32)))
 (type $fffii (func (param f32 f32 f32 i32) (result i32)))
 (type $ffff (func (param f32 f32 f32) (result f32)))
 (type $fi (func (param f32) (result i32)))
 (type $FFFFii (func (param f64 f64 f64 f64 i32) (result i32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $ffffii (func (param f32 f32 f32 f32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $FF (func (param f64) (result f64)))
 (type $ff (func (param f32) (result f32)))
 (type $Iv (func (param i64)))
 (type $II (func (param i64) (result i64)))
 (type $I (func (result i64)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (import "JSMath" "E" (global $(lib)/math/JSMath.E f64))
 (import "env" "logf" (func $std/math/logf (param f64)))
 (import "JSMath" "LN2" (global $(lib)/math/JSMath.LN2 f64))
 (import "JSMath" "LN10" (global $(lib)/math/JSMath.LN10 f64))
 (import "JSMath" "LOG2E" (global $(lib)/math/JSMath.LOG2E f64))
 (import "JSMath" "PI" (global $(lib)/math/JSMath.PI f64))
 (import "JSMath" "SQRT1_2" (global $(lib)/math/JSMath.SQRT1_2 f64))
 (import "JSMath" "SQRT2" (global $(lib)/math/JSMath.SQRT2 f64))
 (import "JSMath" "abs" (func $(lib)/math/JSMath.abs (param f64) (result f64)))
 (import "JSMath" "acos" (func $(lib)/math/JSMath.acos (param f64) (result f64)))
 (import "JSMath" "acosh" (func $(lib)/math/JSMath.acosh (param f64) (result f64)))
 (import "JSMath" "asin" (func $(lib)/math/JSMath.asin (param f64) (result f64)))
 (import "JSMath" "asinh" (func $(lib)/math/JSMath.asinh (param f64) (result f64)))
 (import "JSMath" "atan" (func $(lib)/math/JSMath.atan (param f64) (result f64)))
 (import "JSMath" "cbrt" (func $(lib)/math/JSMath.cbrt (param f64) (result f64)))
 (import "JSMath" "cosh" (func $(lib)/math/JSMath.cosh (param f64) (result f64)))
 (import "JSMath" "exp" (func $(lib)/math/JSMath.exp (param f64) (result f64)))
 (import "JSMath" "expm1" (func $(lib)/math/JSMath.expm1 (param f64) (result f64)))
 (import "JSMath" "hypot" (func $(lib)/math/JSMath.hypot (param f64 f64) (result f64)))
 (import "JSMath" "log" (func $(lib)/math/JSMath.log (param f64) (result f64)))
 (import "JSMath" "log10" (func $(lib)/math/JSMath.log10 (param f64) (result f64)))
 (import "JSMath" "log1p" (func $(lib)/math/JSMath.log1p (param f64) (result f64)))
 (import "JSMath" "log2" (func $(lib)/math/JSMath.log2 (param f64) (result f64)))
 (import "JSMath" "random" (func $(lib)/math/JSMath.random (result f64)))
 (import "JSMath" "sinh" (func $(lib)/math/JSMath.sinh (param f64) (result f64)))
 (import "JSMath" "sqrt" (func $(lib)/math/JSMath.sqrt (param f64) (result f64)))
 (import "JSMath" "tanh" (func $(lib)/math/JSMath.tanh (param f64) (result f64)))
 (global $std/math/JS i32 (i32.const 1))
 (global $std/math/INEXACT i32 (i32.const 1))
 (global $std/math/INVALID i32 (i32.const 2))
 (global $std/math/DIVBYZERO i32 (i32.const 4))
 (global $std/math/UNDERFLOW i32 (i32.const 8))
 (global $std/math/OVERFLOW i32 (i32.const 16))
 (global "$(lib)/math/NativeMath.random_seeded" (mut i32) (i32.const 0))
 (global "$(lib)/math/NativeMath.random_state0" (mut i64) (i64.const 0))
 (global "$(lib)/math/NativeMath.random_state1" (mut i64) (i64.const 0))
 (global $HEAP_BASE i32 (i32.const 64))
 (memory $0 1)
 (data (i32.const 4) "\0b\00\00\00s\00t\00d\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 32) "\0d\00\00\00(\00l\00i\00b\00)\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $std/math/signbit (; 21 ;) (type $Fi) (param $0 f64) (result i32)
  (return
   (i32.wrap/i64
    (i64.shr_u
     (i64.reinterpret/f64
      (get_local $0)
     )
     (i64.const 63)
    )
   )
  )
 )
 (func $std/math/eulp (; 22 ;) (type $Fi) (param $0 f64) (result i32)
  (local $1 i64)
  (local $2 i32)
  (set_local $1
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $2
   (i32.wrap/i64
    (i64.and
     (i64.shr_u
      (get_local $1)
      (i64.const 52)
     )
     (i64.const 2047)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (return
   (i32.sub
    (i32.sub
     (get_local $2)
     (i32.const 1023)
    )
    (i32.const 52)
   )
  )
 )
 (func "$(lib)/math/NativeMath.scalbn" (; 23 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
  (local $2 f64)
  (nop)
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
    (set_local $1
     (i32.sub
      (get_local $1)
      (i32.const 1023)
     )
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
      (set_local $1
       (i32.sub
        (get_local $1)
        (i32.const 1023)
       )
      )
      (if
       (i32.gt_s
        (get_local $1)
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
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1022)
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
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 1022)
        )
       )
       (if
        (i32.lt_s
         (get_local $1)
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
  (return
   (f64.mul
    (get_local $2)
    (f64.reinterpret/i64
     (i64.shl
      (i64.add
       (i64.const 1023)
       (i64.extend_u/i32
        (get_local $1)
       )
      )
      (i64.const 52)
     )
    )
   )
  )
 )
 (func $std/math/ulperr (; 24 ;) (type $FFFF) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  (local $3 f64)
  (local $4 i32)
  (nop)
  (if
   (i32.and
    (if (result i32)
     (tee_local $4
      (f64.ne
       (tee_local $3
        (get_local $0)
       )
       (get_local $3)
      )
     )
     (f64.ne
      (tee_local $3
       (get_local $1)
      )
      (get_local $3)
     )
     (get_local $4)
    )
    (i32.const 1)
   )
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
    (select
     (f64.ne
      (f64.abs
       (tee_local $3
        (get_local $0)
       )
      )
      (f64.const inf)
     )
     (i32.const 0)
     (f64.eq
      (get_local $3)
      (get_local $3)
     )
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
  (return
   (f64.add
    (call "$(lib)/math/NativeMath.scalbn"
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
 )
 (func $std/math/check<f64> (; 25 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 f64)
  (if
   (f64.ne
    (get_local $0)
    (get_local $1)
   )
   (block
    (nop)
    (set_local $4
     (call $std/math/ulperr
      (get_local $0)
      (get_local $1)
      (get_local $2)
     )
    )
    (if
     (f64.ge
      (f64.abs
       (get_local $4)
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
   )
  )
  (return
   (i32.const 1)
  )
 )
 (func $std/math/test_scalbn (; 26 ;) (type $FiFFii) (param $0 f64) (param $1 i32) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (return
   (call $std/math/check<f64>
    (call "$(lib)/math/NativeMath.scalbn"
     (get_local $0)
     (get_local $1)
    )
    (get_local $2)
    (get_local $3)
    (get_local $4)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.scalbn" (; 27 ;) (type $fif) (param $0 f32) (param $1 i32) (result f32)
  (local $2 f32)
  (nop)
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
    (set_local $1
     (i32.sub
      (get_local $1)
      (i32.const 127)
     )
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
      (set_local $1
       (i32.sub
        (get_local $1)
        (i32.const 127)
       )
      )
      (if
       (i32.gt_s
        (get_local $1)
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
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 126)
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
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 126)
        )
       )
       (if
        (i32.lt_s
         (get_local $1)
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
  (return
   (f32.mul
    (get_local $2)
    (f32.reinterpret/i32
     (i32.shl
      (i32.add
       (i32.const 127)
       (get_local $1)
      )
      (i32.const 23)
     )
    )
   )
  )
 )
 (func $std/math/signbitf (; 28 ;) (type $fi) (param $0 f32) (result i32)
  (return
   (i32.shr_u
    (i32.reinterpret/f32
     (get_local $0)
    )
    (i32.const 31)
   )
  )
 )
 (func $std/math/eulpf (; 29 ;) (type $fi) (param $0 f32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.and
    (i32.shr_u
     (get_local $1)
     (i32.const 23)
    )
    (i32.const 255)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (return
   (i32.sub
    (i32.sub
     (get_local $2)
     (i32.const 127)
    )
    (i32.const 23)
   )
  )
 )
 (func $std/math/ulperrf (; 30 ;) (type $ffff) (param $0 f32) (param $1 f32) (param $2 f32) (result f32)
  (local $3 f32)
  (local $4 i32)
  (nop)
  (if
   (i32.and
    (if (result i32)
     (tee_local $4
      (f32.ne
       (tee_local $3
        (get_local $0)
       )
       (get_local $3)
      )
     )
     (f32.ne
      (tee_local $3
       (get_local $1)
      )
      (get_local $3)
     )
     (get_local $4)
    )
    (i32.const 1)
   )
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
    (select
     (f32.ne
      (f32.abs
       (tee_local $3
        (get_local $0)
       )
      )
      (f32.const inf)
     )
     (i32.const 0)
     (f32.eq
      (get_local $3)
      (get_local $3)
     )
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
  (return
   (f32.add
    (call "$(lib)/math/NativeMathf.scalbn"
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
 )
 (func $std/math/check<f32> (; 31 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (local $4 f32)
  (if
   (f32.ne
    (get_local $0)
    (get_local $1)
   )
   (block
    (nop)
    (set_local $4
     (call $std/math/ulperrf
      (get_local $0)
      (get_local $1)
      (get_local $2)
     )
    )
    (if
     (f32.ge
      (f32.abs
       (get_local $4)
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
   )
  )
  (return
   (i32.const 1)
  )
 )
 (func $std/math/test_scalbnf (; 32 ;) (type $fiffii) (param $0 f32) (param $1 i32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.scalbn"
     (get_local $0)
     (get_local $1)
    )
    (get_local $2)
    (get_local $3)
    (get_local $4)
   )
  )
 )
 (func $fmod (; 33 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 i64)
  (set_local $2
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $3
   (i64.reinterpret/f64
    (get_local $1)
   )
  )
  (set_local $4
   (i32.wrap/i64
    (i64.and
     (i64.shr_u
      (get_local $2)
      (i64.const 52)
     )
     (i64.const 2047)
    )
   )
  )
  (set_local $5
   (i32.wrap/i64
    (i64.and
     (i64.shr_u
      (get_local $3)
      (i64.const 52)
     )
     (i64.const 2047)
    )
   )
  )
  (set_local $6
   (i32.wrap/i64
    (i64.shr_u
     (get_local $2)
     (i64.const 63)
    )
   )
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $8
      (i32.and
       (if (result i32)
        (tee_local $8
         (i64.eq
          (i64.shl
           (get_local $3)
           (i64.const 1)
          )
          (i64.const 0)
         )
        )
        (get_local $8)
        (f64.ne
         (tee_local $7
          (get_local $1)
         )
         (get_local $7)
        )
       )
       (i32.const 1)
      )
     )
     (get_local $8)
     (i32.eq
      (get_local $4)
      (i32.const 2047)
     )
    )
    (i32.const 1)
   )
   (return
    (f64.div
     (f64.mul
      (get_local $0)
      (get_local $1)
     )
     (f64.mul
      (get_local $0)
      (get_local $1)
     )
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
     (get_local $3)
     (i64.const 1)
    )
   )
   (block
    (if
     (i64.eq
      (i64.shl
       (get_local $2)
       (i64.const 1)
      )
      (i64.shl
       (get_local $3)
       (i64.const 1)
      )
     )
     (return
      (f64.mul
       (f64.const 0)
       (get_local $0)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (nop)
  (if
   (i32.eqz
    (get_local $4)
   )
   (block
    (block $break|0
     (set_local $9
      (i64.shl
       (get_local $2)
       (i64.const 12)
      )
     )
     (loop $continue|0
      (if
       (i64.eqz
        (i64.shr_u
         (get_local $9)
         (i64.const 63)
        )
       )
       (block
        (set_local $4
         (i32.sub
          (get_local $4)
          (i32.const 1)
         )
        )
        (set_local $9
         (i64.shl
          (get_local $9)
          (i64.const 1)
         )
        )
        (br $continue|0)
       )
      )
     )
    )
    (set_local $2
     (i64.shl
      (get_local $2)
      (i64.extend_u/i32
       (i32.add
        (i32.sub
         (i32.const 0)
         (get_local $4)
        )
        (i32.const 1)
       )
      )
     )
    )
   )
   (block
    (set_local $2
     (i64.and
      (get_local $2)
      (i64.shr_u
       (i64.const -1)
       (i64.const 12)
      )
     )
    )
    (set_local $2
     (i64.or
      (get_local $2)
      (i64.shl
       (i64.const 1)
       (i64.const 52)
      )
     )
    )
   )
  )
  (if
   (i32.eqz
    (get_local $5)
   )
   (block
    (block $break|1
     (set_local $9
      (i64.shl
       (get_local $3)
       (i64.const 12)
      )
     )
     (loop $continue|1
      (if
       (i64.eqz
        (i64.shr_u
         (get_local $9)
         (i64.const 63)
        )
       )
       (block
        (set_local $5
         (i32.sub
          (get_local $5)
          (i32.const 1)
         )
        )
        (set_local $9
         (i64.shl
          (get_local $9)
          (i64.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (set_local $3
     (i64.shl
      (get_local $3)
      (i64.extend_u/i32
       (i32.add
        (i32.sub
         (i32.const 0)
         (get_local $5)
        )
        (i32.const 1)
       )
      )
     )
    )
   )
   (block
    (set_local $3
     (i64.and
      (get_local $3)
      (i64.shr_u
       (i64.const -1)
       (i64.const 12)
      )
     )
    )
    (set_local $3
     (i64.or
      (get_local $3)
      (i64.shl
       (i64.const 1)
       (i64.const 52)
      )
     )
    )
   )
  )
  (block $break|2
   (nop)
   (loop $continue|2
    (if
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
     (block
      (block
       (set_local $9
        (i64.sub
         (get_local $2)
         (get_local $3)
        )
       )
       (if
        (i64.eqz
         (i64.shr_u
          (get_local $9)
          (i64.const 63)
         )
        )
        (block
         (if
          (i64.eqz
           (get_local $9)
          )
          (return
           (f64.mul
            (f64.const 0)
            (get_local $0)
           )
          )
         )
         (set_local $2
          (get_local $9)
         )
        )
       )
       (set_local $2
        (i64.shl
         (get_local $2)
         (i64.const 1)
        )
       )
      )
      (set_local $4
       (i32.sub
        (get_local $4)
        (i32.const 1)
       )
      )
      (br $continue|2)
     )
    )
   )
  )
  (set_local $9
   (i64.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i64.eqz
    (i64.shr_u
     (get_local $9)
     (i64.const 63)
    )
   )
   (block
    (if
     (i64.eqz
      (get_local $9)
     )
     (return
      (f64.mul
       (f64.const 0)
       (get_local $0)
      )
     )
    )
    (set_local $2
     (get_local $9)
    )
   )
  )
  (block $break|3
   (nop)
   (loop $continue|3
    (if
     (i64.eqz
      (i64.shr_u
       (get_local $2)
       (i64.const 52)
      )
     )
     (block
      (set_local $4
       (i32.sub
        (get_local $4)
        (i32.const 1)
       )
      )
      (set_local $2
       (i64.shl
        (get_local $2)
        (i64.const 1)
       )
      )
      (br $continue|3)
     )
    )
   )
  )
  (if
   (i32.gt_s
    (get_local $4)
    (i32.const 0)
   )
   (block
    (set_local $2
     (i64.sub
      (get_local $2)
      (i64.shl
       (i64.const 1)
       (i64.const 52)
      )
     )
    )
    (set_local $2
     (i64.or
      (get_local $2)
      (i64.shl
       (i64.extend_u/i32
        (get_local $4)
       )
       (i64.const 52)
      )
     )
    )
   )
   (set_local $2
    (i64.shr_u
     (get_local $2)
     (i64.extend_u/i32
      (i32.add
       (i32.sub
        (i32.const 0)
        (get_local $4)
       )
       (i32.const 1)
      )
     )
    )
   )
  )
  (set_local $2
   (i64.or
    (get_local $2)
    (i64.shl
     (i64.extend_u/i32
      (get_local $6)
     )
     (i64.const 63)
    )
   )
  )
  (return
   (f64.reinterpret/i64
    (get_local $2)
   )
  )
 )
 (func $std/math/test_fmod (; 34 ;) (type $FFFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (return
   (call $std/math/check<f64>
    (call $fmod
     (get_local $0)
     (get_local $1)
    )
    (get_local $2)
    (get_local $3)
    (get_local $4)
   )
  )
 )
 (func $fmodf (; 35 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  (set_local $2
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $3
   (i32.reinterpret/f32
    (get_local $1)
   )
  )
  (set_local $4
   (i32.and
    (i32.shr_u
     (get_local $2)
     (i32.const 23)
    )
    (i32.const 255)
   )
  )
  (set_local $5
   (i32.and
    (i32.shr_u
     (get_local $3)
     (i32.const 23)
    )
    (i32.const 255)
   )
  )
  (set_local $6
   (i32.and
    (get_local $2)
    (i32.const -2147483648)
   )
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $8
      (i32.and
       (if (result i32)
        (tee_local $8
         (i32.eq
          (i32.shl
           (get_local $3)
           (i32.const 1)
          )
          (i32.const 0)
         )
        )
        (get_local $8)
        (f32.ne
         (tee_local $7
          (get_local $1)
         )
         (get_local $7)
        )
       )
       (i32.const 1)
      )
     )
     (get_local $8)
     (i32.eq
      (get_local $4)
      (i32.const 255)
     )
    )
    (i32.const 1)
   )
   (return
    (f32.div
     (f32.mul
      (get_local $0)
      (get_local $1)
     )
     (f32.mul
      (get_local $0)
      (get_local $1)
     )
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
     (get_local $3)
     (i32.const 1)
    )
   )
   (block
    (if
     (i32.eq
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
      (i32.shl
       (get_local $3)
       (i32.const 1)
      )
     )
     (return
      (f32.mul
       (f32.const 0)
       (get_local $0)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (nop)
  (if
   (i32.eqz
    (get_local $4)
   )
   (block
    (block $break|0
     (set_local $9
      (i32.shl
       (get_local $2)
       (i32.const 9)
      )
     )
     (loop $continue|0
      (if
       (i32.eqz
        (i32.shr_u
         (get_local $9)
         (i32.const 31)
        )
       )
       (block
        (set_local $4
         (i32.sub
          (get_local $4)
          (i32.const 1)
         )
        )
        (set_local $9
         (i32.shl
          (get_local $9)
          (i32.const 1)
         )
        )
        (br $continue|0)
       )
      )
     )
    )
    (set_local $2
     (i32.shl
      (get_local $2)
      (i32.add
       (i32.sub
        (i32.const 0)
        (get_local $4)
       )
       (i32.const 1)
      )
     )
    )
   )
   (block
    (set_local $2
     (i32.and
      (get_local $2)
      (i32.shr_u
       (i32.const -1)
       (i32.const 9)
      )
     )
    )
    (set_local $2
     (i32.or
      (get_local $2)
      (i32.shl
       (i32.const 1)
       (i32.const 23)
      )
     )
    )
   )
  )
  (if
   (i32.eqz
    (get_local $5)
   )
   (block
    (block $break|1
     (set_local $9
      (i32.shl
       (get_local $3)
       (i32.const 9)
      )
     )
     (loop $continue|1
      (if
       (i32.eqz
        (i32.shr_u
         (get_local $9)
         (i32.const 31)
        )
       )
       (block
        (set_local $5
         (i32.sub
          (get_local $5)
          (i32.const 1)
         )
        )
        (set_local $9
         (i32.shl
          (get_local $9)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (set_local $3
     (i32.shl
      (get_local $3)
      (i32.add
       (i32.sub
        (i32.const 0)
        (get_local $5)
       )
       (i32.const 1)
      )
     )
    )
   )
   (block
    (set_local $3
     (i32.and
      (get_local $3)
      (i32.shr_u
       (i32.const -1)
       (i32.const 9)
      )
     )
    )
    (set_local $3
     (i32.or
      (get_local $3)
      (i32.shl
       (i32.const 1)
       (i32.const 23)
      )
     )
    )
   )
  )
  (block $break|2
   (nop)
   (loop $continue|2
    (if
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
     (block
      (block
       (set_local $9
        (i32.sub
         (get_local $2)
         (get_local $3)
        )
       )
       (if
        (i32.eqz
         (i32.shr_u
          (get_local $9)
          (i32.const 31)
         )
        )
        (block
         (if
          (i32.eqz
           (get_local $9)
          )
          (return
           (f32.mul
            (f32.const 0)
            (get_local $0)
           )
          )
         )
         (set_local $2
          (get_local $9)
         )
        )
       )
       (set_local $2
        (i32.shl
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (set_local $4
       (i32.sub
        (get_local $4)
        (i32.const 1)
       )
      )
      (br $continue|2)
     )
    )
   )
  )
  (set_local $9
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i32.eqz
    (i32.shr_u
     (get_local $9)
     (i32.const 31)
    )
   )
   (block
    (if
     (i32.eqz
      (get_local $9)
     )
     (return
      (f32.mul
       (f32.const 0)
       (get_local $0)
      )
     )
    )
    (set_local $2
     (get_local $9)
    )
   )
  )
  (block $break|3
   (nop)
   (loop $continue|3
    (if
     (i32.eqz
      (i32.shr_u
       (get_local $2)
       (i32.const 23)
      )
     )
     (block
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
      (br $continue|3)
     )
    )
   )
  )
  (if
   (i32.gt_s
    (get_local $4)
    (i32.const 0)
   )
   (block
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.shl
       (i32.const 1)
       (i32.const 23)
      )
     )
    )
    (set_local $2
     (i32.or
      (get_local $2)
      (i32.shl
       (get_local $4)
       (i32.const 23)
      )
     )
    )
   )
   (set_local $2
    (i32.shr_u
     (get_local $2)
     (i32.add
      (i32.sub
       (i32.const 0)
       (get_local $4)
      )
      (i32.const 1)
     )
    )
   )
  )
  (set_local $2
   (i32.or
    (get_local $2)
    (get_local $6)
   )
  )
  (return
   (f32.reinterpret/i32
    (get_local $2)
   )
  )
 )
 (func $std/math/test_fmodf (; 36 ;) (type $ffffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call $fmodf
     (get_local $0)
     (get_local $1)
    )
    (get_local $2)
    (get_local $3)
    (get_local $4)
   )
  )
 )
 (func "$(lib)/math/NativeMath.abs" (; 37 ;) (type $FF) (param $0 f64) (result f64)
  (return
   (f64.abs
    (get_local $0)
   )
  )
 )
 (func $std/math/test_abs (; 38 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.abs"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.abs"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.abs" (; 39 ;) (type $ff) (param $0 f32) (result f32)
  (return
   (f32.abs
    (get_local $0)
   )
  )
 )
 (func $std/math/test_absf (; 40 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.abs"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.__R" (; 41 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  (nop)
  (set_local $1
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
  )
  (set_local $2
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
  (return
   (f64.div
    (get_local $1)
    (get_local $2)
   )
  )
 )
 (func "$(lib)/math/NativeMath.acos" (; 42 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (nop)
  (set_local $1
   (i32.wrap/i64
    (i64.shr_u
     (i64.reinterpret/f64
      (get_local $0)
     )
     (i64.const 32)
    )
   )
  )
  (set_local $2
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 1072693248)
   )
   (block
    (set_local $3
     (i32.wrap/i64
      (i64.reinterpret/f64
       (get_local $0)
      )
     )
    )
    (if
     (i32.eq
      (i32.or
       (i32.sub
        (get_local $2)
        (i32.const 1072693248)
       )
       (get_local $3)
      )
      (i32.const 0)
     )
     (block
      (if
       (i32.shr_u
        (get_local $1)
        (i32.const 31)
       )
       (return
        (f64.add
         (f64.mul
          (f64.const 2)
          (f64.const 1.5707963267948966)
         )
         (f64.promote/f32
          (f32.const 7.52316384526264e-37)
         )
        )
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
      (f64.add
       (f64.const 1.5707963267948966)
       (f64.promote/f32
        (f32.const 7.52316384526264e-37)
       )
      )
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
         (call "$(lib)/math/NativeMath.__R"
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
  (nop)
  (if
   (i32.shr_u
    (get_local $1)
    (i32.const 31)
   )
   (block
    (set_local $6
     (f64.mul
      (f64.add
       (f64.const 1)
       (get_local $0)
      )
      (f64.const 0.5)
     )
    )
    (set_local $4
     (f64.sqrt
      (get_local $6)
     )
    )
    (set_local $5
     (f64.sub
      (f64.mul
       (call "$(lib)/math/NativeMath.__R"
        (get_local $6)
       )
       (get_local $4)
      )
      (f64.const 6.123233995736766e-17)
     )
    )
    (return
     (f64.mul
      (f64.const 2)
      (f64.sub
       (f64.const 1.5707963267948966)
       (f64.add
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
   )
  )
  (set_local $6
   (f64.mul
    (f64.sub
     (f64.const 1)
     (get_local $0)
    )
    (f64.const 0.5)
   )
  )
  (set_local $4
   (f64.sqrt
    (get_local $6)
   )
  )
  (set_local $7
   (f64.reinterpret/i64
    (i64.and
     (i64.reinterpret/f64
      (get_local $4)
     )
     (i64.const -4294967296)
    )
   )
  )
  (set_local $8
   (f64.div
    (f64.sub
     (get_local $6)
     (f64.mul
      (get_local $7)
      (get_local $7)
     )
    )
    (f64.add
     (get_local $4)
     (get_local $7)
    )
   )
  )
  (set_local $5
   (f64.add
    (f64.mul
     (call "$(lib)/math/NativeMath.__R"
      (get_local $6)
     )
     (get_local $4)
    )
    (get_local $8)
   )
  )
  (return
   (f64.mul
    (f64.const 2)
    (f64.add
     (get_local $7)
     (get_local $5)
    )
   )
  )
 )
 (func $std/math/test_acos (; 43 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.acos"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.acos"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.__R" (; 44 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 f32)
  (nop)
  (set_local $1
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
  )
  (set_local $2
   (f32.add
    (f32.const 1)
    (f32.mul
     (get_local $0)
     (f32.const -0.7066296339035034)
    )
   )
  )
  (return
   (f32.div
    (get_local $1)
    (get_local $2)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.acos" (; 45 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 1065353216)
   )
   (block
    (if
     (i32.eq
      (get_local $2)
      (i32.const 1065353216)
     )
     (block
      (if
       (i32.shr_u
        (get_local $1)
        (i32.const 31)
       )
       (return
        (f32.add
         (f32.mul
          (f32.const 2)
          (f32.const 1.570796251296997)
         )
         (f32.const 7.52316384526264e-37)
        )
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
    (get_local $2)
    (i32.const 1056964608)
   )
   (block
    (if
     (i32.le_u
      (get_local $2)
      (i32.const 847249408)
     )
     (return
      (f32.add
       (f32.const 1.570796251296997)
       (f32.const 7.52316384526264e-37)
      )
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
         (call "$(lib)/math/NativeMathf.__R"
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
  (nop)
  (if
   (i32.shr_u
    (get_local $1)
    (i32.const 31)
   )
   (block
    (set_local $3
     (f32.mul
      (f32.add
       (f32.const 1)
       (get_local $0)
      )
      (f32.const 0.5)
     )
    )
    (set_local $5
     (f32.sqrt
      (get_local $3)
     )
    )
    (set_local $4
     (f32.sub
      (f32.mul
       (call "$(lib)/math/NativeMathf.__R"
        (get_local $3)
       )
       (get_local $5)
      )
      (f32.const 7.549789415861596e-08)
     )
    )
    (return
     (f32.mul
      (f32.const 2)
      (f32.sub
       (f32.const 1.570796251296997)
       (f32.add
        (get_local $5)
        (get_local $4)
       )
      )
     )
    )
   )
  )
  (set_local $3
   (f32.mul
    (f32.sub
     (f32.const 1)
     (get_local $0)
    )
    (f32.const 0.5)
   )
  )
  (set_local $5
   (f32.sqrt
    (get_local $3)
   )
  )
  (set_local $1
   (i32.reinterpret/f32
    (get_local $5)
   )
  )
  (set_local $6
   (f32.reinterpret/i32
    (i32.and
     (get_local $1)
     (i32.const -4096)
    )
   )
  )
  (set_local $7
   (f32.div
    (f32.sub
     (get_local $3)
     (f32.mul
      (get_local $6)
      (get_local $6)
     )
    )
    (f32.add
     (get_local $5)
     (get_local $6)
    )
   )
  )
  (set_local $4
   (f32.add
    (f32.mul
     (call "$(lib)/math/NativeMathf.__R"
      (get_local $3)
     )
     (get_local $5)
    )
    (get_local $7)
   )
  )
  (return
   (f32.mul
    (f32.const 2)
    (f32.add
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $std/math/test_acosf (; 46 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.acos"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.log1p" (; 47 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (nop)
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
   (i32.const 1)
  )
  (block
   (set_local $4
    (f64.const 0)
   )
   (set_local $5
    (f64.const 0)
   )
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $6
      (i32.lt_u
       (get_local $2)
       (i32.const 1071284858)
      )
     )
     (get_local $6)
     (i32.and
      (i32.shr_u
       (get_local $2)
       (i32.const 31)
      )
      (i32.const 1)
     )
    )
    (i32.const 1)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
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
       (get_local $2)
       (i32.const 1)
      )
      (i32.shl
       (i32.const 1017118720)
       (i32.const 1)
      )
     )
     (return
      (get_local $0)
     )
    )
    (if
     (i32.le_u
      (get_local $2)
      (i32.const -1076707644)
     )
     (block
      (set_local $3
       (i32.const 0)
      )
      (set_local $4
       (f64.const 0)
      )
      (set_local $5
       (get_local $0)
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
   )
  )
  (if
   (get_local $3)
   (block
    (set_local $1
     (i64.reinterpret/f64
      (f64.add
       (f64.const 1)
       (get_local $0)
      )
     )
    )
    (set_local $6
     (i32.wrap/i64
      (i64.shr_u
       (get_local $1)
       (i64.const 32)
      )
     )
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.sub
       (i32.const 1072693248)
       (i32.const 1072079006)
      )
     )
    )
    (set_local $3
     (i32.sub
      (i32.shr_u
       (get_local $6)
       (i32.const 20)
      )
      (i32.const 1023)
     )
    )
    (if
     (i32.lt_s
      (get_local $3)
      (i32.const 54)
     )
     (block
      (set_local $7
       (f64.reinterpret/i64
        (get_local $1)
       )
      )
      (set_local $4
       (if (result f64)
        (i32.ge_s
         (get_local $3)
         (i32.const 2)
        )
        (f64.sub
         (f64.const 1)
         (f64.sub
          (get_local $7)
          (get_local $0)
         )
        )
        (f64.sub
         (get_local $0)
         (f64.sub
          (get_local $7)
          (f64.const 1)
         )
        )
       )
      )
      (set_local $4
       (f64.div
        (get_local $4)
        (get_local $7)
       )
      )
     )
     (set_local $4
      (f64.const 0)
     )
    )
    (set_local $6
     (i32.add
      (i32.and
       (get_local $6)
       (i32.const 1048575)
      )
      (i32.const 1072079006)
     )
    )
    (set_local $1
     (i64.or
      (i64.shl
       (i64.extend_u/i32
        (get_local $6)
       )
       (i64.const 32)
      )
      (i64.and
       (get_local $1)
       (i64.const 4294967295)
      )
     )
    )
    (set_local $5
     (f64.sub
      (f64.reinterpret/i64
       (get_local $1)
      )
      (f64.const 1)
     )
    )
   )
  )
  (set_local $8
   (f64.mul
    (f64.mul
     (f64.const 0.5)
     (get_local $5)
    )
    (get_local $5)
   )
  )
  (set_local $9
   (f64.div
    (get_local $5)
    (f64.add
     (f64.const 2)
     (get_local $5)
    )
   )
  )
  (set_local $10
   (f64.mul
    (get_local $9)
    (get_local $9)
   )
  )
  (set_local $11
   (f64.mul
    (get_local $10)
    (get_local $10)
   )
  )
  (set_local $12
   (f64.mul
    (get_local $11)
    (f64.add
     (f64.const 0.3999999999940942)
     (f64.mul
      (get_local $11)
      (f64.add
       (f64.const 0.22222198432149784)
       (f64.mul
        (get_local $11)
        (f64.const 0.15313837699209373)
       )
      )
     )
    )
   )
  )
  (set_local $13
   (f64.mul
    (get_local $10)
    (f64.add
     (f64.const 0.6666666666666735)
     (f64.mul
      (get_local $11)
      (f64.add
       (f64.const 0.2857142874366239)
       (f64.mul
        (get_local $11)
        (f64.add
         (f64.const 0.1818357216161805)
         (f64.mul
          (get_local $11)
          (f64.const 0.14798198605116586)
         )
        )
       )
      )
     )
    )
   )
  )
  (set_local $14
   (f64.add
    (get_local $13)
    (get_local $12)
   )
  )
  (set_local $15
   (f64.convert_s/i32
    (get_local $3)
   )
  )
  (return
   (f64.add
    (f64.add
     (f64.sub
      (f64.add
       (f64.mul
        (get_local $9)
        (f64.add
         (get_local $8)
         (get_local $14)
        )
       )
       (f64.add
        (f64.mul
         (get_local $15)
         (f64.const 1.9082149292705877e-10)
        )
        (get_local $4)
       )
      )
      (get_local $8)
     )
     (get_local $5)
    )
    (f64.mul
     (get_local $15)
     (f64.const 0.6931471803691238)
    )
   )
  )
 )
 (func "$(lib)/math/NativeMath.log" (; 48 ;) (type $FF) (param $0 f64) (result f64)
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
  (nop)
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
   (i32.and
    (if (result i32)
     (tee_local $4
      (i32.lt_u
       (get_local $2)
       (i32.const 1048576)
      )
     )
     (get_local $4)
     (i32.and
      (i32.shr_u
       (get_local $2)
       (i32.const 31)
      )
      (i32.const 1)
     )
    )
    (i32.const 1)
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
     (i32.and
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
      (i32.const 1)
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
  (return
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
 )
 (func "$(lib)/math/NativeMath.acosh" (; 49 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (nop)
  (set_local $1
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
  (if
   (i64.lt_u
    (get_local $1)
    (i64.add
     (i64.const 1023)
     (i64.const 1)
    )
   )
   (return
    (call "$(lib)/math/NativeMath.log1p"
     (f64.add
      (f64.sub
       (get_local $0)
       (f64.const 1)
      )
      (f64.sqrt
       (f64.add
        (f64.mul
         (f64.sub
          (get_local $0)
          (f64.const 1)
         )
         (f64.sub
          (get_local $0)
          (f64.const 1)
         )
        )
        (f64.mul
         (f64.const 2)
         (f64.sub
          (get_local $0)
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
   (i64.lt_u
    (get_local $1)
    (i64.add
     (i64.const 1023)
     (i64.const 26)
    )
   )
   (return
    (call "$(lib)/math/NativeMath.log"
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
  (return
   (f64.add
    (call "$(lib)/math/NativeMath.log"
     (get_local $0)
    )
    (f64.const 0.6931471805599453)
   )
  )
 )
 (func $std/math/test_acosh (; 50 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.acosh"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.acosh"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.log1p" (; 51 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (block
   (set_local $2
    (f32.const 0)
   )
   (set_local $3
    (f32.const 0)
   )
  )
  (set_local $4
   (i32.const 1)
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $5
      (i32.lt_u
       (get_local $1)
       (i32.const 1054086096)
      )
     )
     (get_local $5)
     (i32.and
      (i32.shr_u
       (get_local $1)
       (i32.const 31)
      )
      (i32.const 1)
     )
    )
    (i32.const 1)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
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
       (get_local $1)
       (i32.const 1)
      )
      (i32.shl
       (i32.const 864026624)
       (i32.const 1)
      )
     )
     (return
      (get_local $0)
     )
    )
    (if
     (i32.le_u
      (get_local $1)
      (i32.const -1097468391)
     )
     (block
      (set_local $4
       (i32.const 0)
      )
      (set_local $2
       (f32.const 0)
      )
      (set_local $3
       (get_local $0)
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
   )
  )
  (if
   (get_local $4)
   (block
    (set_local $6
     (f32.add
      (f32.const 1)
      (get_local $0)
     )
    )
    (set_local $5
     (i32.reinterpret/f32
      (get_local $6)
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.sub
       (i32.const 1065353216)
       (i32.const 1060439283)
      )
     )
    )
    (set_local $4
     (i32.sub
      (i32.shr_u
       (get_local $5)
       (i32.const 23)
      )
      (i32.const 127)
     )
    )
    (if
     (i32.lt_s
      (get_local $4)
      (i32.const 25)
     )
     (block
      (set_local $2
       (if (result f32)
        (i32.ge_s
         (get_local $4)
         (i32.const 2)
        )
        (f32.sub
         (f32.const 1)
         (f32.sub
          (get_local $6)
          (get_local $0)
         )
        )
        (f32.sub
         (get_local $0)
         (f32.sub
          (get_local $6)
          (f32.const 1)
         )
        )
       )
      )
      (set_local $2
       (f32.div
        (get_local $2)
        (get_local $6)
       )
      )
     )
     (set_local $2
      (f32.const 0)
     )
    )
    (set_local $5
     (i32.add
      (i32.and
       (get_local $5)
       (i32.const 8388607)
      )
      (i32.const 1060439283)
     )
    )
    (set_local $3
     (f32.sub
      (f32.reinterpret/i32
       (get_local $5)
      )
      (f32.const 1)
     )
    )
   )
  )
  (set_local $7
   (f32.div
    (get_local $3)
    (f32.add
     (f32.const 2)
     (get_local $3)
    )
   )
  )
  (set_local $8
   (f32.mul
    (get_local $7)
    (get_local $7)
   )
  )
  (set_local $9
   (f32.mul
    (get_local $8)
    (get_local $8)
   )
  )
  (set_local $10
   (f32.mul
    (get_local $9)
    (f32.add
     (f32.const 0.40000972151756287)
     (f32.mul
      (get_local $9)
      (f32.const 0.24279078841209412)
     )
    )
   )
  )
  (set_local $11
   (f32.mul
    (get_local $8)
    (f32.add
     (f32.const 0.6666666269302368)
     (f32.mul
      (get_local $9)
      (f32.const 0.2849878668785095)
     )
    )
   )
  )
  (set_local $12
   (f32.add
    (get_local $11)
    (get_local $10)
   )
  )
  (set_local $13
   (f32.mul
    (f32.mul
     (f32.const 0.5)
     (get_local $3)
    )
    (get_local $3)
   )
  )
  (set_local $14
   (f32.convert_s/i32
    (get_local $4)
   )
  )
  (return
   (f32.add
    (f32.add
     (f32.sub
      (f32.add
       (f32.mul
        (get_local $7)
        (f32.add
         (get_local $13)
         (get_local $12)
        )
       )
       (f32.add
        (f32.mul
         (get_local $14)
         (f32.const 9.05800061445916e-06)
        )
        (get_local $2)
       )
      )
      (get_local $13)
     )
     (get_local $3)
    )
    (f32.mul
     (get_local $14)
     (f32.const 0.6931381225585938)
    )
   )
  )
 )
 (func "$(lib)/math/NativeMathf.log" (; 52 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $3
      (i32.lt_u
       (get_local $1)
       (i32.const 8388608)
      )
     )
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $1)
       (i32.const 31)
      )
      (i32.const 1)
     )
    )
    (i32.const 1)
   )
   (block
    (if
     (i32.eq
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 0)
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
     (i32.sub
      (get_local $2)
      (i32.const 25)
     )
    )
    (set_local $0
     (f32.mul
      (get_local $0)
      (f32.const 33554432)
     )
    )
    (set_local $1
     (i32.reinterpret/f32
      (get_local $0)
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
  (set_local $1
   (i32.add
    (get_local $1)
    (i32.sub
     (i32.const 1065353216)
     (i32.const 1060439283)
    )
   )
  )
  (set_local $2
   (i32.add
    (get_local $2)
    (i32.sub
     (i32.shr_s
      (get_local $1)
      (i32.const 23)
     )
     (i32.const 127)
    )
   )
  )
  (set_local $1
   (i32.add
    (i32.and
     (get_local $1)
     (i32.const 8388607)
    )
    (i32.const 1060439283)
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (get_local $1)
   )
  )
  (set_local $4
   (f32.sub
    (get_local $0)
    (f32.const 1)
   )
  )
  (set_local $5
   (f32.div
    (get_local $4)
    (f32.add
     (f32.const 2)
     (get_local $4)
    )
   )
  )
  (set_local $6
   (f32.mul
    (get_local $5)
    (get_local $5)
   )
  )
  (set_local $7
   (f32.mul
    (get_local $6)
    (get_local $6)
   )
  )
  (set_local $8
   (f32.mul
    (get_local $7)
    (f32.add
     (f32.const 0.40000972151756287)
     (f32.mul
      (get_local $7)
      (f32.const 0.24279078841209412)
     )
    )
   )
  )
  (set_local $9
   (f32.mul
    (get_local $6)
    (f32.add
     (f32.const 0.6666666269302368)
     (f32.mul
      (get_local $7)
      (f32.const 0.2849878668785095)
     )
    )
   )
  )
  (set_local $10
   (f32.add
    (get_local $9)
    (get_local $8)
   )
  )
  (set_local $11
   (f32.mul
    (f32.mul
     (f32.const 0.5)
     (get_local $4)
    )
    (get_local $4)
   )
  )
  (set_local $12
   (f32.convert_s/i32
    (get_local $2)
   )
  )
  (return
   (f32.add
    (f32.add
     (f32.sub
      (f32.add
       (f32.mul
        (get_local $5)
        (f32.add
         (get_local $11)
         (get_local $10)
        )
       )
       (f32.mul
        (get_local $12)
        (f32.const 9.05800061445916e-06)
       )
      )
      (get_local $11)
     )
     (get_local $4)
    )
    (f32.mul
     (get_local $12)
     (f32.const 0.6931381225585938)
    )
   )
  )
 )
 (func "$(lib)/math/NativeMathf.acosh" (; 53 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.lt_u
    (get_local $2)
    (i32.add
     (i32.const 1065353216)
     (i32.shl
      (i32.const 1)
      (i32.const 23)
     )
    )
   )
   (return
    (call "$(lib)/math/NativeMathf.log1p"
     (f32.add
      (f32.sub
       (get_local $0)
       (f32.const 1)
      )
      (f32.sqrt
       (f32.add
        (f32.mul
         (f32.sub
          (get_local $0)
          (f32.const 1)
         )
         (f32.sub
          (get_local $0)
          (f32.const 1)
         )
        )
        (f32.mul
         (f32.const 2)
         (f32.sub
          (get_local $0)
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
   (i32.lt_u
    (get_local $2)
    (i32.add
     (i32.const 1065353216)
     (i32.shl
      (i32.const 12)
      (i32.const 23)
     )
    )
   )
   (return
    (call "$(lib)/math/NativeMathf.log"
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
  (return
   (f32.add
    (call "$(lib)/math/NativeMathf.log"
     (get_local $0)
    )
    (f32.const 0.6931471824645996)
   )
  )
 )
 (func $std/math/test_acoshf (; 54 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.acosh"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.asin" (; 55 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (nop)
  (set_local $1
   (i32.wrap/i64
    (i64.shr_u
     (i64.reinterpret/f64
      (get_local $0)
     )
     (i64.const 32)
    )
   )
  )
  (set_local $2
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 1072693248)
   )
   (block
    (set_local $3
     (i32.wrap/i64
      (i64.reinterpret/f64
       (get_local $0)
      )
     )
    )
    (if
     (i32.eq
      (i32.or
       (i32.sub
        (get_local $2)
        (i32.const 1072693248)
       )
       (get_local $3)
      )
      (i32.const 0)
     )
     (return
      (f64.add
       (f64.mul
        (get_local $0)
        (f64.const 1.5707963267948966)
       )
       (f64.promote/f32
        (f32.const 7.52316384526264e-37)
       )
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
     (i32.and
      (if (result i32)
       (tee_local $3
        (i32.lt_u
         (get_local $2)
         (i32.const 1045430272)
        )
       )
       (i32.ge_u
        (get_local $2)
        (i32.const 1048576)
       )
       (get_local $3)
      )
      (i32.const 1)
     )
     (return
      (get_local $0)
     )
    )
    (return
     (f64.add
      (get_local $0)
      (f64.mul
       (get_local $0)
       (call "$(lib)/math/NativeMath.__R"
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
  (set_local $4
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
  (set_local $5
   (f64.sqrt
    (get_local $4)
   )
  )
  (set_local $6
   (call "$(lib)/math/NativeMath.__R"
    (get_local $4)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 1072640819)
   )
   (set_local $0
    (f64.sub
     (f64.const 1.5707963267948966)
     (f64.sub
      (f64.mul
       (f64.const 2)
       (f64.add
        (get_local $5)
        (f64.mul
         (get_local $5)
         (get_local $6)
        )
       )
      )
      (f64.const 6.123233995736766e-17)
     )
    )
   )
   (block
    (set_local $7
     (f64.reinterpret/i64
      (i64.and
       (i64.reinterpret/f64
        (get_local $5)
       )
       (i64.const -4294967296)
      )
     )
    )
    (set_local $8
     (f64.div
      (f64.sub
       (get_local $4)
       (f64.mul
        (get_local $7)
        (get_local $7)
       )
      )
      (f64.add
       (get_local $5)
       (get_local $7)
      )
     )
    )
    (set_local $0
     (f64.sub
      (f64.mul
       (f64.const 0.5)
       (f64.const 1.5707963267948966)
      )
      (f64.sub
       (f64.sub
        (f64.mul
         (f64.mul
          (f64.const 2)
          (get_local $5)
         )
         (get_local $6)
        )
        (f64.sub
         (f64.const 6.123233995736766e-17)
         (f64.mul
          (f64.const 2)
          (get_local $8)
         )
        )
       )
       (f64.sub
        (f64.mul
         (f64.const 0.5)
         (f64.const 1.5707963267948966)
        )
        (f64.mul
         (f64.const 2)
         (get_local $7)
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
    (f64.neg
     (get_local $0)
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $std/math/test_asin (; 56 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.asin"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.asin"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.asin" (; 57 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f64)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
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
     (i32.and
      (if (result i32)
       (tee_local $3
        (i32.lt_u
         (get_local $2)
         (i32.const 964689920)
        )
       )
       (i32.ge_u
        (get_local $2)
        (i32.const 8388608)
       )
       (get_local $3)
      )
      (i32.const 1)
     )
     (return
      (get_local $0)
     )
    )
    (return
     (f32.add
      (get_local $0)
      (f32.mul
       (get_local $0)
       (call "$(lib)/math/NativeMathf.__R"
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
  (set_local $4
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
  (set_local $5
   (f64.sqrt
    (f64.promote/f32
     (get_local $4)
    )
   )
  )
  (set_local $0
   (f32.demote/f64
    (f64.sub
     (f64.promote/f32
      (f32.const 1.5707963705062866)
     )
     (f64.mul
      (f64.promote/f32
       (f32.const 2)
      )
      (f64.add
       (get_local $5)
       (f64.mul
        (get_local $5)
        (f64.promote/f32
         (call "$(lib)/math/NativeMathf.__R"
          (get_local $4)
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
  (return
   (get_local $0)
  )
 )
 (func $std/math/test_asinf (; 58 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.asin"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.asinh" (; 59 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (nop)
  (set_local $1
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $2
   (i64.and
    (i64.shr_u
     (get_local $1)
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
  (set_local $1
   (i64.and
    (get_local $1)
    (i64.const 9223372036854775807)
   )
  )
  (set_local $0
   (f64.reinterpret/i64
    (get_local $1)
   )
  )
  (if
   (i64.ge_u
    (get_local $2)
    (i64.add
     (i64.const 1023)
     (i64.const 26)
    )
   )
   (set_local $0
    (f64.add
     (call "$(lib)/math/NativeMath.log"
      (get_local $0)
     )
     (f64.const 0.6931471805599453)
    )
   )
   (if
    (i64.ge_u
     (get_local $2)
     (i64.add
      (i64.const 1023)
      (i64.const 1)
     )
    )
    (set_local $0
     (call "$(lib)/math/NativeMath.log"
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
      (get_local $2)
      (i64.sub
       (i64.const 1023)
       (i64.const 26)
      )
     )
     (set_local $0
      (call "$(lib)/math/NativeMath.log1p"
       (f64.add
        (get_local $0)
        (f64.div
         (f64.mul
          (get_local $0)
          (get_local $0)
         )
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
          (f64.const 1)
         )
        )
       )
      )
     )
    )
   )
  )
  (return
   (if (result f64)
    (i64.ne
     (get_local $3)
     (i64.const 0)
    )
    (f64.neg
     (get_local $0)
    )
    (get_local $0)
   )
  )
 )
 (func $std/math/test_asinh (; 60 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.asinh"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.asinh"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.asinh" (; 61 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (set_local $3
   (i32.shr_u
    (get_local $1)
    (i32.const 31)
   )
  )
  (set_local $1
   (get_local $2)
  )
  (set_local $0
   (f32.reinterpret/i32
    (get_local $1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.add
     (i32.const 1065353216)
     (i32.shl
      (i32.const 12)
      (i32.const 23)
     )
    )
   )
   (set_local $0
    (f32.add
     (call "$(lib)/math/NativeMathf.log"
      (get_local $0)
     )
     (f32.const 0.6931471824645996)
    )
   )
   (if
    (i32.ge_u
     (get_local $2)
     (i32.add
      (i32.const 1065353216)
      (i32.shl
       (i32.const 1)
       (i32.const 23)
      )
     )
    )
    (set_local $0
     (call "$(lib)/math/NativeMathf.log"
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
      (i32.sub
       (i32.const 1065353216)
       (i32.shl
        (i32.const 12)
        (i32.const 23)
       )
      )
     )
     (set_local $0
      (call "$(lib)/math/NativeMathf.log1p"
       (f32.add
        (get_local $0)
        (f32.div
         (f32.mul
          (get_local $0)
          (get_local $0)
         )
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
          (f32.const 1)
         )
        )
       )
      )
     )
    )
   )
  )
  (return
   (if (result f32)
    (get_local $3)
    (f32.neg
     (get_local $0)
    )
    (get_local $0)
   )
  )
 )
 (func $std/math/test_asinhf (; 62 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.asinh"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.atan" (; 63 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (nop)
  (set_local $1
   (i32.wrap/i64
    (i64.shr_u
     (i64.reinterpret/f64
      (get_local $0)
     )
     (i64.const 32)
    )
   )
  )
  (set_local $2
   (i32.shr_u
    (get_local $1)
    (i32.const 31)
   )
  )
  (set_local $1
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (nop)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 1141899264)
   )
   (block
    (if
     (f64.ne
      (tee_local $4
       (get_local $0)
      )
      (get_local $4)
     )
     (return
      (get_local $0)
     )
    )
    (set_local $3
     (f64.add
      (f64.const 1.5707963267948966)
      (f64.promote/f32
       (f32.const 7.52316384526264e-37)
      )
     )
    )
    (return
     (if (result f64)
      (get_local $2)
      (f64.neg
       (get_local $3)
      )
      (get_local $3)
     )
    )
   )
  )
  (nop)
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
    (set_local $5
     (i32.const -1)
    )
   )
   (block
    (set_local $0
     (f64.abs
      (get_local $0)
     )
    )
    (if
     (i32.lt_u
      (get_local $1)
      (i32.const 1072889856)
     )
     (if
      (i32.lt_u
       (get_local $1)
       (i32.const 1072037888)
      )
      (block
       (set_local $5
        (i32.const 0)
       )
       (set_local $0
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
      )
      (block
       (set_local $5
        (i32.const 1)
       )
       (set_local $0
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
     )
     (if
      (i32.lt_u
       (get_local $1)
       (i32.const 1073971200)
      )
      (block
       (set_local $5
        (i32.const 2)
       )
       (set_local $0
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
      )
      (block
       (set_local $5
        (i32.const 3)
       )
       (set_local $0
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
  (set_local $3
   (f64.mul
    (get_local $0)
    (get_local $0)
   )
  )
  (set_local $6
   (f64.mul
    (get_local $3)
    (get_local $3)
   )
  )
  (set_local $7
   (f64.mul
    (get_local $3)
    (f64.add
     (f64.const 0.3333333333333293)
     (f64.mul
      (get_local $6)
      (f64.add
       (f64.const 0.14285714272503466)
       (f64.mul
        (get_local $6)
        (f64.add
         (f64.const 0.09090887133436507)
         (f64.mul
          (get_local $6)
          (f64.add
           (f64.const 0.06661073137387531)
           (f64.mul
            (get_local $6)
            (f64.add
             (f64.const 0.049768779946159324)
             (f64.mul
              (get_local $6)
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
  (set_local $8
   (f64.mul
    (get_local $6)
    (f64.add
     (f64.const -0.19999999999876483)
     (f64.mul
      (get_local $6)
      (f64.add
       (f64.const -0.11111110405462356)
       (f64.mul
        (get_local $6)
        (f64.add
         (f64.const -0.0769187620504483)
         (f64.mul
          (get_local $6)
          (f64.add
           (f64.const -0.058335701337905735)
           (f64.mul
            (get_local $6)
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
    (get_local $5)
    (i32.const 0)
   )
   (return
    (f64.sub
     (get_local $0)
     (f64.mul
      (get_local $0)
      (f64.add
       (get_local $7)
       (get_local $8)
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
       (block $case0|0
        (set_local $9
         (get_local $5)
        )
        (br_if $case0|0
         (i32.eq
          (get_local $9)
          (i32.const 0)
         )
        )
        (br_if $case1|0
         (i32.eq
          (get_local $9)
          (i32.const 1)
         )
        )
        (br_if $case2|0
         (i32.eq
          (get_local $9)
          (i32.const 2)
         )
        )
        (br_if $case3|0
         (i32.eq
          (get_local $9)
          (i32.const 3)
         )
        )
        (br $case4|0)
       )
       (block
        (set_local $3
         (f64.sub
          (f64.const 0.4636476090008061)
          (f64.sub
           (f64.sub
            (f64.mul
             (get_local $0)
             (f64.add
              (get_local $7)
              (get_local $8)
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
      )
      (block
       (set_local $3
        (f64.sub
         (f64.const 0.7853981633974483)
         (f64.sub
          (f64.sub
           (f64.mul
            (get_local $0)
            (f64.add
             (get_local $7)
             (get_local $8)
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
     )
     (block
      (set_local $3
       (f64.sub
        (f64.const 0.982793723247329)
        (f64.sub
         (f64.sub
          (f64.mul
           (get_local $0)
           (f64.add
            (get_local $7)
            (get_local $8)
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
    )
    (block
     (set_local $3
      (f64.sub
       (f64.const 1.5707963267948966)
       (f64.sub
        (f64.sub
         (f64.mul
          (get_local $0)
          (f64.add
           (get_local $7)
           (get_local $8)
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
   )
   (unreachable)
  )
  (return
   (if (result f64)
    (get_local $2)
    (f64.neg
     (get_local $3)
    )
    (get_local $3)
   )
  )
 )
 (func $std/math/test_atan (; 64 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.atan"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.atan"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.atan" (; 65 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 i32)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.shr_u
    (get_local $1)
    (i32.const 31)
   )
  )
  (set_local $1
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (nop)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 1283457024)
   )
   (block
    (if
     (f32.ne
      (tee_local $4
       (get_local $0)
      )
      (get_local $4)
     )
     (return
      (get_local $0)
     )
    )
    (set_local $3
     (f32.add
      (f32.const 1.570796251296997)
      (f32.const 7.52316384526264e-37)
     )
    )
    (return
     (if (result f32)
      (get_local $2)
      (f32.neg
       (get_local $3)
      )
      (get_local $3)
     )
    )
   )
  )
  (nop)
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
    (set_local $5
     (i32.const -1)
    )
   )
   (block
    (set_local $0
     (f32.abs
      (get_local $0)
     )
    )
    (if
     (i32.lt_u
      (get_local $1)
      (i32.const 1066926080)
     )
     (if
      (i32.lt_u
       (get_local $1)
       (i32.const 1060110336)
      )
      (block
       (set_local $5
        (i32.const 0)
       )
       (set_local $0
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
      )
      (block
       (set_local $5
        (i32.const 1)
       )
       (set_local $0
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
     )
     (if
      (i32.lt_u
       (get_local $1)
       (i32.const 1075576832)
      )
      (block
       (set_local $5
        (i32.const 2)
       )
       (set_local $0
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
      )
      (block
       (set_local $5
        (i32.const 3)
       )
       (set_local $0
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
    (get_local $0)
    (get_local $0)
   )
  )
  (set_local $6
   (f32.mul
    (get_local $3)
    (get_local $3)
   )
  )
  (set_local $7
   (f32.mul
    (get_local $3)
    (f32.add
     (f32.const 0.333333283662796)
     (f32.mul
      (get_local $6)
      (f32.add
       (f32.const 0.14253635704517365)
       (f32.mul
        (get_local $6)
        (f32.const 0.06168760731816292)
       )
      )
     )
    )
   )
  )
  (set_local $8
   (f32.mul
    (get_local $6)
    (f32.add
     (f32.const -0.19999158382415771)
     (f32.mul
      (get_local $6)
      (f32.const -0.106480173766613)
     )
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $5)
    (i32.const 0)
   )
   (return
    (f32.sub
     (get_local $0)
     (f32.mul
      (get_local $0)
      (f32.add
       (get_local $7)
       (get_local $8)
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
       (block $case0|0
        (set_local $9
         (get_local $5)
        )
        (br_if $case0|0
         (i32.eq
          (get_local $9)
          (i32.const 0)
         )
        )
        (br_if $case1|0
         (i32.eq
          (get_local $9)
          (i32.const 1)
         )
        )
        (br_if $case2|0
         (i32.eq
          (get_local $9)
          (i32.const 2)
         )
        )
        (br_if $case3|0
         (i32.eq
          (get_local $9)
          (i32.const 3)
         )
        )
        (br $case4|0)
       )
       (block
        (set_local $3
         (f32.sub
          (f32.const 0.46364760398864746)
          (f32.sub
           (f32.sub
            (f32.mul
             (get_local $0)
             (f32.add
              (get_local $7)
              (get_local $8)
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
      )
      (block
       (set_local $3
        (f32.sub
         (f32.const 0.7853981256484985)
         (f32.sub
          (f32.sub
           (f32.mul
            (get_local $0)
            (f32.add
             (get_local $7)
             (get_local $8)
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
     )
     (block
      (set_local $3
       (f32.sub
        (f32.const 0.9827936887741089)
        (f32.sub
         (f32.sub
          (f32.mul
           (get_local $0)
           (f32.add
            (get_local $7)
            (get_local $8)
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
    )
    (block
     (set_local $3
      (f32.sub
       (f32.const 1.570796251296997)
       (f32.sub
        (f32.sub
         (f32.mul
          (get_local $0)
          (f32.add
           (get_local $7)
           (get_local $8)
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
   )
   (unreachable)
  )
  (return
   (if (result f32)
    (get_local $2)
    (f32.neg
     (get_local $3)
    )
    (get_local $3)
   )
  )
 )
 (func $std/math/test_atanf (; 66 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.atan"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.cbrt" (; 67 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (nop)
  (set_local $1
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $2
   (i32.and
    (i32.wrap/i64
     (i64.shr_u
      (get_local $1)
      (i64.const 32)
     )
    )
    (i32.const 2147483647)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 2146435072)
   )
   (return
    (f64.add
     (get_local $0)
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $2)
    (i32.const 1048576)
   )
   (block
    (set_local $1
     (i64.reinterpret/f64
      (f64.mul
       (get_local $0)
       (f64.const 18014398509481984)
      )
     )
    )
    (set_local $2
     (i32.and
      (i32.wrap/i64
       (i64.shr_u
        (get_local $1)
        (i64.const 32)
       )
      )
      (i32.const 2147483647)
     )
    )
    (if
     (i32.eq
      (get_local $2)
      (i32.const 0)
     )
     (return
      (get_local $0)
     )
    )
    (set_local $2
     (i32.add
      (i32.div_u
       (get_local $2)
       (i32.const 3)
      )
      (i32.const 696219795)
     )
    )
   )
   (set_local $2
    (i32.add
     (i32.div_u
      (get_local $2)
      (i32.const 3)
     )
     (i32.const 715094163)
    )
   )
  )
  (set_local $1
   (i64.and
    (get_local $1)
    (i64.shl
     (i64.const 1)
     (i64.const 63)
    )
   )
  )
  (set_local $1
   (i64.or
    (get_local $1)
    (i64.shl
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.const 32)
    )
   )
  )
  (set_local $3
   (f64.reinterpret/i64
    (get_local $1)
   )
  )
  (set_local $4
   (f64.mul
    (f64.mul
     (get_local $3)
     (get_local $3)
    )
    (f64.div
     (get_local $3)
     (get_local $0)
    )
   )
  )
  (set_local $3
   (f64.mul
    (get_local $3)
    (f64.add
     (f64.add
      (f64.const 1.87595182427177)
      (f64.mul
       (get_local $4)
       (f64.add
        (f64.const -1.8849797954337717)
        (f64.mul
         (get_local $4)
         (f64.const 1.6214297201053545)
        )
       )
      )
     )
     (f64.mul
      (f64.mul
       (f64.mul
        (get_local $4)
        (get_local $4)
       )
       (get_local $4)
      )
      (f64.add
       (f64.const -0.758397934778766)
       (f64.mul
        (get_local $4)
        (f64.const 0.14599619288661245)
       )
      )
     )
    )
   )
  )
  (set_local $3
   (f64.reinterpret/i64
    (i64.and
     (i64.add
      (i64.reinterpret/f64
       (get_local $3)
      )
      (i64.const 2147483648)
     )
     (i64.const -1073741824)
    )
   )
  )
  (set_local $5
   (f64.mul
    (get_local $3)
    (get_local $3)
   )
  )
  (set_local $4
   (f64.div
    (get_local $0)
    (get_local $5)
   )
  )
  (set_local $6
   (f64.add
    (get_local $3)
    (get_local $3)
   )
  )
  (set_local $4
   (f64.div
    (f64.sub
     (get_local $4)
     (get_local $3)
    )
    (f64.add
     (get_local $6)
     (get_local $4)
    )
   )
  )
  (set_local $3
   (f64.add
    (get_local $3)
    (f64.mul
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (return
   (get_local $3)
  )
 )
 (func $std/math/test_cbrt (; 68 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.cbrt"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.cbrt"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.cbrt" (; 69 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 2139095040)
   )
   (return
    (f32.add
     (get_local $0)
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $2)
    (i32.const 8388608)
   )
   (block
    (if
     (i32.eq
      (get_local $2)
      (i32.const 0)
     )
     (return
      (get_local $0)
     )
    )
    (set_local $1
     (i32.reinterpret/f32
      (f32.mul
       (get_local $0)
       (f32.const 16777216)
      )
     )
    )
    (set_local $2
     (i32.and
      (get_local $1)
      (i32.const 2147483647)
     )
    )
    (set_local $2
     (i32.add
      (i32.div_u
       (get_local $2)
       (i32.const 3)
      )
      (i32.const 642849266)
     )
    )
   )
   (set_local $2
    (i32.add
     (i32.div_u
      (get_local $2)
      (i32.const 3)
     )
     (i32.const 709958130)
    )
   )
  )
  (set_local $1
   (i32.and
    (get_local $1)
    (i32.const -2147483648)
   )
  )
  (set_local $1
   (i32.or
    (get_local $1)
    (get_local $2)
   )
  )
  (set_local $3
   (f64.promote/f32
    (f32.reinterpret/i32
     (get_local $1)
    )
   )
  )
  (set_local $4
   (f64.mul
    (f64.mul
     (get_local $3)
     (get_local $3)
    )
    (get_local $3)
   )
  )
  (set_local $3
   (f64.div
    (f64.mul
     (get_local $3)
     (f64.add
      (f64.add
       (f64.promote/f32
        (get_local $0)
       )
       (f64.promote/f32
        (get_local $0)
       )
      )
      (get_local $4)
     )
    )
    (f64.add
     (f64.add
      (f64.promote/f32
       (get_local $0)
      )
      (get_local $4)
     )
     (get_local $4)
    )
   )
  )
  (set_local $4
   (f64.mul
    (f64.mul
     (get_local $3)
     (get_local $3)
    )
    (get_local $3)
   )
  )
  (set_local $3
   (f64.div
    (f64.mul
     (get_local $3)
     (f64.add
      (f64.add
       (f64.promote/f32
        (get_local $0)
       )
       (f64.promote/f32
        (get_local $0)
       )
      )
      (get_local $4)
     )
    )
    (f64.add
     (f64.add
      (f64.promote/f32
       (get_local $0)
      )
      (get_local $4)
     )
     (get_local $4)
    )
   )
  )
  (return
   (f32.demote/f64
    (get_local $3)
   )
  )
 )
 (func $std/math/test_cbrtf (; 70 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.cbrt"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.expm1" (; 71 ;) (type $FF) (param $0 f64) (result f64)
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
  (local $13 f64)
  (local $14 f64)
  (local $15 i32)
  (nop)
  (set_local $1
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $2
   (i32.wrap/i64
    (i64.and
     (i64.shr_u
      (get_local $1)
      (i64.const 32)
     )
     (i64.const 2147483647)
    )
   )
  )
  (block
   (set_local $3
    (i32.const 0)
   )
   (set_local $4
    (i32.wrap/i64
     (i64.shr_u
      (get_local $1)
      (i64.const 63)
     )
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 1078159482)
   )
   (block
    (if
     (f64.ne
      (tee_local $5
       (get_local $0)
      )
      (get_local $5)
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
     (block
      (set_local $0
       (f64.mul
        (get_local $0)
        (f64.const 8988465674311579538646525e283)
       )
      )
      (return
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $6
   (f64.const 0)
  )
  (if
   (i32.gt_u
    (get_local $2)
    (i32.const 1071001154)
   )
   (block
    (nop)
    (if
     (i32.lt_u
      (get_local $2)
      (i32.const 1072734898)
     )
     (if
      (i32.eqz
       (get_local $4)
      )
      (block
       (set_local $5
        (f64.sub
         (get_local $0)
         (f64.const 0.6931471803691238)
        )
       )
       (set_local $8
        (f64.const 1.9082149292705877e-10)
       )
       (set_local $3
        (i32.const 1)
       )
      )
      (block
       (set_local $5
        (f64.add
         (get_local $0)
         (f64.const 0.6931471803691238)
        )
       )
       (set_local $8
        (f64.neg
         (f64.const 1.9082149292705877e-10)
        )
       )
       (set_local $3
        (i32.const -1)
       )
      )
     )
     (block
      (set_local $3
       (i32.trunc_s/f64
        (f64.add
         (f64.mul
          (f64.const 1.4426950408889634)
          (get_local $0)
         )
         (if (result f64)
          (get_local $4)
          (f64.const -0.5)
          (f64.const 0.5)
         )
        )
       )
      )
      (set_local $7
       (f64.convert_s/i32
        (get_local $3)
       )
      )
      (set_local $5
       (f64.sub
        (get_local $0)
        (f64.mul
         (get_local $7)
         (f64.const 0.6931471803691238)
        )
       )
      )
      (set_local $8
       (f64.mul
        (get_local $7)
        (f64.const 1.9082149292705877e-10)
       )
      )
     )
    )
    (set_local $0
     (f64.sub
      (get_local $5)
      (get_local $8)
     )
    )
    (set_local $6
     (f64.sub
      (f64.sub
       (get_local $5)
       (get_local $0)
      )
      (get_local $8)
     )
    )
   )
   (if
    (i32.lt_u
     (get_local $2)
     (i32.const 1016070144)
    )
    (return
     (get_local $0)
    )
   )
  )
  (set_local $9
   (f64.mul
    (f64.const 0.5)
    (get_local $0)
   )
  )
  (set_local $10
   (f64.mul
    (get_local $0)
    (get_local $9)
   )
  )
  (set_local $11
   (f64.add
    (f64.const 1)
    (f64.mul
     (get_local $10)
     (f64.add
      (f64.const -0.03333333333333313)
      (f64.mul
       (get_local $10)
       (f64.add
        (f64.const 1.5873015872548146e-03)
        (f64.mul
         (get_local $10)
         (f64.add
          (f64.const -7.93650757867488e-05)
          (f64.mul
           (get_local $10)
           (f64.add
            (f64.const 4.008217827329362e-06)
            (f64.mul
             (get_local $10)
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
  (set_local $7
   (f64.sub
    (f64.const 3)
    (f64.mul
     (get_local $11)
     (get_local $9)
    )
   )
  )
  (set_local $12
   (f64.mul
    (get_local $10)
    (f64.div
     (f64.sub
      (get_local $11)
      (get_local $7)
     )
     (f64.sub
      (f64.const 6)
      (f64.mul
       (get_local $0)
       (get_local $7)
      )
     )
    )
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const 0)
   )
   (return
    (f64.sub
     (get_local $0)
     (f64.sub
      (f64.mul
       (get_local $0)
       (get_local $12)
      )
      (get_local $10)
     )
    )
   )
  )
  (set_local $12
   (f64.sub
    (f64.mul
     (get_local $0)
     (f64.sub
      (get_local $12)
      (get_local $6)
     )
    )
    (get_local $6)
   )
  )
  (set_local $12
   (f64.sub
    (get_local $12)
    (get_local $10)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const -1)
   )
   (return
    (f64.sub
     (f64.mul
      (f64.const 0.5)
      (f64.sub
       (get_local $0)
       (get_local $12)
      )
     )
     (f64.const 0.5)
    )
   )
  )
  (if
   (i32.eq
    (get_local $3)
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
        (get_local $12)
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
        (get_local $12)
       )
      )
     )
    )
   )
  )
  (set_local $1
   (i64.shl
    (i64.add
     (i64.const 1023)
     (i64.extend_u/i32
      (get_local $3)
     )
    )
    (i64.const 52)
   )
  )
  (set_local $13
   (f64.reinterpret/i64
    (get_local $1)
   )
  )
  (nop)
  (if
   (i32.and
    (if (result i32)
     (tee_local $15
      (i32.lt_s
       (get_local $3)
       (i32.const 0)
      )
     )
     (get_local $15)
     (i32.gt_s
      (get_local $3)
      (i32.const 56)
     )
    )
    (i32.const 1)
   )
   (block
    (set_local $14
     (f64.add
      (f64.sub
       (get_local $0)
       (get_local $12)
      )
      (f64.const 1)
     )
    )
    (if
     (i32.eq
      (get_local $3)
      (i32.const 1024)
     )
     (set_local $14
      (f64.mul
       (f64.mul
        (get_local $14)
        (f64.const 2)
       )
       (f64.const 8988465674311579538646525e283)
      )
     )
     (set_local $14
      (f64.mul
       (get_local $14)
       (get_local $13)
      )
     )
    )
    (return
     (f64.sub
      (get_local $14)
      (f64.const 1)
     )
    )
   )
  )
  (set_local $1
   (i64.shl
    (i64.sub
     (i64.const 1023)
     (i64.extend_u/i32
      (get_local $3)
     )
    )
    (i64.const 52)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 20)
   )
   (set_local $14
    (f64.mul
     (f64.add
      (f64.sub
       (get_local $0)
       (get_local $12)
      )
      (f64.sub
       (f64.const 1)
       (f64.reinterpret/i64
        (get_local $1)
       )
      )
     )
     (get_local $13)
    )
   )
   (set_local $14
    (f64.mul
     (f64.add
      (f64.sub
       (get_local $0)
       (f64.add
        (get_local $12)
        (f64.reinterpret/i64
         (get_local $1)
        )
       )
      )
      (f64.const 1)
     )
     (get_local $13)
    )
   )
  )
  (return
   (get_local $14)
  )
 )
 (func "$(lib)/math/NativeMath.exp" (; 72 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (nop)
  (set_local $1
   (i32.wrap/i64
    (i64.shr_u
     (i64.reinterpret/f64
      (get_local $0)
     )
     (i64.const 32)
    )
   )
  )
  (set_local $2
   (i32.shr_u
    (get_local $1)
    (i32.const 31)
   )
  )
  (set_local $1
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 1082532651)
   )
   (block
    (if
     (f64.ne
      (tee_local $3
       (get_local $0)
      )
      (get_local $3)
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
     (block
      (set_local $0
       (f64.mul
        (get_local $0)
        (f64.const 8988465674311579538646525e283)
       )
      )
      (return
       (get_local $0)
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
  (set_local $5
   (f64.const 0)
  )
  (set_local $6
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1071001154)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 1072734898)
     )
     (set_local $6
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
     )
     (set_local $6
      (i32.sub
       (i32.sub
        (i32.const 1)
        (get_local $2)
       )
       (get_local $2)
      )
     )
    )
    (set_local $4
     (f64.sub
      (get_local $0)
      (f64.mul
       (f64.convert_s/i32
        (get_local $6)
       )
       (f64.const 0.6931471803691238)
      )
     )
    )
    (set_local $5
     (f64.mul
      (f64.convert_s/i32
       (get_local $6)
      )
      (f64.const 1.9082149292705877e-10)
     )
    )
    (set_local $0
     (f64.sub
      (get_local $4)
      (get_local $5)
     )
    )
   )
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 1043333120)
    )
    (set_local $4
     (get_local $0)
    )
    (return
     (f64.add
      (f64.const 1)
      (get_local $0)
     )
    )
   )
  )
  (set_local $7
   (f64.mul
    (get_local $0)
    (get_local $0)
   )
  )
  (set_local $8
   (f64.sub
    (get_local $0)
    (f64.mul
     (get_local $7)
     (f64.add
      (f64.const 0.16666666666666602)
      (f64.mul
       (get_local $7)
       (f64.add
        (f64.const -2.7777777777015593e-03)
        (f64.mul
         (get_local $7)
         (f64.add
          (f64.const 6.613756321437934e-05)
          (f64.mul
           (get_local $7)
           (f64.add
            (f64.const -1.6533902205465252e-06)
            (f64.mul
             (get_local $7)
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
  (set_local $9
   (f64.add
    (f64.const 1)
    (f64.add
     (f64.sub
      (f64.div
       (f64.mul
        (get_local $0)
        (get_local $8)
       )
       (f64.sub
        (f64.const 2)
        (get_local $8)
       )
      )
      (get_local $5)
     )
     (get_local $4)
    )
   )
  )
  (if
   (i32.eq
    (get_local $6)
    (i32.const 0)
   )
   (return
    (get_local $9)
   )
  )
  (return
   (call "$(lib)/math/NativeMath.scalbn"
    (get_local $9)
    (get_local $6)
   )
  )
 )
 (func "$(lib)/math/NativeMath.__expo2" (; 73 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 f64)
  (nop)
  (set_local $1
   (f64.reinterpret/i64
    (i64.shl
     (i64.extend_u/i32
      (i32.shl
       (i32.add
        (i32.const 1023)
        (i32.div_u
         (i32.const 2043)
         (i32.const 2)
        )
       )
       (i32.const 20)
      )
     )
     (i64.const 32)
    )
   )
  )
  (return
   (f64.mul
    (f64.mul
     (call "$(lib)/math/NativeMath.exp"
      (f64.sub
       (get_local $0)
       (f64.const 1416.0996898839683)
      )
     )
     (get_local $1)
    )
    (get_local $1)
   )
  )
 )
 (func "$(lib)/math/NativeMath.cosh" (; 74 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 f64)
  (set_local $1
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $1
   (i64.and
    (get_local $1)
    (i64.const 9223372036854775807)
   )
  )
  (set_local $0
   (f64.reinterpret/i64
    (get_local $1)
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
  (nop)
  (if
   (i32.lt_u
    (get_local $2)
    (i32.const 1072049730)
   )
   (block
    (if
     (i32.lt_u
      (get_local $2)
      (i32.sub
       (i32.const 1072693248)
       (i32.shl
        (i32.const 26)
        (i32.const 20)
       )
      )
     )
     (return
      (f64.const 1)
     )
    )
    (set_local $3
     (call "$(lib)/math/NativeMath.expm1"
      (get_local $0)
     )
    )
    (return
     (f64.add
      (f64.const 1)
      (f64.div
       (f64.mul
        (get_local $3)
        (get_local $3)
       )
       (f64.mul
        (f64.const 2)
        (f64.add
         (f64.const 1)
         (get_local $3)
        )
       )
      )
     )
    )
   )
  )
  (if
   (i32.lt_u
    (get_local $2)
    (i32.const 1082535490)
   )
   (block
    (set_local $3
     (call "$(lib)/math/NativeMath.exp"
      (get_local $0)
     )
    )
    (return
     (f64.mul
      (f64.const 0.5)
      (f64.add
       (get_local $3)
       (f64.div
        (f64.const 1)
        (get_local $3)
       )
      )
     )
    )
   )
  )
  (set_local $3
   (call "$(lib)/math/NativeMath.__expo2"
    (get_local $0)
   )
  )
  (return
   (get_local $3)
  )
 )
 (func $std/math/test_cosh (; 75 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.cosh"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.cosh"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.expm1" (; 76 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 i32)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (set_local $3
   (i32.shr_u
    (get_local $1)
    (i32.const 31)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 1100331076)
   )
   (block
    (if
     (i32.gt_u
      (get_local $2)
      (i32.const 2139095040)
     )
     (return
      (get_local $0)
     )
    )
    (if
     (get_local $3)
     (return
      (f32.const -1)
     )
    )
    (if
     (f32.gt
      (get_local $0)
      (f32.const 88.7216796875)
     )
     (block
      (set_local $0
       (f32.mul
        (get_local $0)
        (f32.const 1701411834604692317316873e14)
       )
      )
      (return
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $4
   (f32.const 0)
  )
  (if
   (i32.gt_u
    (get_local $2)
    (i32.const 1051816472)
   )
   (block
    (nop)
    (if
     (i32.lt_u
      (get_local $2)
      (i32.const 1065686418)
     )
     (if
      (i32.eqz
       (get_local $3)
      )
      (block
       (set_local $7
        (f32.sub
         (get_local $0)
         (f32.const 0.6931381225585938)
        )
       )
       (set_local $8
        (f32.const 9.05800061445916e-06)
       )
       (set_local $6
        (i32.const 1)
       )
      )
      (block
       (set_local $7
        (f32.add
         (get_local $0)
         (f32.const 0.6931381225585938)
        )
       )
       (set_local $8
        (f32.neg
         (f32.const 9.05800061445916e-06)
        )
       )
       (set_local $6
        (i32.const -1)
       )
      )
     )
     (block
      (set_local $6
       (i32.trunc_s/f32
        (f32.add
         (f32.mul
          (f32.const 1.4426950216293335)
          (get_local $0)
         )
         (if (result f32)
          (get_local $3)
          (f32.const -0.5)
          (f32.const 0.5)
         )
        )
       )
      )
      (set_local $5
       (f32.convert_s/i32
        (get_local $6)
       )
      )
      (set_local $7
       (f32.sub
        (get_local $0)
        (f32.mul
         (get_local $5)
         (f32.const 0.6931381225585938)
        )
       )
      )
      (set_local $8
       (f32.mul
        (get_local $5)
        (f32.const 9.05800061445916e-06)
       )
      )
     )
    )
    (set_local $0
     (f32.sub
      (get_local $7)
      (get_local $8)
     )
    )
    (set_local $4
     (f32.sub
      (f32.sub
       (get_local $7)
       (get_local $0)
      )
      (get_local $8)
     )
    )
   )
   (if
    (i32.lt_u
     (get_local $2)
     (i32.const 855638016)
    )
    (return
     (get_local $0)
    )
    (set_local $6
     (i32.const 0)
    )
   )
  )
  (set_local $9
   (f32.mul
    (f32.const 0.5)
    (get_local $0)
   )
  )
  (set_local $10
   (f32.mul
    (get_local $0)
    (get_local $9)
   )
  )
  (set_local $11
   (f32.add
    (f32.const 1)
    (f32.mul
     (get_local $10)
     (f32.add
      (f32.const -0.03333321213722229)
      (f32.mul
       (get_local $10)
       (f32.const 1.5807170420885086e-03)
      )
     )
    )
   )
  )
  (set_local $5
   (f32.sub
    (f32.const 3)
    (f32.mul
     (get_local $11)
     (get_local $9)
    )
   )
  )
  (set_local $12
   (f32.mul
    (get_local $10)
    (f32.div
     (f32.sub
      (get_local $11)
      (get_local $5)
     )
     (f32.sub
      (f32.const 6)
      (f32.mul
       (get_local $0)
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.eq
    (get_local $6)
    (i32.const 0)
   )
   (return
    (f32.sub
     (get_local $0)
     (f32.sub
      (f32.mul
       (get_local $0)
       (get_local $12)
      )
      (get_local $10)
     )
    )
   )
  )
  (set_local $12
   (f32.sub
    (f32.mul
     (get_local $0)
     (f32.sub
      (get_local $12)
      (get_local $4)
     )
    )
    (get_local $4)
   )
  )
  (set_local $12
   (f32.sub
    (get_local $12)
    (get_local $10)
   )
  )
  (if
   (i32.eq
    (get_local $6)
    (i32.const -1)
   )
   (return
    (f32.sub
     (f32.mul
      (f32.const 0.5)
      (f32.sub
       (get_local $0)
       (get_local $12)
      )
     )
     (f32.const 0.5)
    )
   )
  )
  (if
   (i32.eq
    (get_local $6)
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
        (get_local $12)
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
        (get_local $12)
       )
      )
     )
    )
   )
  )
  (set_local $1
   (i32.shl
    (i32.add
     (i32.const 127)
     (get_local $6)
    )
    (i32.const 23)
   )
  )
  (set_local $13
   (f32.reinterpret/i32
    (get_local $1)
   )
  )
  (nop)
  (if
   (i32.and
    (if (result i32)
     (tee_local $15
      (i32.lt_s
       (get_local $6)
       (i32.const 0)
      )
     )
     (get_local $15)
     (i32.gt_s
      (get_local $6)
      (i32.const 56)
     )
    )
    (i32.const 1)
   )
   (block
    (set_local $14
     (f32.add
      (f32.sub
       (get_local $0)
       (get_local $12)
      )
      (f32.const 1)
     )
    )
    (if
     (i32.eq
      (get_local $6)
      (i32.const 128)
     )
     (set_local $14
      (f32.mul
       (f32.mul
        (get_local $14)
        (f32.const 2)
       )
       (f32.const 1701411834604692317316873e14)
      )
     )
     (set_local $14
      (f32.mul
       (get_local $14)
       (get_local $13)
      )
     )
    )
    (return
     (f32.sub
      (get_local $14)
      (f32.const 1)
     )
    )
   )
  )
  (set_local $1
   (i32.shl
    (i32.sub
     (i32.const 127)
     (get_local $6)
    )
    (i32.const 23)
   )
  )
  (if
   (i32.lt_s
    (get_local $6)
    (i32.const 23)
   )
   (set_local $14
    (f32.mul
     (f32.add
      (f32.sub
       (get_local $0)
       (get_local $12)
      )
      (f32.sub
       (f32.const 1)
       (f32.reinterpret/i32
        (get_local $1)
       )
      )
     )
     (get_local $13)
    )
   )
   (set_local $14
    (f32.mul
     (f32.add
      (f32.sub
       (get_local $0)
       (f32.add
        (get_local $12)
        (f32.reinterpret/i32
         (get_local $1)
        )
       )
      )
      (f32.const 1)
     )
     (get_local $13)
    )
   )
  )
  (return
   (get_local $14)
  )
 )
 (func "$(lib)/math/NativeMathf.exp" (; 77 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.shr_u
    (get_local $1)
    (i32.const 31)
   )
  )
  (set_local $1
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 1118743632)
   )
   (block
    (if
     (i32.and
      (if (result i32)
       (tee_local $3
        (i32.ge_u
         (get_local $1)
         (i32.const 1118925336)
        )
       )
       (i32.eqz
        (get_local $2)
       )
       (get_local $3)
      )
      (i32.const 1)
     )
     (block
      (set_local $0
       (f32.mul
        (get_local $0)
        (f32.const 1701411834604692317316873e14)
       )
      )
      (return
       (get_local $0)
      )
     )
    )
    (if
     (if (result i32)
      (get_local $2)
      (i32.ge_u
       (get_local $1)
       (i32.const 1120924085)
      )
      (get_local $2)
     )
     (return
      (f32.const 0)
     )
    )
   )
  )
  (nop)
  (nop)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1051816472)
   )
   (block
    (if
     (i32.gt_u
      (get_local $1)
      (i32.const 1065686418)
     )
     (set_local $6
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
     )
     (set_local $6
      (i32.sub
       (i32.sub
        (i32.const 1)
        (get_local $2)
       )
       (get_local $2)
      )
     )
    )
    (set_local $4
     (f32.sub
      (get_local $0)
      (f32.mul
       (f32.convert_s/i32
        (get_local $6)
       )
       (f32.const 0.693145751953125)
      )
     )
    )
    (set_local $5
     (f32.mul
      (f32.convert_s/i32
       (get_local $6)
      )
      (f32.const 1.428606765330187e-06)
     )
    )
    (set_local $0
     (f32.sub
      (get_local $4)
      (get_local $5)
     )
    )
   )
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 956301312)
    )
    (block
     (set_local $6
      (i32.const 0)
     )
     (set_local $4
      (get_local $0)
     )
     (set_local $5
      (f32.const 0)
     )
    )
    (return
     (f32.add
      (f32.const 1)
      (get_local $0)
     )
    )
   )
  )
  (set_local $7
   (f32.mul
    (get_local $0)
    (get_local $0)
   )
  )
  (set_local $8
   (f32.sub
    (get_local $0)
    (f32.mul
     (get_local $7)
     (f32.add
      (f32.const 0.16666625440120697)
      (f32.mul
       (get_local $7)
       (f32.const -2.7667332906275988e-03)
      )
     )
    )
   )
  )
  (set_local $9
   (f32.add
    (f32.const 1)
    (f32.add
     (f32.sub
      (f32.div
       (f32.mul
        (get_local $0)
        (get_local $8)
       )
       (f32.sub
        (f32.const 2)
        (get_local $8)
       )
      )
      (get_local $5)
     )
     (get_local $4)
    )
   )
  )
  (if
   (i32.eq
    (get_local $6)
    (i32.const 0)
   )
   (return
    (get_local $9)
   )
  )
  (return
   (call "$(lib)/math/NativeMathf.scalbn"
    (get_local $9)
    (get_local $6)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.__expo2" (; 78 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 f32)
  (nop)
  (set_local $1
   (f32.reinterpret/i32
    (i32.shl
     (i32.add
      (i32.const 127)
      (i32.div_u
       (i32.const 235)
       (i32.const 2)
      )
     )
     (i32.const 23)
    )
   )
  )
  (return
   (f32.mul
    (f32.mul
     (call "$(lib)/math/NativeMathf.exp"
      (f32.sub
       (get_local $0)
       (f32.const 162.88958740234375)
      )
     )
     (get_local $1)
    )
    (get_local $1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.cosh" (; 79 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $1
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (get_local $1)
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
      (i32.sub
       (i32.const 1065353216)
       (i32.shl
        (i32.const 12)
        (i32.const 23)
       )
      )
     )
     (return
      (f32.const 1)
     )
    )
    (set_local $2
     (call "$(lib)/math/NativeMathf.expm1"
      (get_local $0)
     )
    )
    (return
     (f32.add
      (f32.const 1)
      (f32.div
       (f32.mul
        (get_local $2)
        (get_local $2)
       )
       (f32.mul
        (f32.const 2)
        (f32.add
         (f32.const 1)
         (get_local $2)
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
   (block
    (set_local $2
     (call "$(lib)/math/NativeMathf.exp"
      (get_local $0)
     )
    )
    (return
     (f32.mul
      (f32.const 0.5)
      (f32.add
       (get_local $2)
       (f32.div
        (f32.const 1)
        (get_local $2)
       )
      )
     )
    )
   )
  )
  (return
   (call "$(lib)/math/NativeMathf.__expo2"
    (get_local $0)
   )
  )
 )
 (func $std/math/test_coshf (; 80 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.cosh"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $std/math/test_exp (; 81 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.exp"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.exp"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func $std/math/test_expf (; 82 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.exp"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $std/math/test_expm1 (; 83 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.expm1"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.expm1"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func $std/math/test_expm1f (; 84 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.expm1"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.hypot" (; 85 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (nop)
  (set_local $2
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $3
   (i64.reinterpret/f64
    (get_local $1)
   )
  )
  (set_local $2
   (i64.and
    (get_local $2)
    (i64.const 9223372036854775807)
   )
  )
  (set_local $3
   (i64.and
    (get_local $3)
    (i64.const 9223372036854775807)
   )
  )
  (if
   (i64.lt_u
    (get_local $2)
    (get_local $3)
   )
   (block
    (set_local $4
     (get_local $2)
    )
    (set_local $2
     (get_local $3)
    )
    (set_local $3
     (get_local $4)
    )
   )
  )
  (set_local $5
   (i32.wrap/i64
    (i64.shr_u
     (get_local $2)
     (i64.const 52)
    )
   )
  )
  (set_local $6
   (i32.wrap/i64
    (i64.shr_u
     (get_local $3)
     (i64.const 52)
    )
   )
  )
  (set_local $1
   (f64.reinterpret/i64
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $6)
    (i32.const 2047)
   )
   (return
    (get_local $1)
   )
  )
  (set_local $0
   (f64.reinterpret/i64
    (get_local $2)
   )
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $7
      (i32.eq
       (get_local $5)
       (i32.const 2047)
      )
     )
     (get_local $7)
     (i64.eq
      (get_local $3)
      (i64.const 0)
     )
    )
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (if
   (i32.gt_s
    (i32.sub
     (get_local $5)
     (get_local $6)
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
  (set_local $8
   (f64.const 1)
  )
  (if
   (i32.gt_s
    (get_local $5)
    (i32.add
     (i32.const 1023)
     (i32.const 510)
    )
   )
   (block
    (set_local $8
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
     (get_local $6)
     (i32.sub
      (i32.const 1023)
      (i32.const 450)
     )
    )
    (block
     (set_local $8
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
  (set_local $9
   (f64.mul
    (get_local $0)
    (f64.const 134217729)
   )
  )
  (set_local $10
   (f64.add
    (f64.sub
     (get_local $0)
     (get_local $9)
    )
    (get_local $9)
   )
  )
  (set_local $11
   (f64.sub
    (get_local $0)
    (get_local $10)
   )
  )
  (set_local $12
   (f64.mul
    (get_local $0)
    (get_local $0)
   )
  )
  (set_local $13
   (f64.add
    (f64.add
     (f64.sub
      (f64.mul
       (get_local $10)
       (get_local $10)
      )
      (get_local $12)
     )
     (f64.mul
      (f64.mul
       (f64.const 2)
       (get_local $10)
      )
      (get_local $11)
     )
    )
    (f64.mul
     (get_local $11)
     (get_local $11)
    )
   )
  )
  (set_local $9
   (f64.mul
    (get_local $1)
    (f64.const 134217729)
   )
  )
  (set_local $10
   (f64.add
    (f64.sub
     (get_local $1)
     (get_local $9)
    )
    (get_local $9)
   )
  )
  (set_local $11
   (f64.sub
    (get_local $1)
    (get_local $10)
   )
  )
  (set_local $14
   (f64.mul
    (get_local $1)
    (get_local $1)
   )
  )
  (set_local $15
   (f64.add
    (f64.add
     (f64.sub
      (f64.mul
       (get_local $10)
       (get_local $10)
      )
      (get_local $14)
     )
     (f64.mul
      (f64.mul
       (f64.const 2)
       (get_local $10)
      )
      (get_local $11)
     )
    )
    (f64.mul
     (get_local $11)
     (get_local $11)
    )
   )
  )
  (return
   (f64.mul
    (get_local $8)
    (f64.sqrt
     (f64.add
      (f64.add
       (f64.add
        (get_local $15)
        (get_local $13)
       )
       (get_local $14)
      )
      (get_local $12)
     )
    )
   )
  )
 )
 (func $std/math/test_hypot (; 86 ;) (type $FFFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (local $5 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $5
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.hypot"
        (get_local $0)
        (get_local $1)
       )
       (get_local $2)
       (get_local $3)
       (get_local $4)
      )
     )
     (if (result i32)
      (tee_local $5
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $5)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.hypot"
        (get_local $0)
        (get_local $1)
       )
       (get_local $2)
       (get_local $3)
       (get_local $4)
      )
     )
     (get_local $5)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.hypot" (; 87 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (nop)
  (set_local $2
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $3
   (i32.reinterpret/f32
    (get_local $1)
   )
  )
  (set_local $2
   (i32.and
    (get_local $2)
    (i32.const 2147483647)
   )
  )
  (set_local $3
   (i32.and
    (get_local $3)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.lt_u
    (get_local $2)
    (get_local $3)
   )
   (block
    (set_local $4
     (get_local $2)
    )
    (set_local $2
     (get_local $3)
    )
    (set_local $3
     (get_local $4)
    )
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (get_local $2)
   )
  )
  (set_local $1
   (f32.reinterpret/i32
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.shl
     (i32.const 255)
     (i32.const 23)
    )
   )
   (return
    (get_local $1)
   )
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $4
      (i32.and
       (if (result i32)
        (tee_local $4
         (i32.ge_u
          (get_local $2)
          (i32.shl
           (i32.const 255)
           (i32.const 23)
          )
         )
        )
        (get_local $4)
        (i32.eq
         (get_local $3)
         (i32.const 0)
        )
       )
       (i32.const 1)
      )
     )
     (get_local $4)
     (i32.ge_u
      (i32.sub
       (get_local $2)
       (get_local $3)
      )
      (i32.shl
       (i32.const 25)
       (i32.const 23)
      )
     )
    )
    (i32.const 1)
   )
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
    (get_local $2)
    (i32.shl
     (i32.add
      (i32.const 127)
      (i32.const 60)
     )
     (i32.const 23)
    )
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
     (get_local $3)
     (i32.shl
      (i32.sub
       (i32.const 127)
       (i32.const 60)
      )
      (i32.const 23)
     )
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
  (return
   (f32.mul
    (get_local $5)
    (f32.sqrt
     (f32.demote/f64
      (f64.add
       (f64.mul
        (f64.promote/f32
         (get_local $0)
        )
        (f64.promote/f32
         (get_local $0)
        )
       )
       (f64.mul
        (f64.promote/f32
         (get_local $1)
        )
        (f64.promote/f32
         (get_local $1)
        )
       )
      )
     )
    )
   )
  )
 )
 (func $std/math/test_hypotf (; 88 ;) (type $ffffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.hypot"
     (get_local $0)
     (get_local $1)
    )
    (get_local $2)
    (get_local $3)
    (get_local $4)
   )
  )
 )
 (func $std/math/test_log (; 89 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.log"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.log"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func $std/math/test_logf (; 90 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.log"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.log10" (; 91 ;) (type $FF) (param $0 f64) (result f64)
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
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (nop)
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
   (i32.and
    (if (result i32)
     (tee_local $4
      (i32.lt_u
       (get_local $2)
       (i32.const 1048576)
      )
     )
     (get_local $4)
     (i32.and
      (i32.shr_u
       (get_local $2)
       (i32.const 31)
      )
      (i32.const 1)
     )
    )
    (i32.const 1)
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
     (i32.and
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
      (i32.const 1)
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
     (i32.shr_u
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
   (f64.sub
    (get_local $5)
    (get_local $6)
   )
  )
  (set_local $1
   (i64.reinterpret/f64
    (get_local $13)
   )
  )
  (set_local $1
   (i64.and
    (get_local $1)
    (i64.const -4294967296)
   )
  )
  (set_local $13
   (f64.reinterpret/i64
    (get_local $1)
   )
  )
  (set_local $14
   (f64.add
    (f64.sub
     (f64.sub
      (get_local $5)
      (get_local $13)
     )
     (get_local $6)
    )
    (f64.mul
     (get_local $7)
     (f64.add
      (get_local $6)
      (get_local $12)
     )
    )
   )
  )
  (set_local $15
   (f64.mul
    (get_local $13)
    (f64.const 0.4342944818781689)
   )
  )
  (set_local $16
   (f64.convert_s/i32
    (get_local $3)
   )
  )
  (set_local $17
   (f64.mul
    (get_local $16)
    (f64.const 0.30102999566361177)
   )
  )
  (set_local $18
   (f64.add
    (f64.add
     (f64.mul
      (get_local $16)
      (f64.const 3.694239077158931e-13)
     )
     (f64.mul
      (f64.add
       (get_local $14)
       (get_local $13)
      )
      (f64.const 2.5082946711645275e-11)
     )
    )
    (f64.mul
     (get_local $14)
     (f64.const 0.4342944818781689)
    )
   )
  )
  (set_local $9
   (f64.add
    (get_local $17)
    (get_local $15)
   )
  )
  (set_local $18
   (f64.add
    (get_local $18)
    (f64.add
     (f64.sub
      (get_local $17)
      (get_local $9)
     )
     (get_local $15)
    )
   )
  )
  (set_local $15
   (get_local $9)
  )
  (return
   (f64.add
    (get_local $18)
    (get_local $15)
   )
  )
 )
 (func $std/math/test_log10 (; 92 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.log10"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.log10"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.log10" (; 93 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $3
      (i32.lt_u
       (get_local $1)
       (i32.const 8388608)
      )
     )
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $1)
       (i32.const 31)
      )
      (i32.const 1)
     )
    )
    (i32.const 1)
   )
   (block
    (if
     (i32.eq
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 0)
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
     (i32.sub
      (get_local $2)
      (i32.const 25)
     )
    )
    (set_local $0
     (f32.mul
      (get_local $0)
      (f32.const 33554432)
     )
    )
    (set_local $1
     (i32.reinterpret/f32
      (get_local $0)
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
  (set_local $1
   (i32.add
    (get_local $1)
    (i32.sub
     (i32.const 1065353216)
     (i32.const 1060439283)
    )
   )
  )
  (set_local $2
   (i32.add
    (get_local $2)
    (i32.sub
     (i32.shr_u
      (get_local $1)
      (i32.const 23)
     )
     (i32.const 127)
    )
   )
  )
  (set_local $1
   (i32.add
    (i32.and
     (get_local $1)
     (i32.const 8388607)
    )
    (i32.const 1060439283)
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (get_local $1)
   )
  )
  (set_local $4
   (f32.sub
    (get_local $0)
    (f32.const 1)
   )
  )
  (set_local $5
   (f32.div
    (get_local $4)
    (f32.add
     (f32.const 2)
     (get_local $4)
    )
   )
  )
  (set_local $6
   (f32.mul
    (get_local $5)
    (get_local $5)
   )
  )
  (set_local $7
   (f32.mul
    (get_local $6)
    (get_local $6)
   )
  )
  (set_local $8
   (f32.mul
    (get_local $7)
    (f32.add
     (f32.const 0.40000972151756287)
     (f32.mul
      (get_local $7)
      (f32.const 0.24279078841209412)
     )
    )
   )
  )
  (set_local $9
   (f32.mul
    (get_local $6)
    (f32.add
     (f32.const 0.6666666269302368)
     (f32.mul
      (get_local $7)
      (f32.const 0.2849878668785095)
     )
    )
   )
  )
  (set_local $10
   (f32.add
    (get_local $9)
    (get_local $8)
   )
  )
  (set_local $11
   (f32.mul
    (f32.mul
     (f32.const 0.5)
     (get_local $4)
    )
    (get_local $4)
   )
  )
  (set_local $12
   (f32.sub
    (get_local $4)
    (get_local $11)
   )
  )
  (set_local $1
   (i32.reinterpret/f32
    (get_local $12)
   )
  )
  (set_local $1
   (i32.and
    (get_local $1)
    (i32.const -4096)
   )
  )
  (set_local $12
   (f32.reinterpret/i32
    (get_local $1)
   )
  )
  (set_local $13
   (f32.add
    (f32.sub
     (f32.sub
      (get_local $4)
      (get_local $12)
     )
     (get_local $11)
    )
    (f32.mul
     (get_local $5)
     (f32.add
      (get_local $11)
      (get_local $10)
     )
    )
   )
  )
  (set_local $14
   (f32.convert_s/i32
    (get_local $2)
   )
  )
  (return
   (f32.add
    (f32.add
     (f32.add
      (f32.add
       (f32.mul
        (get_local $14)
        (f32.const 7.903415166765626e-07)
       )
       (f32.mul
        (f32.add
         (get_local $13)
         (get_local $12)
        )
        (f32.const -3.168997136526741e-05)
       )
      )
      (f32.mul
       (get_local $13)
       (f32.const 0.434326171875)
      )
     )
     (f32.mul
      (get_local $12)
      (f32.const 0.434326171875)
     )
    )
    (f32.mul
     (get_local $14)
     (f32.const 0.3010292053222656)
    )
   )
  )
 )
 (func $std/math/test_log10f (; 94 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.log10"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $std/math/test_log1p (; 95 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.log1p"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.log1p"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func $std/math/test_log1pf (; 96 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.log1p"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.log2" (; 97 ;) (type $FF) (param $0 f64) (result f64)
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
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (nop)
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
   (i32.and
    (if (result i32)
     (tee_local $4
      (i32.lt_u
       (get_local $2)
       (i32.const 1048576)
      )
     )
     (get_local $4)
     (i32.and
      (i32.shr_u
       (get_local $2)
       (i32.const 31)
      )
      (i32.const 1)
     )
    )
    (i32.const 1)
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
     (i32.and
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
      (i32.const 1)
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
     (i32.shr_u
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
   (f64.sub
    (get_local $5)
    (get_local $6)
   )
  )
  (set_local $1
   (i64.reinterpret/f64
    (get_local $13)
   )
  )
  (set_local $1
   (i64.and
    (get_local $1)
    (i64.const -4294967296)
   )
  )
  (set_local $13
   (f64.reinterpret/i64
    (get_local $1)
   )
  )
  (set_local $14
   (f64.add
    (f64.sub
     (f64.sub
      (get_local $5)
      (get_local $13)
     )
     (get_local $6)
    )
    (f64.mul
     (get_local $7)
     (f64.add
      (get_local $6)
      (get_local $12)
     )
    )
   )
  )
  (set_local $15
   (f64.mul
    (get_local $13)
    (f64.const 1.4426950407214463)
   )
  )
  (set_local $16
   (f64.add
    (f64.mul
     (f64.add
      (get_local $14)
      (get_local $13)
     )
     (f64.const 1.6751713164886512e-10)
    )
    (f64.mul
     (get_local $14)
     (f64.const 1.4426950407214463)
    )
   )
  )
  (set_local $17
   (f64.convert_s/i32
    (get_local $3)
   )
  )
  (set_local $9
   (f64.add
    (get_local $17)
    (get_local $15)
   )
  )
  (set_local $16
   (f64.add
    (get_local $16)
    (f64.add
     (f64.sub
      (get_local $17)
      (get_local $9)
     )
     (get_local $15)
    )
   )
  )
  (set_local $15
   (get_local $9)
  )
  (return
   (f64.add
    (get_local $16)
    (get_local $15)
   )
  )
 )
 (func $std/math/test_log2 (; 98 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.log2"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.log2"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.log2" (; 99 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 i32)
  (local $14 f32)
  (local $15 f32)
  (nop)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $3
      (i32.lt_u
       (get_local $1)
       (i32.const 8388608)
      )
     )
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $1)
       (i32.const 31)
      )
      (i32.const 1)
     )
    )
    (i32.const 1)
   )
   (block
    (if
     (i32.eq
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 0)
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
     (i32.sub
      (get_local $2)
      (i32.const 25)
     )
    )
    (set_local $0
     (f32.mul
      (get_local $0)
      (f32.const 33554432)
     )
    )
    (set_local $1
     (i32.reinterpret/f32
      (get_local $0)
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
  (set_local $1
   (i32.add
    (get_local $1)
    (i32.sub
     (i32.const 1065353216)
     (i32.const 1060439283)
    )
   )
  )
  (set_local $2
   (i32.add
    (get_local $2)
    (i32.sub
     (i32.shr_u
      (get_local $1)
      (i32.const 23)
     )
     (i32.const 127)
    )
   )
  )
  (set_local $1
   (i32.add
    (i32.and
     (get_local $1)
     (i32.const 8388607)
    )
    (i32.const 1060439283)
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (get_local $1)
   )
  )
  (set_local $4
   (f32.sub
    (get_local $0)
    (f32.const 1)
   )
  )
  (set_local $5
   (f32.div
    (get_local $4)
    (f32.add
     (f32.const 2)
     (get_local $4)
    )
   )
  )
  (set_local $6
   (f32.mul
    (get_local $5)
    (get_local $5)
   )
  )
  (set_local $7
   (f32.mul
    (get_local $6)
    (get_local $6)
   )
  )
  (set_local $8
   (f32.mul
    (get_local $7)
    (f32.add
     (f32.const 0.40000972151756287)
     (f32.mul
      (get_local $7)
      (f32.const 0.24279078841209412)
     )
    )
   )
  )
  (set_local $9
   (f32.mul
    (get_local $6)
    (f32.add
     (f32.const 0.6666666269302368)
     (f32.mul
      (get_local $7)
      (f32.const 0.2849878668785095)
     )
    )
   )
  )
  (set_local $10
   (f32.add
    (get_local $9)
    (get_local $8)
   )
  )
  (set_local $11
   (f32.mul
    (f32.mul
     (f32.const 0.5)
     (get_local $4)
    )
    (get_local $4)
   )
  )
  (set_local $12
   (f32.sub
    (get_local $4)
    (get_local $11)
   )
  )
  (set_local $13
   (i32.reinterpret/f32
    (get_local $12)
   )
  )
  (set_local $13
   (i32.and
    (get_local $13)
    (i32.const -4096)
   )
  )
  (set_local $12
   (f32.reinterpret/i32
    (get_local $13)
   )
  )
  (set_local $14
   (f32.add
    (f32.sub
     (f32.sub
      (get_local $4)
      (get_local $12)
     )
     (get_local $11)
    )
    (f32.mul
     (get_local $5)
     (f32.add
      (get_local $11)
      (get_local $10)
     )
    )
   )
  )
  (set_local $15
   (f32.convert_s/i32
    (get_local $2)
   )
  )
  (return
   (f32.add
    (f32.add
     (f32.add
      (f32.mul
       (f32.add
        (get_local $14)
        (get_local $12)
       )
       (f32.const -1.7605285393074155e-04)
      )
      (f32.mul
       (get_local $14)
       (f32.const 1.44287109375)
      )
     )
     (f32.mul
      (get_local $12)
      (f32.const 1.44287109375)
     )
    )
    (get_local $15)
   )
  )
 )
 (func $std/math/test_log2f (; 100 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.log2"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.pow" (; 101 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 i32)
  (local $25 i32)
  (local $26 f64)
  (local $27 f64)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 f64)
  (local $32 f64)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 i32)
  (nop)
  (set_local $2
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $3
   (i32.wrap/i64
    (i64.shr_u
     (get_local $2)
     (i64.const 32)
    )
   )
  )
  (set_local $4
   (i32.wrap/i64
    (get_local $2)
   )
  )
  (set_local $2
   (i64.reinterpret/f64
    (get_local $1)
   )
  )
  (set_local $5
   (i32.wrap/i64
    (i64.shr_u
     (get_local $2)
     (i64.const 32)
    )
   )
  )
  (set_local $6
   (i32.wrap/i64
    (get_local $2)
   )
  )
  (set_local $7
   (i32.and
    (get_local $3)
    (i32.const 2147483647)
   )
  )
  (set_local $8
   (i32.and
    (get_local $5)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.eq
    (i32.or
     (get_local $8)
     (get_local $6)
    )
    (i32.const 0)
   )
   (return
    (f64.const 1)
   )
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $9
      (i32.eq
       (get_local $3)
       (i32.const 1072693248)
      )
     )
     (i32.eq
      (get_local $4)
      (i32.const 0)
     )
     (get_local $9)
    )
    (i32.const 1)
   )
   (return
    (f64.const 1)
   )
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $9
      (i32.and
       (if (result i32)
        (tee_local $9
         (i32.and
          (if (result i32)
           (tee_local $9
            (i32.gt_s
             (get_local $7)
             (i32.const 2146435072)
            )
           )
           (get_local $9)
           (if (result i32)
            (tee_local $9
             (i32.eq
              (get_local $7)
              (i32.const 2146435072)
             )
            )
            (i32.ne
             (get_local $4)
             (i32.const 0)
            )
            (get_local $9)
           )
          )
          (i32.const 1)
         )
        )
        (get_local $9)
        (i32.gt_s
         (get_local $8)
         (i32.const 2146435072)
        )
       )
       (i32.const 1)
      )
     )
     (get_local $9)
     (if (result i32)
      (tee_local $9
       (i32.eq
        (get_local $8)
        (i32.const 2146435072)
       )
      )
      (i32.ne
       (get_local $6)
       (i32.const 0)
      )
      (get_local $9)
     )
    )
    (i32.const 1)
   )
   (return
    (f64.add
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (set_local $10
   (i32.const 0)
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 0)
   )
   (if
    (i32.ge_s
     (get_local $8)
     (i32.const 1128267776)
    )
    (set_local $10
     (i32.const 2)
    )
    (if
     (i32.ge_s
      (get_local $8)
      (i32.const 1072693248)
     )
     (block
      (set_local $11
       (i32.sub
        (i32.shr_s
         (get_local $8)
         (i32.const 20)
        )
        (i32.const 1023)
       )
      )
      (if
       (i32.gt_s
        (get_local $11)
        (i32.const 20)
       )
       (block
        (set_local $9
         (i32.shr_u
          (get_local $6)
          (i32.sub
           (i32.const 52)
           (get_local $11)
          )
         )
        )
        (if
         (i32.eq
          (i32.shl
           (get_local $9)
           (i32.sub
            (i32.const 52)
            (get_local $11)
           )
          )
          (get_local $6)
         )
         (set_local $10
          (i32.sub
           (i32.const 2)
           (i32.and
            (get_local $9)
            (i32.const 1)
           )
          )
         )
        )
       )
       (if
        (i32.eq
         (get_local $6)
         (i32.const 0)
        )
        (block
         (set_local $9
          (i32.shr_s
           (get_local $8)
           (i32.sub
            (i32.const 20)
            (get_local $11)
           )
          )
         )
         (if
          (i32.eq
           (i32.shl
            (get_local $9)
            (i32.sub
             (i32.const 20)
             (get_local $11)
            )
           )
           (get_local $8)
          )
          (set_local $10
           (i32.sub
            (i32.const 2)
            (i32.and
             (get_local $9)
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
   )
  )
  (if
   (i32.eq
    (get_local $6)
    (i32.const 0)
   )
   (block
    (if
     (i32.eq
      (get_local $8)
      (i32.const 2146435072)
     )
     (if
      (i32.eq
       (i32.or
        (i32.sub
         (get_local $7)
         (i32.const 1072693248)
        )
        (get_local $4)
       )
       (i32.const 0)
      )
      (return
       (f64.const 1)
      )
      (if
       (i32.ge_s
        (get_local $7)
        (i32.const 1072693248)
       )
       (return
        (if (result f64)
         (i32.ge_s
          (get_local $5)
          (i32.const 0)
         )
         (get_local $1)
         (f64.const 0)
        )
       )
       (return
        (if (result f64)
         (i32.ge_s
          (get_local $5)
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
    )
    (if
     (i32.eq
      (get_local $8)
      (i32.const 1072693248)
     )
     (block
      (if
       (i32.ge_s
        (get_local $5)
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
      (get_local $5)
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
      (get_local $5)
      (i32.const 1071644672)
     )
     (if
      (i32.ge_s
       (get_local $3)
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
  (set_local $12
   (f64.abs
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (i32.const 0)
   )
   (if
    (i32.and
     (if (result i32)
      (tee_local $9
       (i32.and
        (if (result i32)
         (tee_local $9
          (i32.eq
           (get_local $7)
           (i32.const 2146435072)
          )
         )
         (get_local $9)
         (i32.eq
          (get_local $7)
          (i32.const 0)
         )
        )
        (i32.const 1)
       )
      )
      (get_local $9)
      (i32.eq
       (get_local $7)
       (i32.const 1072693248)
      )
     )
     (i32.const 1)
    )
    (block
     (set_local $13
      (get_local $12)
     )
     (if
      (i32.lt_s
       (get_local $5)
       (i32.const 0)
      )
      (set_local $13
       (f64.div
        (f64.const 1)
        (get_local $13)
       )
      )
     )
     (if
      (i32.lt_s
       (get_local $3)
       (i32.const 0)
      )
      (if
       (i32.eq
        (i32.or
         (i32.sub
          (get_local $7)
          (i32.const 1072693248)
         )
         (get_local $10)
        )
        (i32.const 0)
       )
       (set_local $13
        (f64.div
         (f64.sub
          (get_local $13)
          (get_local $13)
         )
         (f64.sub
          (get_local $13)
          (get_local $13)
         )
        )
       )
       (if
        (i32.eq
         (get_local $10)
         (i32.const 1)
        )
        (set_local $13
         (f64.neg
          (get_local $13)
         )
        )
       )
      )
     )
     (return
      (get_local $13)
     )
    )
   )
  )
  (set_local $14
   (f64.const 1)
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 0)
   )
   (block
    (if
     (i32.eq
      (get_local $10)
      (i32.const 0)
     )
     (return
      (f64.div
       (f64.sub
        (get_local $0)
        (get_local $0)
       )
       (f64.sub
        (get_local $0)
        (get_local $0)
       )
      )
     )
    )
    (if
     (i32.eq
      (get_local $10)
      (i32.const 1)
     )
     (set_local $14
      (f64.const -1)
     )
    )
   )
  )
  (nop)
  (nop)
  (if
   (i32.gt_s
    (get_local $8)
    (i32.const 1105199104)
   )
   (block
    (if
     (i32.gt_s
      (get_local $8)
      (i32.const 1139802112)
     )
     (block
      (if
       (i32.le_s
        (get_local $7)
        (i32.const 1072693247)
       )
       (return
        (if (result f64)
         (i32.lt_s
          (get_local $5)
          (i32.const 0)
         )
         (f64.mul
          (f64.const 1.e+300)
          (f64.const 1.e+300)
         )
         (f64.mul
          (f64.const 1e-300)
          (f64.const 1e-300)
         )
        )
       )
      )
      (if
       (i32.ge_s
        (get_local $7)
        (i32.const 1072693248)
       )
       (return
        (if (result f64)
         (i32.gt_s
          (get_local $5)
          (i32.const 0)
         )
         (f64.mul
          (f64.const 1.e+300)
          (f64.const 1.e+300)
         )
         (f64.mul
          (f64.const 1e-300)
          (f64.const 1e-300)
         )
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (get_local $7)
      (i32.const 1072693247)
     )
     (return
      (if (result f64)
       (i32.lt_s
        (get_local $5)
        (i32.const 0)
       )
       (f64.mul
        (f64.mul
         (get_local $14)
         (f64.const 1.e+300)
        )
        (f64.const 1.e+300)
       )
       (f64.mul
        (f64.mul
         (get_local $14)
         (f64.const 1e-300)
        )
        (f64.const 1e-300)
       )
      )
     )
    )
    (if
     (i32.gt_s
      (get_local $7)
      (i32.const 1072693248)
     )
     (return
      (if (result f64)
       (i32.gt_s
        (get_local $5)
        (i32.const 0)
       )
       (f64.mul
        (f64.mul
         (get_local $14)
         (f64.const 1.e+300)
        )
        (f64.const 1.e+300)
       )
       (f64.mul
        (f64.mul
         (get_local $14)
         (f64.const 1e-300)
        )
        (f64.const 1e-300)
       )
      )
     )
    )
    (set_local $20
     (f64.sub
      (get_local $12)
      (f64.const 1)
     )
    )
    (set_local $23
     (f64.mul
      (f64.mul
       (get_local $20)
       (get_local $20)
      )
      (f64.sub
       (f64.const 0.5)
       (f64.mul
        (get_local $20)
        (f64.sub
         (f64.const 0.3333333333333333)
         (f64.mul
          (get_local $20)
          (f64.const 0.25)
         )
        )
       )
      )
     )
    )
    (set_local $21
     (f64.mul
      (f64.const 1.4426950216293335)
      (get_local $20)
     )
    )
    (set_local $22
     (f64.sub
      (f64.mul
       (get_local $20)
       (f64.const 1.9259629911266175e-08)
      )
      (f64.mul
       (get_local $23)
       (f64.const 1.4426950408889634)
      )
     )
    )
    (set_local $15
     (f64.add
      (get_local $21)
      (get_local $22)
     )
    )
    (set_local $15
     (f64.reinterpret/i64
      (i64.and
       (i64.reinterpret/f64
        (get_local $15)
       )
       (i64.const -4294967296)
      )
     )
    )
    (set_local $16
     (f64.sub
      (get_local $22)
      (f64.sub
       (get_local $15)
       (get_local $21)
      )
     )
    )
   )
   (block
    (nop)
    (set_local $25
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (get_local $7)
      (i32.const 1048576)
     )
     (block
      (set_local $12
       (f64.mul
        (get_local $12)
        (f64.const 9007199254740992)
       )
      )
      (set_local $25
       (i32.sub
        (get_local $25)
        (i32.const 53)
       )
      )
      (set_local $7
       (i32.wrap/i64
        (i64.shr_u
         (i64.reinterpret/f64
          (get_local $12)
         )
         (i64.const 32)
        )
       )
      )
     )
    )
    (set_local $25
     (i32.add
      (get_local $25)
      (i32.sub
       (i32.shr_s
        (get_local $7)
        (i32.const 20)
       )
       (i32.const 1023)
      )
     )
    )
    (set_local $24
     (i32.and
      (get_local $7)
      (i32.const 1048575)
     )
    )
    (set_local $7
     (i32.or
      (get_local $24)
      (i32.const 1072693248)
     )
    )
    (if
     (i32.le_s
      (get_local $24)
      (i32.const 235662)
     )
     (set_local $11
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (get_local $24)
       (i32.const 767610)
      )
      (set_local $11
       (i32.const 1)
      )
      (block
       (set_local $11
        (i32.const 0)
       )
       (set_local $25
        (i32.add
         (get_local $25)
         (i32.const 1)
        )
       )
       (set_local $7
        (i32.sub
         (get_local $7)
         (i32.const 1048576)
        )
       )
      )
     )
    )
    (set_local $12
     (f64.reinterpret/i64
      (i64.or
       (i64.and
        (i64.reinterpret/f64
         (get_local $12)
        )
        (i64.const 4294967295)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $7)
        )
        (i64.const 32)
       )
      )
     )
    )
    (set_local $32
     (select
      (f64.const 1.5)
      (f64.const 1)
      (get_local $11)
     )
    )
    (set_local $21
     (f64.sub
      (get_local $12)
      (get_local $32)
     )
    )
    (set_local $22
     (f64.div
      (f64.const 1)
      (f64.add
       (get_local $12)
       (get_local $32)
      )
     )
    )
    (set_local $26
     (f64.mul
      (get_local $21)
      (get_local $22)
     )
    )
    (set_local $28
     (get_local $26)
    )
    (set_local $28
     (f64.reinterpret/i64
      (i64.and
       (i64.reinterpret/f64
        (get_local $28)
       )
       (i64.const -4294967296)
      )
     )
    )
    (set_local $30
     (f64.reinterpret/i64
      (i64.shl
       (i64.extend_u/i32
        (i32.add
         (i32.add
          (i32.or
           (i32.shr_s
            (get_local $7)
            (i32.const 1)
           )
           (i32.const 536870912)
          )
          (i32.const 524288)
         )
         (i32.shl
          (get_local $11)
          (i32.const 18)
         )
        )
       )
       (i64.const 32)
      )
     )
    )
    (set_local $31
     (f64.sub
      (get_local $12)
      (f64.sub
       (get_local $30)
       (get_local $32)
      )
     )
    )
    (set_local $29
     (f64.mul
      (get_local $22)
      (f64.sub
       (f64.sub
        (get_local $21)
        (f64.mul
         (get_local $28)
         (get_local $30)
        )
       )
       (f64.mul
        (get_local $28)
        (get_local $31)
       )
      )
     )
    )
    (set_local $27
     (f64.mul
      (get_local $26)
      (get_local $26)
     )
    )
    (set_local $19
     (f64.mul
      (f64.mul
       (get_local $27)
       (get_local $27)
      )
      (f64.add
       (f64.const 0.5999999999999946)
       (f64.mul
        (get_local $27)
        (f64.add
         (f64.const 0.4285714285785502)
         (f64.mul
          (get_local $27)
          (f64.add
           (f64.const 0.33333332981837743)
           (f64.mul
            (get_local $27)
            (f64.add
             (f64.const 0.272728123808534)
             (f64.mul
              (get_local $27)
              (f64.add
               (f64.const 0.23066074577556175)
               (f64.mul
                (get_local $27)
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
    (set_local $19
     (f64.add
      (get_local $19)
      (f64.mul
       (get_local $29)
       (f64.add
        (get_local $28)
        (get_local $26)
       )
      )
     )
    )
    (set_local $27
     (f64.mul
      (get_local $28)
      (get_local $28)
     )
    )
    (set_local $30
     (f64.add
      (f64.add
       (f64.const 3)
       (get_local $27)
      )
      (get_local $19)
     )
    )
    (set_local $30
     (f64.reinterpret/i64
      (i64.and
       (i64.reinterpret/f64
        (get_local $30)
       )
       (i64.const -4294967296)
      )
     )
    )
    (set_local $31
     (f64.sub
      (get_local $19)
      (f64.sub
       (f64.sub
        (get_local $30)
        (f64.const 3)
       )
       (get_local $27)
      )
     )
    )
    (set_local $21
     (f64.mul
      (get_local $28)
      (get_local $30)
     )
    )
    (set_local $22
     (f64.add
      (f64.mul
       (get_local $29)
       (get_local $30)
      )
      (f64.mul
       (get_local $31)
       (get_local $26)
      )
     )
    )
    (set_local $17
     (f64.add
      (get_local $21)
      (get_local $22)
     )
    )
    (set_local $17
     (f64.reinterpret/i64
      (i64.and
       (i64.reinterpret/f64
        (get_local $17)
       )
       (i64.const -4294967296)
      )
     )
    )
    (set_local $18
     (f64.sub
      (get_local $22)
      (f64.sub
       (get_local $17)
       (get_local $21)
      )
     )
    )
    (set_local $33
     (f64.mul
      (f64.const 0.9617967009544373)
      (get_local $17)
     )
    )
    (set_local $34
     (select
      (f64.const 1.350039202129749e-08)
      (f64.const 0)
      (get_local $11)
     )
    )
    (set_local $35
     (f64.add
      (f64.add
       (f64.mul
        (f64.const -7.028461650952758e-09)
        (get_local $17)
       )
       (f64.mul
        (get_local $18)
        (f64.const 0.9617966939259756)
       )
      )
      (get_local $34)
     )
    )
    (set_local $20
     (f64.convert_s/i32
      (get_local $25)
     )
    )
    (set_local $36
     (select
      (f64.const 0.5849624872207642)
      (f64.const 0)
      (get_local $11)
     )
    )
    (set_local $15
     (f64.add
      (f64.add
       (f64.add
        (get_local $33)
        (get_local $35)
       )
       (get_local $36)
      )
      (get_local $20)
     )
    )
    (set_local $15
     (f64.reinterpret/i64
      (i64.and
       (i64.reinterpret/f64
        (get_local $15)
       )
       (i64.const -4294967296)
      )
     )
    )
    (set_local $16
     (f64.sub
      (get_local $35)
      (f64.sub
       (f64.sub
        (f64.sub
         (get_local $15)
         (get_local $20)
        )
        (get_local $36)
       )
       (get_local $33)
      )
     )
    )
   )
  )
  (set_local $37
   (get_local $1)
  )
  (set_local $37
   (f64.reinterpret/i64
    (i64.and
     (i64.reinterpret/f64
      (get_local $37)
     )
     (i64.const -4294967296)
    )
   )
  )
  (set_local $18
   (f64.add
    (f64.mul
     (f64.sub
      (get_local $1)
      (get_local $37)
     )
     (get_local $15)
    )
    (f64.mul
     (get_local $1)
     (get_local $16)
    )
   )
  )
  (set_local $17
   (f64.mul
    (get_local $37)
    (get_local $15)
   )
  )
  (set_local $13
   (f64.add
    (get_local $18)
    (get_local $17)
   )
  )
  (set_local $2
   (i64.reinterpret/f64
    (get_local $13)
   )
  )
  (set_local $24
   (i32.wrap/i64
    (i64.shr_u
     (get_local $2)
     (i64.const 32)
    )
   )
  )
  (set_local $38
   (i32.wrap/i64
    (get_local $2)
   )
  )
  (if
   (i32.ge_s
    (get_local $24)
    (i32.const 1083179008)
   )
   (block
    (if
     (i32.ne
      (i32.or
       (i32.sub
        (get_local $24)
        (i32.const 1083179008)
       )
       (get_local $38)
      )
      (i32.const 0)
     )
     (return
      (f64.mul
       (f64.mul
        (get_local $14)
        (f64.const 1.e+300)
       )
       (f64.const 1.e+300)
      )
     )
    )
    (if
     (f64.gt
      (f64.add
       (get_local $18)
       (f64.const 8.008566259537294e-17)
      )
      (f64.sub
       (get_local $13)
       (get_local $17)
      )
     )
     (return
      (f64.mul
       (f64.mul
        (get_local $14)
        (f64.const 1.e+300)
       )
       (f64.const 1.e+300)
      )
     )
    )
   )
   (if
    (i32.ge_s
     (i32.and
      (get_local $24)
      (i32.const 2147483647)
     )
     (i32.const 1083231232)
    )
    (block
     (if
      (i32.ne
       (i32.or
        (i32.sub
         (get_local $24)
         (i32.const -1064252416)
        )
        (get_local $38)
       )
       (i32.const 0)
      )
      (return
       (f64.mul
        (f64.mul
         (get_local $14)
         (f64.const 1e-300)
        )
        (f64.const 1e-300)
       )
      )
     )
     (if
      (f64.le
       (get_local $18)
       (f64.sub
        (get_local $13)
        (get_local $17)
       )
      )
      (return
       (f64.mul
        (f64.mul
         (get_local $14)
         (f64.const 1e-300)
        )
        (f64.const 1e-300)
       )
      )
     )
    )
   )
  )
  (set_local $38
   (i32.and
    (get_local $24)
    (i32.const 2147483647)
   )
  )
  (set_local $11
   (i32.sub
    (i32.shr_s
     (get_local $38)
     (i32.const 20)
    )
    (i32.const 1023)
   )
  )
  (set_local $25
   (i32.const 0)
  )
  (if
   (i32.gt_s
    (get_local $38)
    (i32.const 1071644672)
   )
   (block
    (set_local $25
     (i32.add
      (get_local $24)
      (i32.shr_s
       (i32.const 1048576)
       (i32.add
        (get_local $11)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $11
     (i32.sub
      (i32.shr_s
       (i32.and
        (get_local $25)
        (i32.const 2147483647)
       )
       (i32.const 20)
      )
      (i32.const 1023)
     )
    )
    (set_local $20
     (f64.const 0)
    )
    (set_local $20
     (f64.reinterpret/i64
      (i64.shl
       (i64.extend_u/i32
        (i32.and
         (get_local $25)
         (i32.xor
          (i32.shr_s
           (i32.const 1048575)
           (get_local $11)
          )
          (i32.const -1)
         )
        )
       )
       (i64.const 32)
      )
     )
    )
    (set_local $25
     (i32.shr_s
      (i32.or
       (i32.and
        (get_local $25)
        (i32.const 1048575)
       )
       (i32.const 1048576)
      )
      (i32.sub
       (i32.const 20)
       (get_local $11)
      )
     )
    )
    (if
     (i32.lt_s
      (get_local $24)
      (i32.const 0)
     )
     (set_local $25
      (i32.sub
       (i32.const 0)
       (get_local $25)
      )
     )
    )
    (set_local $17
     (f64.sub
      (get_local $17)
      (get_local $20)
     )
    )
   )
  )
  (set_local $20
   (f64.add
    (get_local $18)
    (get_local $17)
   )
  )
  (set_local $20
   (f64.reinterpret/i64
    (i64.and
     (i64.reinterpret/f64
      (get_local $20)
     )
     (i64.const -4294967296)
    )
   )
  )
  (set_local $21
   (f64.mul
    (get_local $20)
    (f64.const 0.6931471824645996)
   )
  )
  (set_local $22
   (f64.add
    (f64.mul
     (f64.sub
      (get_local $18)
      (f64.sub
       (get_local $20)
       (get_local $17)
      )
     )
     (f64.const 0.6931471805599453)
    )
    (f64.mul
     (get_local $20)
     (f64.const -1.904654299957768e-09)
    )
   )
  )
  (set_local $13
   (f64.add
    (get_local $21)
    (get_local $22)
   )
  )
  (set_local $23
   (f64.sub
    (get_local $22)
    (f64.sub
     (get_local $13)
     (get_local $21)
    )
   )
  )
  (set_local $20
   (f64.mul
    (get_local $13)
    (get_local $13)
   )
  )
  (set_local $15
   (f64.sub
    (get_local $13)
    (f64.mul
     (get_local $20)
     (f64.add
      (f64.const 0.16666666666666602)
      (f64.mul
       (get_local $20)
       (f64.add
        (f64.const -2.7777777777015593e-03)
        (f64.mul
         (get_local $20)
         (f64.add
          (f64.const 6.613756321437934e-05)
          (f64.mul
           (get_local $20)
           (f64.add
            (f64.const -1.6533902205465252e-06)
            (f64.mul
             (get_local $20)
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
  (set_local $19
   (f64.sub
    (f64.div
     (f64.mul
      (get_local $13)
      (get_local $15)
     )
     (f64.sub
      (get_local $15)
      (f64.const 2)
     )
    )
    (f64.add
     (get_local $23)
     (f64.mul
      (get_local $13)
      (get_local $23)
     )
    )
   )
  )
  (set_local $13
   (f64.sub
    (f64.const 1)
    (f64.sub
     (get_local $19)
     (get_local $13)
    )
   )
  )
  (set_local $24
   (i32.wrap/i64
    (i64.shr_u
     (i64.reinterpret/f64
      (get_local $13)
     )
     (i64.const 32)
    )
   )
  )
  (set_local $24
   (i32.add
    (get_local $24)
    (i32.shl
     (get_local $25)
     (i32.const 20)
    )
   )
  )
  (if
   (i32.le_s
    (i32.shr_s
     (get_local $24)
     (i32.const 20)
    )
    (i32.const 0)
   )
   (set_local $13
    (call "$(lib)/math/NativeMath.scalbn"
     (get_local $13)
     (get_local $25)
    )
   )
   (set_local $13
    (f64.reinterpret/i64
     (i64.or
      (i64.and
       (i64.reinterpret/f64
        (get_local $13)
       )
       (i64.const 4294967295)
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $24)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (return
   (f64.mul
    (get_local $14)
    (get_local $13)
   )
  )
 )
 (func $std/math/test_pow (; 102 ;) (type $FFFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  (return
   (call $std/math/check<f64>
    (call "$(lib)/math/NativeMath.pow"
     (get_local $0)
     (get_local $1)
    )
    (get_local $2)
    (get_local $3)
    (get_local $4)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.pow" (; 103 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 i32)
  (local $24 i32)
  (local $25 f32)
  (local $26 f32)
  (local $27 f32)
  (local $28 f32)
  (local $29 f32)
  (local $30 f32)
  (local $31 f32)
  (local $32 f32)
  (local $33 f32)
  (local $34 f32)
  (local $35 f32)
  (local $36 i32)
  (nop)
  (set_local $2
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $3
   (i32.reinterpret/f32
    (get_local $1)
   )
  )
  (set_local $4
   (i32.and
    (get_local $2)
    (i32.const 2147483647)
   )
  )
  (set_local $5
   (i32.and
    (get_local $3)
    (i32.const 2147483647)
   )
  )
  (if
   (i32.eq
    (get_local $5)
    (i32.const 0)
   )
   (return
    (f32.const 1)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 1065353216)
   )
   (return
    (f32.const 1)
   )
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $6
      (i32.gt_s
       (get_local $4)
       (i32.const 2139095040)
      )
     )
     (get_local $6)
     (i32.gt_s
      (get_local $5)
      (i32.const 2139095040)
     )
    )
    (i32.const 1)
   )
   (return
    (f32.add
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (if
    (i32.ge_s
     (get_local $5)
     (i32.const 1266679808)
    )
    (set_local $7
     (i32.const 2)
    )
    (if
     (i32.ge_s
      (get_local $5)
      (i32.const 1065353216)
     )
     (block
      (set_local $9
       (i32.sub
        (i32.shr_s
         (get_local $5)
         (i32.const 23)
        )
        (i32.const 127)
       )
      )
      (set_local $8
       (i32.shr_s
        (get_local $5)
        (i32.sub
         (i32.const 23)
         (get_local $9)
        )
       )
      )
      (if
       (i32.eq
        (i32.shl
         (get_local $8)
         (i32.sub
          (i32.const 23)
          (get_local $9)
         )
        )
        (get_local $5)
       )
       (set_local $7
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
  )
  (if
   (i32.eq
    (get_local $5)
    (i32.const 2139095040)
   )
   (if
    (i32.eq
     (get_local $4)
     (i32.const 1065353216)
    )
    (return
     (f32.const 1)
    )
    (if
     (i32.gt_s
      (get_local $4)
      (i32.const 1065353216)
     )
     (return
      (if (result f32)
       (i32.ge_s
        (get_local $3)
        (i32.const 0)
       )
       (get_local $1)
       (f32.const 0)
      )
     )
     (return
      (if (result f32)
       (i32.ge_s
        (get_local $3)
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
  (if
   (i32.eq
    (get_local $5)
    (i32.const 1065353216)
   )
   (return
    (if (result f32)
     (i32.ge_s
      (get_local $3)
      (i32.const 0)
     )
     (get_local $0)
     (f32.div
      (f32.const 1)
      (get_local $0)
     )
    )
   )
  )
  (if
   (i32.eq
    (get_local $3)
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
    (get_local $3)
    (i32.const 1056964608)
   )
   (if
    (i32.ge_s
     (get_local $2)
     (i32.const 0)
    )
    (return
     (f32.sqrt
      (get_local $0)
     )
    )
   )
  )
  (set_local $10
   (f32.abs
    (get_local $0)
   )
  )
  (nop)
  (if
   (i32.and
    (if (result i32)
     (tee_local $6
      (i32.and
       (if (result i32)
        (tee_local $6
         (i32.eq
          (get_local $4)
          (i32.const 2139095040)
         )
        )
        (get_local $6)
        (i32.eq
         (get_local $4)
         (i32.const 0)
        )
       )
       (i32.const 1)
      )
     )
     (get_local $6)
     (i32.eq
      (get_local $4)
      (i32.const 1065353216)
     )
    )
    (i32.const 1)
   )
   (block
    (set_local $11
     (get_local $10)
    )
    (if
     (i32.lt_s
      (get_local $3)
      (i32.const 0)
     )
     (set_local $11
      (f32.div
       (f32.const 1)
       (get_local $11)
      )
     )
    )
    (if
     (i32.lt_s
      (get_local $2)
      (i32.const 0)
     )
     (if
      (i32.eq
       (i32.or
        (i32.sub
         (get_local $4)
         (i32.const 1065353216)
        )
        (get_local $7)
       )
       (i32.const 0)
      )
      (set_local $11
       (f32.div
        (f32.sub
         (get_local $11)
         (get_local $11)
        )
        (f32.sub
         (get_local $11)
         (get_local $11)
        )
       )
      )
      (if
       (i32.eq
        (get_local $7)
        (i32.const 1)
       )
       (set_local $11
        (f32.neg
         (get_local $11)
        )
       )
      )
     )
    )
    (return
     (get_local $11)
    )
   )
  )
  (set_local $12
   (f32.const 1)
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (block
    (if
     (i32.eq
      (get_local $7)
      (i32.const 0)
     )
     (return
      (f32.div
       (f32.sub
        (get_local $0)
        (get_local $0)
       )
       (f32.sub
        (get_local $0)
        (get_local $0)
       )
      )
     )
    )
    (if
     (i32.eq
      (get_local $7)
      (i32.const 1)
     )
     (set_local $12
      (f32.const -1)
     )
    )
   )
  )
  (nop)
  (nop)
  (if
   (i32.gt_s
    (get_local $5)
    (i32.const 1291845632)
   )
   (block
    (if
     (i32.lt_s
      (get_local $4)
      (i32.const 1065353208)
     )
     (return
      (if (result f32)
       (i32.lt_s
        (get_local $3)
        (i32.const 0)
       )
       (f32.mul
        (f32.mul
         (get_local $12)
         (f32.const 1000000015047466219876688e6)
        )
        (f32.const 1000000015047466219876688e6)
       )
       (f32.mul
        (f32.mul
         (get_local $12)
         (f32.const 1.0000000031710769e-30)
        )
        (f32.const 1.0000000031710769e-30)
       )
      )
     )
    )
    (if
     (i32.gt_s
      (get_local $4)
      (i32.const 1065353223)
     )
     (return
      (if (result f32)
       (i32.gt_s
        (get_local $3)
        (i32.const 0)
       )
       (f32.mul
        (f32.mul
         (get_local $12)
         (f32.const 1000000015047466219876688e6)
        )
        (f32.const 1000000015047466219876688e6)
       )
       (f32.mul
        (f32.mul
         (get_local $12)
         (f32.const 1.0000000031710769e-30)
        )
        (f32.const 1.0000000031710769e-30)
       )
      )
     )
    )
    (set_local $17
     (f32.sub
      (get_local $10)
      (f32.const 1)
     )
    )
    (set_local $20
     (f32.mul
      (f32.mul
       (get_local $17)
       (get_local $17)
      )
      (f32.sub
       (f32.const 0.5)
       (f32.mul
        (get_local $17)
        (f32.sub
         (f32.const 0.3333333432674408)
         (f32.mul
          (get_local $17)
          (f32.const 0.25)
         )
        )
       )
      )
     )
    )
    (set_local $18
     (f32.mul
      (f32.const 1.44268798828125)
      (get_local $17)
     )
    )
    (set_local $19
     (f32.sub
      (f32.mul
       (get_local $17)
       (f32.const 7.052607543300837e-06)
      )
      (f32.mul
       (get_local $20)
       (f32.const 1.4426950216293335)
      )
     )
    )
    (set_local $13
     (f32.add
      (get_local $18)
      (get_local $19)
     )
    )
    (set_local $24
     (i32.reinterpret/f32
      (get_local $13)
     )
    )
    (set_local $13
     (f32.reinterpret/i32
      (i32.and
       (get_local $24)
       (i32.const -4096)
      )
     )
    )
    (set_local $14
     (f32.sub
      (get_local $19)
      (f32.sub
       (get_local $13)
       (get_local $18)
      )
     )
    )
   )
   (block
    (nop)
    (set_local $23
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (get_local $4)
      (i32.const 8388608)
     )
     (block
      (set_local $10
       (f32.mul
        (get_local $10)
        (f32.const 16777216)
       )
      )
      (set_local $23
       (i32.sub
        (get_local $23)
        (i32.const 24)
       )
      )
      (set_local $4
       (i32.reinterpret/f32
        (get_local $10)
       )
      )
     )
    )
    (set_local $23
     (i32.add
      (get_local $23)
      (i32.sub
       (i32.shr_s
        (get_local $4)
        (i32.const 23)
       )
       (i32.const 127)
      )
     )
    )
    (set_local $8
     (i32.and
      (get_local $4)
      (i32.const 8388607)
     )
    )
    (set_local $4
     (i32.or
      (get_local $8)
      (i32.const 1065353216)
     )
    )
    (if
     (i32.le_s
      (get_local $8)
      (i32.const 1885297)
     )
     (set_local $9
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (get_local $8)
       (i32.const 6140887)
      )
      (set_local $9
       (i32.const 1)
      )
      (block
       (set_local $9
        (i32.const 0)
       )
       (set_local $23
        (i32.add
         (get_local $23)
         (i32.const 1)
        )
       )
       (set_local $4
        (i32.sub
         (get_local $4)
         (i32.const 8388608)
        )
       )
      )
     )
    )
    (set_local $10
     (f32.reinterpret/i32
      (get_local $4)
     )
    )
    (set_local $30
     (select
      (f32.const 1.5)
      (f32.const 1)
      (get_local $9)
     )
    )
    (set_local $18
     (f32.sub
      (get_local $10)
      (get_local $30)
     )
    )
    (set_local $19
     (f32.div
      (f32.const 1)
      (f32.add
       (get_local $10)
       (get_local $30)
      )
     )
    )
    (set_local $16
     (f32.mul
      (get_local $18)
      (get_local $19)
     )
    )
    (set_local $26
     (get_local $16)
    )
    (set_local $24
     (i32.reinterpret/f32
      (get_local $26)
     )
    )
    (set_local $26
     (f32.reinterpret/i32
      (i32.and
       (get_local $24)
       (i32.const -4096)
      )
     )
    )
    (set_local $24
     (i32.or
      (i32.and
       (i32.shr_s
        (get_local $4)
        (i32.const 1)
       )
       (i32.const -4096)
      )
      (i32.const 536870912)
     )
    )
    (set_local $28
     (f32.reinterpret/i32
      (i32.add
       (i32.add
        (get_local $24)
        (i32.const 4194304)
       )
       (i32.shl
        (get_local $9)
        (i32.const 21)
       )
      )
     )
    )
    (set_local $29
     (f32.sub
      (get_local $10)
      (f32.sub
       (get_local $28)
       (get_local $30)
      )
     )
    )
    (set_local $27
     (f32.mul
      (get_local $19)
      (f32.sub
       (f32.sub
        (get_local $18)
        (f32.mul
         (get_local $26)
         (get_local $28)
        )
       )
       (f32.mul
        (get_local $26)
        (get_local $29)
       )
      )
     )
    )
    (set_local $25
     (f32.mul
      (get_local $16)
      (get_local $16)
     )
    )
    (set_local $15
     (f32.mul
      (f32.mul
       (get_local $25)
       (get_local $25)
      )
      (f32.add
       (f32.const 0.6000000238418579)
       (f32.mul
        (get_local $25)
        (f32.add
         (f32.const 0.4285714328289032)
         (f32.mul
          (get_local $25)
          (f32.add
           (f32.const 0.3333333432674408)
           (f32.mul
            (get_local $25)
            (f32.add
             (f32.const 0.2727281153202057)
             (f32.mul
              (get_local $25)
              (f32.add
               (f32.const 0.23066075146198273)
               (f32.mul
                (get_local $25)
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
    (set_local $15
     (f32.add
      (get_local $15)
      (f32.mul
       (get_local $27)
       (f32.add
        (get_local $26)
        (get_local $16)
       )
      )
     )
    )
    (set_local $25
     (f32.mul
      (get_local $26)
      (get_local $26)
     )
    )
    (set_local $28
     (f32.add
      (f32.add
       (f32.const 3)
       (get_local $25)
      )
      (get_local $15)
     )
    )
    (set_local $24
     (i32.reinterpret/f32
      (get_local $28)
     )
    )
    (set_local $28
     (f32.reinterpret/i32
      (i32.and
       (get_local $24)
       (i32.const -4096)
      )
     )
    )
    (set_local $29
     (f32.sub
      (get_local $15)
      (f32.sub
       (f32.sub
        (get_local $28)
        (f32.const 3)
       )
       (get_local $25)
      )
     )
    )
    (set_local $18
     (f32.mul
      (get_local $26)
      (get_local $28)
     )
    )
    (set_local $19
     (f32.add
      (f32.mul
       (get_local $27)
       (get_local $28)
      )
      (f32.mul
       (get_local $29)
       (get_local $16)
      )
     )
    )
    (set_local $21
     (f32.add
      (get_local $18)
      (get_local $19)
     )
    )
    (set_local $24
     (i32.reinterpret/f32
      (get_local $21)
     )
    )
    (set_local $21
     (f32.reinterpret/i32
      (i32.and
       (get_local $24)
       (i32.const -4096)
      )
     )
    )
    (set_local $22
     (f32.sub
      (get_local $19)
      (f32.sub
       (get_local $21)
       (get_local $18)
      )
     )
    )
    (set_local $31
     (f32.mul
      (f32.const 0.9619140625)
      (get_local $21)
     )
    )
    (set_local $32
     (select
      (f32.const 1.5632208487659227e-06)
      (f32.const 0)
      (get_local $9)
     )
    )
    (set_local $33
     (f32.add
      (f32.add
       (f32.mul
        (f32.const -1.1736857413779944e-04)
        (get_local $21)
       )
       (f32.mul
        (get_local $22)
        (f32.const 0.9617967009544373)
       )
      )
      (get_local $32)
     )
    )
    (set_local $17
     (f32.convert_s/i32
      (get_local $23)
     )
    )
    (set_local $34
     (select
      (f32.const 0.5849609375)
      (f32.const 0)
      (get_local $9)
     )
    )
    (set_local $13
     (f32.add
      (f32.add
       (f32.add
        (get_local $31)
        (get_local $33)
       )
       (get_local $34)
      )
      (get_local $17)
     )
    )
    (set_local $24
     (i32.reinterpret/f32
      (get_local $13)
     )
    )
    (set_local $13
     (f32.reinterpret/i32
      (i32.and
       (get_local $24)
       (i32.const -4096)
      )
     )
    )
    (set_local $14
     (f32.sub
      (get_local $33)
      (f32.sub
       (f32.sub
        (f32.sub
         (get_local $13)
         (get_local $17)
        )
        (get_local $34)
       )
       (get_local $31)
      )
     )
    )
   )
  )
  (set_local $24
   (i32.reinterpret/f32
    (get_local $1)
   )
  )
  (set_local $35
   (f32.reinterpret/i32
    (i32.and
     (get_local $24)
     (i32.const -4096)
    )
   )
  )
  (set_local $22
   (f32.add
    (f32.mul
     (f32.sub
      (get_local $1)
      (get_local $35)
     )
     (get_local $13)
    )
    (f32.mul
     (get_local $1)
     (get_local $14)
    )
   )
  )
  (set_local $21
   (f32.mul
    (get_local $35)
    (get_local $13)
   )
  )
  (set_local $11
   (f32.add
    (get_local $22)
    (get_local $21)
   )
  )
  (set_local $8
   (i32.reinterpret/f32
    (get_local $11)
   )
  )
  (if
   (i32.gt_s
    (get_local $8)
    (i32.const 1124073472)
   )
   (return
    (f32.mul
     (f32.mul
      (get_local $12)
      (f32.const 1000000015047466219876688e6)
     )
     (f32.const 1000000015047466219876688e6)
    )
   )
   (if
    (i32.eq
     (get_local $8)
     (i32.const 1124073472)
    )
    (if
     (f32.gt
      (f32.add
       (get_local $22)
       (f32.const 4.299566569443414e-08)
      )
      (f32.sub
       (get_local $11)
       (get_local $21)
      )
     )
     (return
      (f32.mul
       (f32.mul
        (get_local $12)
        (f32.const 1000000015047466219876688e6)
       )
       (f32.const 1000000015047466219876688e6)
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
     (return
      (f32.mul
       (f32.mul
        (get_local $12)
        (f32.const 1.0000000031710769e-30)
       )
       (f32.const 1.0000000031710769e-30)
      )
     )
     (if
      (i32.eq
       (get_local $8)
       (i32.const -1021968384)
      )
      (if
       (f32.le
        (get_local $22)
        (f32.sub
         (get_local $11)
         (get_local $21)
        )
       )
       (return
        (f32.mul
         (f32.mul
          (get_local $12)
          (f32.const 1.0000000031710769e-30)
         )
         (f32.const 1.0000000031710769e-30)
        )
       )
      )
     )
    )
   )
  )
  (set_local $36
   (i32.and
    (get_local $8)
    (i32.const 2147483647)
   )
  )
  (set_local $9
   (i32.sub
    (i32.shr_s
     (get_local $36)
     (i32.const 23)
    )
    (i32.const 127)
   )
  )
  (set_local $23
   (i32.const 0)
  )
  (if
   (i32.gt_s
    (get_local $36)
    (i32.const 1056964608)
   )
   (block
    (set_local $23
     (i32.add
      (get_local $8)
      (i32.shr_s
       (i32.const 8388608)
       (i32.add
        (get_local $9)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $9
     (i32.sub
      (i32.shr_s
       (i32.and
        (get_local $23)
        (i32.const 2147483647)
       )
       (i32.const 23)
      )
      (i32.const 127)
     )
    )
    (set_local $17
     (f32.reinterpret/i32
      (i32.and
       (get_local $23)
       (i32.xor
        (i32.shr_s
         (i32.const 8388607)
         (get_local $9)
        )
        (i32.const -1)
       )
      )
     )
    )
    (set_local $23
     (i32.shr_s
      (i32.or
       (i32.and
        (get_local $23)
        (i32.const 8388607)
       )
       (i32.const 8388608)
      )
      (i32.sub
       (i32.const 23)
       (get_local $9)
      )
     )
    )
    (if
     (i32.lt_s
      (get_local $8)
      (i32.const 0)
     )
     (set_local $23
      (i32.sub
       (i32.const 0)
       (get_local $23)
      )
     )
    )
    (set_local $21
     (f32.sub
      (get_local $21)
      (get_local $17)
     )
    )
   )
  )
  (set_local $17
   (f32.add
    (get_local $22)
    (get_local $21)
   )
  )
  (set_local $24
   (i32.reinterpret/f32
    (get_local $17)
   )
  )
  (set_local $17
   (f32.reinterpret/i32
    (i32.and
     (get_local $24)
     (i32.const -32768)
    )
   )
  )
  (set_local $18
   (f32.mul
    (get_local $17)
    (f32.const 0.693145751953125)
   )
  )
  (set_local $19
   (f32.add
    (f32.mul
     (f32.sub
      (get_local $22)
      (f32.sub
       (get_local $17)
       (get_local $21)
      )
     )
     (f32.const 0.6931471824645996)
    )
    (f32.mul
     (get_local $17)
     (f32.const 1.4286065379565116e-06)
    )
   )
  )
  (set_local $11
   (f32.add
    (get_local $18)
    (get_local $19)
   )
  )
  (set_local $20
   (f32.sub
    (get_local $19)
    (f32.sub
     (get_local $11)
     (get_local $18)
    )
   )
  )
  (set_local $17
   (f32.mul
    (get_local $11)
    (get_local $11)
   )
  )
  (set_local $13
   (f32.sub
    (get_local $11)
    (f32.mul
     (get_local $17)
     (f32.add
      (f32.const 0.1666666716337204)
      (f32.mul
       (get_local $17)
       (f32.add
        (f32.const -2.7777778450399637e-03)
        (f32.mul
         (get_local $17)
         (f32.add
          (f32.const 6.61375597701408e-05)
          (f32.mul
           (get_local $17)
           (f32.add
            (f32.const -1.6533901998627698e-06)
            (f32.mul
             (get_local $17)
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
  (set_local $15
   (f32.sub
    (f32.div
     (f32.mul
      (get_local $11)
      (get_local $13)
     )
     (f32.sub
      (get_local $13)
      (f32.const 2)
     )
    )
    (f32.add
     (get_local $20)
     (f32.mul
      (get_local $11)
      (get_local $20)
     )
    )
   )
  )
  (set_local $11
   (f32.sub
    (f32.const 1)
    (f32.sub
     (get_local $15)
     (get_local $11)
    )
   )
  )
  (set_local $8
   (i32.reinterpret/f32
    (get_local $11)
   )
  )
  (set_local $8
   (i32.add
    (get_local $8)
    (i32.shl
     (get_local $23)
     (i32.const 23)
    )
   )
  )
  (if
   (i32.le_s
    (i32.shr_s
     (get_local $8)
     (i32.const 23)
    )
    (i32.const 0)
   )
   (set_local $11
    (call "$(lib)/math/NativeMathf.scalbn"
     (get_local $11)
     (get_local $23)
    )
   )
   (set_local $11
    (f32.reinterpret/i32
     (get_local $8)
    )
   )
  )
  (return
   (f32.mul
    (get_local $12)
    (get_local $11)
   )
  )
 )
 (func $std/math/test_powf (; 104 ;) (type $ffffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.pow"
     (get_local $0)
     (get_local $1)
    )
    (get_local $2)
    (get_local $3)
    (get_local $4)
   )
  )
 )
 (func "$(lib)/math/NativeMath.__murmurHash3" (; 105 ;) (type $II) (param $0 i64) (result i64)
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (set_local $0
   (i64.mul
    (get_local $0)
    (i64.const -49064778989728563)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (set_local $0
   (i64.mul
    (get_local $0)
    (i64.const -4265267296055464877)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func "$(lib)/math/NativeMath.seedRandom" (; 106 ;) (type $Iv) (param $0 i64)
  (if
   (i64.eqz
    (get_local $0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 1055)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_global "$(lib)/math/NativeMath.random_seeded"
   (i32.const 1)
  )
  (set_global "$(lib)/math/NativeMath.random_state0"
   (call "$(lib)/math/NativeMath.__murmurHash3"
    (get_local $0)
   )
  )
  (set_global "$(lib)/math/NativeMath.random_state1"
   (call "$(lib)/math/NativeMath.__murmurHash3"
    (get_global "$(lib)/math/NativeMath.random_state0")
   )
  )
 )
 (func "$(lib)/math/NativeMath.__xorShift128Plus" (; 107 ;) (type $I) (result i64)
  (local $0 i64)
  (local $1 i64)
  (set_local $0
   (get_global "$(lib)/math/NativeMath.random_state0")
  )
  (set_local $1
   (get_global "$(lib)/math/NativeMath.random_state1")
  )
  (set_global "$(lib)/math/NativeMath.random_state0"
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
  (set_global "$(lib)/math/NativeMath.random_state1"
   (get_local $0)
  )
  (return
   (i64.add
    (get_local $1)
    (get_local $0)
   )
  )
 )
 (func "$(lib)/math/NativeMath.random" (; 108 ;) (type $F) (result f64)
  (local $0 i64)
  (if
   (i32.eqz
    (get_global "$(lib)/math/NativeMath.random_seeded")
   )
   (unreachable)
  )
  (set_local $0
   (i64.or
    (i64.and
     (call "$(lib)/math/NativeMath.__xorShift128Plus")
     (i64.const 4503599627370495)
    )
    (i64.const 4607182418800017408)
   )
  )
  (return
   (f64.sub
    (f64.reinterpret/i64
     (get_local $0)
    )
    (f64.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMath.sinh" (; 109 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (set_local $1
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $2
   (f64.const 0.5)
  )
  (if
   (i64.ne
    (i64.shr_u
     (get_local $1)
     (i64.const 63)
    )
    (i64.const 0)
   )
   (set_local $2
    (f64.neg
     (get_local $2)
    )
   )
  )
  (set_local $1
   (i64.and
    (get_local $1)
    (i64.const 9223372036854775807)
   )
  )
  (set_local $3
   (f64.reinterpret/i64
    (get_local $1)
   )
  )
  (set_local $4
   (i32.wrap/i64
    (i64.shr_u
     (get_local $1)
     (i64.const 32)
    )
   )
  )
  (nop)
  (if
   (i32.lt_u
    (get_local $4)
    (i32.const 1082535490)
   )
   (block
    (set_local $5
     (call "$(lib)/math/NativeMath.expm1"
      (get_local $3)
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
        (i32.sub
         (i32.const 1072693248)
         (i32.shl
          (i32.const 26)
          (i32.const 20)
         )
        )
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
          (get_local $5)
         )
         (f64.div
          (f64.mul
           (get_local $5)
           (get_local $5)
          )
          (f64.add
           (get_local $5)
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
       (get_local $5)
       (f64.div
        (get_local $5)
        (f64.add
         (get_local $5)
         (f64.const 1)
        )
       )
      )
     )
    )
   )
  )
  (set_local $5
   (f64.mul
    (f64.mul
     (f64.const 2)
     (get_local $2)
    )
    (call "$(lib)/math/NativeMath.__expo2"
     (get_local $3)
    )
   )
  )
  (return
   (get_local $5)
  )
 )
 (func $std/math/test_sinh (; 110 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.sinh"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.sinh"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.sinh" (; 111 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (f32.const 0.5)
  )
  (if
   (i32.shr_u
    (get_local $1)
    (i32.const 31)
   )
   (set_local $2
    (f32.neg
     (get_local $2)
    )
   )
  )
  (set_local $1
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (set_local $3
   (f32.reinterpret/i32
    (get_local $1)
   )
  )
  (nop)
  (if
   (i32.lt_u
    (get_local $1)
    (i32.const 1118925335)
   )
   (block
    (set_local $4
     (call "$(lib)/math/NativeMathf.expm1"
      (get_local $3)
     )
    )
    (if
     (i32.lt_u
      (get_local $1)
      (i32.const 1065353216)
     )
     (block
      (if
       (i32.lt_u
        (get_local $1)
        (i32.sub
         (i32.const 1065353216)
         (i32.shl
          (i32.const 12)
          (i32.const 23)
         )
        )
       )
       (return
        (get_local $0)
       )
      )
      (return
       (f32.mul
        (get_local $2)
        (f32.sub
         (f32.mul
          (f32.const 2)
          (get_local $4)
         )
         (f32.div
          (f32.mul
           (get_local $4)
           (get_local $4)
          )
          (f32.add
           (get_local $4)
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
      (get_local $2)
      (f32.add
       (get_local $4)
       (f32.div
        (get_local $4)
        (f32.add
         (get_local $4)
         (f32.const 1)
        )
       )
      )
     )
    )
   )
  )
  (set_local $4
   (f32.mul
    (f32.mul
     (f32.const 2)
     (get_local $2)
    )
    (call "$(lib)/math/NativeMathf.__expo2"
     (get_local $3)
    )
   )
  )
  (return
   (get_local $4)
  )
 )
 (func $std/math/test_sinhf (; 112 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.sinh"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.sqrt" (; 113 ;) (type $FF) (param $0 f64) (result f64)
  (return
   (f64.sqrt
    (get_local $0)
   )
  )
 )
 (func $std/math/test_sqrt (; 114 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.sqrt"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.sqrt"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.sqrt" (; 115 ;) (type $ff) (param $0 f32) (result f32)
  (return
   (f32.sqrt
    (get_local $0)
   )
  )
 )
 (func $std/math/test_sqrtf (; 116 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.sqrt"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func "$(lib)/math/NativeMath.tanh" (; 117 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (set_local $1
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $2
   (i32.wrap/i64
    (i64.shr_u
     (get_local $1)
     (i64.const 63)
    )
   )
  )
  (set_local $1
   (i64.and
    (get_local $1)
    (i64.const 9223372036854775807)
   )
  )
  (set_local $0
   (f64.reinterpret/i64
    (get_local $1)
   )
  )
  (set_local $3
   (i32.wrap/i64
    (i64.shr_u
     (get_local $1)
     (i64.const 32)
    )
   )
  )
  (nop)
  (if
   (i32.gt_u
    (get_local $3)
    (i32.const 1071748074)
   )
   (if
    (i32.gt_u
     (get_local $3)
     (i32.const 1077149696)
    )
    (set_local $4
     (f64.sub
      (f64.const 1)
      (f64.div
       (f64.const 0)
       (get_local $0)
      )
     )
    )
    (block
     (set_local $4
      (call "$(lib)/math/NativeMath.expm1"
       (f64.mul
        (f64.const 2)
        (get_local $0)
       )
      )
     )
     (set_local $4
      (f64.sub
       (f64.const 1)
       (f64.div
        (f64.const 2)
        (f64.add
         (get_local $4)
         (f64.const 2)
        )
       )
      )
     )
    )
   )
   (if
    (i32.gt_u
     (get_local $3)
     (i32.const 1070618798)
    )
    (block
     (set_local $4
      (call "$(lib)/math/NativeMath.expm1"
       (f64.mul
        (f64.const 2)
        (get_local $0)
       )
      )
     )
     (set_local $4
      (f64.div
       (get_local $4)
       (f64.add
        (get_local $4)
        (f64.const 2)
       )
      )
     )
    )
    (if
     (i32.ge_u
      (get_local $3)
      (i32.const 1048576)
     )
     (block
      (set_local $4
       (call "$(lib)/math/NativeMath.expm1"
        (f64.mul
         (f64.const -2)
         (get_local $0)
        )
       )
      )
      (set_local $4
       (f64.div
        (f64.neg
         (get_local $4)
        )
        (f64.add
         (get_local $4)
         (f64.const 2)
        )
       )
      )
     )
     (set_local $4
      (get_local $0)
     )
    )
   )
  )
  (return
   (if (result f64)
    (get_local $2)
    (f64.neg
     (get_local $4)
    )
    (get_local $4)
   )
  )
 )
 (func $std/math/test_tanh (; 118 ;) (type $FFFii) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $4
      (call $std/math/check<f64>
       (call "$(lib)/math/NativeMath.tanh"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (if (result i32)
      (tee_local $4
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $4)
      (call $std/math/check<f64>
       (call "$(lib)/math/JSMath.tanh"
        (get_local $0)
       )
       (get_local $1)
       (get_local $2)
       (get_local $3)
      )
     )
     (get_local $4)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.tanh" (; 119 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (set_local $1
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $2
   (i32.shr_u
    (get_local $1)
    (i32.const 31)
   )
  )
  (set_local $1
   (i32.and
    (get_local $1)
    (i32.const 2147483647)
   )
  )
  (set_local $0
   (f32.reinterpret/i32
    (get_local $1)
   )
  )
  (nop)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1057791828)
   )
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 1092616192)
    )
    (set_local $3
     (f32.add
      (f32.const 1)
      (f32.div
       (f32.const 0)
       (get_local $0)
      )
     )
    )
    (block
     (set_local $3
      (call "$(lib)/math/NativeMathf.expm1"
       (f32.mul
        (f32.const 2)
        (get_local $0)
       )
      )
     )
     (set_local $3
      (f32.sub
       (f32.const 1)
       (f32.div
        (f32.const 2)
        (f32.add
         (get_local $3)
         (f32.const 2)
        )
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
    (block
     (set_local $3
      (call "$(lib)/math/NativeMathf.expm1"
       (f32.mul
        (f32.const 2)
        (get_local $0)
       )
      )
     )
     (set_local $3
      (f32.div
       (get_local $3)
       (f32.add
        (get_local $3)
        (f32.const 2)
       )
      )
     )
    )
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 8388608)
     )
     (block
      (set_local $3
       (call "$(lib)/math/NativeMathf.expm1"
        (f32.mul
         (f32.const -2)
         (get_local $0)
        )
       )
      )
      (set_local $3
       (f32.div
        (f32.neg
         (get_local $3)
        )
        (f32.add
         (get_local $3)
         (f32.const 2)
        )
       )
      )
     )
     (set_local $3
      (get_local $0)
     )
    )
   )
  )
  (return
   (if (result f32)
    (get_local $2)
    (f32.neg
     (get_local $3)
    )
    (get_local $3)
   )
  )
 )
 (func $std/math/test_tanhf (; 120 ;) (type $fffii) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32) (result i32)
  (return
   (call $std/math/check<f32>
    (call "$(lib)/math/NativeMathf.tanh"
     (get_local $0)
    )
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $start (; 121 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  (local $2 i32)
  (if
   (i32.eqz
    (f64.eq
     (f64.const 2.718281828459045)
     (f64.const 2.718281828459045)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 2.718281828459045)
     (get_global "$(lib)/math/JSMath.E")
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 84)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 0.6931471805599453)
     (get_global "$(lib)/math/JSMath.LN2")
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 85)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 2.302585092994046)
     (get_global "$(lib)/math/JSMath.LN10")
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 86)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 1.4426950408889634)
     (get_global "$(lib)/math/JSMath.LOG2E")
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 87)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 3.141592653589793)
     (get_global "$(lib)/math/JSMath.PI")
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 88)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 0.7071067811865476)
     (get_global "$(lib)/math/JSMath.SQRT1_2")
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 89)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/check<f64>
     (f64.const 1.4142135623730951)
     (get_global "$(lib)/math/JSMath.SQRT2")
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 90)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 99)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 100)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 101)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 102)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 103)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 104)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 105)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 106)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 107)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 108)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 111)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 112)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 113)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 114)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 115)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.neg
      (f64.const inf)
     )
     (i32.const 0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 116)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 117)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 118)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 119)
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
     (i32.or
      (i32.const 1)
      (i32.const 16)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 120)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 121)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 122)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 123)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbn
     (f64.neg
      (f64.const inf)
     )
     (i32.const 2147483647)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 124)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 125)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 126)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 127)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 128)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 129)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 138)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 139)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 140)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 141)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 142)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 143)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 144)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 145)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 146)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 147)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 150)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 151)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 152)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 153)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 154)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.neg
      (f32.const inf)
     )
     (i32.const 0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 155)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 156)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 157)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 158)
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
     (i32.or
      (i32.const 1)
      (i32.const 16)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 159)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 160)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 161)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 162)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_scalbnf
     (f32.neg
      (f32.const inf)
     )
     (i32.const 2147483647)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 163)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 164)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 165)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 166)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 167)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 168)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -8.06684839057968)
     (f64.const 4.535662560676869)
     (f64.const -3.531185829902812)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 177)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 4.345239849338305)
     (f64.const -8.88799136300345)
     (f64.const 4.345239849338305)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 178)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -8.38143342755525)
     (f64.const -2.763607337379588)
     (f64.const -0.09061141541648476)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 179)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -6.531673581913484)
     (f64.const 4.567535276842744)
     (f64.const -1.9641383050707404)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 180)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 9.267056966972586)
     (f64.const 4.811392084359796)
     (f64.const 4.45566488261279)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 181)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -6.450045556060236)
     (f64.const 0.6620717923376739)
     (f64.const -0.4913994250211714)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 182)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 7.858890253041697)
     (f64.const 0.05215452675006225)
     (f64.const 0.035711240532359426)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 183)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0.792054511984896)
     (f64.const 7.67640268511754)
     (f64.const -0.792054511984896)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 184)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 0.615702673197924)
     (f64.const 2.0119025790324803)
     (f64.const 0.615702673197924)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 185)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0.5587586823609152)
     (f64.const 0.03223983060263804)
     (f64.const -0.0106815621160685)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 186)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 189)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 190)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 191)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0.5)
     (f64.const 1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 192)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 1)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 193)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 194)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 1.5)
     (f64.const 1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 195)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1.5)
     (f64.const 1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 196)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 2)
     (f64.const 1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 197)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -2)
     (f64.const 1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 198)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const inf)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 199)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 200)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 201)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 0)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 202)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 203)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 0.5)
     (f64.const -1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 204)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0.5)
     (f64.const -1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 205)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 1)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 206)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 207)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 1.5)
     (f64.const -1)
     (f64.const 0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 208)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1.5)
     (f64.const -1)
     (f64.const -0.5)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 209)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 2)
     (f64.const -1)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 210)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -2)
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 211)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const inf)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 212)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 213)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 214)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 0)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 215)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 0)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 216)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 0)
     (f64.const inf)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 217)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 218)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 219)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 220)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 221)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0)
     (f64.const inf)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 222)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 223)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 224)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 1)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 225)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 226)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const inf)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 227)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 228)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 229)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 230)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const inf)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 231)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 232)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 233)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const inf)
     (f64.const 2)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 234)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const inf)
     (f64.const -0.5)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 235)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 236)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const 2)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 237)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const -0.5)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 238)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 239)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 240)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 241)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 242)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 1)
     (f64.const inf)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 243)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1)
     (f64.const inf)
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 244)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const inf)
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 245)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 246)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 1)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 247)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1)
     (f64.neg
      (f64.const inf)
     )
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 248)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const inf)
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 249)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 250)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 1.75)
     (f64.const 0.5)
     (f64.const 0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 251)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1.75)
     (f64.const 0.5)
     (f64.const -0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 252)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const 1.75)
     (f64.const -0.5)
     (f64.const 0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 253)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmod
     (f64.const -1.75)
     (f64.const -0.5)
     (f64.const -0.25)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 254)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -8.066848754882812)
     (f32.const 4.535662651062012)
     (f32.const -3.531186103820801)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 263)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 4.345239639282227)
     (f32.const -8.887990951538086)
     (f32.const 4.345239639282227)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 264)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -8.381433486938477)
     (f32.const -2.7636072635650635)
     (f32.const -0.09061169624328613)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 265)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -6.531673431396484)
     (f32.const 4.567535400390625)
     (f32.const -1.9641380310058594)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 266)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 9.267057418823242)
     (f32.const 4.811392307281494)
     (f32.const 4.455665111541748)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -6.450045585632324)
     (f32.const 0.6620717644691467)
     (f32.const -0.49139970541000366)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 268)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 7.858890056610107)
     (f32.const 0.052154526114463806)
     (f32.const 0.0357111394405365)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 269)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0.7920545339584351)
     (f32.const 7.676402568817139)
     (f32.const -0.7920545339584351)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 270)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 0.6157026886940002)
     (f32.const 2.0119025707244873)
     (f32.const 0.6157026886940002)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 271)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0.5587586760520935)
     (f32.const 0.03223983198404312)
     (f32.const -0.010681532323360443)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 272)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 275)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 276)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 277)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0.5)
     (f32.const 1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 278)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 1)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 279)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 280)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 1.5)
     (f32.const 1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 281)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1.5)
     (f32.const 1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 282)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 2)
     (f32.const 1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 283)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -2)
     (f32.const 1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 284)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const inf)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 285)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 286)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const nan:0x400000)
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 287)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 0)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 288)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 289)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 0.5)
     (f32.const -1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 290)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0.5)
     (f32.const -1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 291)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 1)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 292)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 293)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 1.5)
     (f32.const -1)
     (f32.const 0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 294)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1.5)
     (f32.const -1)
     (f32.const -0.5)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 295)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 2)
     (f32.const -1)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 296)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -2)
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 297)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const inf)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 298)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 299)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const nan:0x400000)
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 300)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 0)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 301)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 0)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 302)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 0)
     (f32.const inf)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 303)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 304)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 305)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 306)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 307)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0)
     (f32.const inf)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 308)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 309)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 310)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 1)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 311)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 312)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const inf)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 313)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 314)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const nan:0x400000)
     (f32.const 0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 315)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 316)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const inf)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 317)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 318)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const nan:0x400000)
     (f32.const -0)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 319)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const inf)
     (f32.const 2)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 320)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const inf)
     (f32.const -0.5)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 321)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 322)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 2)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 323)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -0.5)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 324)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 325)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 326)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 327)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 328)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 1)
     (f32.const inf)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 329)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1)
     (f32.const inf)
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 330)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const inf)
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 331)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 332)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 1)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 333)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1)
     (f32.neg
      (f32.const inf)
     )
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 334)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const inf)
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 335)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 336)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 1.75)
     (f32.const 0.5)
     (f32.const 0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 337)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1.75)
     (f32.const 0.5)
     (f32.const -0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 338)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const 1.75)
     (f32.const -0.5)
     (f32.const 0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 339)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_fmodf
     (f32.const -1.75)
     (f32.const -0.5)
     (f32.const -0.25)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 340)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 350)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 351)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 352)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 353)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 354)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 355)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 356)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 357)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 358)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 359)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 362)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 363)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 364)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 365)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 366)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_abs
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 367)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 368)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 377)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 378)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 379)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 380)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 381)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 382)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 383)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 384)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 385)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 386)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 389)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 390)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 391)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 392)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 393)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_absf
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 394)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 395)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 405)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 406)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 407)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 408)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 409)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 410)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 411)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 412)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 413)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 414)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 417)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 418)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 419)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 420)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 421)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 422)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acos
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 423)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 424)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 425)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 426)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 435)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 436)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 437)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 438)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 439)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 440)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 441)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 442)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 443)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 444)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 447)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 448)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 449)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 450)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 451)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 452)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 453)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 454)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 455)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 456)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 457)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 467)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 468)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 469)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 470)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 471)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 472)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 473)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 474)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 475)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 476)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 479)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 480)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 481)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 482)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 483)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 484)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acosh
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 485)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 501)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 503)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 504)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 513)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 514)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 515)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 516)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 517)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 518)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 519)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 520)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 521)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 522)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 525)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 526)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 527)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 528)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 529)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 530)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_acoshf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 531)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 532)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 542)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 543)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 544)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 545)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 546)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 547)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 548)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 549)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 550)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 551)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 554)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 555)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 556)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 557)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 558)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 559)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 560)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asin
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 561)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 562)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 563)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 572)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 573)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 574)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 575)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 576)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 577)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 578)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 579)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 580)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 581)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 584)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 585)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 586)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 587)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 588)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 589)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 590)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 591)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 592)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 593)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 603)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 604)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 605)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 606)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 607)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 608)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 609)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 610)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 611)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 612)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 615)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 616)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinh
     (f64.neg
      (f64.const inf)
     )
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 617)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 618)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 619)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 648)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 649)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 650)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 651)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 652)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 653)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 654)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 655)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 656)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 657)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 660)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 661)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_asinhf
     (f32.neg
      (f32.const inf)
     )
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 662)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 663)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 664)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 674)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 675)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 676)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 677)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 678)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 679)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 680)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 681)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 682)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 683)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 686)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 687)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 688)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 689)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 690)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atan
     (f64.neg
      (f64.const inf)
     )
     (f64.const -1.5707963267948966)
     (f64.const 0.27576595544815063)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 691)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 692)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 693)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 702)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 703)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 704)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 705)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 706)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 707)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 708)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 709)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 710)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 711)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 714)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 715)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 716)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 717)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 718)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_atanf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -1.5707963705062866)
     (f32.const -0.3666777014732361)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 719)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 720)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 730)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 731)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 732)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 733)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 734)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 735)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 736)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 737)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 738)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 739)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 742)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 743)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrt
     (f64.neg
      (f64.const inf)
     )
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 744)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 745)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 746)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 747)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 748)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 749)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 750)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 751)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 760)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 761)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 762)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 763)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 764)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 765)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 766)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 767)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 768)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 769)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 772)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 773)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cbrtf
     (f32.neg
      (f32.const inf)
     )
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 774)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 775)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 776)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 777)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 778)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 779)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 780)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 781)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 893)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 894)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 895)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 896)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 897)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 898)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 899)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 900)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 901)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 902)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 905)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 906)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 907)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_cosh
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 908)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 909)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 918)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 919)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 920)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 921)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 922)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 923)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 924)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 925)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 926)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 927)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 930)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 931)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 932)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_coshf
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 933)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 934)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 944)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 945)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 946)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 947)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 948)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 949)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 950)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 951)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 952)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 953)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 956)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 957)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 958)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 959)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 960)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_exp
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 961)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 962)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 963)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 964)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 965)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 966)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 975)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 976)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 977)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 978)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 979)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 980)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 981)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 982)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 983)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 984)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 987)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 988)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 989)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 990)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 991)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 992)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 993)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 994)
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
     (i32.or
      (i32.const 1)
      (i32.const 16)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 995)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 996)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 997)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 998)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 999)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1000)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1010)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1011)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1012)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1013)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1014)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1015)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1016)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1017)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1018)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1019)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1022)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1023)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1024)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1025)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1026)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1
     (f64.neg
      (f64.const inf)
     )
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1027)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1028)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1029)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1030)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1039)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1040)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1041)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1042)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1043)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1044)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1045)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1046)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1047)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1048)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1051)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1052)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1053)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1054)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1055)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_expm1f
     (f32.neg
      (f32.const inf)
     )
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1056)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1057)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1067)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1068)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1069)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1070)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1071)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1072)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1073)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1074)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1075)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1076)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1079)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1080)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1081)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1082)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1083)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1084)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1085)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1086)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1087)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1088)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1089)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1090)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1091)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.neg
      (f64.const inf)
     )
     (f64.const 1)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1092)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const 1)
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1093)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1094)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypot
     (f64.const nan:0x8000000000000)
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1095)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1096)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1097)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1106)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1107)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1108)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1109)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1110)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1111)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1112)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1113)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1114)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1115)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1118)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1119)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1120)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1121)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1122)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1123)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1124)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1125)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1126)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1127)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1128)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1129)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1130)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 1)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1131)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const 1)
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1132)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1133)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_hypotf
     (f32.const nan:0x400000)
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1134)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1135)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1136)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1146)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1147)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1148)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1149)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1150)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1151)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1152)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1153)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1154)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1155)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const 0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1158)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.const -0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1159)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1160)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1161)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1162)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1163)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1164)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1165)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const 0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1174)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const -0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1175)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1176)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1177)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1178)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1179)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1180)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1181)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const 0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1184)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.const -0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1185)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1186)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1187)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1188)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1189)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_logf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1190)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1191)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1201)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1202)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1203)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1204)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1205)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1206)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1207)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1208)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1209)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1210)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const 0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1213)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.const -0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1214)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1215)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1216)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1217)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1218)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1219)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1220)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1229)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1230)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1231)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1232)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1233)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1234)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1235)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1236)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1237)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1238)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const 0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1241)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.const -0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1242)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1243)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1244)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1245)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1246)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log10f
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1247)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1248)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1258)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1259)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1260)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1261)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1262)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1263)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1264)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1265)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1266)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1267)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1270)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1271)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1272)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1273)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.const -1)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1274)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1275)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1p
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1276)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1277)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1286)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1287)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1288)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1289)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1290)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1291)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1292)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1293)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1294)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1295)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1298)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1299)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1300)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1301)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.const -1)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1302)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1303)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log1pf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1304)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1305)
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
     (i32.or
      (i32.const 1)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1306)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1316)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1317)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1318)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1319)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1320)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1321)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1322)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1323)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1324)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1325)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const 0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1328)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.const -0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1329)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1330)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1331)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1332)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1333)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1334)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1335)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1344)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1345)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1346)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1347)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1348)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1349)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1350)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1351)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1352)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1353)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const 0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1356)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.const -0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1357)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1358)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1359)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1360)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1361)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_log2f
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1362)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1363)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1374)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1375)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1376)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1377)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1378)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1379)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1380)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1381)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1382)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1383)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1386)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1387)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1388)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1389)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1390)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1391)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1392)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1393)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1394)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1395)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1396)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1397)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1398)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1399)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1400)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1401)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1402)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1403)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1404)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1405)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1406)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1407)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1408)
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
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1409)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1410)
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
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1411)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1412)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1413)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1414)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1415)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1416)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1417)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1418)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1419)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1420)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1421)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const -0)
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1422)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1423)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1424)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1425)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1426)
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
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1427)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -1)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1428)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1429)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1430)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1431)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1432)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1433)
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
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1434)
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
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1435)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1436)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1437)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1438)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1439)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1440)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1441)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1442)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1443)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1444)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1445)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const -0.5)
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1446)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1447)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1448)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 0.5)
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1449)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1450)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1451)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const 1.5)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1452)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1453)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1454)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1455)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.const inf)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1456)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1457)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1458)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1459)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1460)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1461)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1462)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1463)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1464)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1465)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1466)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const 3)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1467)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const 2)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1468)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const 1)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1469)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0.5)
     (f64.const inf)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1470)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const -0.5)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1471)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const -1)
     (f64.const -0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1472)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_pow
     (f64.neg
      (f64.const inf)
     )
     (f64.const -2)
     (f64.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1473)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1474)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1475)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1476)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1477)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1486)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1487)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1488)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1489)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1490)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1491)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1492)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1493)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1494)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1495)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1498)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1499)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1500)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1501)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1502)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1503)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1504)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1505)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1506)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1507)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1508)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1509)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1510)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1511)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1512)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1513)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1514)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1515)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1516)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1517)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1518)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1519)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1520)
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
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1521)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1522)
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
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1523)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1524)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1525)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1526)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1527)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1528)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1529)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1530)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1531)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1532)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1533)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -0)
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1534)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1535)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1536)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1537)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1538)
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
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1539)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -1)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1540)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1541)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1542)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1543)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1544)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1545)
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
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1546)
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
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1547)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1548)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1549)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1550)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1551)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1552)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1553)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1554)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1555)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1556)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1557)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const -0.5)
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1558)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1559)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1560)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 0.5)
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1561)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1562)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1563)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const 1.5)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1564)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1565)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1566)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1567)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.const inf)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1568)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1569)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1570)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1571)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1572)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1573)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1574)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1575)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1576)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1577)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1578)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 3)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1579)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 2)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1580)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 1)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1581)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0.5)
     (f32.const inf)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1582)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -0.5)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1583)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -1)
     (f32.const -0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1584)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_powf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -2)
     (f32.const 0)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1585)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1586)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1587)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1588)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1589)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call "$(lib)/math/NativeMath.seedRandom"
   (i64.reinterpret/f64
    (call "$(lib)/math/JSMath.random")
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (f64.lt
      (f64.convert_s/i32
       (get_local $0)
      )
      (f64.const 1e7)
     )
     (block
      (block
       (set_local $1
        (call "$(lib)/math/NativeMath.random")
       )
       (if
        (i32.eqz
         (i32.and
          (if (result i32)
           (tee_local $2
            (f64.ge
             (get_local $1)
             (f64.const 0)
            )
           )
           (f64.lt
            (get_local $1)
            (f64.const 1)
           )
           (get_local $2)
          )
          (i32.const 1)
         )
        )
        (block
         (call $abort
          (i32.const 0)
          (i32.const 4)
          (i32.const 1596)
          (i32.const 2)
         )
         (unreachable)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1666)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1667)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1668)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1669)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1670)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1671)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1672)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1673)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1674)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1675)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1678)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1679)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1680)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinh
     (f64.neg
      (f64.const inf)
     )
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1681)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1682)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1691)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1692)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1693)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1694)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1695)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1696)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1697)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1698)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1699)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1700)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1703)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1704)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1705)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sinhf
     (f32.neg
      (f32.const inf)
     )
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1706)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1707)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1717)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1718)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1719)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1720)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1721)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1722)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1723)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1724)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1725)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1726)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1729)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1730)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrt
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1731)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1732)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1733)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1734)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1735)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1736)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1737)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1738)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1739)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1740)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1741)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1742)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1743)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1744)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1745)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1746)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1747)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1748)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1749)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1750)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1751)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1752)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1753)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1754)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1755)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1756)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1757)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1758)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1759)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1760)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1761)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1762)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1763)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1764)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1765)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1766)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1767)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1768)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1769)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1770)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1771)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1772)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1773)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1774)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1775)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1776)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1777)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1778)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1779)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1780)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1781)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1782)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1783)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1784)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1785)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1786)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1787)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1788)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1789)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1790)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1791)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1792)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1793)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1794)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1795)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1796)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1797)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1798)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1799)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1800)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1801)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1802)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1811)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1812)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1813)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1814)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1815)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1816)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1817)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1818)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1819)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1820)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1823)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1824)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_sqrtf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const 0)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1825)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1826)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1827)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1828)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1829)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1830)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1831)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1832)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1833)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1834)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1835)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1836)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1837)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1838)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1839)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1840)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1841)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1842)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1843)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1844)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1913)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1914)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1915)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1916)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1917)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1918)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1919)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1920)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1921)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1922)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1925)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1926)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1927)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanh
     (f64.neg
      (f64.const inf)
     )
     (f64.const -1)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1928)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1929)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1938)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1939)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1940)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1941)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1942)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1943)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1944)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1945)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1946)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1947)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1950)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1951)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1952)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/math/test_tanhf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -1)
     (f32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1953)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1954)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
