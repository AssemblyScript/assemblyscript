(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (type $FFFFiv (func (param f64 f64 f64 f64 i32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $FFFiv (func (param f64 f64 f64 i32)))
 (type $ffffiv (func (param f32 f32 f32 f32 i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $fffiv (func (param f32 f32 f32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $F (func (result f64)))
 (type $ff (func (param f32) (result f32)))
 (type $f (func (result f32)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $fif (func (param f32 i32) (result f32)))
 (type $Iv (func (param i64)))
 (type $II (func (param i64) (result i64)))
 (type $I (func (result i64)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (import "JSMath" "log" (func $(lib)/math/JSMath.log (param f64) (result f64)))
 (import "JSMath" "exp" (func $(lib)/math/JSMath.exp (param f64) (result f64)))
 (import "JSMath" "cbrt" (func $(lib)/math/JSMath.cbrt (param f64) (result f64)))
 (import "JSMath" "random" (func $(lib)/math/JSMath.random (result f64)))
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
 (func $fmod (; 5 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
 (func $std/math/check<f64> (; 6 ;) (type $FFFiv) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32)
  (local $4 f64)
  (local $5 i32)
  (if
   (f64.ne
    (tee_local $4
     (get_local $1)
    )
    (get_local $4)
   )
   (if
    (i32.eqz
     (f64.ne
      (tee_local $4
       (get_local $0)
      )
      (get_local $4)
     )
    )
    (unreachable)
   )
   (if
    (f64.ne
     (get_local $0)
     (get_local $1)
    )
    (if
     (i32.and
      (if (result i32)
       (tee_local $5
        (i32.eqz
         (i32.and
          (get_local $3)
          (i32.const 1)
         )
        )
       )
       (get_local $5)
       (f64.gt
        (f64.abs
         (f64.sub
          (get_local $0)
          (get_local $1)
         )
        )
        (f64.abs
         (get_local $2)
        )
       )
      )
      (i32.const 1)
     )
     (unreachable)
    )
   )
  )
 )
 (func $std/math/test_fmod (; 7 ;) (type $FFFFiv) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32)
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
 (func $fmodf (; 8 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
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
 (func $std/math/check<f32> (; 9 ;) (type $fffiv) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32)
  (local $4 f32)
  (local $5 i32)
  (if
   (f32.ne
    (tee_local $4
     (get_local $1)
    )
    (get_local $4)
   )
   (if
    (i32.eqz
     (f32.ne
      (tee_local $4
       (get_local $0)
      )
      (get_local $4)
     )
    )
    (unreachable)
   )
   (if
    (f32.ne
     (get_local $0)
     (get_local $1)
    )
    (if
     (i32.and
      (if (result i32)
       (tee_local $5
        (i32.eqz
         (i32.and
          (get_local $3)
          (i32.const 1)
         )
        )
       )
       (get_local $5)
       (f32.gt
        (f32.abs
         (f32.sub
          (get_local $0)
          (get_local $1)
         )
        )
        (f32.abs
         (get_local $2)
        )
       )
      )
      (i32.const 1)
     )
     (unreachable)
    )
   )
  )
 )
 (func $std/math/test_fmodf (; 10 ;) (type $ffffiv) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32)
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
 (func "$(lib)/math/NativeMath.log" (; 11 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_log (; 12 ;) (type $FFFiv) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32)
  (call $std/math/check<f64>
   (call "$(lib)/math/NativeMath.log"
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
  (call $std/math/check<f64>
   (call "$(lib)/math/JSMath.log"
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func "$(lib)/math/NativeMathf.log" (; 13 ;) (type $ff) (param $0 f32) (result f32)
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
 (func $std/math/test_logf (; 14 ;) (type $fffiv) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32)
  (call $std/math/check<f32>
   (call "$(lib)/math/NativeMathf.log"
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func "$(lib)/math/NativeMath.scalbn" (; 15 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
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
 (func "$(lib)/math/NativeMath.exp" (; 16 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
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
      (tee_local $2
       (get_local $0)
      )
      (get_local $2)
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
      (f64.const -708.3964185322641)
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
  )
  (nop)
  (nop)
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
     (set_local $5
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
     (block
      (set_local $6
       (i32.shr_u
        (get_local $1)
        (i32.const 31)
       )
      )
      (set_local $5
       (i32.sub
        (i32.sub
         (i32.const 1)
         (get_local $6)
        )
        (get_local $6)
       )
      )
     )
    )
    (set_local $3
     (f64.sub
      (get_local $0)
      (f64.mul
       (f64.convert_s/i32
        (get_local $5)
       )
       (f64.const 0.6931471803691238)
      )
     )
    )
    (set_local $4
     (f64.mul
      (f64.convert_s/i32
       (get_local $5)
      )
      (f64.const 1.9082149292705877e-10)
     )
    )
    (set_local $0
     (f64.sub
      (get_local $3)
      (get_local $4)
     )
    )
   )
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 1043333120)
    )
    (block
     (set_local $5
      (i32.const 0)
     )
     (set_local $3
      (get_local $0)
     )
     (set_local $4
      (f64.const 0)
     )
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
      (get_local $4)
     )
     (get_local $3)
    )
   )
  )
  (if
   (i32.eq
    (get_local $5)
    (i32.const 0)
   )
   (return
    (get_local $9)
   )
  )
  (return
   (call "$(lib)/math/NativeMath.scalbn"
    (get_local $9)
    (get_local $5)
   )
  )
 )
 (func $std/math/test_exp (; 17 ;) (type $FFFiv) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32)
  (call $std/math/check<f64>
   (call "$(lib)/math/NativeMath.exp"
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
  (call $std/math/check<f64>
   (call "$(lib)/math/JSMath.exp"
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func "$(lib)/math/NativeMathf.scalbn" (; 18 ;) (type $fif) (param $0 f32) (param $1 i32) (result f32)
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
 (func "$(lib)/math/NativeMathf.exp" (; 19 ;) (type $ff) (param $0 f32) (result f32)
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
     (get_local $2)
     (if
      (i32.ge_u
       (get_local $1)
       (i32.const 1120924085)
      )
      (return
       (f32.const 0)
      )
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
 (func $std/math/test_expf (; 20 ;) (type $fffiv) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32)
  (call $std/math/check<f32>
   (call "$(lib)/math/NativeMathf.exp"
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func "$(lib)/math/NativeMath.sqrt" (; 21 ;) (type $FF) (param $0 f64) (result f64)
  (return
   (f64.sqrt
    (get_local $0)
   )
  )
 )
 (func "$(lib)/math/NativeMath.pow" (; 22 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
       (call "$(lib)/math/NativeMath.sqrt"
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
       (f64.const 1.9259629911266174)
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
 (func $std/math/test_pow (; 23 ;) (type $FFFFiv) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32)
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
 (func "$(lib)/math/NativeMathf.pow" (; 24 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
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
 (func $std/math/test_powf (; 25 ;) (type $ffffiv) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32)
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
 (func "$(lib)/math/NativeMath.cbrt" (; 26 ;) (type $FF) (param $0 f64) (result f64)
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
 (func $std/math/test_cbrt (; 27 ;) (type $FFFiv) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 i32)
  (call $std/math/check<f64>
   (call "$(lib)/math/NativeMath.cbrt"
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
  (call $std/math/check<f64>
   (call "$(lib)/math/JSMath.cbrt"
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func "$(lib)/math/NativeMathf.cbrt" (; 28 ;) (type $ff) (param $0 f32) (result f32)
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
 (func $std/math/test_cbrtf (; 29 ;) (type $fffiv) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 i32)
  (call $std/math/check<f32>
   (call "$(lib)/math/NativeMathf.cbrt"
    (get_local $0)
   )
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func "$(lib)/math/NativeMath.murmurHash3" (; 30 ;) (type $II) (param $0 i64) (result i64)
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
 (func "$(lib)/math/NativeMath.seedRandom" (; 31 ;) (type $Iv) (param $0 i64)
  (if
   (i64.eqz
    (get_local $0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 613)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_global "$(lib)/math/NativeMath.random_seeded"
   (i32.const 1)
  )
  (set_global "$(lib)/math/NativeMath.random_state0"
   (call "$(lib)/math/NativeMath.murmurHash3"
    (get_local $0)
   )
  )
  (set_global "$(lib)/math/NativeMath.random_state1"
   (call "$(lib)/math/NativeMath.murmurHash3"
    (get_global "$(lib)/math/NativeMath.random_state0")
   )
  )
 )
 (func "$(lib)/math/NativeMath.xorShift128Plus" (; 32 ;) (type $I) (result i64)
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
 (func "$(lib)/math/NativeMath.random" (; 33 ;) (type $F) (result f64)
  (local $0 i64)
  (nop)
  (if
   (i32.eqz
    (get_global "$(lib)/math/NativeMath.random_seeded")
   )
   (unreachable)
  )
  (set_local $0
   (i64.or
    (i64.and
     (call "$(lib)/math/NativeMath.xorShift128Plus")
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
 (func $start (; 34 ;) (type $v)
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
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/math/test_fmod
   (f64.const -8.06684839057968)
   (f64.const 4.535662560676869)
   (f64.const -3.531185829902812)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 4.345239849338305)
   (f64.const -8.88799136300345)
   (f64.const 4.345239849338305)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -8.38143342755525)
   (f64.const -2.763607337379588)
   (f64.const -0.09061141541648476)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -6.531673581913484)
   (f64.const 4.567535276842744)
   (f64.const -1.9641383050707404)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 9.267056966972586)
   (f64.const 4.811392084359796)
   (f64.const 4.45566488261279)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -6.450045556060236)
   (f64.const 0.6620717923376739)
   (f64.const -0.4913994250211714)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 7.858890253041697)
   (f64.const 0.05215452675006225)
   (f64.const 0.035711240532359426)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -0.792054511984896)
   (f64.const 7.67640268511754)
   (f64.const -0.792054511984896)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 0.615702673197924)
   (f64.const 2.0119025790324803)
   (f64.const 0.615702673197924)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -0.5587586823609152)
   (f64.const 0.03223983060263804)
   (f64.const -0.0106815621160685)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -0)
   (f64.const 1)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 0.5)
   (f64.const 1)
   (f64.const 0.5)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -0.5)
   (f64.const 1)
   (f64.const -0.5)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 1)
   (f64.const 1)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -1)
   (f64.const 1)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 1.5)
   (f64.const 1)
   (f64.const 0.5)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -1.5)
   (f64.const 1)
   (f64.const -0.5)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 2)
   (f64.const 1)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -2)
   (f64.const 1)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const inf)
   (f64.const 1)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.neg
    (f64.const inf)
   )
   (f64.const 1)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const nan:0x8000000000000)
   (f64.const 1)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 0)
   (f64.const -1)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -0)
   (f64.const -1)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 0.5)
   (f64.const -1)
   (f64.const 0.5)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -0.5)
   (f64.const -1)
   (f64.const -0.5)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 1)
   (f64.const -1)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -1)
   (f64.const -1)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 1.5)
   (f64.const -1)
   (f64.const 0.5)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -1.5)
   (f64.const -1)
   (f64.const -0.5)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 2)
   (f64.const -1)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -2)
   (f64.const -1)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const inf)
   (f64.const -1)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.neg
    (f64.const inf)
   )
   (f64.const -1)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const nan:0x8000000000000)
   (f64.const -1)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 0)
   (f64.const 0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const 0)
   (f64.const -0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const 0)
   (f64.const inf)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 0)
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 0)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -0)
   (f64.const 0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const -0)
   (f64.const -0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const -0)
   (f64.const inf)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -0)
   (f64.neg
    (f64.const inf)
   )
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -0)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 1)
   (f64.const 0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const -1)
   (f64.const 0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const inf)
   (f64.const 0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -1)
   (f64.const -0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const inf)
   (f64.const -0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.neg
    (f64.const inf)
   )
   (f64.const -0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const nan:0x8000000000000)
   (f64.const -0)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const inf)
   (f64.const 2)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const inf)
   (f64.const -0.5)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const inf)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.neg
    (f64.const inf)
   )
   (f64.const 2)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.neg
    (f64.const inf)
   )
   (f64.const -0.5)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.neg
    (f64.const inf)
   )
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 1)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -1)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 1)
   (f64.const inf)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -1)
   (f64.const inf)
   (f64.const -1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const inf)
   (f64.const inf)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.neg
    (f64.const inf)
   )
   (f64.const inf)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmod
   (f64.const 1)
   (f64.neg
    (f64.const inf)
   )
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -1)
   (f64.neg
    (f64.const inf)
   )
   (f64.const -1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const inf)
   (f64.neg
    (f64.const inf)
   )
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
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
  (call $std/math/test_fmod
   (f64.const 1.75)
   (f64.const 0.5)
   (f64.const 0.25)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -1.75)
   (f64.const 0.5)
   (f64.const -0.25)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const 1.75)
   (f64.const -0.5)
   (f64.const 0.25)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmod
   (f64.const -1.75)
   (f64.const -0.5)
   (f64.const -0.25)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -8.066848754882812)
   (f32.const 4.535662651062012)
   (f32.const -3.531186103820801)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 4.345239639282227)
   (f32.const -8.887990951538086)
   (f32.const 4.345239639282227)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -8.381433486938477)
   (f32.const -2.7636072635650635)
   (f32.const -0.09061169624328613)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -6.531673431396484)
   (f32.const 4.567535400390625)
   (f32.const -1.9641380310058594)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 9.267057418823242)
   (f32.const 4.811392307281494)
   (f32.const 4.455665111541748)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -6.450045585632324)
   (f32.const 0.6620717644691467)
   (f32.const -0.49139970541000366)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 7.858890056610107)
   (f32.const 0.052154526114463806)
   (f32.const 0.0357111394405365)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -0.7920545339584351)
   (f32.const 7.676402568817139)
   (f32.const -0.7920545339584351)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 0.6157026886940002)
   (f32.const 2.0119025707244873)
   (f32.const 0.6157026886940002)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -0.5587586760520935)
   (f32.const 0.03223983198404312)
   (f32.const -0.010681532323360443)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -0)
   (f32.const 1)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 0.5)
   (f32.const 1)
   (f32.const 0.5)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -0.5)
   (f32.const 1)
   (f32.const -0.5)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 1)
   (f32.const 1)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -1)
   (f32.const 1)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 1.5)
   (f32.const 1)
   (f32.const 0.5)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -1.5)
   (f32.const 1)
   (f32.const -0.5)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 2)
   (f32.const 1)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -2)
   (f32.const 1)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const inf)
   (f32.const 1)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.neg
    (f32.const inf)
   )
   (f32.const 1)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const nan:0x400000)
   (f32.const 1)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 0)
   (f32.const -1)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -0)
   (f32.const -1)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 0.5)
   (f32.const -1)
   (f32.const 0.5)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -0.5)
   (f32.const -1)
   (f32.const -0.5)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 1)
   (f32.const -1)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -1)
   (f32.const -1)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 1.5)
   (f32.const -1)
   (f32.const 0.5)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -1.5)
   (f32.const -1)
   (f32.const -0.5)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 2)
   (f32.const -1)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -2)
   (f32.const -1)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const inf)
   (f32.const -1)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.neg
    (f32.const inf)
   )
   (f32.const -1)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const nan:0x400000)
   (f32.const -1)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 0)
   (f32.const 0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const 0)
   (f32.const -0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const 0)
   (f32.const inf)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 0)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 0)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -0)
   (f32.const 0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const -0)
   (f32.const -0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const -0)
   (f32.const inf)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -0)
   (f32.neg
    (f32.const inf)
   )
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -0)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 1)
   (f32.const 0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const -1)
   (f32.const 0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const inf)
   (f32.const 0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const nan:0x400000)
   (f32.const 0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -1)
   (f32.const -0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const inf)
   (f32.const -0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.neg
    (f32.const inf)
   )
   (f32.const -0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const nan:0x400000)
   (f32.const -0)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const inf)
   (f32.const 2)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const inf)
   (f32.const -0.5)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const inf)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.neg
    (f32.const inf)
   )
   (f32.const 2)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.neg
    (f32.const inf)
   )
   (f32.const -0.5)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.neg
    (f32.const inf)
   )
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 1)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -1)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 1)
   (f32.const inf)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -1)
   (f32.const inf)
   (f32.const -1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const inf)
   (f32.const inf)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.neg
    (f32.const inf)
   )
   (f32.const inf)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_fmodf
   (f32.const 1)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -1)
   (f32.neg
    (f32.const inf)
   )
   (f32.const -1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const inf)
   (f32.neg
    (f32.const inf)
   )
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
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
  (call $std/math/test_fmodf
   (f32.const 1.75)
   (f32.const 0.5)
   (f32.const 0.25)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -1.75)
   (f32.const 0.5)
   (f32.const -0.25)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const 1.75)
   (f32.const -0.5)
   (f32.const 0.25)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_fmodf
   (f32.const -1.75)
   (f32.const -0.5)
   (f32.const -0.25)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_log
   (f64.const -8.06684839057968)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_log
   (f64.const 4.345239849338305)
   (f64.const 1.4690809584224322)
   (f64.const -0.3412533402442932)
   (i32.const 1)
  )
  (call $std/math/test_log
   (f64.const -8.38143342755525)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_log
   (f64.const -6.531673581913484)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_log
   (f64.const 9.267056966972586)
   (f64.const 2.2264658498795615)
   (f64.const 0.3638114035129547)
   (i32.const 1)
  )
  (call $std/math/test_log
   (f64.const 0.6619858980995045)
   (f64.const -0.4125110252365137)
   (f64.const -0.29108747839927673)
   (i32.const 1)
  )
  (call $std/math/test_log
   (f64.const -0.4066039223853553)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_log
   (f64.const 0.5617597462207241)
   (f64.const -0.5766810183195862)
   (f64.const -0.10983199626207352)
   (i32.const 1)
  )
  (call $std/math/test_log
   (f64.const 0.7741522965913037)
   (f64.const -0.2559866591263865)
   (f64.const -0.057990044355392456)
   (i32.const 1)
  )
  (call $std/math/test_log
   (f64.const -0.6787637026394024)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_log
   (f64.const 0)
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_log
   (f64.const -0)
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_log
   (f64.const -7.888609052210118e-31)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_log
   (f64.const 1)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_log
   (f64.const -1)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_log
   (f64.const inf)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_log
   (f64.neg
    (f64.const inf)
   )
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_log
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_logf
   (f32.const 0)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_logf
   (f32.const -0)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_logf
   (f32.const -7.888609052210118e-31)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_logf
   (f32.const 1)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_logf
   (f32.const -1)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_logf
   (f32.const inf)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_logf
   (f32.neg
    (f32.const inf)
   )
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_logf
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_logf
   (f32.const 0)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_logf
   (f32.const -0)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_logf
   (f32.const -7.888609052210118e-31)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_logf
   (f32.const 1)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_logf
   (f32.const -1)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_logf
   (f32.const inf)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_logf
   (f32.neg
    (f32.const inf)
   )
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_logf
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_exp
   (f64.const -8.06684839057968)
   (f64.const 3.137706068161745e-04)
   (f64.const -0.2599197328090668)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const 4.345239849338305)
   (f64.const 77.11053017112141)
   (f64.const -0.02792675793170929)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const -8.38143342755525)
   (f64.const 2.290813384916323e-04)
   (f64.const -0.24974334239959717)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const -6.531673581913484)
   (f64.const 1.4565661260931588e-03)
   (f64.const -0.4816822409629822)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const 9.267056966972586)
   (f64.const 10583.558245524993)
   (f64.const 0.17696762084960938)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const 0.6619858980995045)
   (f64.const 1.9386384525571998)
   (f64.const -0.4964246451854706)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const -0.4066039223853553)
   (f64.const 0.6659078892838025)
   (f64.const -0.10608318448066711)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const 0.5617597462207241)
   (f64.const 1.7537559518626311)
   (f64.const -0.39162111282348633)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const 0.7741522965913037)
   (f64.const 2.1687528885129246)
   (f64.const -0.2996125817298889)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const -0.6787637026394024)
   (f64.const 0.5072437089402843)
   (f64.const 0.47261738777160645)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_exp
   (f64.const -0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_exp
   (f64.const 1)
   (f64.const 2.718281828459045)
   (f64.const -0.3255307376384735)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const -1)
   (f64.const 0.36787944117144233)
   (f64.const 0.22389651834964752)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const inf)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_exp
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_exp
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_exp
   (f64.const 1.0397214889526365)
   (f64.const 2.828429155876411)
   (f64.const 0.18803080916404724)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const -1.0397214889526365)
   (f64.const 0.35355313670217847)
   (f64.const 0.2527272403240204)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const 1.0397210121154785)
   (f64.const 2.8284278071766122)
   (f64.const -0.4184139370918274)
   (i32.const 1)
  )
  (call $std/math/test_exp
   (f64.const 1.0397214889526367)
   (f64.const 2.8284291558764116)
   (f64.const -0.22618377208709717)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const -8.066848754882812)
   (f32.const 3.1377049162983894e-04)
   (f32.const -0.030193336308002472)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const 4.345239639282227)
   (f32.const 77.11051177978516)
   (f32.const -0.2875460684299469)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const -8.381433486938477)
   (f32.const 2.2908132814336568e-04)
   (f32.const 0.2237040400505066)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const -6.531673431396484)
   (f32.const 1.4565663877874613e-03)
   (f32.const 0.36469703912734985)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const 9.267057418823242)
   (f32.const 10583.5634765625)
   (f32.const 0.45962104201316833)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const 0.6619858741760254)
   (f32.const 1.93863844871521)
   (f32.const 0.3568260967731476)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const -0.40660393238067627)
   (f32.const 0.6659078598022461)
   (f32.const -0.38294991850852966)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const 0.5617597699165344)
   (f32.const 1.753756046295166)
   (f32.const 0.44355490803718567)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const 0.7741522789001465)
   (f32.const 2.168752908706665)
   (f32.const 0.24562469124794006)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const -0.6787636876106262)
   (f32.const 0.5072436928749084)
   (f32.const -0.3974292278289795)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_expf
   (f32.const -0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_expf
   (f32.const 1)
   (f32.const 2.7182817459106445)
   (f32.const -0.3462330996990204)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const -1)
   (f32.const 0.3678794503211975)
   (f32.const 0.3070148527622223)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const inf)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_expf
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_expf
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_expf
   (f32.const 88.72283172607422)
   (f32.const 340279851902147610656242e15)
   (f32.const -0.09067153930664062)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const 88.72283935546875)
   (f32.const inf)
   (f32.const 0)
   (i32.or
    (i32.const 1)
    (i32.const 16)
   )
  )
  (call $std/math/test_expf
   (f32.const -103.97207641601562)
   (f32.const 1.401298464324817e-45)
   (f32.const 0.49999967217445374)
   (i32.or
    (i32.const 1)
    (i32.const 8)
   )
  )
  (call $std/math/test_expf
   (f32.const -103.97208404541016)
   (f32.const 0)
   (f32.const -0.49999651312828064)
   (i32.or
    (i32.const 1)
    (i32.const 8)
   )
  )
  (call $std/math/test_expf
   (f32.const 0.3465735614299774)
   (f32.const 1.4142135381698608)
   (f32.const 0.13922421634197235)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const 0.3465735912322998)
   (f32.const 1.4142135381698608)
   (f32.const -0.21432916820049286)
   (i32.const 1)
  )
  (call $std/math/test_expf
   (f32.const 0.3465736210346222)
   (f32.const 1.4142136573791504)
   (f32.const 0.43211743235588074)
   (i32.const 1)
  )
  (call $std/math/test_pow
   (f64.const -8.06684839057968)
   (f64.const 4.535662560676869)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_pow
   (f64.const 4.345239849338305)
   (f64.const -8.88799136300345)
   (f64.const 2.1347118825587285e-06)
   (f64.const 0.3250160217285156)
   (i32.const 1)
  )
  (call $std/math/test_pow
   (f64.const -8.38143342755525)
   (f64.const -2.763607337379588)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_pow
   (f64.const -6.531673581913484)
   (f64.const 4.567535276842744)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_pow
   (f64.const 9.267056966972586)
   (f64.const 4.811392084359796)
   (f64.const 44909.29941512966)
   (f64.const -0.26659080386161804)
   (i32.const 1)
  )
  (call $std/math/test_pow
   (f64.const -6.450045556060236)
   (f64.const 0.6620717923376739)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_pow
   (f64.const 7.858890253041697)
   (f64.const 0.05215452675006225)
   (f64.const 1.1135177413458652)
   (f64.const -0.37168607115745544)
   (i32.const 1)
  )
  (call $std/math/test_pow
   (f64.const -0.792054511984896)
   (f64.const 7.67640268511754)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_pow
   (f64.const 0.615702673197924)
   (f64.const 2.0119025790324803)
   (f64.const 0.37690773521380183)
   (f64.const 0.32473301887512207)
   (i32.const 1)
  )
  (call $std/math/test_pow
   (f64.const -0.5587586823609152)
   (f64.const 0.03223983060263804)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const inf)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const 3)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const 2)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const 0.5)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const -0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const -0.5)
   (f64.const inf)
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const -1)
   (f64.const inf)
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const -2)
   (f64.const inf)
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const -3)
   (f64.const inf)
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.const -4)
   (f64.const inf)
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_pow
   (f64.const 0)
   (f64.neg
    (f64.const inf)
   )
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const inf)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const 3)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const 2)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const 1)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const 0.5)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const -0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const -0.5)
   (f64.const inf)
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const -1)
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const -2)
   (f64.const inf)
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const -3)
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.const -4)
   (f64.const inf)
   (f64.const 0)
   (i32.const 4)
  )
  (call $std/math/test_pow
   (f64.const -0)
   (f64.neg
    (f64.const inf)
   )
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1)
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -1)
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0.5)
   (f64.const 0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const nan:0x8000000000000)
   (f64.const -0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const -0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.neg
    (f64.const inf)
   )
   (f64.const -0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1)
   (f64.const -0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -1)
   (f64.const -0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0.5)
   (f64.const -0)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -1)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -1)
   (f64.const inf)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -1)
   (f64.neg
    (f64.const inf)
   )
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -1)
   (f64.const 2)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -1)
   (f64.const -1)
   (f64.const -1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -1)
   (f64.const -2)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -1)
   (f64.const -3)
   (f64.const -1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -1)
   (f64.const 0.5)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_pow
   (f64.const 1)
   (f64.const nan:0x8000000000000)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1)
   (f64.const inf)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1)
   (f64.neg
    (f64.const inf)
   )
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1)
   (f64.const 3)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1)
   (f64.const 0.5)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1)
   (f64.const -0.5)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1)
   (f64.const -3)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0.5)
   (f64.const 0.5)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_pow
   (f64.const -0.5)
   (f64.const 1.5)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 2)
  )
  (call $std/math/test_pow
   (f64.const -0.5)
   (f64.const 2)
   (f64.const 0.25)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0.5)
   (f64.const 3)
   (f64.const -0.125)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0.5)
   (f64.const inf)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0.5)
   (f64.neg
    (f64.const inf)
   )
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -0.5)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0.5)
   (f64.const inf)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0.5)
   (f64.neg
    (f64.const inf)
   )
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 0.5)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1.5)
   (f64.const inf)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1.5)
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const 1.5)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const inf)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const 3)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const 2)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const 1)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const 0.5)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const -0.5)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const -1)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const inf)
   (f64.const -2)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.neg
    (f64.const inf)
   )
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.neg
    (f64.const inf)
   )
   (f64.const inf)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
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
  (call $std/math/test_pow
   (f64.neg
    (f64.const inf)
   )
   (f64.const 2)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
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
  (call $std/math/test_pow
   (f64.neg
    (f64.const inf)
   )
   (f64.const 0.5)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.neg
    (f64.const inf)
   )
   (f64.const -0.5)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.neg
    (f64.const inf)
   )
   (f64.const -1)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.neg
    (f64.const inf)
   )
   (f64.const -2)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const nan:0x8000000000000)
   (f64.const 1)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const nan:0x8000000000000)
   (f64.const -1)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -2)
   (f64.const 1)
   (f64.const -2)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_pow
   (f64.const -2)
   (f64.const -1)
   (f64.const -0.5)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -8.066848754882812)
   (f32.const 4.535662651062012)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_powf
   (f32.const 4.345239639282227)
   (f32.const -8.887990951538086)
   (f32.const 2.134714122803416e-06)
   (f32.const 0.1436440795660019)
   (i32.const 1)
  )
  (call $std/math/test_powf
   (f32.const -8.381433486938477)
   (f32.const -2.7636072635650635)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_powf
   (f32.const -6.531673431396484)
   (f32.const 4.567535400390625)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_powf
   (f32.const 9.267057418823242)
   (f32.const 4.811392307281494)
   (f32.const 44909.33203125)
   (f32.const -0.05356409028172493)
   (i32.const 1)
  )
  (call $std/math/test_powf
   (f32.const -6.450045585632324)
   (f32.const 0.6620717644691467)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_powf
   (f32.const 7.858890056610107)
   (f32.const 0.052154526114463806)
   (f32.const 1.1135177612304688)
   (f32.const 0.19122089445590973)
   (i32.const 1)
  )
  (call $std/math/test_powf
   (f32.const -0.7920545339584351)
   (f32.const 7.676402568817139)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_powf
   (f32.const 0.6157026886940002)
   (f32.const 2.0119025707244873)
   (f32.const 0.3769077658653259)
   (f32.const 0.337149053812027)
   (i32.const 1)
  )
  (call $std/math/test_powf
   (f32.const -0.5587586760520935)
   (f32.const 0.03223983198404312)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const inf)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const 3)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const 2)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const 0.5)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const -0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const -0.5)
   (f32.const inf)
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const -1)
   (f32.const inf)
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const -2)
   (f32.const inf)
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const -3)
   (f32.const inf)
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.const -4)
   (f32.const inf)
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_powf
   (f32.const 0)
   (f32.neg
    (f32.const inf)
   )
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const inf)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const 3)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const 2)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const 1)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const 0.5)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const -0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const -0.5)
   (f32.const inf)
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const -1)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const -2)
   (f32.const inf)
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const -3)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.const -4)
   (f32.const inf)
   (f32.const 0)
   (i32.const 4)
  )
  (call $std/math/test_powf
   (f32.const -0)
   (f32.neg
    (f32.const inf)
   )
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const nan:0x400000)
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1)
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -1)
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0.5)
   (f32.const 0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const nan:0x400000)
   (f32.const -0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const -0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.neg
    (f32.const inf)
   )
   (f32.const -0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1)
   (f32.const -0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -1)
   (f32.const -0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0.5)
   (f32.const -0)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -1)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -1)
   (f32.const inf)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -1)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -1)
   (f32.const 2)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -1)
   (f32.const -1)
   (f32.const -1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -1)
   (f32.const -2)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -1)
   (f32.const -3)
   (f32.const -1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -1)
   (f32.const 0.5)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_powf
   (f32.const 1)
   (f32.const nan:0x400000)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1)
   (f32.const inf)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1)
   (f32.const 3)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1)
   (f32.const 0.5)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1)
   (f32.const -0.5)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1)
   (f32.const -3)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0.5)
   (f32.const 0.5)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_powf
   (f32.const -0.5)
   (f32.const 1.5)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 2)
  )
  (call $std/math/test_powf
   (f32.const -0.5)
   (f32.const 2)
   (f32.const 0.25)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0.5)
   (f32.const 3)
   (f32.const -0.125)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0.5)
   (f32.const inf)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0.5)
   (f32.neg
    (f32.const inf)
   )
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -0.5)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0.5)
   (f32.const inf)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0.5)
   (f32.neg
    (f32.const inf)
   )
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 0.5)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1.5)
   (f32.const inf)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1.5)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const 1.5)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const inf)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const 3)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const 2)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const 1)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const 0.5)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const -0.5)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const -1)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const inf)
   (f32.const -2)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.neg
    (f32.const inf)
   )
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.neg
    (f32.const inf)
   )
   (f32.const inf)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
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
  (call $std/math/test_powf
   (f32.neg
    (f32.const inf)
   )
   (f32.const 2)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
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
  (call $std/math/test_powf
   (f32.neg
    (f32.const inf)
   )
   (f32.const 0.5)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.neg
    (f32.const inf)
   )
   (f32.const -0.5)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.neg
    (f32.const inf)
   )
   (f32.const -1)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.neg
    (f32.const inf)
   )
   (f32.const -2)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const nan:0x400000)
   (f32.const 1)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const nan:0x400000)
   (f32.const -1)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -2)
   (f32.const 1)
   (f32.const -2)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_powf
   (f32.const -2)
   (f32.const -1)
   (f32.const -0.5)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrt
   (f64.const -8.06684839057968)
   (f64.const -2.0055552545020245)
   (f64.const 0.46667951345443726)
   (i32.const 1)
  )
  (call $std/math/test_cbrt
   (f64.const 4.345239849338305)
   (f64.const 1.6318162410515635)
   (f64.const -0.08160271495580673)
   (i32.const 1)
  )
  (call $std/math/test_cbrt
   (f64.const -8.38143342755525)
   (f64.const -2.031293910673361)
   (f64.const -0.048101816326379776)
   (i32.const 1)
  )
  (call $std/math/test_cbrt
   (f64.const -6.531673581913484)
   (f64.const -1.8692820012204925)
   (f64.const 0.08624018728733063)
   (i32.const 1)
  )
  (call $std/math/test_cbrt
   (f64.const 9.267056966972586)
   (f64.const 2.100457720859702)
   (f64.const -0.2722989022731781)
   (i32.const 1)
  )
  (call $std/math/test_cbrt
   (f64.const 0.6619858980995045)
   (f64.const 0.8715311470455973)
   (f64.const 0.4414918124675751)
   (i32.const 1)
  )
  (call $std/math/test_cbrt
   (f64.const -0.4066039223853553)
   (f64.const -0.740839030300223)
   (f64.const 0.016453813761472702)
   (i32.const 1)
  )
  (call $std/math/test_cbrt
   (f64.const 0.5617597462207241)
   (f64.const 0.8251195400559286)
   (f64.const 0.30680638551712036)
   (i32.const 1)
  )
  (call $std/math/test_cbrt
   (f64.const 0.7741522965913037)
   (f64.const 0.9182102478959914)
   (f64.const 0.06543998420238495)
   (i32.const 1)
  )
  (call $std/math/test_cbrt
   (f64.const -0.6787637026394024)
   (f64.const -0.8788326906580094)
   (f64.const -0.2016713172197342)
   (i32.const 1)
  )
  (call $std/math/test_cbrt
   (f64.const nan:0x8000000000000)
   (f64.const nan:0x8000000000000)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrt
   (f64.const inf)
   (f64.const inf)
   (f64.const 0)
   (i32.const 0)
  )
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
  (call $std/math/test_cbrt
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrt
   (f64.const -0)
   (f64.const -0)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrt
   (f64.const 9.313225746154785e-10)
   (f64.const 0.0009765625)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrt
   (f64.const -9.313225746154785e-10)
   (f64.const -0.0009765625)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrt
   (f64.const 1)
   (f64.const 1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrt
   (f64.const -1)
   (f64.const -1)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrt
   (f64.const 8)
   (f64.const 2)
   (f64.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrtf
   (f32.const -8.066848754882812)
   (f32.const -2.0055553913116455)
   (f32.const -0.44719240069389343)
   (i32.const 1)
  )
  (call $std/math/test_cbrtf
   (f32.const 4.345239639282227)
   (f32.const 1.6318162679672241)
   (f32.const 0.44636252522468567)
   (i32.const 1)
  )
  (call $std/math/test_cbrtf
   (f32.const -8.381433486938477)
   (f32.const -2.0312938690185547)
   (f32.const 0.19483426213264465)
   (i32.const 1)
  )
  (call $std/math/test_cbrtf
   (f32.const -6.531673431396484)
   (f32.const -1.8692820072174072)
   (f32.const -0.17075514793395996)
   (i32.const 1)
  )
  (call $std/math/test_cbrtf
   (f32.const 9.267057418823242)
   (f32.const 2.1004576683044434)
   (f32.const -0.36362043023109436)
   (i32.const 1)
  )
  (call $std/math/test_cbrtf
   (f32.const 0.6619858741760254)
   (f32.const 0.8715311288833618)
   (f32.const -0.12857209146022797)
   (i32.const 1)
  )
  (call $std/math/test_cbrtf
   (f32.const -0.40660393238067627)
   (f32.const -0.7408390641212463)
   (f32.const -0.4655757546424866)
   (i32.const 1)
  )
  (call $std/math/test_cbrtf
   (f32.const 0.5617597699165344)
   (f32.const 0.8251195549964905)
   (f32.const 0.05601907894015312)
   (i32.const 1)
  )
  (call $std/math/test_cbrtf
   (f32.const 0.7741522789001465)
   (f32.const 0.9182102680206299)
   (f32.const 0.45498204231262207)
   (i32.const 1)
  )
  (call $std/math/test_cbrtf
   (f32.const -0.6787636876106262)
   (f32.const -0.8788326978683472)
   (f32.const -0.22978967428207397)
   (i32.const 1)
  )
  (call $std/math/test_cbrtf
   (f32.const nan:0x400000)
   (f32.const nan:0x400000)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrtf
   (f32.const inf)
   (f32.const inf)
   (f32.const 0)
   (i32.const 0)
  )
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
  (call $std/math/test_cbrtf
   (f32.const 0)
   (f32.const 0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrtf
   (f32.const -0)
   (f32.const -0)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrtf
   (f32.const 9.313225746154785e-10)
   (f32.const 0.0009765625)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrtf
   (f32.const -9.313225746154785e-10)
   (f32.const -0.0009765625)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrtf
   (f32.const 1)
   (f32.const 1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrtf
   (f32.const -1)
   (f32.const -1)
   (f32.const 0)
   (i32.const 0)
  )
  (call $std/math/test_cbrtf
   (f32.const 8)
   (f32.const 2)
   (f32.const 0)
   (i32.const 0)
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
          (i32.const 601)
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
 )
)
