(module
 (type $ii (func (param i32) (result i32)))
 (type $i (func (result i32)))
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
 (global $showcase/anInferredI32 (mut i32) (i32.const 42))
 (global $showcase/anInferredI64 (mut i64) (i64.const 4294967296))
 (global $showcase/anInferredF64 (mut f64) (f64.const 42))
 (global $showcase/anInferredF32 (mut f32) (f32.const 42))
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
 (global $i8.MIN_VALUE i32 (i32.const -128))
 (global $i8.MAX_VALUE i32 (i32.const 127))
 (global $i16.MIN_VALUE i32 (i32.const -32768))
 (global $i16.MAX_VALUE i32 (i32.const 32767))
 (global $i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $u8.MIN_VALUE i32 (i32.const 0))
 (global $u8.MAX_VALUE i32 (i32.const 255))
 (global $u16.MIN_VALUE i32 (i32.const 0))
 (global $u16.MAX_VALUE i32 (i32.const 65535))
 (global $u32.MIN_VALUE i32 (i32.const 0))
 (global $u32.MAX_VALUE i32 (i32.const -1))
 (global $u64.MIN_VALUE i64 (i64.const 0))
 (global $u64.MAX_VALUE i64 (i64.const -1))
 (global $bool.MIN_VALUE i32 (i32.const 0))
 (global $bool.MAX_VALUE i32 (i32.const 1))
 (global $f32.MIN_VALUE f32 (f32.const -3402823466385288598117041e14))
 (global $f32.MAX_VALUE f32 (f32.const 3402823466385288598117041e14))
 (global $f32.MIN_SAFE_INTEGER f32 (f32.const -16777215))
 (global $f32.MAX_SAFE_INTEGER f32 (f32.const 16777215))
 (global $f32.EPSILON f32 (f32.const 1.1920928955078125e-07))
 (global $f64.MIN_VALUE f64 (f64.const -1797693134862315708145274e284))
 (global $f64.MAX_VALUE f64 (f64.const 1797693134862315708145274e284))
 (global $f64.MIN_SAFE_INTEGER f64 (f64.const -9007199254740991))
 (global $f64.MAX_SAFE_INTEGER f64 (f64.const 9007199254740991))
 (global $f64.EPSILON f64 (f64.const 2.220446049250313e-16))
 (global $showcase/ANamespace.aNamespacedGlobal (mut i32) (i32.const 42))
 (global $showcase/AnEnum.ONE i32 (i32.const 1))
 (global $showcase/AnEnum.TWO i32 (i32.const 2))
 (global $showcase/AnEnum.FOUR i32 (i32.const 4))
 (global $showcase/AnEnum.FIVE i32 (i32.const 5))
 (global $showcase/AnEnum.FORTYTWO (mut i32) (i32.const 0))
 (global $showcase/AnEnum.FORTYTHREE (mut i32) (i32.const 0))
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (global $showcase/aClassInstance (mut i32) (i32.const 8))
 (global $showcase/AClass.aStaticField (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
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
 (func $showcase/ANamespace.aNamespacedFunction (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (get_local $0)
  )
 )
 (func $showcase/addGeneric<i32> (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $showcase/addGeneric<f32> (; 2 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (return
   (f32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $showcase/addGeneric<f64> (; 3 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (return
   (f64.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $showcase/anExportedFunction (; 4 ;) (type $v)
 )
 (func $memcpy/memcpy (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (get_local $0)
  )
  (nop)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (i32.ne
       (get_local $2)
       (i32.const 0)
      )
      (i32.rem_u
       (get_local $1)
       (i32.const 4)
      )
      (get_local $2)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $6
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $6
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $6)
            (i32.const 1)
           )
          )
          (get_local $6)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
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
    (i32.rem_u
     (get_local $0)
     (i32.const 4)
    )
    (i32.const 0)
   )
   (block
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 16)
       )
       (block
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
     (i32.store8
      (block (result i32)
       (set_local $6
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
    )
    (return
     (get_local $3)
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
       (set_local $6
        (i32.rem_u
         (get_local $0)
         (i32.const 4)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $6)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $6)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $6)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (set_local $4
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $6
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $6
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $6
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
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
         (i32.ge_u
          (get_local $2)
          (i32.const 17)
         )
         (block
          (block
           (set_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 1)
             )
            )
           )
           (i32.store
            (get_local $0)
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 24)
             )
             (i32.shl
              (get_local $5)
              (i32.const 8)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 5)
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
              (get_local $5)
              (i32.const 24)
             )
             (i32.shl
              (get_local $4)
              (i32.const 8)
             )
            )
           )
           (set_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 9)
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
              (get_local $5)
              (i32.const 8)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 13)
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
              (get_local $5)
              (i32.const 24)
             )
             (i32.shl
              (get_local $4)
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
          )
          (br $continue|3)
         )
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
     (i32.store8
      (block (result i32)
       (set_local $6
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $6
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
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
        (i32.ge_u
         (get_local $2)
         (i32.const 18)
        )
        (block
         (block
          (set_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 2)
            )
           )
          )
          (i32.store
           (get_local $0)
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 16)
            )
            (i32.shl
             (get_local $5)
             (i32.const 16)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 6)
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
             (get_local $5)
             (i32.const 16)
            )
            (i32.shl
             (get_local $4)
             (i32.const 16)
            )
           )
          )
          (set_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 10)
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
             (get_local $5)
             (i32.const 16)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 14)
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
             (get_local $5)
             (i32.const 16)
            )
            (i32.shl
             (get_local $4)
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
         )
         (br $continue|4)
        )
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
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
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
       (i32.ge_u
        (get_local $2)
        (i32.const 19)
       )
       (block
        (block
         (set_local $5
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 3)
           )
          )
         )
         (i32.store
          (get_local $0)
          (i32.or
           (i32.shr_u
            (get_local $4)
            (i32.const 8)
           )
           (i32.shl
            (get_local $5)
            (i32.const 24)
           )
          )
         )
         (set_local $4
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 7)
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
            (get_local $5)
            (i32.const 8)
           )
           (i32.shl
            (get_local $4)
            (i32.const 24)
           )
          )
         )
         (set_local $5
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 11)
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
            (get_local $5)
            (i32.const 24)
           )
          )
         )
         (set_local $4
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 15)
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
            (get_local $5)
            (i32.const 8)
           )
           (i32.shl
            (get_local $4)
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
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
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
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
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
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
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
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
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
     (set_local $6
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $6)
       (i32.const 1)
      )
     )
     (get_local $6)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $6
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
    )
   )
  )
  (return
   (get_local $3)
  )
 )
 (func $fmod/fmod (; 6 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
     (i32.ne
      (tee_local $8
       (i32.and
        (if (result i32)
         (i32.ne
          (tee_local $8
           (i64.eq
            (i64.shl
             (get_local $3)
             (i64.const 1)
            )
            (i64.const 0)
           )
          )
          (i32.const 0)
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
      (i32.const 0)
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
       (i64.sub
        (i64.const 0)
        (i64.const 1)
       )
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
       (i64.sub
        (i64.const 0)
        (i64.const 1)
       )
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
 (func $fmod/fmodf (; 7 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
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
     (i32.ne
      (tee_local $8
       (i32.and
        (if (result i32)
         (i32.ne
          (tee_local $8
           (i32.eq
            (i32.shl
             (get_local $3)
             (i32.const 1)
            )
            (i32.const 0)
           )
          )
          (i32.const 0)
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
      (i32.const 0)
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
       (i32.sub
        (i32.const 0)
        (i32.const 1)
       )
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
       (i32.sub
        (i32.const 0)
        (i32.const 1)
       )
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
 (func $showcase/ADerivedClass#set:aWildAccessorAppears (; 8 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (f32.store offset=4
   (get_local $0)
   (get_local $1)
  )
 )
 (func $showcase/ADerivedClass#get:aWildAccessorAppears (; 9 ;) (type $if) (param $0 i32) (result f32)
  (return
   (f32.load offset=4
    (get_local $0)
   )
  )
 )
 (func $start (; 10 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i64)
  (drop
   (i32.const 1)
  )
  (drop
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
  )
  (drop
   (i32.eqz
    (i32.const 1)
   )
  )
  (drop
   (i32.xor
    (i32.const 1)
    (i32.const -1)
   )
  )
  (drop
   (f64.const 1.25)
  )
  (drop
   (f64.neg
    (f64.const 1.25)
   )
  )
  (drop
   (f64.eq
    (f64.const 1.25)
    (f64.const 0)
   )
  )
  (drop
   (get_global $unary/i)
  )
  (drop
   (i32.sub
    (i32.const 0)
    (get_global $unary/i)
   )
  )
  (drop
   (i32.eqz
    (get_global $unary/i)
   )
  )
  (drop
   (i32.xor
    (get_global $unary/i)
    (i32.const -1)
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
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.eqz
    (i32.const 1)
   )
  )
  (set_global $unary/i
   (i32.xor
    (i32.const 1)
    (i32.const -1)
   )
  )
  (set_global $unary/i
   (get_global $unary/i)
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
    (set_local $0
     (get_global $unary/i)
    )
    (set_global $unary/i
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  (set_global $unary/i
   (block (result i32)
    (set_local $0
     (get_global $unary/i)
    )
    (set_global $unary/i
     (i32.sub
      (get_local $0)
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  (drop
   (get_global $unary/I)
  )
  (drop
   (i64.sub
    (i64.const 0)
    (get_global $unary/I)
   )
  )
  (drop
   (i64.eqz
    (get_global $unary/I)
   )
  )
  (drop
   (i64.xor
    (get_global $unary/I)
    (i64.const -1)
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
   (i64.sub
    (i64.const 0)
    (i64.const 1)
   )
  )
  (set_global $unary/I
   (i64.extend_s/i32
    (i64.eqz
     (i64.const 1)
    )
   )
  )
  (set_global $unary/I
   (i64.xor
    (i64.const 1)
    (i64.const -1)
   )
  )
  (set_global $unary/I
   (get_global $unary/I)
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
    (set_local $1
     (get_global $unary/I)
    )
    (set_global $unary/I
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (get_local $1)
   )
  )
  (set_global $unary/I
   (block (result i64)
    (set_local $1
     (get_global $unary/I)
    )
    (set_global $unary/I
     (i64.sub
      (get_local $1)
      (i64.const 1)
     )
    )
    (get_local $1)
   )
  )
  (drop
   (get_global $unary/f)
  )
  (drop
   (f32.neg
    (get_global $unary/f)
   )
  )
  (drop
   (f32.eq
    (get_global $unary/f)
    (f32.const 0)
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
   (f32.neg
    (f32.const 1.25)
   )
  )
  (set_global $unary/i
   (f64.eq
    (f64.const 1.25)
    (f64.const 0)
   )
  )
  (set_global $unary/f
   (get_global $unary/f)
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
    (set_local $2
     (get_global $unary/f)
    )
    (set_global $unary/f
     (f32.add
      (get_local $2)
      (f32.const 1)
     )
    )
    (get_local $2)
   )
  )
  (set_global $unary/f
   (block (result f32)
    (set_local $2
     (get_global $unary/f)
    )
    (set_global $unary/f
     (f32.sub
      (get_local $2)
      (f32.const 1)
     )
    )
    (get_local $2)
   )
  )
  (drop
   (get_global $unary/F)
  )
  (drop
   (f64.neg
    (get_global $unary/F)
   )
  )
  (drop
   (f64.eq
    (get_global $unary/F)
    (f64.const 0)
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
   (f64.neg
    (f64.const 1.25)
   )
  )
  (set_global $unary/I
   (i64.extend_s/i32
    (f64.eq
     (f64.const 1.25)
     (f64.const 0)
    )
   )
  )
  (set_global $unary/F
   (get_global $unary/F)
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
    (set_local $3
     (get_global $unary/F)
    )
    (set_global $unary/F
     (f64.add
      (get_local $3)
      (f64.const 1)
     )
    )
    (get_local $3)
   )
  )
  (set_global $unary/F
   (block (result f64)
    (set_local $3
     (get_global $unary/F)
    )
    (set_global $unary/F
     (f64.sub
      (get_local $3)
      (f64.const 1)
     )
    )
    (get_local $3)
   )
  )
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
  (drop
   (if (result i32)
    (i32.ne
     (i32.const 0)
     (i32.const 0)
    )
    (unreachable)
    (i32.const 0)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (f64.const 0)
     (f64.const 0)
    )
    (unreachable)
    (f64.const 0)
   )
  )
  (drop
   (if (result i32)
    (i32.ne
     (i32.const 1)
     (i32.const 0)
    )
    (i32.const 1)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (f64.const 1)
     (f64.const 0)
    )
    (f64.const 1)
    (unreachable)
   )
  )
  (drop
   (if (result i32)
    (i32.ne
     (tee_local $0
      (if (result i32)
       (i32.ne
        (i32.const 1)
        (i32.const 0)
       )
       (i32.const 2)
       (i32.const 1)
      )
     )
     (i32.const 0)
    )
    (get_local $0)
    (unreachable)
   )
  )
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $3
      (if (result f64)
       (f64.ne
        (f64.const 1)
        (f64.const 0)
       )
       (f64.const 2)
       (f64.const 1)
      )
     )
     (f64.const 0)
    )
    (get_local $3)
    (unreachable)
   )
  )
  (set_global $logical/i
   (if (result i32)
    (i32.ne
     (i32.const 1)
     (i32.const 0)
    )
    (i32.const 2)
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $logical/i)
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/i
   (if (result i32)
    (i32.ne
     (i32.const 0)
     (i32.const 0)
    )
    (i32.const 0)
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $logical/i)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $logical/I
   (if (result i64)
    (i64.ne
     (i64.const 1)
     (i64.const 0)
    )
    (i64.const 2)
    (i64.const 1)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $logical/I)
     (i64.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/I
   (if (result i64)
    (i64.ne
     (i64.const 0)
     (i64.const 0)
    )
    (i64.const 0)
    (i64.const 1)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $logical/I)
     (i64.const 1)
    )
   )
   (unreachable)
  )
  (set_global $logical/f
   (if (result f32)
    (f32.ne
     (f32.const 1)
     (f32.const 0)
    )
    (f32.const 2)
    (f32.const 1)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (get_global $logical/f)
     (f32.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/f
   (if (result f32)
    (f32.ne
     (f32.const 0)
     (f32.const 0)
    )
    (f32.const 0)
    (f32.const 1)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (get_global $logical/f)
     (f32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $logical/F
   (if (result f64)
    (f64.ne
     (f64.const 1)
     (f64.const 0)
    )
    (f64.const 2)
    (f64.const 1)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (get_global $logical/F)
     (f64.const 2)
    )
   )
   (unreachable)
  )
  (set_global $logical/F
   (if (result f64)
    (f64.ne
     (f64.const 0)
     (f64.const 0)
    )
    (f64.const 0)
    (f64.const 1)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (get_global $logical/F)
     (f64.const 1)
    )
   )
   (unreachable)
  )
  (drop
   (i32.clz
    (i32.const 1)
   )
  )
  (drop
   (i32.ctz
    (i32.const 1)
   )
  )
  (drop
   (i32.popcnt
    (i32.const 1)
   )
  )
  (drop
   (i32.rotl
    (i32.const 1)
    (i32.const 1)
   )
  )
  (drop
   (i32.rotr
    (i32.const 1)
    (i32.const 1)
   )
  )
  (drop
   (select
    (tee_local $0
     (i32.sub
      (i32.const 0)
      (i32.const 42)
     )
    )
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
    (i32.gt_s
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (drop
   (select
    (tee_local $0
     (i32.const 1)
    )
    (tee_local $4
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $0)
     (get_local $4)
    )
   )
  )
  (drop
   (select
    (tee_local $0
     (i32.const 1)
    )
    (tee_local $4
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $0)
     (get_local $4)
    )
   )
  )
  (set_global $builtins/i
   (i32.clz
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.ctz
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.popcnt
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.rotl
    (i32.const 1)
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.rotr
    (i32.const 1)
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (select
    (tee_local $0
     (i32.sub
      (i32.const 0)
      (i32.const 42)
     )
    )
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
    (i32.gt_s
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $builtins/i)
     (i32.const 42)
    )
   )
   (unreachable)
  )
  (set_global $builtins/i
   (select
    (tee_local $0
     (i32.const 1)
    )
    (tee_local $4
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $0)
     (get_local $4)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $builtins/i)
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (set_global $builtins/i
   (select
    (tee_local $0
     (i32.const 1)
    )
    (tee_local $4
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $0)
     (get_local $4)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $builtins/i)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (drop
   (i64.clz
    (i64.const 1)
   )
  )
  (drop
   (i64.ctz
    (i64.const 1)
   )
  )
  (drop
   (i64.popcnt
    (i64.const 1)
   )
  )
  (drop
   (i64.rotl
    (i64.const 1)
    (i64.const 1)
   )
  )
  (drop
   (i64.rotr
    (i64.const 1)
    (i64.const 1)
   )
  )
  (drop
   (select
    (tee_local $1
     (i64.sub
      (i64.const 0)
      (i64.const 42)
     )
    )
    (i64.sub
     (i64.const 0)
     (get_local $1)
    )
    (i64.gt_s
     (get_local $1)
     (i64.const 0)
    )
   )
  )
  (set_global $builtins/I
   (i64.clz
    (i64.const 1)
   )
  )
  (set_global $builtins/I
   (i64.ctz
    (i64.const 1)
   )
  )
  (set_global $builtins/I
   (i64.popcnt
    (i64.const 1)
   )
  )
  (set_global $builtins/I
   (i64.rotl
    (i64.const 1)
    (i64.const 1)
   )
  )
  (set_global $builtins/I
   (i64.rotr
    (i64.const 1)
    (i64.const 1)
   )
  )
  (set_global $builtins/I
   (select
    (tee_local $1
     (i64.sub
      (i64.const 0)
      (i64.const 42)
     )
    )
    (i64.sub
     (i64.const 0)
     (get_local $1)
    )
    (i64.gt_s
     (get_local $1)
     (i64.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $builtins/I)
     (i64.const 42)
    )
   )
   (unreachable)
  )
  (set_global $builtins/I
   (select
    (tee_local $1
     (i64.const 1)
    )
    (tee_local $5
     (i64.const 2)
    )
    (i64.gt_s
     (get_local $1)
     (get_local $5)
    )
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $builtins/I)
     (i64.const 2)
    )
   )
   (unreachable)
  )
  (set_global $builtins/I
   (select
    (tee_local $1
     (i64.const 1)
    )
    (tee_local $5
     (i64.const 2)
    )
    (i64.lt_s
     (get_local $1)
     (get_local $5)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $builtins/i)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (drop
   (f32.const nan:0x400000)
  )
  (drop
   (f32.const inf)
  )
  (drop
   (f32.abs
    (f32.const 1.25)
   )
  )
  (drop
   (f32.ceil
    (f32.const 1.25)
   )
  )
  (drop
   (f32.copysign
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (drop
   (f32.floor
    (f32.const 1.25)
   )
  )
  (drop
   (f32.max
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (drop
   (f32.min
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (drop
   (f32.nearest
    (f32.const 1.25)
   )
  )
  (drop
   (f32.sqrt
    (f32.const 1.25)
   )
  )
  (drop
   (f32.trunc
    (f32.const 1.25)
   )
  )
  (drop
   (f32.ne
    (tee_local $2
     (f32.const 1.25)
    )
    (get_local $2)
   )
  )
  (drop
   (select
    (f32.ne
     (f32.abs
      (tee_local $2
       (f32.const 1.25)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $2)
     (get_local $2)
    )
   )
  )
  (set_global $builtins/f
   (f32.const nan:0x400000)
  )
  (set_global $builtins/f
   (f32.const inf)
  )
  (set_global $builtins/f
   (f32.abs
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.ceil
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.copysign
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (set_global $builtins/f
   (f32.floor
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.max
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (set_global $builtins/f
   (f32.min
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (set_global $builtins/f
   (f32.nearest
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.sqrt
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.trunc
    (f32.const 1.25)
   )
  )
  (set_global $builtins/b
   (f32.ne
    (tee_local $2
     (f32.const 1.25)
    )
    (get_local $2)
   )
  )
  (set_global $builtins/b
   (select
    (f32.ne
     (f32.abs
      (tee_local $2
       (f32.const 1.25)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $2)
     (get_local $2)
    )
   )
  )
  (drop
   (f64.const nan:0x8000000000000)
  )
  (drop
   (f64.const inf)
  )
  (drop
   (f64.const nan:0x8000000000000)
  )
  (drop
   (f64.const inf)
  )
  (drop
   (f64.abs
    (f64.const 1.25)
   )
  )
  (drop
   (f64.ceil
    (f64.const 1.25)
   )
  )
  (drop
   (f64.copysign
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (drop
   (f64.floor
    (f64.const 1.25)
   )
  )
  (drop
   (f64.max
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (drop
   (f64.min
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (drop
   (f64.nearest
    (f64.const 1.25)
   )
  )
  (drop
   (f64.sqrt
    (f64.const 1.25)
   )
  )
  (drop
   (f64.trunc
    (f64.const 1.25)
   )
  )
  (drop
   (f64.ne
    (tee_local $3
     (f64.const 1.25)
    )
    (get_local $3)
   )
  )
  (drop
   (select
    (f64.ne
     (f64.abs
      (tee_local $3
       (f64.const 1.25)
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
  (set_global $builtins/F
   (f64.const nan:0x8000000000000)
  )
  (set_global $builtins/F
   (f64.const inf)
  )
  (set_global $builtins/F
   (f64.abs
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.ceil
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.copysign
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (set_global $builtins/F
   (f64.floor
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.max
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (set_global $builtins/F
   (f64.min
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (set_global $builtins/F
   (f64.nearest
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.sqrt
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.trunc
    (f64.const 1.25)
   )
  )
  (set_global $builtins/b
   (f64.ne
    (tee_local $3
     (f64.const 1.25)
    )
    (get_local $3)
   )
  )
  (set_global $builtins/b
   (select
    (f64.ne
     (f64.abs
      (tee_local $3
       (f64.const 1.25)
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
  (drop
   (i32.reinterpret/f32
    (f32.const 1.25)
   )
  )
  (drop
   (f32.reinterpret/i32
    (i32.const 25)
   )
  )
  (drop
   (i64.reinterpret/f64
    (f64.const 1.25)
   )
  )
  (drop
   (f64.reinterpret/i64
    (i64.const 25)
   )
  )
  (set_global $builtins/i
   (i32.reinterpret/f32
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.reinterpret/i32
    (i32.const 25)
   )
  )
  (set_global $builtins/I
   (i64.reinterpret/f64
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.reinterpret/i64
    (i64.const 25)
   )
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
  (drop
   (select
    (i32.const 10)
    (i32.const 20)
    (i32.const 1)
   )
  )
  (drop
   (select
    (i64.const 100)
    (i64.const 200)
    (i32.const 0)
   )
  )
  (drop
   (select
    (f32.const 1.25)
    (f32.const 2.5)
    (i32.const 1)
   )
  )
  (drop
   (select
    (f64.const 12.5)
    (f64.const 25)
    (i32.const 0)
   )
  )
  (set_global $builtins/i
   (select
    (i32.const 10)
    (i32.const 20)
    (i32.const 1)
   )
  )
  (set_global $builtins/I
   (select
    (i64.const 100)
    (i64.const 200)
    (i32.const 0)
   )
  )
  (set_global $builtins/f
   (select
    (f32.const 1.25)
    (f32.const 2.5)
    (i32.const 1)
   )
  )
  (set_global $builtins/F
   (select
    (f64.const 12.5)
    (f64.const 25)
    (i32.const 0)
   )
  )
  (if
   (i32.const 0)
   (unreachable)
  )
  (drop
   (i32.const 1)
  )
  (drop
   (i32.const 2)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 8)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 1)
  )
  (drop
   (i32.const 1)
  )
  (drop
   (i32.const 2)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 8)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 8)
  )
  (if
   (i32.eqz
    (f64.ne
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.ne
     (tee_local $2
      (f32.const nan:0x400000)
     )
     (get_local $2)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.ne
     (tee_local $3
      (f64.const nan:0x8000000000000)
     )
     (get_local $3)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eqz
     (select
      (f32.ne
       (f32.abs
        (tee_local $2
         (f32.const nan:0x400000)
        )
       )
       (f32.const inf)
      )
      (i32.const 0)
      (f32.eq
       (get_local $2)
       (get_local $2)
      )
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eqz
     (select
      (f32.ne
       (f32.abs
        (tee_local $2
         (f32.const inf)
        )
       )
       (f32.const inf)
      )
      (i32.const 0)
      (f32.eq
       (get_local $2)
       (get_local $2)
      )
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eqz
     (select
      (f64.ne
       (f64.abs
        (tee_local $3
         (f64.const nan:0x8000000000000)
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
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eqz
     (select
      (f64.ne
       (f64.abs
        (tee_local $3
         (f64.const inf)
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
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (select
     (f32.ne
      (f32.abs
       (tee_local $2
        (f32.const 0)
       )
      )
      (f32.const inf)
     )
     (i32.const 0)
     (f32.eq
      (get_local $2)
      (get_local $2)
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
       (tee_local $3
        (f64.const 0)
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
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -128)
     (i32.const -128)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 127)
     (i32.const 127)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -32768)
     (i32.const -32768)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 32767)
     (i32.const 32767)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -2147483648)
     (i32.const -2147483648)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 2147483647)
     (i32.const 2147483647)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const -9223372036854775808)
     (i64.const -9223372036854775808)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const 9223372036854775807)
     (i64.const 9223372036854775807)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 255)
     (i32.const 255)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 65535)
     (i32.const 65535)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -1)
     (i32.const -1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const 0)
     (i64.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const -1)
     (i64.const -1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const -3402823466385288598117041e14)
     (f32.neg
      (f32.const 3402823466385288598117041e14)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const 3402823466385288598117041e14)
     (f32.const 3402823466385288598117041e14)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const -16777215)
     (f32.neg
      (f32.const 16777215)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const 16777215)
     (f32.const 16777215)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const 1.1920928955078125e-07)
     (f32.const 1.1920928955078125e-07)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const -1797693134862315708145274e284)
     (f64.neg
      (f64.const 1797693134862315708145274e284)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const 1797693134862315708145274e284)
     (f64.const 1797693134862315708145274e284)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const -9007199254740991)
     (f64.neg
      (f64.const 9007199254740991)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const 9007199254740991)
     (f64.const 9007199254740991)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const 2.220446049250313e-16)
     (f64.const 2.220446049250313e-16)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $showcase/ANamespace.aNamespacedFunction
      (get_global $showcase/ANamespace.aNamespacedGlobal)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 2)
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 5)
     (i32.const 5)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $showcase/AnEnum.FORTYTWO)
     (i32.const 42)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $showcase/AnEnum.FORTYTHREE)
     (i32.const 43)
    )
   )
   (unreachable)
  )
  (block
   (drop
    (i32.const 1)
   )
   (drop
    (i32.const 2)
   )
   (drop
    (i32.const 3)
   )
  )
  (drop
   (call $showcase/addGeneric<i32>
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (call $showcase/addGeneric<f32>
    (f32.const 1)
    (f32.const 2)
   )
  )
  (drop
   (i64.clz
    (i64.const 32768)
   )
  )
  (nop)
  (drop
   (call $showcase/addGeneric<f64>
    (f64.const 1)
    (f64.const 2)
   )
  )
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
  (set_global $memcpy/dest
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
     (get_global $memcpy/dest)
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
  (set_global $memcpy/dest
   (call $memcpy/memcpy
    (i32.const 8)
    (i32.const 8)
    (i32.const 32)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $memcpy/dest)
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
  (set_global $memcpy/dest
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
  (set_global $memcpy/dest
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
  (if
   (i32.eqz
    (f64.ne
     (tee_local $3
      (call $fmod/fmod
       (f64.const 1)
       (f64.const nan:0x8000000000000)
      )
     )
     (get_local $3)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (call $fmod/fmod
      (f64.const 1.5)
      (f64.const 1)
     )
     (f64.const 0.5)
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
   (i32.eqz
    (f32.ne
     (tee_local $2
      (call $fmod/fmodf
       (f32.const 1)
       (f32.const nan:0x400000)
      )
     )
     (get_local $2)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (call $fmod/fmodf
      (f32.const 1.5)
      (f32.const 1)
     )
     (f32.const 0.5)
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
   (i32.eqz
    (i32.eq
     (i32.load
      (i32.const 8)
     )
     (i32.const 42)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.load
      (i32.const 12)
     )
     (f32.const 9e3)
    )
   )
   (unreachable)
  )
  (call $showcase/ADerivedClass#set:aWildAccessorAppears
   (get_global $showcase/aClassInstance)
   (f32.const 123)
  )
  (if
   (i32.eqz
    (f32.eq
     (call $showcase/ADerivedClass#get:aWildAccessorAppears
      (get_global $showcase/aClassInstance)
     )
     (f32.const 123)
    )
   )
   (unreachable)
  )
  (set_global $showcase/AClass.aStaticField
   (get_global $showcase/aClassInstance)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $showcase/AClass.aStaticField)
     (get_global $showcase/aClassInstance)
    )
   )
   (unreachable)
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  GLOBAL: showcase/aConstantGlobal
  GLOBAL: showcase/anExportedConstantGlobal
  GLOBAL: showcase/aMutableGlobal
  GLOBAL: showcase/anInferredI32
  GLOBAL: showcase/anInferredI64
  GLOBAL: showcase/anInferredF64
  GLOBAL: showcase/anInferredF32
  NAMESPACE: showcase/ANamespace
  GLOBAL: showcase/ANamespace.aNamespacedGlobal
  FUNCTION_PROTOTYPE: showcase/ANamespace.aNamespacedFunction
  ENUM: showcase/AnEnum
  FUNCTION_PROTOTYPE: showcase/addGeneric
  FUNCTION_PROTOTYPE: showcase/anUnusedFunction
  FUNCTION_PROTOTYPE: showcase/anExportedFunction
  CLASS_PROTOTYPE: showcase/AClass
  GLOBAL: showcase/AClass.aStaticField
  CLASS_PROTOTYPE: showcase/ADerivedClass
  PROPERTY: showcase/ADerivedClass#aWildAccessorAppears
  GLOBAL: showcase/aClassInstance
  GLOBAL: unary/i
  GLOBAL: unary/I
  GLOBAL: unary/f
  GLOBAL: unary/F
  GLOBAL: binary/b
  GLOBAL: binary/i
  GLOBAL: binary/I
  GLOBAL: binary/f
  GLOBAL: binary/F
  GLOBAL: logical/i
  GLOBAL: logical/I
  GLOBAL: logical/f
  GLOBAL: logical/F
  GLOBAL: builtins/b
  GLOBAL: builtins/i
  GLOBAL: builtins/I
  GLOBAL: builtins/f
  GLOBAL: builtins/F
  GLOBAL: builtins/s
  FUNCTION_PROTOTYPE: builtins/test
  FUNCTION_PROTOTYPE: memcpy/memcpy
  GLOBAL: memcpy/base
  GLOBAL: memcpy/dest
  FUNCTION_PROTOTYPE: fmod/fmod
  FUNCTION_PROTOTYPE: fmod/fmodf
[program.exports]
  GLOBAL: showcase/anExportedConstantGlobal
  GLOBAL: showcase/aConstantGlobal
  GLOBAL: showcase/anAliasedConstantGlobal
  ENUM: showcase/AnEnum
  FUNCTION_PROTOTYPE: showcase/anExportedFunction
  FUNCTION_PROTOTYPE: builtins/test
  FUNCTION_PROTOTYPE: memcpy/memcpy
  FUNCTION_PROTOTYPE: fmod/fmod
  FUNCTION_PROTOTYPE: fmod/fmodf
;)
