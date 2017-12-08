(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $v (func))
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dst (mut i32) (i32.const 0))
 (global $HEAP_START i32 (i32.const 4))
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
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (block
   (set_local $3
    (get_local $0)
   )
   (set_local $4
    (get_local $1)
   )
  )
  (nop)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (tee_local $7
       (get_local $2)
      )
      (i32.rem_s
       (get_local $4)
       (i32.const 4)
      )
      (get_local $7)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $8
          (get_local $3)
         )
         (set_local $3
          (i32.add
           (get_local $8)
           (i32.const 1)
          )
         )
         (get_local $8)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $9
           (get_local $4)
          )
          (set_local $4
           (i32.add
            (get_local $9)
            (i32.const 1)
           )
          )
          (get_local $9)
         )
        )
       )
       (drop
        (block (result i32)
         (set_local $10
          (get_local $2)
         )
         (set_local $2
          (i32.sub
           (get_local $10)
           (i32.const 1)
          )
         )
         (get_local $10)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eq
    (i32.rem_s
     (get_local $3)
     (i32.const 4)
    )
    (i32.const 0)
   )
   (block
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_s
        (get_local $2)
        (i32.const 16)
       )
       (block
        (block
         (i32.store
          (get_local $3)
          (i32.load
           (get_local $4)
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 4)
          )
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const 4)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 8)
          )
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 12)
          )
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const 12)
           )
          )
         )
         (set_local $4
          (i32.add
           (get_local $4)
           (i32.const 16)
          )
         )
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $3)
       (i32.load
        (get_local $4)
       )
      )
      (i32.store
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $4)
         (i32.const 4)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 8)
       )
      )
      (set_local $4
       (i32.add
        (get_local $4)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $3)
       (i32.load
        (get_local $4)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
      )
      (set_local $4
       (i32.add
        (get_local $4)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $3)
       (i32.load16_u
        (get_local $4)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 2)
       )
      )
      (set_local $4
       (i32.add
        (get_local $4)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
     (i32.store8
      (block (result i32)
       (set_local $11
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $11)
         (i32.const 1)
        )
       )
       (get_local $11)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $12
         (get_local $4)
        )
        (set_local $4
         (i32.add
          (get_local $12)
          (i32.const 1)
         )
        )
        (get_local $12)
       )
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
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $13
        (i32.rem_s
         (get_local $3)
         (i32.const 4)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $13)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $13)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $13)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (set_local $5
       (i32.load
        (get_local $4)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $14
         (get_local $3)
        )
        (set_local $3
         (i32.add
          (get_local $14)
          (i32.const 1)
         )
        )
        (get_local $14)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $15
          (get_local $4)
         )
         (set_local $4
          (i32.add
           (get_local $15)
           (i32.const 1)
          )
         )
         (get_local $15)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $16
         (get_local $3)
        )
        (set_local $3
         (i32.add
          (get_local $16)
          (i32.const 1)
         )
        )
        (get_local $16)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $17
          (get_local $4)
         )
         (set_local $4
          (i32.add
           (get_local $17)
           (i32.const 1)
          )
         )
         (get_local $17)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $18
         (get_local $3)
        )
        (set_local $3
         (i32.add
          (get_local $18)
          (i32.const 1)
         )
        )
        (get_local $18)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $19
          (get_local $4)
         )
         (set_local $4
          (i32.add
           (get_local $19)
           (i32.const 1)
          )
         )
         (get_local $19)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 3)
       )
      )
      (block $break|3
       (loop $continue|3
        (if
         (i32.ge_s
          (get_local $2)
          (i32.const 17)
         )
         (block
          (block
           (set_local $6
            (i32.load
             (i32.add
              (get_local $4)
              (i32.const 1)
             )
            )
           )
           (i32.store
            (get_local $3)
            (i32.or
             (i32.shr_u
              (get_local $5)
              (i32.const 24)
             )
             (i32.shl
              (get_local $6)
              (i32.const 8)
             )
            )
           )
           (set_local $5
            (i32.load
             (i32.add
              (get_local $4)
              (i32.const 5)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $3)
             (i32.const 4)
            )
            (i32.or
             (i32.shr_u
              (get_local $6)
              (i32.const 24)
             )
             (i32.shl
              (get_local $5)
              (i32.const 8)
             )
            )
           )
           (set_local $6
            (i32.load
             (i32.add
              (get_local $4)
              (i32.const 9)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $3)
             (i32.const 8)
            )
            (i32.or
             (i32.shr_u
              (get_local $5)
              (i32.const 24)
             )
             (i32.shl
              (get_local $6)
              (i32.const 8)
             )
            )
           )
           (set_local $5
            (i32.load
             (i32.add
              (get_local $4)
              (i32.const 13)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $3)
             (i32.const 12)
            )
            (i32.or
             (i32.shr_u
              (get_local $6)
              (i32.const 24)
             )
             (i32.shl
              (get_local $5)
              (i32.const 8)
             )
            )
           )
           (set_local $4
            (i32.add
             (get_local $4)
             (i32.const 16)
            )
           )
           (set_local $3
            (i32.add
             (get_local $3)
             (i32.const 16)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 16)
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      (br $break|2)
     )
     (set_local $5
      (i32.load
       (get_local $4)
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $20
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $20)
         (i32.const 1)
        )
       )
       (get_local $20)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $21
         (get_local $4)
        )
        (set_local $4
         (i32.add
          (get_local $21)
          (i32.const 1)
         )
        )
        (get_local $21)
       )
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $22
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $22)
         (i32.const 1)
        )
       )
       (get_local $22)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $23
         (get_local $4)
        )
        (set_local $4
         (i32.add
          (get_local $23)
          (i32.const 1)
         )
        )
        (get_local $23)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 2)
      )
     )
     (block $break|4
      (loop $continue|4
       (if
        (i32.ge_s
         (get_local $2)
         (i32.const 18)
        )
        (block
         (block
          (set_local $6
           (i32.load
            (i32.add
             (get_local $4)
             (i32.const 2)
            )
           )
          )
          (i32.store
           (get_local $3)
           (i32.or
            (i32.shr_u
             (get_local $5)
             (i32.const 16)
            )
            (i32.shl
             (get_local $6)
             (i32.const 16)
            )
           )
          )
          (set_local $5
           (i32.load
            (i32.add
             (get_local $4)
             (i32.const 6)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $3)
            (i32.const 4)
           )
           (i32.or
            (i32.shr_u
             (get_local $6)
             (i32.const 16)
            )
            (i32.shl
             (get_local $5)
             (i32.const 16)
            )
           )
          )
          (set_local $6
           (i32.load
            (i32.add
             (get_local $4)
             (i32.const 10)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $3)
            (i32.const 8)
           )
           (i32.or
            (i32.shr_u
             (get_local $5)
             (i32.const 16)
            )
            (i32.shl
             (get_local $6)
             (i32.const 16)
            )
           )
          )
          (set_local $5
           (i32.load
            (i32.add
             (get_local $4)
             (i32.const 14)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $3)
            (i32.const 12)
           )
           (i32.or
            (i32.shr_u
             (get_local $6)
             (i32.const 16)
            )
            (i32.shl
             (get_local $5)
             (i32.const 16)
            )
           )
          )
          (set_local $4
           (i32.add
            (get_local $4)
            (i32.const 16)
           )
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 16)
           )
          )
          (set_local $2
           (i32.sub
            (get_local $2)
            (i32.const 16)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
     (br $break|2)
    )
    (set_local $5
     (i32.load
      (get_local $4)
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $24
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $24)
        (i32.const 1)
       )
      )
      (get_local $24)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $25
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $25)
         (i32.const 1)
        )
       )
       (get_local $25)
      )
     )
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (block $break|5
     (loop $continue|5
      (if
       (i32.ge_s
        (get_local $2)
        (i32.const 19)
       )
       (block
        (block
         (set_local $6
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const 3)
           )
          )
         )
         (i32.store
          (get_local $3)
          (i32.or
           (i32.shr_u
            (get_local $5)
            (i32.const 8)
           )
           (i32.shl
            (get_local $6)
            (i32.const 24)
           )
          )
         )
         (set_local $5
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const 7)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 4)
          )
          (i32.or
           (i32.shr_u
            (get_local $6)
            (i32.const 8)
           )
           (i32.shl
            (get_local $5)
            (i32.const 24)
           )
          )
         )
         (set_local $6
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const 11)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 8)
          )
          (i32.or
           (i32.shr_u
            (get_local $5)
            (i32.const 8)
           )
           (i32.shl
            (get_local $6)
            (i32.const 24)
           )
          )
         )
         (set_local $5
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const 15)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 12)
          )
          (i32.or
           (i32.shr_u
            (get_local $6)
            (i32.const 8)
           )
           (i32.shl
            (get_local $5)
            (i32.const 24)
           )
          )
         )
         (set_local $4
          (i32.add
           (get_local $4)
           (i32.const 16)
          )
         )
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
    (br $break|2)
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $26
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $26)
        (i32.const 1)
       )
      )
      (get_local $26)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $27
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $27)
         (i32.const 1)
        )
       )
       (get_local $27)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $28
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $28)
        (i32.const 1)
       )
      )
      (get_local $28)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $29
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $29)
         (i32.const 1)
        )
       )
       (get_local $29)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $30
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $30)
        (i32.const 1)
       )
      )
      (get_local $30)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $31
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $31)
         (i32.const 1)
        )
       )
       (get_local $31)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $32
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $32)
        (i32.const 1)
       )
      )
      (get_local $32)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $33
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $33)
         (i32.const 1)
        )
       )
       (get_local $33)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $34
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $34)
        (i32.const 1)
       )
      )
      (get_local $34)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $35
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $35)
         (i32.const 1)
        )
       )
       (get_local $35)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $36
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $36)
        (i32.const 1)
       )
      )
      (get_local $36)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $37
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $37)
         (i32.const 1)
        )
       )
       (get_local $37)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $38
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $38)
        (i32.const 1)
       )
      )
      (get_local $38)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $39
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $39)
         (i32.const 1)
        )
       )
       (get_local $39)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $40
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $40)
        (i32.const 1)
       )
      )
      (get_local $40)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $41
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $41)
         (i32.const 1)
        )
       )
       (get_local $41)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $42
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $42)
        (i32.const 1)
       )
      )
      (get_local $42)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $43
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $43)
         (i32.const 1)
        )
       )
       (get_local $43)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $44
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $44)
        (i32.const 1)
       )
      )
      (get_local $44)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $45
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $45)
         (i32.const 1)
        )
       )
       (get_local $45)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $46
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $46)
        (i32.const 1)
       )
      )
      (get_local $46)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $47
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $47)
         (i32.const 1)
        )
       )
       (get_local $47)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $48
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $48)
        (i32.const 1)
       )
      )
      (get_local $48)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $49
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $49)
         (i32.const 1)
        )
       )
       (get_local $49)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $50
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $50)
        (i32.const 1)
       )
      )
      (get_local $50)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $51
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $51)
         (i32.const 1)
        )
       )
       (get_local $51)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $52
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $52)
        (i32.const 1)
       )
      )
      (get_local $52)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $53
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $53)
         (i32.const 1)
        )
       )
       (get_local $53)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $54
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $54)
        (i32.const 1)
       )
      )
      (get_local $54)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $55
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $55)
         (i32.const 1)
        )
       )
       (get_local $55)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $56
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $56)
        (i32.const 1)
       )
      )
      (get_local $56)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $57
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $57)
         (i32.const 1)
        )
       )
       (get_local $57)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 8)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $58
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $58)
        (i32.const 1)
       )
      )
      (get_local $58)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $59
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $59)
         (i32.const 1)
        )
       )
       (get_local $59)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $60
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $60)
        (i32.const 1)
       )
      )
      (get_local $60)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $61
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $61)
         (i32.const 1)
        )
       )
       (get_local $61)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $62
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $62)
        (i32.const 1)
       )
      )
      (get_local $62)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $63
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $63)
         (i32.const 1)
        )
       )
       (get_local $63)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $64
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $64)
        (i32.const 1)
       )
      )
      (get_local $64)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $65
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $65)
         (i32.const 1)
        )
       )
       (get_local $65)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $66
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $66)
        (i32.const 1)
       )
      )
      (get_local $66)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $67
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $67)
         (i32.const 1)
        )
       )
       (get_local $67)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $68
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $68)
        (i32.const 1)
       )
      )
      (get_local $68)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $69
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $69)
         (i32.const 1)
        )
       )
       (get_local $69)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $70
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $70)
        (i32.const 1)
       )
      )
      (get_local $70)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $71
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $71)
         (i32.const 1)
        )
       )
       (get_local $71)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $72
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $72)
        (i32.const 1)
       )
      )
      (get_local $72)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $73
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $73)
         (i32.const 1)
        )
       )
       (get_local $73)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 4)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $74
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $74)
        (i32.const 1)
       )
      )
      (get_local $74)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $75
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $75)
         (i32.const 1)
        )
       )
       (get_local $75)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $76
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $76)
        (i32.const 1)
       )
      )
      (get_local $76)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $77
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $77)
         (i32.const 1)
        )
       )
       (get_local $77)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $78
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $78)
        (i32.const 1)
       )
      )
      (get_local $78)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $79
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $79)
         (i32.const 1)
        )
       )
       (get_local $79)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $80
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $80)
        (i32.const 1)
       )
      )
      (get_local $80)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $81
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $81)
         (i32.const 1)
        )
       )
       (get_local $81)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 2)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $82
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $82)
        (i32.const 1)
       )
      )
      (get_local $82)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $83
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $83)
         (i32.const 1)
        )
       )
       (get_local $83)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $84
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $84)
        (i32.const 1)
       )
      )
      (get_local $84)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $85
        (get_local $4)
       )
       (set_local $4
        (i32.add
         (get_local $85)
         (i32.const 1)
        )
       )
       (get_local $85)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (i32.store8
    (block (result i32)
     (set_local $86
      (get_local $3)
     )
     (set_local $3
      (i32.add
       (get_local $86)
       (i32.const 1)
      )
     )
     (get_local $86)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $87
       (get_local $4)
      )
      (set_local $4
       (i32.add
        (get_local $87)
        (i32.const 1)
       )
      )
      (get_local $87)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $start (; 1 ;) (type $v)
  (i64.store
   (i32.const 8)
   (i64.const 1229782938247303441)
  )
  (i64.store
   (i32.add
    (i32.const 8)
    (i32.const 8)
   )
   (i64.const 2459565876494606882)
  )
  (i64.store
   (i32.add
    (i32.const 8)
    (i32.const 16)
   )
   (i64.const 3689348814741910323)
  )
  (i64.store
   (i32.add
    (i32.const 8)
    (i32.const 24)
   )
   (i64.const 4919131752989213764)
  )
  (set_global $memcpy/dst
   (call $memcpy/memcpy
    (i32.add
     (i32.const 8)
     (i32.const 1)
    )
    (i32.add
     (i32.const 8)
     (i32.const 16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $memcpy/dst)
     (i32.add
      (i32.const 8)
      (i32.const 1)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.const 8)
     )
     (i64.const 1229783084848853777)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $memcpy/dst)
     (i32.const 8)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.const 8)
     )
     (i64.const 1229783084848853777)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 8)
      )
     )
     (i64.const 2459565876494606882)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 16)
      )
     )
     (i64.const 3689348814741910323)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 24)
      )
     )
     (i64.const 4919131752989213764)
    )
   )
   (unreachable)
  )
  (set_global $memcpy/dst
   (call $memcpy/memcpy
    (i32.add
     (i32.const 8)
     (i32.const 5)
    )
    (i32.add
     (i32.const 8)
     (i32.const 28)
    )
    (i32.const 3)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.const 8)
     )
     (i64.const 4919131679688438545)
    )
   )
   (unreachable)
  )
  (set_global $memcpy/dst
   (call $memcpy/memcpy
    (i32.add
     (i32.const 8)
     (i32.const 8)
    )
    (i32.add
     (i32.const 8)
     (i32.const 16)
    )
    (i32.const 15)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.const 8)
     )
     (i64.const 4919131679688438545)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 8)
      )
     )
     (i64.const 3689348814741910323)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 16)
      )
     )
     (i64.const 3694152654344438852)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (i32.const 8)
       (i32.const 24)
      )
     )
     (i64.const 4919131752989213764)
    )
   )
   (unreachable)
  )
 )
)
(;
[program.elements]
  clz
  ctz
  popcnt
  rotl
  rotr
  abs
  ceil
  copysign
  floor
  max
  min
  nearest
  sqrt
  trunc
  current_memory
  grow_memory
  unreachable
  load
  store
  reinterpret
  select
  sizeof
  changetype
  isNaN
  isFinite
  assert
  memcpy/memcpy
  memcpy/base
  memcpy/dst
[program.exports]
  memcpy/memcpy
;)
