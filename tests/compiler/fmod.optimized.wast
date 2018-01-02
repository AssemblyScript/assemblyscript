(module
 (type $FFF (func (param f64 f64) (result f64)))
 (type $v (func))
 (memory $0 1)
 (export "fmod" (func $fmod/fmod))
 (export "memory" (memory $0))
 (start $start)
 (func $fmod/fmod (; 0 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
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
   (if (result i32)
    (if (result i32)
     (tee_local $7
      (i64.eq
       (i64.shl
        (get_local $5)
        (i64.const 1)
       )
       (i64.const 0)
      )
     )
     (get_local $7)
     (tee_local $7
      (f64.ne
       (tee_local $9
        (get_local $1)
       )
       (get_local $9)
      )
     )
    )
    (get_local $7)
    (i32.eq
     (get_local $3)
     (i32.const 2047)
    )
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
     (get_local $5)
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
       (get_local $5)
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
     (set_local $4
      (i64.shl
       (get_local $2)
       (i64.const 12)
      )
     )
     (loop $continue|0
      (if
       (i64.eqz
        (i64.shr_u
         (get_local $4)
         (i64.const 63)
        )
       )
       (block
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
        (br $continue|0)
       )
      )
     )
     (i64.shl
      (get_local $2)
      (i64.add
       (i64.sub
        (i64.const 0)
        (i64.extend_u/i32
         (get_local $3)
        )
       )
       (i64.const 1)
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
     (set_local $4
      (i64.shl
       (get_local $5)
       (i64.const 12)
      )
     )
     (loop $continue|1
      (if
       (i64.eqz
        (i64.shr_u
         (get_local $4)
         (i64.const 63)
        )
       )
       (block
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
        (br $continue|1)
       )
      )
     )
     (i64.shl
      (get_local $5)
      (i64.add
       (i64.sub
        (i64.const 0)
        (i64.extend_u/i32
         (get_local $6)
        )
       )
       (i64.const 1)
      )
     )
    )
   )
  )
  (loop $continue|2
   (if
    (i32.gt_s
     (get_local $3)
     (get_local $6)
    )
    (block
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
       (if
        (i64.eqz
         (get_local $4)
        )
        (return
         (f64.mul
          (f64.const 0)
          (get_local $0)
         )
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
     (br $continue|2)
    )
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
    (if
     (i64.eqz
      (get_local $4)
     )
     (return
      (f64.mul
       (f64.const 0)
       (get_local $0)
      )
     )
    )
    (set_local $2
     (get_local $4)
    )
   )
  )
  (loop $continue|3
   (if
    (i64.eqz
     (i64.shr_u
      (get_local $2)
      (i64.const 52)
     )
    )
    (block
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
     (br $continue|3)
    )
   )
  )
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
       (i64.add
        (i64.sub
         (i64.const 0)
         (i64.extend_u/i32
          (get_local $3)
         )
        )
        (i64.const 1)
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
 (func $start (; 1 ;) (type $v)
  (local $0 f64)
  (if
   (f64.eq
    (tee_local $0
     (call $fmod/fmod
      (f64.const 1)
      (f64.const nan:0x8000000000000)
     )
    )
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $fmod/fmod
     (f64.const 1.5)
     (f64.const 1)
    )
    (f64.const 0.5)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.lt
     (f64.sub
      (call $fmod/fmod
       (f64.const 9.2)
       (f64.const 2)
      )
      (f64.const 1.2)
     )
     (f64.const 2.220446049250313e-16)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.lt
     (f64.sub
      (call $fmod/fmod
       (f64.const 9.2)
       (f64.const 3.7)
      )
      (f64.const 1.8)
     )
     (f64.const 2.220446049250313e-16)
    )
   )
   (unreachable)
  )
 )
)
