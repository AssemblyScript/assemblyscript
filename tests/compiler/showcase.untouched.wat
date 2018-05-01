(module
 (type $FFF (func (param f64 f64) (result f64)))
 (type $F (func (result f64)))
 (type $i (func (result i32)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $fi (func (param f32) (result i32)))
 (type $f (func (result f32)))
 (type $fif (func (param f32 i32) (result f32)))
 (type $Fi (func (param f64) (result i32)))
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
 (global $NaN f64 (f64.const nan:0x8000000000000))
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
 (global $Infinity f64 (f64.const inf))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/constantOffset i32 (i32.const 8))
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
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (global $showcase/aClassInstance (mut i32) (i32.const 8))
 (global $showcase/AClass.aStaticField (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 116))
 (memory $0 1)
 (data (i32.const 4) "\n\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s\00")
 (data (i32.const 28) "\0b\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s\00")
 (data (i32.const 56) "\01\00\00\001\00")
 (data (i32.const 64) "\0b\00\00\00s\00h\00o\00w\00c\00a\00s\00e\00.\00t\00s\00")
 (data (i32.const 92) "\t\00\00\00m\00e\00m\00c\00p\00y\00.\00t\00s\00")
 (export "anExportedConstantGlobal" (global $showcase/anExportedConstantGlobal))
 (export "aConstantGlobal" (global $showcase/aConstantGlobal))
 (export "anAliasedConstantGlobal" (global $showcase/anExportedConstantGlobal))
 (export "AnEnum.ONE" (global $showcase/AnEnum.ONE))
 (export "AnEnum.TWO" (global $showcase/AnEnum.TWO))
 (export "AnEnum.FOUR" (global $showcase/AnEnum.FOUR))
 (export "AnEnum.FIVE" (global $showcase/AnEnum.FIVE))
 (export "anExportedFunction" (func $showcase/anExportedFunction))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/math/NativeMath.scalbn (; 1 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
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
 (func $~lib/math/NativeMath.pow (; 2 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
  (local $12 i32)
  (local $13 f64)
  (local $14 f64)
  (local $15 i32)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  (local $25 f64)
  (local $26 i32)
  (local $27 i32)
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
  (local $38 f64)
  (local $39 f64)
  (local $40 i32)
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
         (set_local $12
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
            (get_local $12)
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
             (get_local $12)
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
  (set_local $13
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
     (tee_local $15
      (if (result i32)
       (tee_local $15
        (i32.eq
         (get_local $7)
         (i32.const 2146435072)
        )
       )
       (get_local $15)
       (i32.eq
        (get_local $7)
        (i32.const 0)
       )
      )
     )
     (get_local $15)
     (i32.eq
      (get_local $7)
      (i32.const 1072693248)
     )
    )
    (block
     (set_local $14
      (get_local $13)
     )
     (if
      (i32.lt_s
       (get_local $5)
       (i32.const 0)
      )
      (set_local $14
       (f64.div
        (f64.const 1)
        (get_local $14)
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
       (set_local $14
        (f64.div
         (f64.sub
          (get_local $14)
          (get_local $14)
         )
         (f64.sub
          (get_local $14)
          (get_local $14)
         )
        )
       )
       (if
        (i32.eq
         (get_local $10)
         (i32.const 1)
        )
        (set_local $14
         (f64.neg
          (get_local $14)
         )
        )
       )
      )
     )
     (return
      (get_local $14)
     )
    )
   )
  )
  (set_local $16
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
     (set_local $16
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
         (get_local $16)
         (f64.const 1.e+300)
        )
        (f64.const 1.e+300)
       )
       (f64.mul
        (f64.mul
         (get_local $16)
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
         (get_local $16)
         (f64.const 1.e+300)
        )
        (f64.const 1.e+300)
       )
       (f64.mul
        (f64.mul
         (get_local $16)
         (f64.const 1e-300)
        )
        (f64.const 1e-300)
       )
      )
     )
    )
    (set_local $22
     (f64.sub
      (get_local $13)
      (f64.const 1)
     )
    )
    (set_local $25
     (f64.mul
      (f64.mul
       (get_local $22)
       (get_local $22)
      )
      (f64.sub
       (f64.const 0.5)
       (f64.mul
        (get_local $22)
        (f64.sub
         (f64.const 0.3333333333333333)
         (f64.mul
          (get_local $22)
          (f64.const 0.25)
         )
        )
       )
      )
     )
    )
    (set_local $23
     (f64.mul
      (f64.const 1.4426950216293335)
      (get_local $22)
     )
    )
    (set_local $24
     (f64.sub
      (f64.mul
       (get_local $22)
       (f64.const 1.9259629911266175e-08)
      )
      (f64.mul
       (get_local $25)
       (f64.const 1.4426950408889634)
      )
     )
    )
    (set_local $17
     (f64.add
      (get_local $23)
      (get_local $24)
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
      (get_local $24)
      (f64.sub
       (get_local $17)
       (get_local $23)
      )
     )
    )
   )
   (block
    (nop)
    (set_local $27
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (get_local $7)
      (i32.const 1048576)
     )
     (block
      (set_local $13
       (f64.mul
        (get_local $13)
        (f64.const 9007199254740992)
       )
      )
      (set_local $27
       (i32.sub
        (get_local $27)
        (i32.const 53)
       )
      )
      (set_local $7
       (i32.wrap/i64
        (i64.shr_u
         (i64.reinterpret/f64
          (get_local $13)
         )
         (i64.const 32)
        )
       )
      )
     )
    )
    (set_local $27
     (i32.add
      (get_local $27)
      (i32.sub
       (i32.shr_s
        (get_local $7)
        (i32.const 20)
       )
       (i32.const 1023)
      )
     )
    )
    (set_local $26
     (i32.and
      (get_local $7)
      (i32.const 1048575)
     )
    )
    (set_local $7
     (i32.or
      (get_local $26)
      (i32.const 1072693248)
     )
    )
    (if
     (i32.le_s
      (get_local $26)
      (i32.const 235662)
     )
     (set_local $11
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (get_local $26)
       (i32.const 767610)
      )
      (set_local $11
       (i32.const 1)
      )
      (block
       (set_local $11
        (i32.const 0)
       )
       (set_local $27
        (i32.add
         (get_local $27)
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
         (get_local $7)
        )
        (i64.const 32)
       )
      )
     )
    )
    (set_local $34
     (select
      (f64.const 1.5)
      (f64.const 1)
      (get_local $11)
     )
    )
    (set_local $23
     (f64.sub
      (get_local $13)
      (get_local $34)
     )
    )
    (set_local $24
     (f64.div
      (f64.const 1)
      (f64.add
       (get_local $13)
       (get_local $34)
      )
     )
    )
    (set_local $28
     (f64.mul
      (get_local $23)
      (get_local $24)
     )
    )
    (set_local $30
     (get_local $28)
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
    (set_local $32
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
    (set_local $33
     (f64.sub
      (get_local $13)
      (f64.sub
       (get_local $32)
       (get_local $34)
      )
     )
    )
    (set_local $31
     (f64.mul
      (get_local $24)
      (f64.sub
       (f64.sub
        (get_local $23)
        (f64.mul
         (get_local $30)
         (get_local $32)
        )
       )
       (f64.mul
        (get_local $30)
        (get_local $33)
       )
      )
     )
    )
    (set_local $29
     (f64.mul
      (get_local $28)
      (get_local $28)
     )
    )
    (set_local $21
     (f64.mul
      (f64.mul
       (get_local $29)
       (get_local $29)
      )
      (f64.add
       (f64.const 0.5999999999999946)
       (f64.mul
        (get_local $29)
        (f64.add
         (f64.const 0.4285714285785502)
         (f64.mul
          (get_local $29)
          (f64.add
           (f64.const 0.33333332981837743)
           (f64.mul
            (get_local $29)
            (f64.add
             (f64.const 0.272728123808534)
             (f64.mul
              (get_local $29)
              (f64.add
               (f64.const 0.23066074577556175)
               (f64.mul
                (get_local $29)
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
    (set_local $21
     (f64.add
      (get_local $21)
      (f64.mul
       (get_local $31)
       (f64.add
        (get_local $30)
        (get_local $28)
       )
      )
     )
    )
    (set_local $29
     (f64.mul
      (get_local $30)
      (get_local $30)
     )
    )
    (set_local $32
     (f64.add
      (f64.add
       (f64.const 3)
       (get_local $29)
      )
      (get_local $21)
     )
    )
    (set_local $32
     (f64.reinterpret/i64
      (i64.and
       (i64.reinterpret/f64
        (get_local $32)
       )
       (i64.const -4294967296)
      )
     )
    )
    (set_local $33
     (f64.sub
      (get_local $21)
      (f64.sub
       (f64.sub
        (get_local $32)
        (f64.const 3)
       )
       (get_local $29)
      )
     )
    )
    (set_local $23
     (f64.mul
      (get_local $30)
      (get_local $32)
     )
    )
    (set_local $24
     (f64.add
      (f64.mul
       (get_local $31)
       (get_local $32)
      )
      (f64.mul
       (get_local $33)
       (get_local $28)
      )
     )
    )
    (set_local $19
     (f64.add
      (get_local $23)
      (get_local $24)
     )
    )
    (set_local $19
     (f64.reinterpret/i64
      (i64.and
       (i64.reinterpret/f64
        (get_local $19)
       )
       (i64.const -4294967296)
      )
     )
    )
    (set_local $20
     (f64.sub
      (get_local $24)
      (f64.sub
       (get_local $19)
       (get_local $23)
      )
     )
    )
    (set_local $35
     (f64.mul
      (f64.const 0.9617967009544373)
      (get_local $19)
     )
    )
    (set_local $36
     (select
      (f64.const 1.350039202129749e-08)
      (f64.const 0)
      (get_local $11)
     )
    )
    (set_local $37
     (f64.add
      (f64.add
       (f64.mul
        (f64.const -7.028461650952758e-09)
        (get_local $19)
       )
       (f64.mul
        (get_local $20)
        (f64.const 0.9617966939259756)
       )
      )
      (get_local $36)
     )
    )
    (set_local $22
     (f64.convert_s/i32
      (get_local $27)
     )
    )
    (set_local $38
     (select
      (f64.const 0.5849624872207642)
      (f64.const 0)
      (get_local $11)
     )
    )
    (set_local $17
     (f64.add
      (f64.add
       (f64.add
        (get_local $35)
        (get_local $37)
       )
       (get_local $38)
      )
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
      (get_local $37)
      (f64.sub
       (f64.sub
        (f64.sub
         (get_local $17)
         (get_local $22)
        )
        (get_local $38)
       )
       (get_local $35)
      )
     )
    )
   )
  )
  (set_local $39
   (get_local $1)
  )
  (set_local $39
   (f64.reinterpret/i64
    (i64.and
     (i64.reinterpret/f64
      (get_local $39)
     )
     (i64.const -4294967296)
    )
   )
  )
  (set_local $20
   (f64.add
    (f64.mul
     (f64.sub
      (get_local $1)
      (get_local $39)
     )
     (get_local $17)
    )
    (f64.mul
     (get_local $1)
     (get_local $18)
    )
   )
  )
  (set_local $19
   (f64.mul
    (get_local $39)
    (get_local $17)
   )
  )
  (set_local $14
   (f64.add
    (get_local $20)
    (get_local $19)
   )
  )
  (set_local $2
   (i64.reinterpret/f64
    (get_local $14)
   )
  )
  (set_local $26
   (i32.wrap/i64
    (i64.shr_u
     (get_local $2)
     (i64.const 32)
    )
   )
  )
  (set_local $40
   (i32.wrap/i64
    (get_local $2)
   )
  )
  (if
   (i32.ge_s
    (get_local $26)
    (i32.const 1083179008)
   )
   (block
    (if
     (i32.ne
      (i32.or
       (i32.sub
        (get_local $26)
        (i32.const 1083179008)
       )
       (get_local $40)
      )
      (i32.const 0)
     )
     (return
      (f64.mul
       (f64.mul
        (get_local $16)
        (f64.const 1.e+300)
       )
       (f64.const 1.e+300)
      )
     )
    )
    (if
     (f64.gt
      (f64.add
       (get_local $20)
       (f64.const 8.008566259537294e-17)
      )
      (f64.sub
       (get_local $14)
       (get_local $19)
      )
     )
     (return
      (f64.mul
       (f64.mul
        (get_local $16)
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
      (get_local $26)
      (i32.const 2147483647)
     )
     (i32.const 1083231232)
    )
    (block
     (if
      (i32.ne
       (i32.or
        (i32.sub
         (get_local $26)
         (i32.const -1064252416)
        )
        (get_local $40)
       )
       (i32.const 0)
      )
      (return
       (f64.mul
        (f64.mul
         (get_local $16)
         (f64.const 1e-300)
        )
        (f64.const 1e-300)
       )
      )
     )
     (if
      (f64.le
       (get_local $20)
       (f64.sub
        (get_local $14)
        (get_local $19)
       )
      )
      (return
       (f64.mul
        (f64.mul
         (get_local $16)
         (f64.const 1e-300)
        )
        (f64.const 1e-300)
       )
      )
     )
    )
   )
  )
  (set_local $40
   (i32.and
    (get_local $26)
    (i32.const 2147483647)
   )
  )
  (set_local $11
   (i32.sub
    (i32.shr_s
     (get_local $40)
     (i32.const 20)
    )
    (i32.const 1023)
   )
  )
  (set_local $27
   (i32.const 0)
  )
  (if
   (i32.gt_s
    (get_local $40)
    (i32.const 1071644672)
   )
   (block
    (set_local $27
     (i32.add
      (get_local $26)
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
        (get_local $27)
        (i32.const 2147483647)
       )
       (i32.const 20)
      )
      (i32.const 1023)
     )
    )
    (set_local $22
     (f64.const 0)
    )
    (set_local $22
     (f64.reinterpret/i64
      (i64.shl
       (i64.extend_u/i32
        (i32.and
         (get_local $27)
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
    (set_local $27
     (i32.shr_s
      (i32.or
       (i32.and
        (get_local $27)
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
      (get_local $26)
      (i32.const 0)
     )
     (set_local $27
      (i32.sub
       (i32.const 0)
       (get_local $27)
      )
     )
    )
    (set_local $19
     (f64.sub
      (get_local $19)
      (get_local $22)
     )
    )
   )
  )
  (set_local $22
   (f64.add
    (get_local $20)
    (get_local $19)
   )
  )
  (set_local $22
   (f64.reinterpret/i64
    (i64.and
     (i64.reinterpret/f64
      (get_local $22)
     )
     (i64.const -4294967296)
    )
   )
  )
  (set_local $23
   (f64.mul
    (get_local $22)
    (f64.const 0.6931471824645996)
   )
  )
  (set_local $24
   (f64.add
    (f64.mul
     (f64.sub
      (get_local $20)
      (f64.sub
       (get_local $22)
       (get_local $19)
      )
     )
     (f64.const 0.6931471805599453)
    )
    (f64.mul
     (get_local $22)
     (f64.const -1.904654299957768e-09)
    )
   )
  )
  (set_local $14
   (f64.add
    (get_local $23)
    (get_local $24)
   )
  )
  (set_local $25
   (f64.sub
    (get_local $24)
    (f64.sub
     (get_local $14)
     (get_local $23)
    )
   )
  )
  (set_local $22
   (f64.mul
    (get_local $14)
    (get_local $14)
   )
  )
  (set_local $17
   (f64.sub
    (get_local $14)
    (f64.mul
     (get_local $22)
     (f64.add
      (f64.const 0.16666666666666602)
      (f64.mul
       (get_local $22)
       (f64.add
        (f64.const -2.7777777777015593e-03)
        (f64.mul
         (get_local $22)
         (f64.add
          (f64.const 6.613756321437934e-05)
          (f64.mul
           (get_local $22)
           (f64.add
            (f64.const -1.6533902205465252e-06)
            (f64.mul
             (get_local $22)
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
  (set_local $21
   (f64.sub
    (f64.div
     (f64.mul
      (get_local $14)
      (get_local $17)
     )
     (f64.sub
      (get_local $17)
      (f64.const 2)
     )
    )
    (f64.add
     (get_local $25)
     (f64.mul
      (get_local $14)
      (get_local $25)
     )
    )
   )
  )
  (set_local $14
   (f64.sub
    (f64.const 1)
    (f64.sub
     (get_local $21)
     (get_local $14)
    )
   )
  )
  (set_local $26
   (i32.wrap/i64
    (i64.shr_u
     (i64.reinterpret/f64
      (get_local $14)
     )
     (i64.const 32)
    )
   )
  )
  (set_local $26
   (i32.add
    (get_local $26)
    (i32.shl
     (get_local $27)
     (i32.const 20)
    )
   )
  )
  (if
   (i32.le_s
    (i32.shr_s
     (get_local $26)
     (i32.const 20)
    )
    (i32.const 0)
   )
   (set_local $14
    (call $~lib/math/NativeMath.scalbn
     (get_local $14)
     (get_local $27)
    )
   )
   (set_local $14
    (f64.reinterpret/i64
     (i64.or
      (i64.and
       (i64.reinterpret/f64
        (get_local $14)
       )
       (i64.const 4294967295)
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $26)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (return
   (f64.mul
    (get_local $16)
    (get_local $14)
   )
  )
 )
 (func $isNaN<f32> (; 3 ;) (type $fi) (param $0 f32) (result i32)
  (return
   (f32.ne
    (get_local $0)
    (get_local $0)
   )
  )
 )
 (func $~lib/math/NativeMathf.mod (; 4 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
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
  (nop)
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
     (loop $continue|0
      (if
       (i32.eqz
        (i32.shr_u
         (get_local $8)
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
        (set_local $8
         (i32.shl
          (get_local $8)
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
     (set_local $8
      (i32.shl
       (get_local $3)
       (i32.const 9)
      )
     )
     (loop $continue|1
      (if
       (i32.eqz
        (i32.shr_u
         (get_local $8)
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
        (set_local $8
         (i32.shl
          (get_local $8)
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
      (br $continue|2)
     )
    )
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
 (func $~lib/math/NativeMathf.scalbn (; 5 ;) (type $fif) (param $0 f32) (param $1 i32) (result f32)
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
 (func $~lib/math/NativeMathf.pow (; 6 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
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
  (nop)
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
 (func $isNaN<f64> (; 7 ;) (type $Fi) (param $0 f64) (result i32)
  (return
   (f64.ne
    (get_local $0)
    (get_local $0)
   )
  )
 )
 (func $~lib/math/NativeMath.mod (; 8 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
  (nop)
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
     (loop $continue|0
      (if
       (i64.eqz
        (i64.shr_u
         (get_local $8)
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
        (set_local $8
         (i64.shl
          (get_local $8)
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
     (set_local $8
      (i64.shl
       (get_local $3)
       (i64.const 12)
      )
     )
     (loop $continue|1
      (if
       (i64.eqz
        (i64.shr_u
         (get_local $8)
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
        (set_local $8
         (i64.shl
          (get_local $8)
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
      (br $continue|2)
     )
    )
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
 (func $isFinite<f32> (; 9 ;) (type $fi) (param $0 f32) (result i32)
  (return
   (f32.eq
    (f32.sub
     (get_local $0)
     (get_local $0)
    )
    (f32.const 0)
   )
  )
 )
 (func $isFinite<f64> (; 10 ;) (type $Fi) (param $0 f64) (result i32)
  (return
   (f64.eq
    (f64.sub
     (get_local $0)
     (get_local $0)
    )
    (f64.const 0)
   )
  )
 )
 (func $showcase/ANamespace.aNamespacedFunction (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (get_local $0)
  )
 )
 (func $showcase/addGeneric<i32> (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $showcase/addGeneric<f32> (; 13 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (return
   (f32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $showcase/addGeneric<f64> (; 14 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (return
   (f64.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $showcase/anExportedFunction (; 15 ;) (type $v)
 )
 (func $memcpy/memcpy (; 16 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (get_local $2)
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
 (func $showcase/ADerivedClass#set:aWildAccessorAppears (; 17 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (f32.store offset=4
   (get_local $0)
   (get_local $1)
  )
 )
 (func $showcase/ADerivedClass#get:aWildAccessorAppears (; 18 ;) (type $if) (param $0 i32) (result f32)
  (return
   (f32.load offset=4
    (get_local $0)
   )
  )
 )
 (func $start (; 19 ;) (type $v)
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
   (i32.const -1)
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
   (f64.const -1.25)
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
   (i32.const -1)
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
   (i64.const -1)
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
   (f32.const -1.25)
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
   (f64.const -1.25)
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
  (drop
   (if (result i32)
    (i32.const 0)
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
    (i32.const 1)
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
    (tee_local $0
     (if (result i32)
      (i32.const 1)
      (i32.const 2)
      (i32.const 1)
     )
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
    (i32.const 1)
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
   (if (result i32)
    (i32.const 0)
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
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 6)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 7)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 14)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 19)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (i32.eqz
    (i32.eq
     (get_global $builtins/i)
     (i32.const 42)
    )
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
   (i32.eqz
    (i64.eq
     (get_global $builtins/I)
     (i64.const 42)
    )
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
   (i32.eqz
    (i64.eq
     (get_global $builtins/I)
     (i64.const 2)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (call $isNaN<f32>
      (f32.const 1.25)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $isNaN<f32>
      (f32.const nan:0x400000)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 81)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $isFinite<f32>
      (f32.const 1.25)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 82)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $isFinite<f32>
      (f32.const inf)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 83)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $isFinite<f32>
      (f32.neg
       (f32.const inf)
      )
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 84)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $isFinite<f32>
      (f32.const nan:0x400000)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 85)
     (i32.const 0)
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
   (call $isNaN<f32>
    (f32.const 1.25)
   )
  )
  (set_global $builtins/b
   (call $isFinite<f32>
    (f32.const 1.25)
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
  (if
   (i32.eqz
    (i32.eq
     (call $isNaN<f64>
      (f64.const 1.25)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $isNaN<f64>
      (f64.const nan:0x8000000000000)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 117)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $isFinite<f64>
      (f64.const 1.25)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 118)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $isFinite<f64>
      (f64.const inf)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 119)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $isFinite<f64>
      (f64.neg
       (f64.const inf)
      )
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 120)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $isFinite<f64>
      (f64.const nan:0x8000000000000)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 121)
     (i32.const 0)
    )
    (unreachable)
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
   (call $isNaN<f64>
    (f64.const 1.25)
   )
  )
  (set_global $builtins/b
   (call $isFinite<f64>
    (f64.const 1.25)
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
   (i32.load offset=8
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (i32.const 0)
   (get_global $builtins/i)
  )
  (i32.store offset=8
   (i32.const 0)
   (i32.load offset=8
    (i32.const 0)
   )
  )
  (set_global $builtins/I
   (i64.load offset=8
    (i32.const 0)
   )
  )
  (i64.store offset=8
   (i32.const 0)
   (get_global $builtins/I)
  )
  (i64.store offset=8
   (i32.const 0)
   (i64.load offset=8
    (i32.const 0)
   )
  )
  (set_global $builtins/f
   (f32.load offset=8
    (i32.const 0)
   )
  )
  (f32.store offset=8
   (i32.const 0)
   (get_global $builtins/f)
  )
  (f32.store offset=8
   (i32.const 0)
   (f32.load offset=8
    (i32.const 0)
   )
  )
  (set_global $builtins/F
   (f64.load offset=8
    (i32.const 0)
   )
  )
  (f64.store offset=8
   (i32.const 0)
   (get_global $builtins/F)
  )
  (f64.store offset=8
   (i32.const 0)
   (f64.load offset=8
    (i32.const 0)
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
   (i64.extend_s/i32
    (i32.const 1)
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
   (i32.eqz
    (get_global $builtins/i)
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 237)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 2)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 238)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 239)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 240)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (i32.const 4)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 242)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 243)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 2)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 244)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 245)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 246)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (i32.const 4)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 248)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 249)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 252)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 253)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 254)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 2)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 255)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 257)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 258)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.ne
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 260)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $isNaN<f32>
     (f32.const nan:0x400000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 261)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $isNaN<f64>
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 262)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $isFinite<f32>
      (f32.const nan:0x400000)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 263)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $isFinite<f32>
      (f32.const inf)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 264)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $isFinite<f64>
      (f64.const nan:0x8000000000000)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 265)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $isFinite<f64>
      (f64.const inf)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 266)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $isFinite<f32>
     (f32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $isFinite<f64>
     (f64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 268)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -128)
     (i32.shr_s
      (i32.shl
       (i32.const 128)
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 281)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 127)
     (i32.const 127)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 282)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -32768)
     (i32.shr_s
      (i32.shl
       (i32.const 32768)
       (i32.const 16)
      )
      (i32.const 16)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 283)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 32767)
     (i32.const 32767)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 284)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -2147483648)
     (i32.const -2147483648)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 285)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 2147483647)
     (i32.const 2147483647)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 286)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const -9223372036854775808)
     (i64.const -9223372036854775808)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 287)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const 9223372036854775807)
     (i64.const 9223372036854775807)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 288)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 290)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 255)
     (i32.const 255)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 291)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 292)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 65535)
     (i32.const 65535)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 293)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 294)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -1)
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 295)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const 0)
     (i64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 296)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const -1)
     (i64.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 297)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 298)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 298)
     (i32.const 29)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 299)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 299)
     (i32.const 29)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const -3402823466385288598117041e14)
     (f32.const -3402823466385288598117041e14)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 301)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const 3402823466385288598117041e14)
     (f32.const 3402823466385288598117041e14)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 302)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const -16777215)
     (f32.const -16777215)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 303)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const 16777215)
     (f32.const 16777215)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 304)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const 1.1920928955078125e-07)
     (f32.const 1.1920928955078125e-07)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 305)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const -1797693134862315708145274e284)
     (f64.const -1797693134862315708145274e284)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 306)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const 1797693134862315708145274e284)
     (f64.const 1797693134862315708145274e284)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 307)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const -9007199254740991)
     (f64.const -9007199254740991)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 308)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const 9007199254740991)
     (f64.const 9007199254740991)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 309)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const 2.220446049250313e-16)
     (f64.const 2.220446049250313e-16)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 28)
     (i32.const 310)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (f32.abs
    (f32.const 1)
   )
  )
  (drop
   (f64.abs
    (f64.const 1)
   )
  )
  (drop
   (f32.ceil
    (f32.const 1)
   )
  )
  (drop
   (f64.ceil
    (f64.const 1)
   )
  )
  (drop
   (i32.clz
    (i32.const 1)
   )
  )
  (drop
   (i64.clz
    (i64.const 1)
   )
  )
  (drop
   (f32.copysign
    (f32.const 1)
    (f32.const 2)
   )
  )
  (drop
   (f64.copysign
    (f64.const 1)
    (f64.const 2)
   )
  )
  (drop
   (i32.ctz
    (i32.const 1)
   )
  )
  (drop
   (i64.ctz
    (i64.const 1)
   )
  )
  (drop
   (f32.floor
    (f32.const 1)
   )
  )
  (drop
   (f64.floor
    (f64.const 1)
   )
  )
  (drop
   (f32.nearest
    (f32.const 1)
   )
  )
  (drop
   (f64.nearest
    (f64.const 1)
   )
  )
  (drop
   (i32.popcnt
    (i32.const 1)
   )
  )
  (drop
   (i64.popcnt
    (i64.const 1)
   )
  )
  (drop
   (i32.load8_s
    (i32.const 8)
   )
  )
  (drop
   (i32.load8_u
    (i32.const 8)
   )
  )
  (drop
   (i32.load16_s
    (i32.const 8)
   )
  )
  (drop
   (i32.load16_u
    (i32.const 8)
   )
  )
  (drop
   (i32.load
    (i32.const 8)
   )
  )
  (drop
   (i64.load8_s
    (i32.const 8)
   )
  )
  (drop
   (i64.load8_u
    (i32.const 8)
   )
  )
  (drop
   (i64.load16_s
    (i32.const 8)
   )
  )
  (drop
   (i64.load16_u
    (i32.const 8)
   )
  )
  (drop
   (i64.load32_s
    (i32.const 8)
   )
  )
  (drop
   (i64.load32_u
    (i32.const 8)
   )
  )
  (drop
   (i64.load
    (i32.const 8)
   )
  )
  (drop
   (f32.load
    (i32.const 8)
   )
  )
  (drop
   (f64.load
    (i32.const 8)
   )
  )
  (drop
   (f32.max
    (f32.const 1)
    (f32.const 2)
   )
  )
  (drop
   (f64.max
    (f64.const 1)
    (f64.const 2)
   )
  )
  (drop
   (f32.min
    (f32.const 1)
    (f32.const 2)
   )
  )
  (drop
   (f64.min
    (f64.const 1)
    (f64.const 2)
   )
  )
  (drop
   (i32.reinterpret/f32
    (f32.const 1)
   )
  )
  (drop
   (i64.reinterpret/f64
    (f64.const 1)
   )
  )
  (drop
   (f32.reinterpret/i32
    (i32.const 1)
   )
  )
  (drop
   (f64.reinterpret/i64
    (i64.const 1)
   )
  )
  (drop
   (i32.rotl
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (i64.rotl
    (i64.const 1)
    (i64.const 2)
   )
  )
  (drop
   (i32.rotr
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (i64.rotr
    (i64.const 1)
    (i64.const 2)
   )
  )
  (drop
   (f32.sqrt
    (f32.const 1)
   )
  )
  (drop
   (f64.sqrt
    (f64.const 1)
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
  (i64.store
   (i32.const 8)
   (i64.const 1)
  )
  (f32.store
   (i32.const 8)
   (f32.const 1)
  )
  (f64.store
   (i32.const 8)
   (f64.const 1)
  )
  (drop
   (f32.trunc
    (f32.const 1)
   )
  )
  (drop
   (f64.trunc
    (f64.const 1)
   )
  )
  (drop
   (call $isNaN<f64>
    (f64.const 1)
   )
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
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 54)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 2)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 55)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 56)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 5)
     (i32.const 5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 57)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $showcase/AnEnum.FORTYTWO)
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $showcase/AnEnum.FORTYTHREE)
     (i32.const 43)
    )
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
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.const 8)
     )
     (i64.const 1229783084848853777)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $memcpy/dest)
     (i32.const 8)
    )
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
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.const 8)
     )
     (i64.const 1229783084848853777)
    )
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
   (i32.eqz
    (i32.eq
     (i32.load
      (i32.const 8)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (f32.eq
     (f32.load
      (i32.const 12)
     )
     (f32.const 9e3)
    )
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
   (i32.eqz
    (f32.eq
     (call $showcase/ADerivedClass#get:aWildAccessorAppears
      (get_global $showcase/aClassInstance)
     )
     (f32.const 123)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $showcase/AClass.aStaticField)
     (get_global $showcase/aClassInstance)
    )
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
