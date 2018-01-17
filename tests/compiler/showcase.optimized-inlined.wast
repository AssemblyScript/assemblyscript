(module
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $v (func))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $if (func (param i32) (result f32)))
 (global $showcase/aConstantGlobal i32 (i32.const 42))
 (global $showcase/anExportedConstantGlobal f32 (f32.const 42))
 (global $showcase/aMutableGlobal (mut i32) (i32.const 42))
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (global $binary/b (mut i32) (i32.const 0))
 (global $binary/i (mut i32) (i32.const 0))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (global $showcase/ANamespace.aNamespacedGlobal (mut i32) (i32.const 42))
 (global $showcase/AnEnum.ONE i32 (i32.const 1))
 (global $showcase/AnEnum.TWO i32 (i32.const 2))
 (global $showcase/AnEnum.FOUR i32 (i32.const 4))
 (global $showcase/AnEnum.FIVE i32 (i32.const 5))
 (global $showcase/AnEnum.FORTYTWO (mut i32) (i32.const 0))
 (global $showcase/AnEnum.FORTYTHREE (mut i32) (i32.const 0))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (global $showcase/aClassInstance (mut i32) (i32.const 8))
 (global $showcase/AClass.aStaticField (mut i32) (i32.const 0))
 (memory $0 1)
 (export "anExportedConstantGlobal" (global $showcase/anExportedConstantGlobal))
 (export "aConstantGlobal" (global $showcase/aConstantGlobal))
 (export "anAliasedConstantGlobal" (global $showcase/anExportedConstantGlobal))
 (export "showcase/AnEnum.ONE" (global $showcase/AnEnum.ONE))
 (export "showcase/AnEnum.TWO" (global $showcase/AnEnum.TWO))
 (export "showcase/AnEnum.FOUR" (global $showcase/AnEnum.FOUR))
 (export "showcase/AnEnum.FIVE" (global $showcase/AnEnum.FIVE))
 (export "anExportedFunction" (func $showcase/anExportedFunction))
 (export "memory" (memory $0))
 (start $start)
 (func $showcase/anExportedFunction (; 0 ;) (type $v)
  (nop)
 )
 (func $memcpy/memcpy (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (get_local $0)
  )
  (loop $continue|0
   (if
    (if (result i32)
     (get_local $2)
     (i32.rem_u
      (get_local $1)
      (i32.const 4)
     )
     (get_local $2)
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $3
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $3)
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.rem_u
     (get_local $0)
     (i32.const 4)
    )
   )
   (block
    (loop $continue|1
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 16)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.load
         (get_local $1)
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 8)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 12)
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 12)
         )
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 16)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 16)
        )
       )
       (br $continue|1)
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
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
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
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
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
       (get_local $0)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
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
     (block
      (set_local $3
       (get_local $0)
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $3
         (get_local $1)
        )
        (i32.load8_u
         (get_local $3)
        )
       )
      )
     )
    )
    (return
     (get_local $5)
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (block $tablify|0
        (br_table $case0|2 $case1|2 $case2|2 $tablify|0
         (i32.sub
          (i32.rem_u
           (get_local $0)
           (i32.const 4)
          )
          (i32.const 1)
         )
        )
       )
       (br $break|2)
      )
      (set_local $4
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 3)
       )
      )
      (loop $continue|3
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 17)
        )
        (block
         (i32.store
          (get_local $0)
          (i32.or
           (i32.shr_u
            (get_local $4)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
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
           (get_local $0)
           (i32.const 4)
          )
          (i32.or
           (i32.shr_u
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $4
             (i32.load
              (i32.add
               (get_local $1)
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
           (get_local $0)
           (i32.const 8)
          )
          (i32.or
           (i32.shr_u
            (get_local $4)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
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
           (get_local $0)
           (i32.const 12)
          )
          (i32.or
           (i32.shr_u
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
         (br $continue|3)
        )
       )
      )
      (br $break|2)
     )
     (set_local $4
      (i32.load
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $3)
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $3)
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 2)
      )
     )
     (loop $continue|4
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 18)
       )
       (block
        (i32.store
         (get_local $0)
         (i32.or
          (i32.shr_u
           (get_local $4)
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
          (get_local $0)
          (i32.const 4)
         )
         (i32.or
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $4
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
          (get_local $0)
          (i32.const 8)
         )
         (i32.or
          (i32.shr_u
           (get_local $4)
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
          (get_local $0)
          (i32.const 12)
         )
         (i32.or
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $4
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
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 16)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 16)
         )
        )
        (set_local $2
         (i32.sub
          (get_local $2)
          (i32.const 16)
         )
        )
        (br $continue|4)
       )
      )
     )
     (br $break|2)
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (loop $continue|5
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 19)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.or
         (i32.shr_u
          (get_local $4)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
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
         (get_local $0)
         (i32.const 4)
        )
        (i32.or
         (i32.shr_u
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $4
           (i32.load
            (i32.add
             (get_local $1)
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
         (get_local $0)
         (i32.const 8)
        )
        (i32.or
         (i32.shr_u
          (get_local $4)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
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
         (get_local $0)
         (i32.const 12)
        )
        (i32.or
         (i32.shr_u
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 16)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 16)
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
    (get_local $2)
    (i32.const 16)
   )
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
   (block
    (set_local $3
     (get_local $0)
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $3
       (get_local $1)
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  (get_local $5)
 )
 (func $fmod/fmod (; 2 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
   (i32.and
    (if (result i32)
     (tee_local $7
      (i32.and
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
        (f64.ne
         (tee_local $9
          (get_local $1)
         )
         (get_local $9)
        )
       )
       (i32.const 1)
      )
     )
     (get_local $7)
     (i32.eq
      (get_local $3)
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
      (i64.extend_u/i32
       (i32.add
        (i32.sub
         (i32.const 0)
         (get_local $3)
        )
        (i32.const 1)
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
      (i64.extend_u/i32
       (i32.add
        (i32.sub
         (i32.const 0)
         (get_local $6)
        )
        (i32.const 1)
       )
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
       (i64.extend_u/i32
        (i32.add
         (i32.sub
          (i32.const 0)
          (get_local $3)
         )
         (i32.const 1)
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
 (func $fmod/fmodf (; 3 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
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
   (i32.and
    (if (result i32)
     (tee_local $3
      (i32.and
       (if (result i32)
        (tee_local $3
         (i32.eqz
          (i32.shl
           (get_local $5)
           (i32.const 1)
          )
         )
        )
        (get_local $3)
        (f32.ne
         (tee_local $8
          (get_local $1)
         )
         (get_local $8)
        )
       )
       (i32.const 1)
      )
     )
     (get_local $3)
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
     (get_local $5)
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
       (get_local $5)
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
     (set_local $3
      (i32.shl
       (get_local $2)
       (i32.const 9)
      )
     )
     (loop $continue|0
      (if
       (i32.eqz
        (i32.shr_u
         (get_local $3)
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
        (set_local $3
         (i32.shl
          (get_local $3)
          (i32.const 1)
         )
        )
        (br $continue|0)
       )
      )
     )
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
     (set_local $3
      (i32.shl
       (get_local $5)
       (i32.const 9)
      )
     )
     (loop $continue|1
      (if
       (i32.eqz
        (i32.shr_u
         (get_local $3)
         (i32.const 31)
        )
       )
       (block
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
        (br $continue|1)
       )
      )
     )
     (i32.shl
      (get_local $5)
      (i32.add
       (i32.sub
        (i32.const 0)
        (get_local $6)
       )
       (i32.const 1)
      )
     )
    )
   )
  )
  (loop $continue|2
   (if
    (i32.gt_s
     (get_local $4)
     (get_local $6)
    )
    (block
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
       (if
        (i32.eqz
         (get_local $3)
        )
        (return
         (f32.mul
          (f32.const 0)
          (get_local $0)
         )
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
     (br $continue|2)
    )
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
    (if
     (i32.eqz
      (get_local $3)
     )
     (return
      (f32.mul
       (f32.const 0)
       (get_local $0)
      )
     )
    )
    (set_local $2
     (get_local $3)
    )
   )
  )
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
    (get_local $7)
   )
  )
 )
 (func $start (; 4 ;) (type $v)
  (local $0 f64)
  (local $1 f32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  (local $14 f32)
  (local $15 i32)
  (set_global $unary/i
   (i32.add
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.sub
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.add
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.sub
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.const 1)
  )
  (set_global $unary/i
   (i32.const -1)
  )
  (set_global $unary/i
   (i32.const 0)
  )
  (set_global $unary/i
   (i32.const -2)
  )
  (set_global $unary/i
   (i32.sub
    (i32.const 0)
    (get_global $unary/i)
   )
  )
  (set_global $unary/i
   (i32.eqz
    (get_global $unary/i)
   )
  )
  (set_global $unary/i
   (i32.xor
    (get_global $unary/i)
    (i32.const -1)
   )
  )
  (set_global $unary/i
   (block (result i32)
    (set_global $unary/i
     (i32.add
      (get_global $unary/i)
      (i32.const 1)
     )
    )
    (get_global $unary/i)
   )
  )
  (set_global $unary/i
   (block (result i32)
    (set_global $unary/i
     (i32.sub
      (get_global $unary/i)
      (i32.const 1)
     )
    )
    (get_global $unary/i)
   )
  )
  (set_global $unary/i
   (block (result i32)
    (set_global $unary/i
     (i32.add
      (tee_local $2
       (get_global $unary/i)
      )
      (i32.const 1)
     )
    )
    (get_local $2)
   )
  )
  (set_global $unary/i
   (block (result i32)
    (set_global $unary/i
     (i32.sub
      (tee_local $2
       (get_global $unary/i)
      )
      (i32.const 1)
     )
    )
    (get_local $2)
   )
  )
  (set_global $unary/I
   (i64.add
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.sub
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.add
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.sub
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.const 1)
  )
  (set_global $unary/I
   (i64.const -1)
  )
  (set_global $unary/I
   (i64.const 0)
  )
  (set_global $unary/I
   (i64.const -2)
  )
  (set_global $unary/I
   (i64.sub
    (i64.const 0)
    (get_global $unary/I)
   )
  )
  (set_global $unary/I
   (i64.extend_s/i32
    (i64.eqz
     (get_global $unary/I)
    )
   )
  )
  (set_global $unary/I
   (i64.xor
    (get_global $unary/I)
    (i64.const -1)
   )
  )
  (set_global $unary/I
   (block (result i64)
    (set_global $unary/I
     (i64.add
      (get_global $unary/I)
      (i64.const 1)
     )
    )
    (get_global $unary/I)
   )
  )
  (set_global $unary/I
   (block (result i64)
    (set_global $unary/I
     (i64.sub
      (get_global $unary/I)
      (i64.const 1)
     )
    )
    (get_global $unary/I)
   )
  )
  (set_global $unary/I
   (block (result i64)
    (set_global $unary/I
     (i64.add
      (tee_local $3
       (get_global $unary/I)
      )
      (i64.const 1)
     )
    )
    (get_local $3)
   )
  )
  (set_global $unary/I
   (block (result i64)
    (set_global $unary/I
     (i64.sub
      (tee_local $3
       (get_global $unary/I)
      )
      (i64.const 1)
     )
    )
    (get_local $3)
   )
  )
  (set_global $unary/f
   (f32.add
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.sub
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.add
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.sub
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  (set_global $unary/f
   (f32.const 1.25)
  )
  (set_global $unary/f
   (f32.const -1.25)
  )
  (set_global $unary/i
   (i32.const 0)
  )
  (set_global $unary/f
   (f32.neg
    (get_global $unary/f)
   )
  )
  (set_global $unary/i
   (f32.eq
    (get_global $unary/f)
    (f32.const 0)
   )
  )
  (set_global $unary/f
   (block (result f32)
    (set_global $unary/f
     (f32.add
      (get_global $unary/f)
      (f32.const 1)
     )
    )
    (get_global $unary/f)
   )
  )
  (set_global $unary/f
   (block (result f32)
    (set_global $unary/f
     (f32.sub
      (get_global $unary/f)
      (f32.const 1)
     )
    )
    (get_global $unary/f)
   )
  )
  (set_global $unary/f
   (block (result f32)
    (set_global $unary/f
     (f32.add
      (tee_local $1
       (get_global $unary/f)
      )
      (f32.const 1)
     )
    )
    (get_local $1)
   )
  )
  (set_global $unary/f
   (block (result f32)
    (set_global $unary/f
     (f32.sub
      (tee_local $1
       (get_global $unary/f)
      )
      (f32.const 1)
     )
    )
    (get_local $1)
   )
  )
  (set_global $unary/F
   (f64.add
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.sub
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.add
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.sub
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  (set_global $unary/F
   (f64.const 1.25)
  )
  (set_global $unary/F
   (f64.const -1.25)
  )
  (set_global $unary/I
   (i64.const 0)
  )
  (set_global $unary/F
   (f64.neg
    (get_global $unary/F)
   )
  )
  (set_global $unary/I
   (i64.extend_s/i32
    (f64.eq
     (get_global $unary/F)
     (f64.const 0)
    )
   )
  )
  (set_global $unary/F
   (block (result f64)
    (set_global $unary/F
     (f64.add
      (get_global $unary/F)
      (f64.const 1)
     )
    )
    (get_global $unary/F)
   )
  )
  (set_global $unary/F
   (block (result f64)
    (set_global $unary/F
     (f64.sub
      (get_global $unary/F)
      (f64.const 1)
     )
    )
    (get_global $unary/F)
   )
  )
  (set_global $unary/F
   (block (result f64)
    (set_global $unary/F
     (f64.add
      (tee_local $0
       (get_global $unary/F)
      )
      (f64.const 1)
     )
    )
    (get_local $0)
   )
  )
  (set_global $unary/F
   (block (result f64)
    (set_global $unary/F
     (f64.sub
      (tee_local $0
       (get_global $unary/F)
      )
      (f64.const 1)
     )
    )
    (get_local $0)
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
  (if
   (i32.eqz
    (tee_local $2
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $0
     (f64.const 2)
    )
    (f64.const 0)
   )
   (unreachable)
  )
  (set_global $logical/i
   (i32.const 2)
  )
  (if
   (i32.ne
    (get_global $logical/i)
    (i32.const 2)
   )
   (unreachable)
  )
  (set_global $logical/i
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $logical/i)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $logical/I
   (i64.const 2)
  )
  (if
   (i64.ne
    (get_global $logical/I)
    (i64.const 2)
   )
   (unreachable)
  )
  (set_global $logical/I
   (i64.const 1)
  )
  (if
   (i64.ne
    (get_global $logical/I)
    (i64.const 1)
   )
   (unreachable)
  )
  (set_global $logical/f
   (f32.const 2)
  )
  (if
   (f32.ne
    (get_global $logical/f)
    (f32.const 2)
   )
   (unreachable)
  )
  (set_global $logical/f
   (f32.const 1)
  )
  (if
   (f32.ne
    (get_global $logical/f)
    (f32.const 1)
   )
   (unreachable)
  )
  (set_global $logical/F
   (f64.const 2)
  )
  (if
   (f64.ne
    (get_global $logical/F)
    (f64.const 2)
   )
   (unreachable)
  )
  (set_global $logical/F
   (f64.const 1)
  )
  (if
   (f64.ne
    (get_global $logical/F)
    (f64.const 1)
   )
   (unreachable)
  )
  (drop
   (select
    (tee_local $2
     (i32.const 1)
    )
    (tee_local $4
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (drop
   (select
    (tee_local $2
     (i32.const 1)
    )
    (tee_local $4
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (set_global $builtins/i
   (i32.const 31)
  )
  (set_global $builtins/i
   (i32.const 0)
  )
  (set_global $builtins/i
   (i32.const 1)
  )
  (set_global $builtins/i
   (i32.const 2)
  )
  (set_global $builtins/i
   (i32.const -2147483648)
  )
  (set_global $builtins/i
   (select
    (tee_local $2
     (i32.const -42)
    )
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
    (i32.gt_s
     (get_local $2)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 42)
   )
   (unreachable)
  )
  (set_global $builtins/i
   (select
    (tee_local $2
     (i32.const 1)
    )
    (tee_local $4
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 2)
   )
   (unreachable)
  )
  (set_global $builtins/i
   (select
    (tee_local $2
     (i32.const 1)
    )
    (tee_local $4
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $builtins/I
   (i64.const 63)
  )
  (set_global $builtins/I
   (i64.const 0)
  )
  (set_global $builtins/I
   (i64.const 1)
  )
  (set_global $builtins/I
   (i64.const 2)
  )
  (set_global $builtins/I
   (i64.const -9223372036854775808)
  )
  (set_global $builtins/I
   (select
    (tee_local $3
     (i64.const -42)
    )
    (i64.sub
     (i64.const 0)
     (get_local $3)
    )
    (i64.gt_s
     (get_local $3)
     (i64.const 0)
    )
   )
  )
  (if
   (i64.ne
    (get_global $builtins/I)
    (i64.const 42)
   )
   (unreachable)
  )
  (set_global $builtins/I
   (select
    (tee_local $3
     (i64.const 1)
    )
    (tee_local $5
     (i64.const 2)
    )
    (i64.gt_s
     (get_local $3)
     (get_local $5)
    )
   )
  )
  (if
   (i64.ne
    (get_global $builtins/I)
    (i64.const 2)
   )
   (unreachable)
  )
  (set_global $builtins/I
   (select
    (tee_local $3
     (i64.const 1)
    )
    (tee_local $5
     (i64.const 2)
    )
    (i64.lt_s
     (get_local $3)
     (get_local $5)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $builtins/f
   (f32.const nan:0x400000)
  )
  (set_global $builtins/f
   (f32.const inf)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 2)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 1)
  )
  (set_global $builtins/f
   (f32.const 2.5)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 1.1180340051651)
  )
  (set_global $builtins/f
   (f32.const 1)
  )
  (set_global $builtins/b
   (f32.ne
    (tee_local $1
     (f32.const 1.25)
    )
    (get_local $1)
   )
  )
  (set_global $builtins/b
   (select
    (f32.ne
     (f32.abs
      (tee_local $1
       (f32.const 1.25)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $1)
     (get_local $1)
    )
   )
  )
  (set_global $builtins/F
   (f64.const nan:0x8000000000000)
  )
  (set_global $builtins/F
   (f64.const inf)
  )
  (set_global $builtins/F
   (f64.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 2)
  )
  (set_global $builtins/F
   (f64.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 1)
  )
  (set_global $builtins/F
   (f64.const 2.5)
  )
  (set_global $builtins/F
   (f64.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 1)
  )
  (set_global $builtins/F
   (f64.const 1.118033988749895)
  )
  (set_global $builtins/F
   (f64.const 1)
  )
  (set_global $builtins/b
   (f64.ne
    (tee_local $0
     (f64.const 1.25)
    )
    (get_local $0)
   )
  )
  (set_global $builtins/b
   (select
    (f64.ne
     (f64.abs
      (tee_local $0
       (f64.const 1.25)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $0)
     (get_local $0)
    )
   )
  )
  (set_global $builtins/i
   (i32.load
    (i32.const 8)
   )
  )
  (i32.store
   (i32.const 8)
   (get_global $builtins/i)
  )
  (i32.store
   (i32.const 8)
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load
    (i32.const 8)
   )
  )
  (i64.store
   (i32.const 8)
   (get_global $builtins/I)
  )
  (i64.store
   (i32.const 8)
   (i64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/f
   (f32.load
    (i32.const 8)
   )
  )
  (f32.store
   (i32.const 8)
   (get_global $builtins/f)
  )
  (f32.store
   (i32.const 8)
   (f32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/F
   (f64.load
    (i32.const 8)
   )
  )
  (f64.store
   (i32.const 8)
   (get_global $builtins/F)
  )
  (f64.store
   (i32.const 8)
   (f64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.const 1067450368)
  )
  (set_global $builtins/f
   (f32.const 3.5032461608120427e-44)
  )
  (set_global $builtins/I
   (i64.const 4608308318706860032)
  )
  (set_global $builtins/F
   (f64.const 1.24e-322)
  )
  (drop
   (current_memory)
  )
  (drop
   (grow_memory
    (i32.const 1)
   )
  )
  (set_global $builtins/s
   (current_memory)
  )
  (set_global $builtins/s
   (grow_memory
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.const 10)
  )
  (set_global $builtins/I
   (i64.const 200)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 25)
  )
  (if
   (f32.eq
    (tee_local $1
     (f32.const nan:0x400000)
    )
    (get_local $1)
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $0
     (f64.const nan:0x8000000000000)
    )
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (select
    (f32.ne
     (f32.abs
      (tee_local $1
       (f32.const nan:0x400000)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $1)
     (get_local $1)
    )
   )
   (unreachable)
  )
  (if
   (select
    (f32.ne
     (f32.abs
      (tee_local $1
       (f32.const inf)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $1)
     (get_local $1)
    )
   )
   (unreachable)
  )
  (if
   (select
    (f64.ne
     (f64.abs
      (tee_local $0
       (f64.const nan:0x8000000000000)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $0)
     (get_local $0)
    )
   )
   (unreachable)
  )
  (if
   (select
    (f64.ne
     (f64.abs
      (tee_local $0
       (f64.const inf)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $0)
     (get_local $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (select
     (f32.ne
      (f32.abs
       (tee_local $1
        (f32.const 0)
       )
      )
      (f32.const inf)
     )
     (i32.const 0)
     (f32.eq
      (get_local $1)
      (get_local $1)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (select
     (f64.ne
      (f64.abs
       (tee_local $0
        (f64.const 0)
       )
      )
      (f64.const inf)
     )
     (i32.const 0)
     (f64.eq
      (get_local $0)
      (get_local $0)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.ne
    (block (result i32)
     (block $__inlined_func$showcase/ANamespace.aNamespacedFunction (result i32)
      (set_local $6
       (get_global $showcase/ANamespace.aNamespacedGlobal)
      )
      (get_local $6)
     )
    )
    (i32.const 42)
   )
   (unreachable)
  )
  (set_global $showcase/AnEnum.FORTYTWO
   (get_global $showcase/aMutableGlobal)
  )
  (set_global $showcase/AnEnum.FORTYTHREE
   (i32.add
    (get_global $showcase/AnEnum.FORTYTWO)
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_global $showcase/AnEnum.FORTYTWO)
    (i32.const 42)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $showcase/AnEnum.FORTYTHREE)
    (i32.const 43)
   )
   (unreachable)
  )
  (drop
   (block (result i32)
    (block $__inlined_func$showcase/addGeneric<i32> (result i32)
     (set_local $7
      (i32.const 1)
     )
     (set_local $8
      (i32.const 2)
     )
     (i32.add
      (get_local $7)
      (get_local $8)
     )
    )
   )
  )
  (drop
   (block (result f32)
    (block $__inlined_func$showcase/addGeneric<f32> (result f32)
     (set_local $9
      (f32.const 1)
     )
     (set_local $10
      (f32.const 2)
     )
     (f32.add
      (get_local $9)
      (get_local $10)
     )
    )
   )
  )
  (drop
   (block (result f64)
    (block $__inlined_func$showcase/addGeneric<f64> (result f64)
     (set_local $11
      (f64.const 1)
     )
     (set_local $12
      (f64.const 2)
     )
     (f64.add
      (get_local $11)
      (get_local $12)
     )
    )
   )
  )
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
  (set_global $memcpy/dest
   (call $memcpy/memcpy
    (i32.const 9)
    (i32.const 24)
    (i32.const 4)
   )
  )
  (if
   (i32.ne
    (get_global $memcpy/dest)
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
  (set_global $memcpy/dest
   (call $memcpy/memcpy
    (i32.const 8)
    (i32.const 8)
    (i32.const 32)
   )
  )
  (if
   (i32.ne
    (get_global $memcpy/dest)
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
  (set_global $memcpy/dest
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
  (set_global $memcpy/dest
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
  (if
   (f32.eq
    (tee_local $1
     (call $fmod/fmodf
      (f32.const 1)
      (f32.const nan:0x400000)
     )
    )
    (get_local $1)
   )
   (unreachable)
  )
  (if
   (f32.ne
    (call $fmod/fmodf
     (f32.const 1.5)
     (f32.const 1)
    )
    (f32.const 0.5)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.lt
     (f32.sub
      (call $fmod/fmodf
       (f32.const 9.199999809265137)
       (f32.const 2)
      )
      (f32.const 1.2000000476837158)
     )
     (f32.const 1.1920928955078125e-07)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.lt
     (f32.sub
      (call $fmod/fmodf
       (f32.const 9.199999809265137)
       (f32.const 3.700000047683716)
      )
      (f32.const 1.7999999523162842)
     )
     (f32.const 1.1920928955078125e-07)
    )
   )
   (unreachable)
  )
  (i32.store
   (get_global $showcase/aClassInstance)
   (i32.const 42)
  )
  (f32.store offset=4
   (get_global $showcase/aClassInstance)
   (f32.const 9e3)
  )
  (if
   (i32.ne
    (i32.load
     (i32.const 8)
    )
    (i32.const 42)
   )
   (unreachable)
  )
  (if
   (f32.ne
    (f32.load
     (i32.const 12)
    )
    (f32.const 9e3)
   )
   (unreachable)
  )
  (block
   (block $__inlined_func$showcase/ADerivedClass#set:aWildAccessorAppears
    (set_local $13
     (get_global $showcase/aClassInstance)
    )
    (set_local $14
     (f32.const 123)
    )
    (f32.store offset=4
     (get_local $13)
     (get_local $14)
    )
   )
  )
  (if
   (f32.ne
    (block (result f32)
     (block $__inlined_func$showcase/ADerivedClass#get:aWildAccessorAppears (result f32)
      (set_local $15
       (get_global $showcase/aClassInstance)
      )
      (f32.load offset=4
       (get_local $15)
      )
     )
    )
    (f32.const 123)
   )
   (unreachable)
  )
  (set_global $showcase/AClass.aStaticField
   (get_global $showcase/aClassInstance)
  )
  (if
   (i32.ne
    (get_global $showcase/AClass.aStaticField)
    (get_global $showcase/aClassInstance)
   )
   (unreachable)
  )
 )
)
