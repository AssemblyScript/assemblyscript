(module
 (type $FFF (func (param f64 f64) (result f64)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $fi (func (param f32) (result i32)))
 (type $fif (func (param f32 i32) (result f32)))
 (type $Fi (func (param f64) (result i32)))
 (type $v (func))
 (global $binary/b (mut i32) (i32.const 0))
 (global $binary/i (mut i32) (i32.const 0))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/math/NativeMath.scalbn (; 0 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
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
 (func $~lib/math/NativeMath.pow (; 1 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
   (if (result i32)
    (tee_local $9
     (if (result i32)
      (tee_local $9
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
      )
      (get_local $9)
      (i32.gt_s
       (get_local $8)
       (i32.const 2146435072)
      )
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
       (f64.const nan:0x8000000000000)
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
    (if (result i32)
     (tee_local $9
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
     )
     (get_local $9)
     (i32.eq
      (get_local $7)
      (i32.const 1072693248)
     )
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
    (call $~lib/math/NativeMath.scalbn
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
 (func $isNaN<f32> (; 2 ;) (type $fi) (param $0 f32) (result i32)
  (return
   (f32.ne
    (get_local $0)
    (get_local $0)
   )
  )
 )
 (func $~lib/math/NativeMathf.mod (; 3 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
   (if (result i32)
    (tee_local $7
     (if (result i32)
      (tee_local $7
       (i32.eq
        (i32.shl
         (get_local $3)
         (i32.const 1)
        )
        (i32.const 0)
       )
      )
      (get_local $7)
      (call $isNaN<f32>
       (get_local $1)
      )
     )
    )
    (get_local $7)
    (i32.eq
     (get_local $4)
     (i32.const 255)
    )
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
  (if
   (i32.eqz
    (get_local $4)
   )
   (block
    (block $break|0
     (set_local $8
      (i32.shl
       (get_local $2)
       (i32.const 9)
      )
     )
     (loop $repeat|0
      (br_if $break|0
       (i32.eqz
        (i32.eqz
         (i32.shr_u
          (get_local $8)
          (i32.const 31)
         )
        )
       )
      )
      (set_local $4
       (i32.sub
        (get_local $4)
        (i32.const 1)
       )
      )
      (set_local $8
       (i32.shl
        (get_local $8)
        (i32.const 1)
       )
      )
      (br $repeat|0)
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
     (set_local $8
      (i32.shl
       (get_local $3)
       (i32.const 9)
      )
     )
     (loop $repeat|1
      (br_if $break|1
       (i32.eqz
        (i32.eqz
         (i32.shr_u
          (get_local $8)
          (i32.const 31)
         )
        )
       )
      )
      (set_local $5
       (i32.sub
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $8
       (i32.shl
        (get_local $8)
        (i32.const 1)
       )
      )
      (br $repeat|1)
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
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.gt_s
       (get_local $4)
       (get_local $5)
      )
     )
    )
    (block
     (set_local $8
      (i32.sub
       (get_local $2)
       (get_local $3)
      )
     )
     (if
      (i32.eqz
       (i32.shr_u
        (get_local $8)
        (i32.const 31)
       )
      )
      (block
       (if
        (i32.eqz
         (get_local $8)
        )
        (return
         (f32.mul
          (f32.const 0)
          (get_local $0)
         )
        )
       )
       (set_local $2
        (get_local $8)
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
    (br $repeat|2)
   )
  )
  (set_local $8
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i32.eqz
    (i32.shr_u
     (get_local $8)
     (i32.const 31)
    )
   )
   (block
    (if
     (i32.eqz
      (get_local $8)
     )
     (return
      (f32.mul
       (f32.const 0)
       (get_local $0)
      )
     )
    )
    (set_local $2
     (get_local $8)
    )
   )
  )
  (block $break|3
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.eqz
       (i32.shr_u
        (get_local $2)
        (i32.const 23)
       )
      )
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
 (func $~lib/math/NativeMathf.scalbn (; 4 ;) (type $fif) (param $0 f32) (param $1 i32) (result f32)
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
 (func $~lib/math/NativeMathf.pow (; 5 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
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
     (f32.const nan:0x400000)
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
  (if
   (if (result i32)
    (tee_local $6
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
    )
    (get_local $6)
    (i32.eq
     (get_local $4)
     (i32.const 1065353216)
    )
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
    (call $~lib/math/NativeMathf.scalbn
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
 (func $isNaN<f64> (; 6 ;) (type $Fi) (param $0 f64) (result i32)
  (return
   (f64.ne
    (get_local $0)
    (get_local $0)
   )
  )
 )
 (func $~lib/math/NativeMath.mod (; 7 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
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
   (if (result i32)
    (tee_local $7
     (if (result i32)
      (tee_local $7
       (i64.eq
        (i64.shl
         (get_local $3)
         (i64.const 1)
        )
        (i64.const 0)
       )
      )
      (get_local $7)
      (call $isNaN<f64>
       (get_local $1)
      )
     )
    )
    (get_local $7)
    (i32.eq
     (get_local $4)
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
  (if
   (i32.eqz
    (get_local $4)
   )
   (block
    (block $break|0
     (set_local $8
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
          (get_local $8)
          (i64.const 63)
         )
        )
       )
      )
      (set_local $4
       (i32.sub
        (get_local $4)
        (i32.const 1)
       )
      )
      (set_local $8
       (i64.shl
        (get_local $8)
        (i64.const 1)
       )
      )
      (br $repeat|0)
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
     (set_local $8
      (i64.shl
       (get_local $3)
       (i64.const 12)
      )
     )
     (loop $repeat|1
      (br_if $break|1
       (i32.eqz
        (i64.eqz
         (i64.shr_u
          (get_local $8)
          (i64.const 63)
         )
        )
       )
      )
      (set_local $5
       (i32.sub
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $8
       (i64.shl
        (get_local $8)
        (i64.const 1)
       )
      )
      (br $repeat|1)
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
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.gt_s
       (get_local $4)
       (get_local $5)
      )
     )
    )
    (block
     (set_local $8
      (i64.sub
       (get_local $2)
       (get_local $3)
      )
     )
     (if
      (i64.eqz
       (i64.shr_u
        (get_local $8)
        (i64.const 63)
       )
      )
      (block
       (if
        (i64.eqz
         (get_local $8)
        )
        (return
         (f64.mul
          (f64.const 0)
          (get_local $0)
         )
        )
       )
       (set_local $2
        (get_local $8)
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
    (br $repeat|2)
   )
  )
  (set_local $8
   (i64.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i64.eqz
    (i64.shr_u
     (get_local $8)
     (i64.const 63)
    )
   )
   (block
    (if
     (i64.eqz
      (get_local $8)
     )
     (return
      (f64.mul
       (f64.const 0)
       (get_local $0)
      )
     )
    )
    (set_local $2
     (get_local $8)
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
    (br $repeat|3)
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
 (func $start (; 8 ;) (type $v)
  (drop
   (i32.lt_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.gt_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.le_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.ge_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.eq
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.eq
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.add
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.sub
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.mul
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.div_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.rem_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (call $~lib/math/NativeMath.pow
    (f64.convert_s/i32
     (get_global $binary/i)
    )
    (f64.const 1)
   )
  )
  (drop
   (i32.shl
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.shr_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.shr_u
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.and
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.or
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i32.xor
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.lt_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.gt_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.le_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.ge_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.eq
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/b
   (i32.eq
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.add
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.sub
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.mul
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.div_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.rem_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.trunc_s/f64
    (call $~lib/math/NativeMath.pow
     (f64.convert_s/i32
      (get_global $binary/i)
     )
     (f64.const 1)
    )
   )
  )
  (set_global $binary/i
   (i32.shl
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shr_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shr_u
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.and
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.or
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.xor
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.add
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.sub
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.mul
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.rem_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shl
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shr_s
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.shr_u
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.and
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.or
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (set_global $binary/i
   (i32.xor
    (get_global $binary/i)
    (i32.const 1)
   )
  )
  (drop
   (i64.lt_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.gt_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.le_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.ge_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.eq
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.eq
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.add
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.sub
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.mul
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.div_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.rem_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (call $~lib/math/NativeMath.pow
    (f64.convert_s/i64
     (get_global $binary/I)
    )
    (f64.const 1)
   )
  )
  (drop
   (i64.shl
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.shr_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.shr_u
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.and
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.or
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (i64.xor
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.lt_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.gt_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.le_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.ge_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.eq
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/b
   (i64.eq
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.add
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.sub
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.mul
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.div_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.rem_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.trunc_s/f64
    (call $~lib/math/NativeMath.pow
     (f64.convert_s/i64
      (get_global $binary/I)
     )
     (f64.const 1)
    )
   )
  )
  (set_global $binary/I
   (i64.shl
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shr_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shr_u
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.and
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.or
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.xor
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.add
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.sub
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.mul
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.rem_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shl
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shr_s
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.shr_u
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.and
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.or
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (set_global $binary/I
   (i64.xor
    (get_global $binary/I)
    (i64.const 1)
   )
  )
  (drop
   (f32.lt
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (f32.gt
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (f32.le
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (f32.ge
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (f32.eq
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (f32.eq
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (f32.add
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (f32.sub
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (f32.mul
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (f32.div
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (call $~lib/math/NativeMathf.mod
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (call $~lib/math/NativeMathf.pow
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.lt
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.gt
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.le
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.ge
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.eq
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/b
   (f32.eq
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.add
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.sub
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.mul
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.div
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (call $~lib/math/NativeMathf.mod
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (call $~lib/math/NativeMathf.pow
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.add
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.sub
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (f32.mul
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (call $~lib/math/NativeMathf.mod
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (set_global $binary/f
   (call $~lib/math/NativeMathf.pow
    (get_global $binary/f)
    (f32.const 1)
   )
  )
  (drop
   (f64.lt
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (f64.gt
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (f64.le
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (f64.ge
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (f64.eq
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (f64.eq
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (f64.add
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (f64.sub
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (f64.mul
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (f64.div
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (call $~lib/math/NativeMath.mod
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (drop
   (call $~lib/math/NativeMath.pow
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.lt
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.gt
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.le
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.ge
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.eq
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/b
   (f64.eq
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.add
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.sub
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.mul
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.div
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (call $~lib/math/NativeMath.mod
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (call $~lib/math/NativeMath.pow
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.add
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.sub
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (f64.mul
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (call $~lib/math/NativeMath.mod
    (get_global $binary/F)
    (f64.const 1)
   )
  )
  (set_global $binary/F
   (call $~lib/math/NativeMath.pow
    (get_global $binary/F)
    (f64.const 1)
   )
  )
 )
)
