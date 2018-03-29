(module
 (type $FFFi (func (param f64 f64 f64) (result i32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $FFi (func (param f64 f64) (result i32)))
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $fffi (func (param f32 f32 f32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $ffi (func (param f32 f32) (result i32)))
 (type $v (func))
 (import "JSOp" "mod" (func $std/mod/JSOp.mod (param f64 f64) (result f64)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $std/mod/js i32 (i32.const 1))
 (global $HEAP_BASE i32 (i32.const 28))
 (memory $0 1)
 (data (i32.const 4) "\n\00\00\00s\00t\00d\00/\00m\00o\00d\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/math/NativeMath.mod" (; 2 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
 (func $std/mod/check<f64> (; 3 ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 f64)
  (if
   (f64.ne
    (tee_local $2
     (get_local $1)
    )
    (get_local $2)
   )
   (return
    (f64.ne
     (tee_local $2
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (if
   (f64.eq
    (get_local $1)
    (f64.const 0)
   )
   (return
    (f64.eq
     (f64.div
      (f64.convert_u/i32
       (i32.const 1)
      )
      (get_local $1)
     )
     (f64.div
      (f64.const 1)
      (get_local $0)
     )
    )
   )
  )
  (return
   (f64.eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $std/mod/test_fmod (; 4 ;) (type $FFFi) (param $0 f64) (param $1 f64) (param $2 f64) (result i32)
  (local $3 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $3
      (call $std/mod/check<f64>
       (call "$(lib)/math/NativeMath.mod"
        (get_local $0)
        (get_local $1)
       )
       (get_local $2)
      )
     )
     (if (result i32)
      (tee_local $3
       (i32.eqz
        (i32.const 1)
       )
      )
      (get_local $3)
      (call $std/mod/check<f64>
       (call $std/mod/JSOp.mod
        (get_local $0)
        (get_local $1)
       )
       (get_local $2)
      )
     )
     (get_local $3)
    )
    (i32.const 1)
   )
  )
 )
 (func "$(lib)/math/NativeMathf.mod" (; 5 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
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
 (func $std/mod/check<f32> (; 6 ;) (type $ffi) (param $0 f32) (param $1 f32) (result i32)
  (local $2 f32)
  (if
   (f32.ne
    (tee_local $2
     (get_local $1)
    )
    (get_local $2)
   )
   (return
    (f32.ne
     (tee_local $2
      (get_local $0)
     )
     (get_local $2)
    )
   )
  )
  (if
   (f32.eq
    (get_local $1)
    (f32.const 0)
   )
   (return
    (f32.eq
     (f32.div
      (f32.convert_u/i32
       (i32.const 1)
      )
      (get_local $1)
     )
     (f32.div
      (f32.const 1)
      (get_local $0)
     )
    )
   )
  )
  (return
   (f32.eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $std/mod/test_fmodf (; 7 ;) (type $fffi) (param $0 f32) (param $1 f32) (param $2 f32) (result i32)
  (return
   (call $std/mod/check<f32>
    (call "$(lib)/math/NativeMathf.mod"
     (get_local $0)
     (get_local $1)
    )
    (get_local $2)
   )
  )
 )
 (func $start (; 8 ;) (type $v)
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 3)
     (f64.const 2)
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 3)
     (f64.const -2)
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -3)
     (f64.const 2)
     (f64.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -3)
     (f64.const -2)
     (f64.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 3.5)
     (f64.const 2)
     (f64.const 1.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 3.5)
     (f64.const -2)
     (f64.const 1.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -3.5)
     (f64.const 2)
     (f64.const -1.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 27)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -3.5)
     (f64.const -2)
     (f64.const -1.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 3)
     (f64.const 2.5)
     (f64.const 0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 3)
     (f64.const -2.5)
     (f64.const 0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 30)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -3)
     (f64.const 2.5)
     (f64.const -0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -3)
     (f64.const -2.5)
     (f64.const -0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 32)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 0.5)
     (f64.const 1)
     (f64.const 0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 33)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 0.5)
     (f64.const -1)
     (f64.const 0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 34)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -0.5)
     (f64.const 1)
     (f64.const -0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 35)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -0.5)
     (f64.const -1)
     (f64.const -0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 1.5)
     (f64.const 1)
     (f64.const 0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 37)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 1.5)
     (f64.const -1)
     (f64.const 0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 38)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -1.5)
     (f64.const 1)
     (f64.const -0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -1.5)
     (f64.const -1)
     (f64.const -0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 40)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 1.25)
     (f64.const 1)
     (f64.const 0.25)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 41)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 1.25)
     (f64.const -1)
     (f64.const 0.25)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 42)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -1.25)
     (f64.const 1)
     (f64.const -0.25)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 43)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -1.25)
     (f64.const -1)
     (f64.const -0.25)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 44)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 1)
     (f64.const 1.25)
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 45)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 1)
     (f64.const -1.25)
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 46)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -1)
     (f64.const 1.25)
     (f64.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 47)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -1)
     (f64.const -1.25)
     (f64.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 48)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -13)
     (f64.const 64)
     (f64.const -13)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 49)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 0)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 52)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -0)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 53)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 0)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 54)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -0)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 55)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 0)
     (f64.const 1)
     (f64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 56)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -0)
     (f64.const 1)
     (f64.const -0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 57)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 0)
     (f64.const -1)
     (f64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 58)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -0)
     (f64.const -1)
     (f64.const -0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 59)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 1)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 60)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -1)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 61)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 1)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 62)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -1)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 63)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 64)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 65)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 66)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 67)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 68)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 69)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 70)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 71)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 72)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 0)
     (f64.const inf)
     (f64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 73)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -0)
     (f64.const inf)
     (f64.const -0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 74)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 75)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -0)
     (f64.neg
      (f64.const inf)
     )
     (f64.const -0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 76)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 1)
     (f64.const inf)
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 77)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -1)
     (f64.const inf)
     (f64.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 78)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const 1)
     (f64.neg
      (f64.const inf)
     )
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 79)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const -1)
     (f64.neg
      (f64.const inf)
     )
     (f64.const -1)
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
    (call $std/mod/test_fmod
     (f64.const inf)
     (f64.const 0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 81)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const inf)
     (f64.const -0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 82)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const 0)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 83)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const -0)
     (f64.const nan:0x8000000000000)
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
    (call $std/mod/test_fmod
     (f64.const inf)
     (f64.const 1)
     (f64.const nan:0x8000000000000)
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
    (call $std/mod/test_fmod
     (f64.const inf)
     (f64.const -1)
     (f64.const nan:0x8000000000000)
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
    (call $std/mod/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const 1)
     (f64.const nan:0x8000000000000)
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
    (call $std/mod/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const -1)
     (f64.const nan:0x8000000000000)
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
    (call $std/mod/test_fmod
     (f64.const inf)
     (f64.const inf)
     (f64.const nan:0x8000000000000)
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
    (call $std/mod/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const inf)
     (f64.const nan:0x8000000000000)
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
    (call $std/mod/test_fmod
     (f64.const inf)
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 91)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 92)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const inf)
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 93)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 94)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.const inf)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 95)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmod
     (f64.const nan:0x8000000000000)
     (f64.neg
      (f64.const inf)
     )
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 96)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const 3)
     (f32.const 2)
     (f32.const 1)
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
    (call $std/mod/test_fmodf
     (f32.const 3)
     (f32.const -2)
     (f32.const 1)
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
    (call $std/mod/test_fmodf
     (f32.const -3)
     (f32.const 2)
     (f32.const -1)
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
    (call $std/mod/test_fmodf
     (f32.const -3)
     (f32.const -2)
     (f32.const -1)
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
    (call $std/mod/test_fmodf
     (f32.const 3.5)
     (f32.const 2)
     (f32.const 1.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 109)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const 3.5)
     (f32.const -2)
     (f32.const 1.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 110)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const -3.5)
     (f32.const 2)
     (f32.const -1.5)
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
    (call $std/mod/test_fmodf
     (f32.const -3.5)
     (f32.const -2)
     (f32.const -1.5)
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
    (call $std/mod/test_fmodf
     (f32.const 3)
     (f32.const 2.5)
     (f32.const 0.5)
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
    (call $std/mod/test_fmodf
     (f32.const 3)
     (f32.const -2.5)
     (f32.const 0.5)
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
    (call $std/mod/test_fmodf
     (f32.const -3)
     (f32.const 2.5)
     (f32.const -0.5)
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
    (call $std/mod/test_fmodf
     (f32.const -3)
     (f32.const -2.5)
     (f32.const -0.5)
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
    (call $std/mod/test_fmodf
     (f32.const 0.5)
     (f32.const 1)
     (f32.const 0.5)
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
    (call $std/mod/test_fmodf
     (f32.const 0.5)
     (f32.const -1)
     (f32.const 0.5)
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
    (call $std/mod/test_fmodf
     (f32.const -0.5)
     (f32.const 1)
     (f32.const -0.5)
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
    (call $std/mod/test_fmodf
     (f32.const -0.5)
     (f32.const -1)
     (f32.const -0.5)
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
    (call $std/mod/test_fmodf
     (f32.const 1.5)
     (f32.const 1)
     (f32.const 0.5)
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
    (call $std/mod/test_fmodf
     (f32.const 1.5)
     (f32.const -1)
     (f32.const 0.5)
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
    (call $std/mod/test_fmodf
     (f32.const -1.5)
     (f32.const 1)
     (f32.const -0.5)
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
    (call $std/mod/test_fmodf
     (f32.const -1.5)
     (f32.const -1)
     (f32.const -0.5)
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
    (call $std/mod/test_fmodf
     (f32.const 0)
     (f32.const 0)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const -0)
     (f32.const 0)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const 0)
     (f32.const -0)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const -0)
     (f32.const -0)
     (f32.const nan:0x400000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 130)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const 1)
     (f32.const 0)
     (f32.const nan:0x400000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 131)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const -1)
     (f32.const 0)
     (f32.const nan:0x400000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 132)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const 1)
     (f32.const -0)
     (f32.const nan:0x400000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 133)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const -1)
     (f32.const -0)
     (f32.const nan:0x400000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 134)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.const 0)
     (f32.const nan:0x400000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 135)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.const -0)
     (f32.const nan:0x400000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 136)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.const 1)
     (f32.const nan:0x400000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 137)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.const -1)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.const 0)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.const -0)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.const 1)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.const -1)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const 0)
     (f32.const inf)
     (f32.const 0)
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
    (call $std/mod/test_fmodf
     (f32.const -0)
     (f32.const inf)
     (f32.const -0)
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
    (call $std/mod/test_fmodf
     (f32.const 0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
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
    (call $std/mod/test_fmodf
     (f32.const -0)
     (f32.neg
      (f32.const inf)
     )
     (f32.const -0)
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
    (call $std/mod/test_fmodf
     (f32.const 1)
     (f32.const inf)
     (f32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 148)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const -1)
     (f32.const inf)
     (f32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 149)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $std/mod/test_fmodf
     (f32.const 1)
     (f32.neg
      (f32.const inf)
     )
     (f32.const 1)
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
    (call $std/mod/test_fmodf
     (f32.const -1)
     (f32.neg
      (f32.const inf)
     )
     (f32.const -1)
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
    (call $std/mod/test_fmodf
     (f32.const inf)
     (f32.const 0)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const inf)
     (f32.const -0)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 0)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -0)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const inf)
     (f32.const 1)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const inf)
     (f32.const -1)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const 1)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const -1)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const inf)
     (f32.const inf)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const inf)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const inf)
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const inf)
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.const inf)
     (f32.const nan:0x400000)
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
    (call $std/mod/test_fmodf
     (f32.const nan:0x400000)
     (f32.neg
      (f32.const inf)
     )
     (f32.const nan:0x400000)
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
 )
)
