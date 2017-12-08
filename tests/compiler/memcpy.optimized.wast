(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $v (func))
 (global $memcpy/dst (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memcpy" (func $memcpy/memcpy))
 (export "memory" (memory $0))
 (start $start)
 (func $memcpy/memcpy (; 0 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (set_local $23
   (get_local $2)
  )
  (set_local $16
   (get_local $2)
  )
  (set_local $30
   (get_local $2)
  )
  (set_local $31
   (get_local $2)
  )
  (set_local $32
   (get_local $2)
  )
  (set_local $33
   (get_local $2)
  )
  (set_local $34
   (get_local $2)
  )
  (set_local $35
   (get_local $2)
  )
  (set_local $36
   (get_local $2)
  )
  (set_local $37
   (get_local $2)
  )
  (set_local $38
   (get_local $2)
  )
  (set_local $39
   (get_local $2)
  )
  (set_local $11
   (get_local $2)
  )
  (set_local $19
   (get_local $2)
  )
  (set_local $20
   (get_local $2)
  )
  (set_local $21
   (get_local $2)
  )
  (set_local $22
   (get_local $2)
  )
  (set_local $6
   (tee_local $5
    (tee_local $9
     (tee_local $13
      (tee_local $17
       (tee_local $2
        (tee_local $25
         (tee_local $24
          (tee_local $28
           (tee_local $12
            (tee_local $4
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
   )
  )
  (set_local $8
   (tee_local $7
    (tee_local $10
     (tee_local $15
      (tee_local $18
       (tee_local $1
        (tee_local $27
         (tee_local $26
          (tee_local $29
           (tee_local $14
            (tee_local $3
             (get_local $1)
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
  (loop $continue|0
   (if
    (get_local $23)
    (set_local $23
     (i32.rem_s
      (get_local $3)
      (i32.const 4)
     )
    )
   )
   (if
    (get_local $23)
    (block
     (set_local $6
      (tee_local $5
       (tee_local $9
        (tee_local $13
         (tee_local $17
          (tee_local $2
           (tee_local $25
            (tee_local $24
             (tee_local $28
              (tee_local $12
               (tee_local $4
                (i32.add
                 (tee_local $23
                  (get_local $4)
                 )
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
     )
     (set_local $8
      (tee_local $7
       (tee_local $10
        (tee_local $15
         (tee_local $18
          (tee_local $1
           (tee_local $27
            (tee_local $26
             (tee_local $29
              (tee_local $14
               (tee_local $3
                (i32.add
                 (tee_local $11
                  (get_local $3)
                 )
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
     )
     (i32.store8
      (get_local $23)
      (i32.load8_u
       (get_local $11)
      )
     )
     (set_local $22
      (tee_local $21
       (tee_local $20
        (tee_local $19
         (tee_local $11
          (tee_local $39
           (tee_local $38
            (tee_local $37
             (tee_local $36
              (tee_local $35
               (tee_local $34
                (tee_local $33
                 (tee_local $32
                  (tee_local $31
                   (tee_local $30
                    (tee_local $16
                     (tee_local $23
                      (i32.sub
                       (get_local $16)
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
           )
          )
         )
        )
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.rem_s
     (get_local $4)
     (i32.const 4)
    )
   )
   (block
    (loop $continue|1
     (if
      (i32.ge_s
       (get_local $30)
       (i32.const 16)
      )
      (block
       (i32.store
        (get_local $12)
        (i32.load
         (get_local $14)
        )
       )
       (i32.store
        (i32.add
         (get_local $12)
         (i32.const 4)
        )
        (i32.load
         (i32.add
          (get_local $14)
          (i32.const 4)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $12)
         (i32.const 8)
        )
        (i32.load
         (i32.add
          (get_local $14)
          (i32.const 8)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $12)
         (i32.const 12)
        )
        (i32.load
         (i32.add
          (get_local $14)
          (i32.const 12)
         )
        )
       )
       (set_local $27
        (tee_local $26
         (tee_local $29
          (tee_local $14
           (i32.add
            (get_local $14)
            (i32.const 16)
           )
          )
         )
        )
       )
       (set_local $25
        (tee_local $24
         (tee_local $28
          (tee_local $12
           (i32.add
            (get_local $12)
            (i32.const 16)
           )
          )
         )
        )
       )
       (set_local $35
        (tee_local $34
         (tee_local $33
          (tee_local $32
           (tee_local $31
            (tee_local $30
             (i32.sub
              (get_local $31)
              (i32.const 16)
             )
            )
           )
          )
         )
        )
       )
       (br $continue|1)
      )
     )
    )
    (if
     (i32.and
      (get_local $32)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $12)
       (i32.load
        (get_local $14)
       )
      )
      (i32.store
       (i32.add
        (get_local $12)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $14)
         (i32.const 4)
        )
       )
      )
      (set_local $25
       (tee_local $24
        (tee_local $28
         (i32.add
          (get_local $12)
          (i32.const 8)
         )
        )
       )
      )
      (set_local $27
       (tee_local $26
        (tee_local $29
         (i32.add
          (get_local $14)
          (i32.const 8)
         )
        )
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $33)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $28)
       (i32.load
        (get_local $29)
       )
      )
      (set_local $25
       (tee_local $24
        (i32.add
         (get_local $28)
         (i32.const 4)
        )
       )
      )
      (set_local $27
       (tee_local $26
        (i32.add
         (get_local $29)
         (i32.const 4)
        )
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $34)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $24)
       (i32.load16_u
        (get_local $26)
       )
      )
      (set_local $25
       (i32.add
        (get_local $24)
        (i32.const 2)
       )
      )
      (set_local $27
       (i32.add
        (get_local $26)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $35)
      (i32.const 1)
     )
     (i32.store8
      (get_local $25)
      (i32.load8_u
       (get_local $27)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (if
   (i32.ge_s
    (get_local $36)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (if
       (i32.ne
        (tee_local $4
         (i32.rem_s
          (get_local $2)
          (i32.const 4)
         )
        )
        (i32.const 1)
       )
       (block
        (br_if $case1|2
         (i32.eq
          (get_local $4)
          (i32.const 2)
         )
        )
        (br_if $case2|2
         (i32.eq
          (get_local $4)
          (i32.const 3)
         )
        )
        (br $break|2)
       )
      )
      (set_local $3
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (get_local $2)
       (i32.load8_u
        (get_local $1)
       )
      )
      (i32.store8
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.load8_u
        (tee_local $4
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $6
       (tee_local $5
        (tee_local $9
         (tee_local $13
          (tee_local $17
           (tee_local $1
            (i32.add
             (tee_local $16
              (i32.add
               (get_local $2)
               (i32.const 1)
              )
             )
             (i32.const 1)
            )
           )
          )
         )
        )
       )
      )
      (set_local $8
       (tee_local $7
        (tee_local $10
         (tee_local $15
          (tee_local $18
           (tee_local $2
            (i32.add
             (tee_local $4
              (i32.add
               (get_local $4)
               (i32.const 1)
              )
             )
             (i32.const 1)
            )
           )
          )
         )
        )
       )
      )
      (i32.store8
       (get_local $16)
       (i32.load8_u
        (get_local $4)
       )
      )
      (set_local $22
       (tee_local $21
        (tee_local $20
         (tee_local $19
          (tee_local $11
           (tee_local $4
            (i32.sub
             (get_local $37)
             (i32.const 3)
            )
           )
          )
         )
        )
       )
      )
      (loop $continue|3
       (if
        (i32.ge_s
         (get_local $4)
         (i32.const 17)
        )
        (block
         (i32.store
          (get_local $1)
          (i32.or
           (i32.shr_u
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $1)
           (i32.const 4)
          )
          (i32.or
           (i32.shr_u
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $2)
               (i32.const 5)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
          (i32.or
           (i32.shr_u
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $2)
               (i32.const 9)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $1)
           (i32.const 12)
          )
          (i32.or
           (i32.shr_u
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $2)
               (i32.const 13)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (set_local $8
          (tee_local $7
           (tee_local $10
            (tee_local $15
             (tee_local $18
              (tee_local $2
               (i32.add
                (get_local $2)
                (i32.const 16)
               )
              )
             )
            )
           )
          )
         )
         (set_local $6
          (tee_local $5
           (tee_local $9
            (tee_local $13
             (tee_local $17
              (tee_local $1
               (i32.add
                (get_local $1)
                (i32.const 16)
               )
              )
             )
            )
           )
          )
         )
         (set_local $22
          (tee_local $21
           (tee_local $20
            (tee_local $19
             (tee_local $11
              (tee_local $4
               (i32.sub
                (get_local $4)
                (i32.const 16)
               )
              )
             )
            )
           )
          )
         )
         (br $continue|3)
        )
       )
      )
      (br $break|2)
     )
     (set_local $3
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (get_local $2)
      (i32.load8_u
       (get_local $1)
      )
     )
     (set_local $6
      (tee_local $5
       (tee_local $9
        (tee_local $13
         (tee_local $17
          (tee_local $2
           (i32.add
            (tee_local $4
             (i32.add
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.const 1)
           )
          )
         )
        )
       )
      )
     )
     (set_local $8
      (tee_local $7
       (tee_local $10
        (tee_local $15
         (tee_local $18
          (tee_local $1
           (i32.add
            (tee_local $16
             (i32.add
              (get_local $1)
              (i32.const 1)
             )
            )
            (i32.const 1)
           )
          )
         )
        )
       )
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $16)
      )
     )
     (set_local $22
      (tee_local $21
       (tee_local $20
        (tee_local $19
         (tee_local $11
          (tee_local $4
           (i32.sub
            (get_local $38)
            (i32.const 2)
           )
          )
         )
        )
       )
      )
     )
     (loop $continue|4
      (if
       (i32.ge_s
        (get_local $4)
        (i32.const 18)
       )
       (block
        (i32.store
         (get_local $2)
         (i32.or
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $2)
          (i32.const 4)
         )
         (i32.or
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
         (i32.or
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $2)
          (i32.const 12)
         )
         (i32.or
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (set_local $8
         (tee_local $7
          (tee_local $10
           (tee_local $15
            (tee_local $18
             (tee_local $1
              (i32.add
               (get_local $1)
               (i32.const 16)
              )
             )
            )
           )
          )
         )
        )
        (set_local $6
         (tee_local $5
          (tee_local $9
           (tee_local $13
            (tee_local $17
             (tee_local $2
              (i32.add
               (get_local $2)
               (i32.const 16)
              )
             )
            )
           )
          )
         )
        )
        (set_local $22
         (tee_local $21
          (tee_local $20
           (tee_local $19
            (tee_local $11
             (tee_local $4
              (i32.sub
               (get_local $4)
               (i32.const 16)
              )
             )
            )
           )
          )
         )
        )
        (br $continue|4)
       )
      )
     )
     (br $break|2)
    )
    (set_local $16
     (i32.load
      (get_local $1)
     )
    )
    (set_local $6
     (tee_local $5
      (tee_local $9
       (tee_local $13
        (tee_local $17
         (tee_local $4
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
    )
    (set_local $8
     (tee_local $7
      (tee_local $10
       (tee_local $15
        (tee_local $18
         (tee_local $3
          (i32.add
           (get_local $1)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
    )
    (i32.store8
     (get_local $2)
     (i32.load8_u
      (get_local $1)
     )
    )
    (set_local $22
     (tee_local $21
      (tee_local $20
       (tee_local $19
        (tee_local $11
         (tee_local $1
          (i32.sub
           (get_local $39)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
    )
    (loop $continue|5
     (if
      (i32.ge_s
       (get_local $1)
       (i32.const 19)
      )
      (block
       (i32.store
        (get_local $4)
        (i32.or
         (i32.shr_u
          (get_local $16)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $2
           (i32.load
            (i32.add
             (get_local $3)
             (i32.const 3)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $4)
         (i32.const 4)
        )
        (i32.or
         (i32.shr_u
          (get_local $2)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $2
           (i32.load
            (i32.add
             (get_local $3)
             (i32.const 7)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $4)
         (i32.const 8)
        )
        (i32.or
         (i32.shr_u
          (get_local $2)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $2
           (i32.load
            (i32.add
             (get_local $3)
             (i32.const 11)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $4)
         (i32.const 12)
        )
        (i32.or
         (i32.shr_u
          (get_local $2)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $16
           (i32.load
            (i32.add
             (get_local $3)
             (i32.const 15)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (set_local $8
        (tee_local $7
         (tee_local $10
          (tee_local $15
           (tee_local $18
            (tee_local $3
             (i32.add
              (get_local $3)
              (i32.const 16)
             )
            )
           )
          )
         )
        )
       )
       (set_local $6
        (tee_local $5
         (tee_local $9
          (tee_local $13
           (tee_local $17
            (tee_local $4
             (i32.add
              (get_local $4)
              (i32.const 16)
             )
            )
           )
          )
         )
        )
       )
       (set_local $22
        (tee_local $21
         (tee_local $20
          (tee_local $19
           (tee_local $11
            (tee_local $1
             (i32.sub
              (get_local $1)
              (i32.const 16)
             )
            )
           )
          )
         )
        )
       )
       (br $continue|5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $11)
    (i32.const 16)
   )
   (block
    (i32.store8
     (get_local $17)
     (i32.load8_u
      (get_local $18)
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $17)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $18)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $6
     (tee_local $5
      (tee_local $9
       (tee_local $13
        (i32.add
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 1)
          )
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (set_local $8
     (tee_local $7
      (tee_local $10
       (tee_local $15
        (i32.add
         (tee_local $2
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (get_local $2)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $19)
    (i32.const 8)
   )
   (block
    (i32.store8
     (get_local $13)
     (i32.load8_u
      (get_local $15)
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $13)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $15)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $6
     (tee_local $5
      (tee_local $9
       (i32.add
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
     )
    )
    (set_local $8
     (tee_local $7
      (tee_local $10
       (i32.add
        (tee_local $2
         (i32.add
          (get_local $2)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (get_local $2)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $20)
    (i32.const 4)
   )
   (block
    (i32.store8
     (get_local $9)
     (i32.load8_u
      (get_local $10)
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $9)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $10)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $6
     (tee_local $5
      (i32.add
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $8
     (tee_local $7
      (i32.add
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (get_local $2)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $21)
    (i32.const 2)
   )
   (block
    (i32.store8
     (get_local $5)
     (i32.load8_u
      (get_local $7)
     )
    )
    (set_local $6
     (i32.add
      (tee_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $8
     (i32.add
      (tee_local $2
       (i32.add
        (get_local $7)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (get_local $2)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $22)
    (i32.const 1)
   )
   (i32.store8
    (get_local $6)
    (i32.load8_u
     (get_local $8)
    )
   )
  )
  (get_local $0)
 )
 (func $start (; 1 ;) (type $v)
  (i64.store
   (i32.const 8)
   (i64.const 1229782938247303441)
  )
  (i64.store
   (i32.const 16)
   (i64.const 2459565876494606882)
  )
  (i64.store
   (i32.const 24)
   (i64.const 3689348814741910323)
  )
  (i64.store
   (i32.const 32)
   (i64.const 4919131752989213764)
  )
  (set_global $memcpy/dst
   (call $memcpy/memcpy
    (i32.const 9)
    (i32.const 24)
    (i32.const 4)
   )
  )
  (if
   (i32.ne
    (get_global $memcpy/dst)
    (i32.const 9)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 8)
    )
    (i64.const 1229783084848853777)
   )
   (unreachable)
  )
  (set_global $memcpy/dst
   (call $memcpy/memcpy
    (i32.const 8)
    (i32.const 8)
    (i32.const 32)
   )
  )
  (if
   (i32.ne
    (get_global $memcpy/dst)
    (i32.const 8)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 8)
    )
    (i64.const 1229783084848853777)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 16)
    )
    (i64.const 2459565876494606882)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 24)
    )
    (i64.const 3689348814741910323)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 32)
    )
    (i64.const 4919131752989213764)
   )
   (unreachable)
  )
  (set_global $memcpy/dst
   (call $memcpy/memcpy
    (i32.const 13)
    (i32.const 36)
    (i32.const 3)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 8)
    )
    (i64.const 4919131679688438545)
   )
   (unreachable)
  )
  (set_global $memcpy/dst
   (call $memcpy/memcpy
    (i32.const 16)
    (i32.const 24)
    (i32.const 15)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 8)
    )
    (i64.const 4919131679688438545)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 16)
    )
    (i64.const 3689348814741910323)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 24)
    )
    (i64.const 3694152654344438852)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 32)
    )
    (i64.const 4919131752989213764)
   )
   (unreachable)
  )
 )
)
