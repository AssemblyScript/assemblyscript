(module
 (type $FF (func (param f64) (result f64)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ff (func (param f32) (result f32)))
 (type $Ff (func (param f64) (result f32)))
 (type $v (func))
 (import "JSMath" "log" (func $(lib)/math/JSMath.log (param f64) (result f64)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (import "JSMath" "fround" (func $(lib)/math/JSMath.fround (param f64) (result f32)))
 (memory $0 1)
 (data (i32.const 4) "\0b\00\00\00s\00t\00d\00/\00m\00a\00t\00h\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/math/Math.log" (; 3 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (if
   (i32.and
    (if (result i32)
     (tee_local $5
      (i32.lt_u
       (tee_local $1
        (i32.wrap/i64
         (i64.shr_u
          (tee_local $3
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
     (get_local $5)
     (i32.shr_u
      (get_local $1)
      (i32.const 31)
     )
    )
    (i32.const 1)
   )
   (block
    (if
     (i64.eq
      (i64.shl
       (get_local $3)
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
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 54)
     )
    )
    (set_local $1
     (i32.wrap/i64
      (i64.shr_u
       (tee_local $3
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
    (if
     (i32.and
      (if (result i32)
       (tee_local $5
        (i32.eq
         (get_local $1)
         (i32.const 1072693248)
        )
       )
       (i64.eq
        (i64.shl
         (get_local $3)
         (i64.const 32)
        )
        (i64.const 0)
       )
       (get_local $5)
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
  (set_local $6
   (f64.mul
    (f64.mul
     (f64.const 0.5)
     (tee_local $4
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
          (get_local $3)
          (i64.const 4294967295)
         )
        )
       )
       (f64.const 1)
      )
     )
    )
    (get_local $4)
   )
  )
  (set_local $0
   (f64.mul
    (tee_local $8
     (f64.mul
      (tee_local $7
       (f64.div
        (get_local $4)
        (f64.add
         (f64.const 2)
         (get_local $4)
        )
       )
      )
      (get_local $7)
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
       (get_local $7)
       (f64.add
        (get_local $6)
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
      (f64.mul
       (f64.convert_s/i32
        (get_local $2)
       )
       (f64.const 1.9082149292705877e-10)
      )
     )
     (get_local $6)
    )
    (get_local $4)
   )
   (f64.mul
    (f64.convert_s/i32
     (get_local $2)
    )
    (f64.const 0.6931471803691238)
   )
  )
 )
 (func "$(lib)/math/Mathf.log" (; 4 ;) (type $ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  (if
   (i32.and
    (if (result i32)
     (tee_local $6
      (i32.lt_u
       (tee_local $1
        (i32.reinterpret/f32
         (get_local $0)
        )
       )
       (i32.const 8388608)
      )
     )
     (get_local $6)
     (i32.shr_u
      (get_local $1)
      (i32.const 31)
     )
    )
    (i32.const 1)
   )
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
     (i32.sub
      (get_local $2)
      (i32.const 25)
     )
    )
    (set_local $1
     (i32.reinterpret/f32
      (f32.mul
       (get_local $0)
       (f32.const 3.355443239212036)
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
  (set_local $3
   (f32.mul
    (tee_local $5
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
    (get_local $5)
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
          (get_local $5)
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
      (f32.mul
       (tee_local $3
        (f32.convert_s/i32
         (get_local $2)
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
    (get_local $3)
    (f32.const 0.6931381225585938)
   )
  )
 )
 (func $start (; 5 ;) (type $v)
  (if
   (f64.ne
    (call "$(lib)/math/Math.log"
     (f64.const 123)
    )
    (call "$(lib)/math/JSMath.log"
     (f64.const 123)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 2)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (call "$(lib)/math/Mathf.log"
     (f32.const 123)
    )
    (call "$(lib)/math/JSMath.fround"
     (call "$(lib)/math/JSMath.log"
      (f64.const 123)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 3)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
