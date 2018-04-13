(module
 (type $FFF (func (param f64 f64) (result f64)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $fif (func (param f32 i32) (result f32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $if (func (param i32) (result f32)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
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
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
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
 (data (i32.const 4) "\n\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s")
 (data (i32.const 28) "\0b\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data (i32.const 56) "\01\00\00\001")
 (data (i32.const 64) "\0b\00\00\00s\00h\00o\00w\00c\00a\00s\00e\00.\00t\00s")
 (data (i32.const 92) "\t\00\00\00m\00e\00m\00c\00p\00y\00.\00t\00s")
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
 (func $~lib/math/NativeMath.scalbn (; 1 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
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
    (if
     (i32.gt_s
      (tee_local $1
       (i32.sub
        (get_local $1)
        (i32.const 1023)
       )
      )
      (i32.const 1023)
     )
     (block
      (set_local $2
       (f64.mul
        (get_local $2)
        (f64.const 8988465674311579538646525e283)
       )
      )
      (if
       (i32.gt_s
        (tee_local $1
         (i32.sub
          (get_local $1)
          (i32.const 1023)
         )
        )
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
     (if
      (i32.lt_s
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 1022)
        )
       )
       (i32.const -1022)
      )
      (block
       (set_local $2
        (f64.mul
         (get_local $2)
         (f64.const 2.2250738585072014e-308)
        )
       )
       (if
        (i32.lt_s
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 1022)
          )
         )
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
  (f64.mul
   (get_local $2)
   (f64.reinterpret/i64
    (i64.shl
     (i64.add
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 1023)
     )
     (i64.const 52)
    )
   )
  )
 )
 (func $~lib/math/NativeMath.pow (; 2 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 i32)
  (local $14 f64)
  (local $15 i32)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 i64)
  (block $folding-inner1
   (block $folding-inner0
    (set_local $4
     (i32.wrap/i64
      (i64.shr_u
       (tee_local $19
        (i64.reinterpret/f64
         (get_local $0)
        )
       )
       (i64.const 32)
      )
     )
    )
    (set_local $13
     (i32.wrap/i64
      (get_local $19)
     )
    )
    (set_local $5
     (i32.and
      (get_local $4)
      (i32.const 2147483647)
     )
    )
    (if
     (i32.eqz
      (i32.or
       (tee_local $10
        (i32.and
         (tee_local $11
          (i32.wrap/i64
           (i64.shr_u
            (tee_local $19
             (i64.reinterpret/f64
              (get_local $1)
             )
            )
            (i64.const 32)
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (tee_local $6
        (i32.wrap/i64
         (get_local $19)
        )
       )
      )
     )
     (return
      (f64.const 1)
     )
    )
    (if
     (i32.and
      (if (result i32)
       (tee_local $7
        (i32.and
         (if (result i32)
          (tee_local $7
           (i32.and
            (if (result i32)
             (tee_local $7
              (i32.gt_s
               (get_local $5)
               (i32.const 2146435072)
              )
             )
             (get_local $7)
             (if (result i32)
              (tee_local $7
               (i32.eq
                (get_local $5)
                (i32.const 2146435072)
               )
              )
              (i32.ne
               (get_local $13)
               (i32.const 0)
              )
              (get_local $7)
             )
            )
            (i32.const 1)
           )
          )
          (get_local $7)
          (i32.gt_s
           (get_local $10)
           (i32.const 2146435072)
          )
         )
         (i32.const 1)
        )
       )
       (get_local $7)
       (if (result i32)
        (tee_local $7
         (i32.eq
          (get_local $10)
          (i32.const 2146435072)
         )
        )
        (i32.ne
         (get_local $6)
         (i32.const 0)
        )
        (get_local $7)
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
    (if
     (i32.lt_s
      (get_local $4)
      (i32.const 0)
     )
     (if
      (i32.ge_s
       (get_local $10)
       (i32.const 1128267776)
      )
      (set_local $15
       (i32.const 2)
      )
      (if
       (i32.ge_s
        (get_local $10)
        (i32.const 1072693248)
       )
       (if
        (i32.gt_s
         (tee_local $8
          (i32.sub
           (i32.shr_s
            (get_local $10)
            (i32.const 20)
           )
           (i32.const 1023)
          )
         )
         (i32.const 20)
        )
        (if
         (i32.eq
          (i32.shl
           (tee_local $7
            (i32.shr_u
             (get_local $6)
             (i32.sub
              (i32.const 52)
              (get_local $8)
             )
            )
           )
           (i32.sub
            (i32.const 52)
            (get_local $8)
           )
          )
          (get_local $6)
         )
         (set_local $15
          (i32.sub
           (i32.const 2)
           (i32.and
            (get_local $7)
            (i32.const 1)
           )
          )
         )
        )
        (if
         (i32.eqz
          (get_local $6)
         )
         (if
          (i32.eq
           (i32.shl
            (tee_local $7
             (i32.shr_s
              (get_local $10)
              (i32.sub
               (i32.const 20)
               (get_local $8)
              )
             )
            )
            (i32.sub
             (i32.const 20)
             (get_local $8)
            )
           )
           (get_local $10)
          )
          (set_local $15
           (i32.sub
            (i32.const 2)
            (i32.and
             (get_local $7)
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
    (if
     (i32.eqz
      (get_local $6)
     )
     (block
      (if
       (i32.eq
        (get_local $10)
        (i32.const 2146435072)
       )
       (if
        (i32.or
         (i32.sub
          (get_local $5)
          (i32.const 1072693248)
         )
         (get_local $13)
        )
        (if
         (i32.ge_s
          (get_local $5)
          (i32.const 1072693248)
         )
         (return
          (select
           (get_local $1)
           (f64.const 0)
           (i32.ge_s
            (get_local $11)
            (i32.const 0)
           )
          )
         )
         (return
          (select
           (f64.const 0)
           (f64.neg
            (get_local $1)
           )
           (i32.ge_s
            (get_local $11)
            (i32.const 0)
           )
          )
         )
        )
        (return
         (f64.const nan:0x8000000000000)
        )
       )
      )
      (if
       (i32.eq
        (get_local $10)
        (i32.const 1072693248)
       )
       (block
        (if
         (i32.ge_s
          (get_local $11)
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
        (get_local $11)
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
        (get_local $11)
        (i32.const 1071644672)
       )
       (if
        (i32.ge_s
         (get_local $4)
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
    (set_local $2
     (f64.abs
      (get_local $0)
     )
    )
    (if
     (i32.eqz
      (get_local $13)
     )
     (if
      (i32.and
       (if (result i32)
        (tee_local $7
         (i32.and
          (if (result i32)
           (tee_local $7
            (i32.eq
             (get_local $5)
             (i32.const 2146435072)
            )
           )
           (get_local $7)
           (i32.eqz
            (get_local $5)
           )
          )
          (i32.const 1)
         )
        )
        (get_local $7)
        (i32.eq
         (get_local $5)
         (i32.const 1072693248)
        )
       )
       (i32.const 1)
      )
      (block
       (if
        (i32.lt_s
         (get_local $11)
         (i32.const 0)
        )
        (set_local $2
         (f64.div
          (f64.const 1)
          (get_local $2)
         )
        )
       )
       (if
        (i32.lt_s
         (get_local $4)
         (i32.const 0)
        )
        (if
         (i32.or
          (i32.sub
           (get_local $5)
           (i32.const 1072693248)
          )
          (get_local $15)
         )
         (if
          (i32.eq
           (get_local $15)
           (i32.const 1)
          )
          (set_local $2
           (f64.neg
            (get_local $2)
           )
          )
         )
         (set_local $2
          (f64.div
           (f64.sub
            (get_local $2)
            (get_local $2)
           )
           (f64.sub
            (get_local $2)
            (get_local $2)
           )
          )
         )
        )
       )
       (return
        (get_local $2)
       )
      )
     )
    )
    (set_local $12
     (f64.const 1)
    )
    (if
     (i32.lt_s
      (get_local $4)
      (i32.const 0)
     )
     (block
      (if
       (i32.eqz
        (get_local $15)
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
        (get_local $15)
        (i32.const 1)
       )
       (set_local $12
        (f64.const -1)
       )
      )
     )
    )
    (set_local $2
     (if (result f64)
      (i32.gt_s
       (get_local $10)
       (i32.const 1105199104)
      )
      (block (result f64)
       (if
        (i32.gt_s
         (get_local $10)
         (i32.const 1139802112)
        )
        (block
         (if
          (i32.le_s
           (get_local $5)
           (i32.const 1072693247)
          )
          (return
           (select
            (f64.const inf)
            (f64.const 0)
            (i32.lt_s
             (get_local $11)
             (i32.const 0)
            )
           )
          )
         )
         (if
          (i32.ge_s
           (get_local $5)
           (i32.const 1072693248)
          )
          (return
           (select
            (f64.const inf)
            (f64.const 0)
            (i32.gt_s
             (get_local $11)
             (i32.const 0)
            )
           )
          )
         )
        )
       )
       (if
        (i32.lt_s
         (get_local $5)
         (i32.const 1072693247)
        )
        (return
         (select
          (f64.mul
           (f64.mul
            (get_local $12)
            (f64.const 1.e+300)
           )
           (f64.const 1.e+300)
          )
          (f64.mul
           (f64.mul
            (get_local $12)
            (f64.const 1e-300)
           )
           (f64.const 1e-300)
          )
          (i32.lt_s
           (get_local $11)
           (i32.const 0)
          )
         )
        )
       )
       (if
        (i32.gt_s
         (get_local $5)
         (i32.const 1072693248)
        )
        (return
         (select
          (f64.mul
           (f64.mul
            (get_local $12)
            (f64.const 1.e+300)
           )
           (f64.const 1.e+300)
          )
          (f64.mul
           (f64.mul
            (get_local $12)
            (f64.const 1e-300)
           )
           (f64.const 1e-300)
          )
          (i32.gt_s
           (get_local $11)
           (i32.const 0)
          )
         )
        )
       )
       (set_local $0
        (f64.mul
         (f64.mul
          (tee_local $3
           (f64.sub
            (get_local $2)
            (f64.const 1)
           )
          )
          (get_local $3)
         )
         (f64.sub
          (f64.const 0.5)
          (f64.mul
           (get_local $3)
           (f64.sub
            (f64.const 0.3333333333333333)
            (f64.mul
             (get_local $3)
             (f64.const 0.25)
            )
           )
          )
         )
        )
       )
       (set_local $9
        (f64.reinterpret/i64
         (i64.and
          (i64.reinterpret/f64
           (f64.add
            (tee_local $16
             (f64.mul
              (f64.const 1.4426950216293335)
              (get_local $3)
             )
            )
            (tee_local $17
             (f64.sub
              (f64.mul
               (get_local $3)
               (f64.const 1.9259629911266175e-08)
              )
              (f64.mul
               (get_local $0)
               (f64.const 1.4426950408889634)
              )
             )
            )
           )
          )
          (i64.const -4294967296)
         )
        )
       )
       (f64.sub
        (get_local $17)
        (f64.sub
         (get_local $9)
         (get_local $16)
        )
       )
      )
      (block (result f64)
       (set_local $4
        (i32.const 0)
       )
       (if
        (i32.lt_s
         (get_local $5)
         (i32.const 1048576)
        )
        (block
         (set_local $4
          (i32.sub
           (get_local $4)
           (i32.const 53)
          )
         )
         (set_local $5
          (i32.wrap/i64
           (i64.shr_u
            (i64.reinterpret/f64
             (tee_local $2
              (f64.mul
               (get_local $2)
               (f64.const 9007199254740992)
              )
             )
            )
            (i64.const 32)
           )
          )
         )
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.sub
          (i32.shr_s
           (get_local $5)
           (i32.const 20)
          )
          (i32.const 1023)
         )
        )
       )
       (set_local $5
        (i32.or
         (tee_local $6
          (i32.and
           (get_local $5)
           (i32.const 1048575)
          )
         )
         (i32.const 1072693248)
        )
       )
       (set_local $8
        (if (result i32)
         (i32.le_s
          (get_local $6)
          (i32.const 235662)
         )
         (i32.const 0)
         (if (result i32)
          (i32.lt_s
           (get_local $6)
           (i32.const 767610)
          )
          (i32.const 1)
          (block (result i32)
           (set_local $4
            (i32.add
             (get_local $4)
             (i32.const 1)
            )
           )
           (set_local $5
            (i32.add
             (get_local $5)
             (i32.const -1048576)
            )
           )
           (i32.const 0)
          )
         )
        )
       )
       (set_local $3
        (f64.reinterpret/i64
         (i64.and
          (i64.reinterpret/f64
           (tee_local $18
            (f64.mul
             (tee_local $16
              (f64.sub
               (tee_local $2
                (f64.reinterpret/i64
                 (i64.or
                  (i64.and
                   (i64.reinterpret/f64
                    (get_local $2)
                   )
                   (i64.const 4294967295)
                  )
                  (i64.shl
                   (i64.extend_u/i32
                    (get_local $5)
                   )
                   (i64.const 32)
                  )
                 )
                )
               )
               (tee_local $0
                (select
                 (f64.const 1.5)
                 (f64.const 1)
                 (get_local $8)
                )
               )
              )
             )
             (tee_local $17
              (f64.div
               (f64.const 1)
               (f64.add
                (get_local $2)
                (get_local $0)
               )
              )
             )
            )
           )
          )
          (i64.const -4294967296)
         )
        )
       )
       (set_local $2
        (f64.sub
         (get_local $2)
         (f64.sub
          (tee_local $9
           (f64.reinterpret/i64
            (i64.shl
             (i64.extend_u/i32
              (i32.add
               (i32.add
                (i32.or
                 (i32.shr_s
                  (get_local $5)
                  (i32.const 1)
                 )
                 (i32.const 536870912)
                )
                (i32.const 524288)
               )
               (i32.shl
                (get_local $8)
                (i32.const 18)
               )
              )
             )
             (i64.const 32)
            )
           )
          )
          (get_local $0)
         )
        )
       )
       (set_local $2
        (f64.sub
         (tee_local $2
          (f64.add
           (f64.mul
            (f64.mul
             (tee_local $14
              (f64.mul
               (get_local $18)
               (get_local $18)
              )
             )
             (get_local $14)
            )
            (f64.add
             (f64.const 0.5999999999999946)
             (f64.mul
              (get_local $14)
              (f64.add
               (f64.const 0.4285714285785502)
               (f64.mul
                (get_local $14)
                (f64.add
                 (f64.const 0.33333332981837743)
                 (f64.mul
                  (get_local $14)
                  (f64.add
                   (f64.const 0.272728123808534)
                   (f64.mul
                    (get_local $14)
                    (f64.add
                     (f64.const 0.23066074577556175)
                     (f64.mul
                      (get_local $14)
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
           (f64.mul
            (tee_local $0
             (f64.mul
              (get_local $17)
              (f64.sub
               (f64.sub
                (get_local $16)
                (f64.mul
                 (get_local $3)
                 (get_local $9)
                )
               )
               (f64.mul
                (get_local $3)
                (get_local $2)
               )
              )
             )
            )
            (f64.add
             (get_local $3)
             (get_local $18)
            )
           )
          )
         )
         (f64.sub
          (f64.sub
           (tee_local $9
            (f64.reinterpret/i64
             (i64.and
              (i64.reinterpret/f64
               (f64.add
                (f64.add
                 (f64.const 3)
                 (tee_local $14
                  (f64.mul
                   (get_local $3)
                   (get_local $3)
                  )
                 )
                )
                (get_local $2)
               )
              )
              (i64.const -4294967296)
             )
            )
           )
           (f64.const 3)
          )
          (get_local $14)
         )
        )
       )
       (set_local $9
        (f64.reinterpret/i64
         (i64.and
          (i64.reinterpret/f64
           (f64.add
            (f64.add
             (f64.add
              (tee_local $18
               (f64.mul
                (f64.const 0.9617967009544373)
                (tee_local $0
                 (f64.reinterpret/i64
                  (i64.and
                   (i64.reinterpret/f64
                    (f64.add
                     (tee_local $16
                      (f64.mul
                       (get_local $3)
                       (get_local $9)
                      )
                     )
                     (tee_local $17
                      (f64.add
                       (f64.mul
                        (get_local $0)
                        (get_local $9)
                       )
                       (f64.mul
                        (get_local $2)
                        (get_local $18)
                       )
                      )
                     )
                    )
                   )
                   (i64.const -4294967296)
                  )
                 )
                )
               )
              )
              (tee_local $2
               (f64.add
                (f64.add
                 (f64.mul
                  (f64.const -7.028461650952758e-09)
                  (get_local $0)
                 )
                 (f64.mul
                  (f64.sub
                   (get_local $17)
                   (f64.sub
                    (get_local $0)
                    (get_local $16)
                   )
                  )
                  (f64.const 0.9617966939259756)
                 )
                )
                (select
                 (f64.const 1.350039202129749e-08)
                 (f64.const 0)
                 (get_local $8)
                )
               )
              )
             )
             (tee_local $0
              (select
               (f64.const 0.5849624872207642)
               (f64.const 0)
               (get_local $8)
              )
             )
            )
            (tee_local $3
             (f64.convert_s/i32
              (get_local $4)
             )
            )
           )
          )
          (i64.const -4294967296)
         )
        )
       )
       (f64.sub
        (get_local $2)
        (f64.sub
         (f64.sub
          (f64.sub
           (get_local $9)
           (get_local $3)
          )
          (get_local $0)
         )
         (get_local $18)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.wrap/i64
      (i64.shr_u
       (tee_local $19
        (i64.reinterpret/f64
         (tee_local $2
          (f64.add
           (tee_local $1
            (f64.add
             (f64.mul
              (f64.sub
               (get_local $1)
               (tee_local $0
                (f64.reinterpret/i64
                 (i64.and
                  (i64.reinterpret/f64
                   (get_local $1)
                  )
                  (i64.const -4294967296)
                 )
                )
               )
              )
              (get_local $9)
             )
             (f64.mul
              (get_local $1)
              (get_local $2)
             )
            )
           )
           (tee_local $0
            (f64.mul
             (get_local $0)
             (get_local $9)
            )
           )
          )
         )
        )
       )
       (i64.const 32)
      )
     )
    )
    (set_local $13
     (i32.wrap/i64
      (get_local $19)
     )
    )
    (if
     (i32.ge_s
      (get_local $6)
      (i32.const 1083179008)
     )
     (br_if $folding-inner1
      (i32.or
       (i32.or
        (i32.sub
         (get_local $6)
         (i32.const 1083179008)
        )
        (get_local $13)
       )
       (f64.gt
        (f64.add
         (get_local $1)
         (f64.const 8.008566259537294e-17)
        )
        (f64.sub
         (get_local $2)
         (get_local $0)
        )
       )
      )
     )
     (if
      (i32.ge_s
       (i32.and
        (get_local $6)
        (i32.const 2147483647)
       )
       (i32.const 1083231232)
      )
      (br_if $folding-inner0
       (i32.or
        (i32.or
         (i32.sub
          (get_local $6)
          (i32.const -1064252416)
         )
         (get_local $13)
        )
        (f64.le
         (get_local $1)
         (f64.sub
          (get_local $2)
          (get_local $0)
         )
        )
       )
      )
     )
    )
    (set_local $8
     (i32.sub
      (i32.shr_s
       (tee_local $13
        (i32.and
         (get_local $6)
         (i32.const 2147483647)
        )
       )
       (i32.const 20)
      )
      (i32.const 1023)
     )
    )
    (set_local $4
     (i32.const 0)
    )
    (if
     (i32.gt_s
      (get_local $13)
      (i32.const 1071644672)
     )
     (block
      (set_local $8
       (i32.sub
        (i32.shr_s
         (i32.and
          (tee_local $4
           (i32.add
            (get_local $6)
            (i32.shr_s
             (i32.const 1048576)
             (i32.add
              (get_local $8)
              (i32.const 1)
             )
            )
           )
          )
          (i32.const 2147483647)
         )
         (i32.const 20)
        )
        (i32.const 1023)
       )
      )
      (set_local $3
       (f64.reinterpret/i64
        (i64.shl
         (i64.extend_u/i32
          (i32.and
           (get_local $4)
           (i32.xor
            (i32.shr_s
             (i32.const 1048575)
             (get_local $8)
            )
            (i32.const -1)
           )
          )
         )
         (i64.const 32)
        )
       )
      )
      (set_local $4
       (i32.shr_s
        (i32.or
         (i32.and
          (get_local $4)
          (i32.const 1048575)
         )
         (i32.const 1048576)
        )
        (i32.sub
         (i32.const 20)
         (get_local $8)
        )
       )
      )
      (if
       (i32.lt_s
        (get_local $6)
        (i32.const 0)
       )
       (set_local $4
        (i32.sub
         (i32.const 0)
         (get_local $4)
        )
       )
      )
      (set_local $0
       (f64.sub
        (get_local $0)
        (get_local $3)
       )
      )
     )
    )
    (return
     (f64.mul
      (get_local $12)
      (tee_local $2
       (if (result f64)
        (i32.le_s
         (i32.shr_s
          (tee_local $6
           (i32.add
            (i32.wrap/i64
             (i64.shr_u
              (i64.reinterpret/f64
               (tee_local $2
                (f64.sub
                 (f64.const 1)
                 (f64.sub
                  (f64.sub
                   (f64.div
                    (f64.mul
                     (tee_local $2
                      (f64.add
                       (tee_local $16
                        (f64.mul
                         (tee_local $3
                          (f64.reinterpret/i64
                           (i64.and
                            (i64.reinterpret/f64
                             (f64.add
                              (get_local $1)
                              (get_local $0)
                             )
                            )
                            (i64.const -4294967296)
                           )
                          )
                         )
                         (f64.const 0.6931471824645996)
                        )
                       )
                       (tee_local $17
                        (f64.add
                         (f64.mul
                          (f64.sub
                           (get_local $1)
                           (f64.sub
                            (get_local $3)
                            (get_local $0)
                           )
                          )
                          (f64.const 0.6931471805599453)
                         )
                         (f64.mul
                          (get_local $3)
                          (f64.const -1.904654299957768e-09)
                         )
                        )
                       )
                      )
                     )
                     (tee_local $9
                      (f64.sub
                       (get_local $2)
                       (f64.mul
                        (tee_local $3
                         (f64.mul
                          (get_local $2)
                          (get_local $2)
                         )
                        )
                        (f64.add
                         (f64.const 0.16666666666666602)
                         (f64.mul
                          (get_local $3)
                          (f64.add
                           (f64.const -2.7777777777015593e-03)
                           (f64.mul
                            (get_local $3)
                            (f64.add
                             (f64.const 6.613756321437934e-05)
                             (f64.mul
                              (get_local $3)
                              (f64.add
                               (f64.const -1.6533902205465252e-06)
                               (f64.mul
                                (get_local $3)
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
                    )
                    (f64.sub
                     (get_local $9)
                     (f64.const 2)
                    )
                   )
                   (f64.add
                    (tee_local $0
                     (f64.sub
                      (get_local $17)
                      (f64.sub
                       (get_local $2)
                       (get_local $16)
                      )
                     )
                    )
                    (f64.mul
                     (get_local $2)
                     (get_local $0)
                    )
                   )
                  )
                  (get_local $2)
                 )
                )
               )
              )
              (i64.const 32)
             )
            )
            (i32.shl
             (get_local $4)
             (i32.const 20)
            )
           )
          )
          (i32.const 20)
         )
         (i32.const 0)
        )
        (call $~lib/math/NativeMath.scalbn
         (get_local $2)
         (get_local $4)
        )
        (f64.reinterpret/i64
         (i64.or
          (i64.and
           (i64.reinterpret/f64
            (get_local $2)
           )
           (i64.const 4294967295)
          )
          (i64.shl
           (i64.extend_u/i32
            (get_local $6)
           )
           (i64.const 32)
          )
         )
        )
       )
      )
     )
    )
   )
   (return
    (f64.mul
     (f64.mul
      (get_local $12)
      (f64.const 1e-300)
     )
     (f64.const 1e-300)
    )
   )
  )
  (f64.mul
   (f64.mul
    (get_local $12)
    (f64.const 1.e+300)
   )
   (f64.const 1.e+300)
  )
 )
 (func $~lib/math/NativeMathf.mod (; 3 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $folding-inner0
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
         (i32.gt_u
          (i32.and
           (i32.reinterpret/f32
            (get_local $1)
           )
           (i32.const 2147483647)
          )
          (i32.const 2139095040)
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
     (br_if $folding-inner0
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
     )
     (return
      (get_local $0)
     )
    )
   )
   (set_local $7
    (i32.and
     (get_local $2)
     (i32.const -2147483648)
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
       (i32.sub
        (i32.const 1)
        (get_local $4)
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
       (i32.sub
        (i32.const 1)
        (get_local $6)
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
        (br_if $folding-inner0
         (i32.eqz
          (get_local $3)
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
     (br_if $folding-inner0
      (i32.eqz
       (get_local $3)
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
   (return
    (f32.reinterpret/i32
     (i32.or
      (tee_local $2
       (select
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
         (i32.sub
          (i32.const 1)
          (get_local $4)
         )
        )
        (i32.gt_s
         (get_local $4)
         (i32.const 0)
        )
       )
      )
      (get_local $7)
     )
    )
   )
  )
  (f32.mul
   (f32.const 0)
   (get_local $0)
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
    (if
     (i32.gt_s
      (tee_local $1
       (i32.sub
        (get_local $1)
        (i32.const 127)
       )
      )
      (i32.const 127)
     )
     (block
      (set_local $2
       (f32.mul
        (get_local $2)
        (f32.const 1701411834604692317316873e14)
       )
      )
      (if
       (i32.gt_s
        (tee_local $1
         (i32.sub
          (get_local $1)
          (i32.const 127)
         )
        )
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
     (if
      (i32.lt_s
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 126)
        )
       )
       (i32.const -126)
      )
      (block
       (set_local $2
        (f32.mul
         (get_local $2)
         (f32.const 1.1754943508222875e-38)
        )
       )
       (if
        (i32.lt_s
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 126)
          )
         )
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
  (f32.mul
   (get_local $2)
   (f32.reinterpret/i32
    (i32.shl
     (i32.add
      (get_local $1)
      (i32.const 127)
     )
     (i32.const 23)
    )
   )
  )
 )
 (func $~lib/math/NativeMathf.pow (; 5 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 i32)
  (local $16 f32)
  (block $folding-inner1
   (block $folding-inner0
    (set_local $5
     (i32.and
      (tee_local $15
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 2147483647)
     )
    )
    (if
     (i32.eqz
      (tee_local $10
       (i32.and
        (tee_local $11
         (i32.reinterpret/f32
          (get_local $1)
         )
        )
        (i32.const 2147483647)
       )
      )
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
         (get_local $5)
         (i32.const 2139095040)
        )
       )
       (get_local $6)
       (i32.gt_s
        (get_local $10)
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
    (if
     (i32.lt_s
      (get_local $15)
      (i32.const 0)
     )
     (if
      (i32.ge_s
       (get_local $10)
       (i32.const 1266679808)
      )
      (set_local $4
       (i32.const 2)
      )
      (if
       (i32.ge_s
        (get_local $10)
        (i32.const 1065353216)
       )
       (if
        (i32.eq
         (i32.shl
          (tee_local $7
           (i32.shr_s
            (get_local $10)
            (i32.sub
             (i32.const 23)
             (tee_local $6
              (i32.sub
               (i32.shr_s
                (get_local $10)
                (i32.const 23)
               )
               (i32.const 127)
              )
             )
            )
           )
          )
          (i32.sub
           (i32.const 23)
           (get_local $6)
          )
         )
         (get_local $10)
        )
        (set_local $4
         (i32.sub
          (i32.const 2)
          (i32.and
           (get_local $7)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
    )
    (if
     (i32.eq
      (get_local $10)
      (i32.const 2139095040)
     )
     (if
      (i32.eq
       (get_local $5)
       (i32.const 1065353216)
      )
      (return
       (f32.const nan:0x400000)
      )
      (if
       (i32.gt_s
        (get_local $5)
        (i32.const 1065353216)
       )
       (return
        (select
         (get_local $1)
         (f32.const 0)
         (i32.ge_s
          (get_local $11)
          (i32.const 0)
         )
        )
       )
       (return
        (select
         (f32.const 0)
         (f32.neg
          (get_local $1)
         )
         (i32.ge_s
          (get_local $11)
          (i32.const 0)
         )
        )
       )
      )
     )
    )
    (if
     (i32.eq
      (get_local $10)
      (i32.const 1065353216)
     )
     (return
      (select
       (get_local $0)
       (f32.div
        (f32.const 1)
        (get_local $0)
       )
       (i32.ge_s
        (get_local $11)
        (i32.const 0)
       )
      )
     )
    )
    (if
     (i32.eq
      (get_local $11)
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
      (get_local $11)
      (i32.const 1056964608)
     )
     (if
      (i32.ge_s
       (get_local $15)
       (i32.const 0)
      )
      (return
       (f32.sqrt
        (get_local $0)
       )
      )
     )
    )
    (set_local $2
     (f32.abs
      (get_local $0)
     )
    )
    (if
     (i32.and
      (if (result i32)
       (tee_local $6
        (i32.and
         (if (result i32)
          (tee_local $6
           (i32.eq
            (get_local $5)
            (i32.const 2139095040)
           )
          )
          (get_local $6)
          (i32.eqz
           (get_local $5)
          )
         )
         (i32.const 1)
        )
       )
       (get_local $6)
       (i32.eq
        (get_local $5)
        (i32.const 1065353216)
       )
      )
      (i32.const 1)
     )
     (block
      (if
       (i32.lt_s
        (get_local $11)
        (i32.const 0)
       )
       (set_local $2
        (f32.div
         (f32.const 1)
         (get_local $2)
        )
       )
      )
      (if
       (i32.lt_s
        (get_local $15)
        (i32.const 0)
       )
       (if
        (i32.or
         (i32.sub
          (get_local $5)
          (i32.const 1065353216)
         )
         (get_local $4)
        )
        (if
         (i32.eq
          (get_local $4)
          (i32.const 1)
         )
         (set_local $2
          (f32.neg
           (get_local $2)
          )
         )
        )
        (set_local $2
         (f32.div
          (f32.sub
           (get_local $2)
           (get_local $2)
          )
          (f32.sub
           (get_local $2)
           (get_local $2)
          )
         )
        )
       )
      )
      (return
       (get_local $2)
      )
     )
    )
    (set_local $9
     (f32.const 1)
    )
    (if
     (i32.lt_s
      (get_local $15)
      (i32.const 0)
     )
     (block
      (if
       (i32.eqz
        (get_local $4)
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
        (get_local $4)
        (i32.const 1)
       )
       (set_local $9
        (f32.const -1)
       )
      )
     )
    )
    (set_local $2
     (if (result f32)
      (i32.gt_s
       (get_local $10)
       (i32.const 1291845632)
      )
      (block (result f32)
       (if
        (i32.lt_s
         (get_local $5)
         (i32.const 1065353208)
        )
        (return
         (select
          (f32.mul
           (f32.mul
            (get_local $9)
            (f32.const 1000000015047466219876688e6)
           )
           (f32.const 1000000015047466219876688e6)
          )
          (f32.mul
           (f32.mul
            (get_local $9)
            (f32.const 1.0000000031710769e-30)
           )
           (f32.const 1.0000000031710769e-30)
          )
          (i32.lt_s
           (get_local $11)
           (i32.const 0)
          )
         )
        )
       )
       (if
        (i32.gt_s
         (get_local $5)
         (i32.const 1065353223)
        )
        (return
         (select
          (f32.mul
           (f32.mul
            (get_local $9)
            (f32.const 1000000015047466219876688e6)
           )
           (f32.const 1000000015047466219876688e6)
          )
          (f32.mul
           (f32.mul
            (get_local $9)
            (f32.const 1.0000000031710769e-30)
           )
           (f32.const 1.0000000031710769e-30)
          )
          (i32.gt_s
           (get_local $11)
           (i32.const 0)
          )
         )
        )
       )
       (set_local $0
        (f32.mul
         (f32.mul
          (tee_local $3
           (f32.sub
            (get_local $2)
            (f32.const 1)
           )
          )
          (get_local $3)
         )
         (f32.sub
          (f32.const 0.5)
          (f32.mul
           (get_local $3)
           (f32.sub
            (f32.const 0.3333333432674408)
            (f32.mul
             (get_local $3)
             (f32.const 0.25)
            )
           )
          )
         )
        )
       )
       (set_local $8
        (f32.reinterpret/i32
         (i32.and
          (i32.reinterpret/f32
           (f32.add
            (tee_local $13
             (f32.mul
              (f32.const 1.44268798828125)
              (get_local $3)
             )
            )
            (tee_local $14
             (f32.sub
              (f32.mul
               (get_local $3)
               (f32.const 7.052607543300837e-06)
              )
              (f32.mul
               (get_local $0)
               (f32.const 1.4426950216293335)
              )
             )
            )
           )
          )
          (i32.const -4096)
         )
        )
       )
       (f32.sub
        (get_local $14)
        (f32.sub
         (get_local $8)
         (get_local $13)
        )
       )
      )
      (block (result f32)
       (set_local $4
        (i32.const 0)
       )
       (if
        (i32.lt_s
         (get_local $5)
         (i32.const 8388608)
        )
        (block
         (set_local $4
          (i32.sub
           (get_local $4)
           (i32.const 24)
          )
         )
         (set_local $5
          (i32.reinterpret/f32
           (f32.mul
            (get_local $2)
            (f32.const 16777216)
           )
          )
         )
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.sub
          (i32.shr_s
           (get_local $5)
           (i32.const 23)
          )
          (i32.const 127)
         )
        )
       )
       (set_local $5
        (i32.or
         (tee_local $7
          (i32.and
           (get_local $5)
           (i32.const 8388607)
          )
         )
         (i32.const 1065353216)
        )
       )
       (set_local $6
        (if (result i32)
         (i32.le_s
          (get_local $7)
          (i32.const 1885297)
         )
         (i32.const 0)
         (if (result i32)
          (i32.lt_s
           (get_local $7)
           (i32.const 6140887)
          )
          (i32.const 1)
          (block (result i32)
           (set_local $4
            (i32.add
             (get_local $4)
             (i32.const 1)
            )
           )
           (set_local $5
            (i32.sub
             (get_local $5)
             (i32.const 8388608)
            )
           )
           (i32.const 0)
          )
         )
        )
       )
       (set_local $3
        (f32.reinterpret/i32
         (i32.and
          (i32.reinterpret/f32
           (tee_local $16
            (f32.mul
             (tee_local $13
              (f32.sub
               (tee_local $2
                (f32.reinterpret/i32
                 (get_local $5)
                )
               )
               (tee_local $0
                (select
                 (f32.const 1.5)
                 (f32.const 1)
                 (get_local $6)
                )
               )
              )
             )
             (tee_local $14
              (f32.div
               (f32.const 1)
               (f32.add
                (get_local $2)
                (get_local $0)
               )
              )
             )
            )
           )
          )
          (i32.const -4096)
         )
        )
       )
       (set_local $2
        (f32.sub
         (get_local $2)
         (f32.sub
          (tee_local $8
           (f32.reinterpret/i32
            (i32.add
             (i32.add
              (i32.or
               (i32.and
                (i32.shr_s
                 (get_local $5)
                 (i32.const 1)
                )
                (i32.const -4096)
               )
               (i32.const 536870912)
              )
              (i32.const 4194304)
             )
             (i32.shl
              (get_local $6)
              (i32.const 21)
             )
            )
           )
          )
          (get_local $0)
         )
        )
       )
       (set_local $2
        (f32.sub
         (tee_local $2
          (f32.add
           (f32.mul
            (f32.mul
             (tee_local $12
              (f32.mul
               (get_local $16)
               (get_local $16)
              )
             )
             (get_local $12)
            )
            (f32.add
             (f32.const 0.6000000238418579)
             (f32.mul
              (get_local $12)
              (f32.add
               (f32.const 0.4285714328289032)
               (f32.mul
                (get_local $12)
                (f32.add
                 (f32.const 0.3333333432674408)
                 (f32.mul
                  (get_local $12)
                  (f32.add
                   (f32.const 0.2727281153202057)
                   (f32.mul
                    (get_local $12)
                    (f32.add
                     (f32.const 0.23066075146198273)
                     (f32.mul
                      (get_local $12)
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
           (f32.mul
            (tee_local $0
             (f32.mul
              (get_local $14)
              (f32.sub
               (f32.sub
                (get_local $13)
                (f32.mul
                 (get_local $3)
                 (get_local $8)
                )
               )
               (f32.mul
                (get_local $3)
                (get_local $2)
               )
              )
             )
            )
            (f32.add
             (get_local $3)
             (get_local $16)
            )
           )
          )
         )
         (f32.sub
          (f32.sub
           (tee_local $8
            (f32.reinterpret/i32
             (i32.and
              (i32.reinterpret/f32
               (f32.add
                (f32.add
                 (f32.const 3)
                 (tee_local $12
                  (f32.mul
                   (get_local $3)
                   (get_local $3)
                  )
                 )
                )
                (get_local $2)
               )
              )
              (i32.const -4096)
             )
            )
           )
           (f32.const 3)
          )
          (get_local $12)
         )
        )
       )
       (set_local $8
        (f32.reinterpret/i32
         (i32.and
          (i32.reinterpret/f32
           (f32.add
            (f32.add
             (f32.add
              (tee_local $16
               (f32.mul
                (f32.const 0.9619140625)
                (tee_local $0
                 (f32.reinterpret/i32
                  (i32.and
                   (i32.reinterpret/f32
                    (f32.add
                     (tee_local $13
                      (f32.mul
                       (get_local $3)
                       (get_local $8)
                      )
                     )
                     (tee_local $14
                      (f32.add
                       (f32.mul
                        (get_local $0)
                        (get_local $8)
                       )
                       (f32.mul
                        (get_local $2)
                        (get_local $16)
                       )
                      )
                     )
                    )
                   )
                   (i32.const -4096)
                  )
                 )
                )
               )
              )
              (tee_local $2
               (f32.add
                (f32.add
                 (f32.mul
                  (f32.const -1.1736857413779944e-04)
                  (get_local $0)
                 )
                 (f32.mul
                  (f32.sub
                   (get_local $14)
                   (f32.sub
                    (get_local $0)
                    (get_local $13)
                   )
                  )
                  (f32.const 0.9617967009544373)
                 )
                )
                (select
                 (f32.const 1.5632208487659227e-06)
                 (f32.const 0)
                 (get_local $6)
                )
               )
              )
             )
             (tee_local $0
              (select
               (f32.const 0.5849609375)
               (f32.const 0)
               (get_local $6)
              )
             )
            )
            (tee_local $3
             (f32.convert_s/i32
              (get_local $4)
             )
            )
           )
          )
          (i32.const -4096)
         )
        )
       )
       (f32.sub
        (get_local $2)
        (f32.sub
         (f32.sub
          (f32.sub
           (get_local $8)
           (get_local $3)
          )
          (get_local $0)
         )
         (get_local $16)
        )
       )
      )
     )
    )
    (br_if $folding-inner1
     (i32.gt_s
      (tee_local $7
       (i32.reinterpret/f32
        (tee_local $2
         (f32.add
          (tee_local $1
           (f32.add
            (f32.mul
             (f32.sub
              (get_local $1)
              (tee_local $0
               (f32.reinterpret/i32
                (i32.and
                 (i32.reinterpret/f32
                  (get_local $1)
                 )
                 (i32.const -4096)
                )
               )
              )
             )
             (get_local $8)
            )
            (f32.mul
             (get_local $1)
             (get_local $2)
            )
           )
          )
          (tee_local $0
           (f32.mul
            (get_local $0)
            (get_local $8)
           )
          )
         )
        )
       )
      )
      (i32.const 1124073472)
     )
    )
    (if
     (i32.eq
      (get_local $7)
      (i32.const 1124073472)
     )
     (br_if $folding-inner1
      (f32.gt
       (f32.add
        (get_local $1)
        (f32.const 4.299566569443414e-08)
       )
       (f32.sub
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (if
      (i32.gt_s
       (i32.and
        (get_local $7)
        (i32.const 2147483647)
       )
       (i32.const 1125515264)
      )
      (br $folding-inner0)
      (if
       (i32.eq
        (get_local $7)
        (i32.const -1021968384)
       )
       (br_if $folding-inner0
        (f32.le
         (get_local $1)
         (f32.sub
          (get_local $2)
          (get_local $0)
         )
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (i32.shr_s
       (tee_local $15
        (i32.and
         (get_local $7)
         (i32.const 2147483647)
        )
       )
       (i32.const 23)
      )
      (i32.const 127)
     )
    )
    (set_local $4
     (i32.const 0)
    )
    (if
     (i32.gt_s
      (get_local $15)
      (i32.const 1056964608)
     )
     (block
      (set_local $6
       (i32.sub
        (i32.shr_s
         (i32.and
          (tee_local $4
           (i32.add
            (get_local $7)
            (i32.shr_s
             (i32.const 8388608)
             (i32.add
              (get_local $6)
              (i32.const 1)
             )
            )
           )
          )
          (i32.const 2147483647)
         )
         (i32.const 23)
        )
        (i32.const 127)
       )
      )
      (set_local $3
       (f32.reinterpret/i32
        (i32.and
         (get_local $4)
         (i32.xor
          (i32.shr_s
           (i32.const 8388607)
           (get_local $6)
          )
          (i32.const -1)
         )
        )
       )
      )
      (set_local $4
       (i32.shr_s
        (i32.or
         (i32.and
          (get_local $4)
          (i32.const 8388607)
         )
         (i32.const 8388608)
        )
        (i32.sub
         (i32.const 23)
         (get_local $6)
        )
       )
      )
      (if
       (i32.lt_s
        (get_local $7)
        (i32.const 0)
       )
       (set_local $4
        (i32.sub
         (i32.const 0)
         (get_local $4)
        )
       )
      )
      (set_local $0
       (f32.sub
        (get_local $0)
        (get_local $3)
       )
      )
     )
    )
    (return
     (f32.mul
      (get_local $9)
      (tee_local $2
       (if (result f32)
        (i32.le_s
         (i32.shr_s
          (tee_local $7
           (i32.add
            (i32.reinterpret/f32
             (tee_local $2
              (f32.sub
               (f32.const 1)
               (f32.sub
                (f32.sub
                 (f32.div
                  (f32.mul
                   (tee_local $2
                    (f32.add
                     (tee_local $13
                      (f32.mul
                       (tee_local $3
                        (f32.reinterpret/i32
                         (i32.and
                          (i32.reinterpret/f32
                           (f32.add
                            (get_local $1)
                            (get_local $0)
                           )
                          )
                          (i32.const -32768)
                         )
                        )
                       )
                       (f32.const 0.693145751953125)
                      )
                     )
                     (tee_local $14
                      (f32.add
                       (f32.mul
                        (f32.sub
                         (get_local $1)
                         (f32.sub
                          (get_local $3)
                          (get_local $0)
                         )
                        )
                        (f32.const 0.6931471824645996)
                       )
                       (f32.mul
                        (get_local $3)
                        (f32.const 1.4286065379565116e-06)
                       )
                      )
                     )
                    )
                   )
                   (tee_local $8
                    (f32.sub
                     (get_local $2)
                     (f32.mul
                      (tee_local $3
                       (f32.mul
                        (get_local $2)
                        (get_local $2)
                       )
                      )
                      (f32.add
                       (f32.const 0.1666666716337204)
                       (f32.mul
                        (get_local $3)
                        (f32.add
                         (f32.const -2.7777778450399637e-03)
                         (f32.mul
                          (get_local $3)
                          (f32.add
                           (f32.const 6.61375597701408e-05)
                           (f32.mul
                            (get_local $3)
                            (f32.add
                             (f32.const -1.6533901998627698e-06)
                             (f32.mul
                              (get_local $3)
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
                  )
                  (f32.sub
                   (get_local $8)
                   (f32.const 2)
                  )
                 )
                 (f32.add
                  (tee_local $0
                   (f32.sub
                    (get_local $14)
                    (f32.sub
                     (get_local $2)
                     (get_local $13)
                    )
                   )
                  )
                  (f32.mul
                   (get_local $2)
                   (get_local $0)
                  )
                 )
                )
                (get_local $2)
               )
              )
             )
            )
            (i32.shl
             (get_local $4)
             (i32.const 23)
            )
           )
          )
          (i32.const 23)
         )
         (i32.const 0)
        )
        (call $~lib/math/NativeMathf.scalbn
         (get_local $2)
         (get_local $4)
        )
        (f32.reinterpret/i32
         (get_local $7)
        )
       )
      )
     )
    )
   )
   (return
    (f32.mul
     (f32.mul
      (get_local $9)
      (f32.const 1.0000000031710769e-30)
     )
     (f32.const 1.0000000031710769e-30)
    )
   )
  )
  (f32.mul
   (f32.mul
    (get_local $9)
    (f32.const 1000000015047466219876688e6)
   )
   (f32.const 1000000015047466219876688e6)
  )
 )
 (func $~lib/math/NativeMath.mod (; 6 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (block $folding-inner0
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
         (i64.gt_u
          (i64.and
           (i64.reinterpret/f64
            (get_local $1)
           )
           (i64.const 9223372036854775807)
          )
          (i64.const 9218868437227405312)
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
     (br_if $folding-inner0
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
     )
     (return
      (get_local $0)
     )
    )
   )
   (set_local $7
    (i32.wrap/i64
     (i64.shr_u
      (get_local $2)
      (i64.const 63)
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
        (i32.sub
         (i32.const 1)
         (get_local $3)
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
        (i32.sub
         (i32.const 1)
         (get_local $6)
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
        (br_if $folding-inner0
         (i64.eqz
          (get_local $4)
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
     (br_if $folding-inner0
      (i64.eqz
       (get_local $4)
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
   (return
    (f64.reinterpret/i64
     (i64.or
      (tee_local $2
       (select
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
          (i32.sub
           (i32.const 1)
           (get_local $3)
          )
         )
        )
        (i32.gt_s
         (get_local $3)
         (i32.const 0)
        )
       )
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $7)
       )
       (i64.const 63)
      )
     )
    )
   )
  )
  (f64.mul
   (f64.const 0)
   (get_local $0)
  )
 )
 (func $showcase/ANamespace.aNamespacedFunction (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $showcase/addGeneric<i32> (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $showcase/addGeneric<f32> (; 9 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (f32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $showcase/addGeneric<f64> (; 10 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (f64.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $showcase/anExportedFunction (; 11 ;) (type $v)
  (nop)
 )
 (func $memcpy/memcpy (; 12 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (get_local $0)
  )
  (loop $continue|0
   (if
    (select
     (i32.and
      (get_local $1)
      (i32.const 3)
     )
     (get_local $2)
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
    (i32.and
     (get_local $0)
     (i32.const 3)
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
          (i32.and
           (get_local $0)
           (i32.const 3)
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
 (func $showcase/ADerivedClass#set:aWildAccessorAppears (; 13 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (f32.store offset=4
   (get_local $0)
   (get_local $1)
  )
 )
 (func $showcase/ADerivedClass#get:aWildAccessorAppears (; 14 ;) (type $if) (param $0 i32) (result f32)
  (f32.load offset=4
   (get_local $0)
  )
 )
 (func $start (; 15 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 f64)
  (local $4 f32)
  (local $5 i64)
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
      (tee_local $0
       (get_global $unary/i)
      )
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  (set_global $unary/i
   (block (result i32)
    (set_global $unary/i
     (i32.sub
      (tee_local $0
       (get_global $unary/i)
      )
      (i32.const 1)
     )
    )
    (get_local $0)
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
      (tee_local $1
       (get_global $unary/I)
      )
      (i64.const 1)
     )
    )
    (get_local $1)
   )
  )
  (set_global $unary/I
   (block (result i64)
    (set_global $unary/I
     (i64.sub
      (tee_local $1
       (get_global $unary/I)
      )
      (i64.const 1)
     )
    )
    (get_local $1)
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
      (tee_local $4
       (get_global $unary/f)
      )
      (f32.const 1)
     )
    )
    (get_local $4)
   )
  )
  (set_global $unary/f
   (block (result f32)
    (set_global $unary/f
     (f32.sub
      (tee_local $4
       (get_global $unary/f)
      )
      (f32.const 1)
     )
    )
    (get_local $4)
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
      (tee_local $3
       (get_global $unary/F)
      )
      (f64.const 1)
     )
    )
    (get_local $3)
   )
  )
  (set_global $unary/F
   (block (result f64)
    (set_global $unary/F
     (f64.sub
      (tee_local $3
       (get_global $unary/F)
      )
      (f64.const 1)
     )
    )
    (get_local $3)
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
  (if
   (i32.eqz
    (tee_local $0
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $3
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/i
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $logical/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/I
   (i64.const 2)
  )
  (if
   (i64.ne
    (get_global $logical/I)
    (i64.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/I
   (i64.const 1)
  )
  (if
   (i64.ne
    (get_global $logical/I)
    (i64.const 1)
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
  (set_global $logical/f
   (f32.const 2)
  )
  (if
   (f32.ne
    (get_global $logical/f)
    (f32.const 2)
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
  (set_global $logical/f
   (f32.const 1)
  )
  (if
   (f32.ne
    (get_global $logical/f)
    (f32.const 1)
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
  (set_global $logical/F
   (f64.const 2)
  )
  (if
   (f64.ne
    (get_global $logical/F)
    (f64.const 2)
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
  (set_global $logical/F
   (f64.const 1)
  )
  (if
   (f64.ne
    (get_global $logical/F)
    (f64.const 1)
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
  (drop
   (select
    (tee_local $0
     (i32.const 1)
    )
    (tee_local $2
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $0)
     (get_local $2)
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
    (tee_local $0
     (i32.const -42)
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
   (i32.ne
    (get_global $builtins/i)
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 43)
     (i32.const 19)
    )
    (unreachable)
   )
  )
  (set_global $builtins/i
   (select
    (tee_local $0
     (i32.const 1)
    )
    (i32.const 2)
    (i32.gt_s
     (get_local $0)
     (get_local $2)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 44)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_global $builtins/i
   (select
    (i32.const 1)
    (i32.const 2)
    (i32.lt_s
     (get_local $0)
     (get_local $2)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 45)
     (i32.const 20)
    )
    (unreachable)
   )
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
    (tee_local $1
     (i64.const -42)
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
   (i64.ne
    (get_global $builtins/I)
    (i64.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 61)
     (i32.const 19)
    )
    (unreachable)
   )
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
   (i64.ne
    (get_global $builtins/I)
    (i64.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 62)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_global $builtins/I
   (select
    (i64.const 1)
    (i64.const 2)
    (i64.lt_s
     (get_local $1)
     (get_local $5)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 63)
     (i32.const 20)
    )
    (unreachable)
   )
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
   (i32.const 0)
  )
  (set_global $builtins/b
   (i32.const 1)
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
   (i32.const 0)
  )
  (set_global $builtins/b
   (i32.const 1)
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
   (i32.load8_s
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load16_s
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load8_u
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load16_u
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load8_u
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load16_u
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load8_s
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load16_s
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load8_s
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load16_s
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load32_s
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load8_u
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load16_u
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load32_u
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load
    (i32.const 8)
   )
  )
  (i32.store8
   (i32.const 8)
   (i32.const 1)
  )
  (i32.store16
   (i32.const 8)
   (i32.const 1)
  )
  (i32.store
   (i32.const 8)
   (i32.const 1)
  )
  (i64.store8
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store16
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store32
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store
   (i32.const 8)
   (i64.const 1)
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
   (i32.eqz
    (get_global $builtins/i)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $showcase/ANamespace.aNamespacedFunction
     (get_global $showcase/ANamespace.aNamespacedGlobal)
    )
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 42)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 58)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (get_global $showcase/AnEnum.FORTYTHREE)
    (i32.const 43)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 59)
     (i32.const 0)
    )
    (unreachable)
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 151)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 8)
    )
    (i64.const 1229783084848853777)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 152)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 155)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 8)
    )
    (i64.const 1229783084848853777)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 156)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 16)
    )
    (i64.const 2459565876494606882)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 157)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 24)
    )
    (i64.const 3689348814741910323)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 158)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 32)
    )
    (i64.const 4919131752989213764)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 159)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 162)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 165)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 16)
    )
    (i64.const 3689348814741910323)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 166)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 24)
    )
    (i64.const 3694152654344438852)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 167)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 32)
    )
    (i64.const 4919131752989213764)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 92)
     (i32.const 168)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 103)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (f32.load
     (i32.const 12)
    )
    (f32.const 9e3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 104)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $showcase/ADerivedClass#set:aWildAccessorAppears
   (get_global $showcase/aClassInstance)
   (f32.const 123)
  )
  (if
   (f32.ne
    (call $showcase/ADerivedClass#get:aWildAccessorAppears
     (get_global $showcase/aClassInstance)
    )
    (f32.const 123)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 107)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $showcase/AClass.aStaticField
   (get_global $showcase/aClassInstance)
  )
  (if
   (i32.ne
    (get_global $showcase/AClass.aStaticField)
    (get_global $showcase/aClassInstance)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 110)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
