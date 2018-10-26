(module
 (type $v (func))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (memory $0 0)
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $binary/b (mut i32) (i32.const 0))
 (global $binary/i (mut i32) (i32.const 0))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/math/NativeMath.pow (; 0 ;) (; has Stack IR ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $folding-inner0 (result f64)
   (set_local $3
    (i32.wrap/i64
     (tee_local $2
      (i64.reinterpret/f64
       (get_local $0)
      )
     )
    )
   )
   (if
    (i32.eqz
     (tee_local $1
      (i32.gt_s
       (tee_local $5
        (i32.and
         (tee_local $4
          (i32.wrap/i64
           (i64.shr_u
            (get_local $2)
            (i64.const 32)
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (i32.const 2146435072)
      )
     )
    )
    (if
     (tee_local $1
      (i32.eq
       (get_local $5)
       (i32.const 2146435072)
      )
     )
     (set_local $1
      (i32.ne
       (get_local $3)
       (i32.const 0)
      )
     )
    )
   )
   (if
    (i32.eqz
     (get_local $1)
    )
    (set_local $1
     (i32.const 0)
    )
   )
   (if
    (i32.eqz
     (get_local $1)
    )
    (set_local $1
     (i32.const 0)
    )
   )
   (if
    (get_local $1)
    (return
     (f64.add
      (get_local $0)
      (f64.const 1)
     )
    )
   )
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMathf.mod (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $folding-inner0
   (set_local $3
    (i32.and
     (i32.shr_u
      (tee_local $1
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 23)
     )
     (i32.const 255)
    )
   )
   (set_local $4
    (i32.and
     (get_local $1)
     (i32.const -2147483648)
    )
   )
   (if
    (i32.eqz
     (tee_local $2
      (i32.eq
       (get_local $3)
       (i32.const 255)
      )
     )
    )
    (set_local $2
     (i32.const 0)
    )
   )
   (if
    (i32.and
     (get_local $2)
     (i32.const 1)
    )
    (return
     (f32.div
      (get_local $0)
      (get_local $0)
     )
    )
   )
   (if
    (i32.le_u
     (tee_local $2
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 2130706432)
    )
    (block
     (br_if $folding-inner0
      (i32.eq
       (get_local $2)
       (i32.const 2130706432)
      )
     )
     (return
      (get_local $0)
     )
    )
   )
   (set_local $1
    (if (result i32)
     (get_local $3)
     (i32.or
      (i32.and
       (get_local $1)
       (i32.const 8388607)
      )
      (i32.const 8388608)
     )
     (i32.shl
      (get_local $1)
      (i32.sub
       (i32.const 1)
       (tee_local $3
        (i32.sub
         (get_local $3)
         (i32.clz
          (i32.shl
           (get_local $1)
           (i32.const 9)
          )
         )
        )
       )
      )
     )
    )
   )
   (block $break|0
    (loop $repeat|0
     (br_if $break|0
      (i32.le_s
       (get_local $3)
       (i32.const 127)
      )
     )
     (if
      (i32.eqz
       (i32.shr_u
        (tee_local $2
         (i32.sub
          (get_local $1)
          (i32.const 8388608)
         )
        )
        (i32.const 31)
       )
      )
      (block
       (br_if $folding-inner0
        (i32.eqz
         (get_local $2)
        )
       )
       (set_local $1
        (get_local $2)
       )
      )
     )
     (set_local $1
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.sub
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $repeat|0)
    )
   )
   (if
    (i32.eqz
     (i32.shr_u
      (tee_local $2
       (i32.sub
        (get_local $1)
        (i32.const 8388608)
       )
      )
      (i32.const 31)
     )
    )
    (block
     (br_if $folding-inner0
      (i32.eqz
       (get_local $2)
      )
     )
     (set_local $1
      (get_local $2)
     )
    )
   )
   (set_local $1
    (i32.shl
     (get_local $1)
     (tee_local $2
      (i32.clz
       (i32.shl
        (get_local $1)
        (i32.const 8)
       )
      )
     )
    )
   )
   (return
    (f32.reinterpret/i32
     (i32.or
      (tee_local $1
       (if (result i32)
        (i32.gt_s
         (tee_local $3
          (i32.sub
           (get_local $3)
           (get_local $2)
          )
         )
         (i32.const 0)
        )
        (i32.or
         (i32.sub
          (get_local $1)
          (i32.const 8388608)
         )
         (i32.shl
          (get_local $3)
          (i32.const 23)
         )
        )
        (i32.shr_u
         (get_local $1)
         (i32.sub
          (i32.const 1)
          (get_local $3)
         )
        )
       )
      )
      (get_local $4)
     )
    )
   )
  )
  (f32.mul
   (f32.const 0)
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMathf.pow (; 2 ;) (; has Stack IR ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner0 (result f32)
   (if
    (i32.eqz
     (tee_local $1
      (i32.gt_s
       (i32.and
        (tee_local $2
         (i32.reinterpret/f32
          (get_local $0)
         )
        )
        (i32.const 2147483647)
       )
       (i32.const 2139095040)
      )
     )
    )
    (set_local $1
     (i32.const 0)
    )
   )
   (if
    (get_local $1)
    (return
     (f32.add
      (get_local $0)
      (f32.const 1)
     )
    )
   )
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.mod (; 3 ;) (; has Stack IR ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (block $folding-inner0
   (set_local $2
    (i64.and
     (i64.shr_u
      (tee_local $1
       (i64.reinterpret/f64
        (get_local $0)
       )
      )
      (i64.const 52)
     )
     (i64.const 2047)
    )
   )
   (set_local $5
    (i64.shr_u
     (get_local $1)
     (i64.const 63)
    )
   )
   (if
    (i32.eqz
     (tee_local $4
      (i64.eq
       (get_local $2)
       (i64.const 2047)
      )
     )
    )
    (set_local $4
     (i32.const 0)
    )
   )
   (if
    (get_local $4)
    (return
     (f64.div
      (get_local $0)
      (get_local $0)
     )
    )
   )
   (if
    (i64.le_u
     (tee_local $3
      (i64.shl
       (get_local $1)
       (i64.const 1)
      )
     )
     (i64.const 9214364837600034816)
    )
    (block
     (br_if $folding-inner0
      (i64.eq
       (get_local $3)
       (i64.const 9214364837600034816)
      )
     )
     (return
      (get_local $0)
     )
    )
   )
   (set_local $1
    (if (result i64)
     (i64.eqz
      (get_local $2)
     )
     (i64.shl
      (get_local $1)
      (i64.add
       (i64.sub
        (i64.const 0)
        (tee_local $2
         (i64.sub
          (get_local $2)
          (i64.clz
           (i64.shl
            (get_local $1)
            (i64.const 12)
           )
          )
         )
        )
       )
       (i64.const 1)
      )
     )
     (i64.or
      (i64.and
       (get_local $1)
       (i64.const 4503599627370495)
      )
      (i64.const 4503599627370496)
     )
    )
   )
   (block $break|0
    (loop $repeat|0
     (br_if $break|0
      (i64.le_s
       (get_local $2)
       (i64.const 1023)
      )
     )
     (if
      (i64.eqz
       (i64.shr_u
        (tee_local $3
         (i64.sub
          (get_local $1)
          (i64.const 4503599627370496)
         )
        )
        (i64.const 63)
       )
      )
      (block
       (br_if $folding-inner0
        (i64.eqz
         (get_local $3)
        )
       )
       (set_local $1
        (get_local $3)
       )
      )
     )
     (set_local $1
      (i64.shl
       (get_local $1)
       (i64.const 1)
      )
     )
     (set_local $2
      (i64.sub
       (get_local $2)
       (i64.const 1)
      )
     )
     (br $repeat|0)
    )
   )
   (if
    (i64.eqz
     (i64.shr_u
      (tee_local $3
       (i64.sub
        (get_local $1)
        (i64.const 4503599627370496)
       )
      )
      (i64.const 63)
     )
    )
    (block
     (br_if $folding-inner0
      (i64.eqz
       (get_local $3)
      )
     )
     (set_local $1
      (get_local $3)
     )
    )
   )
   (set_local $1
    (i64.shl
     (get_local $1)
     (tee_local $3
      (i64.clz
       (i64.shl
        (get_local $1)
        (i64.const 11)
       )
      )
     )
    )
   )
   (return
    (f64.reinterpret/i64
     (i64.or
      (tee_local $1
       (if (result i64)
        (i64.gt_s
         (tee_local $2
          (i64.sub
           (get_local $2)
           (get_local $3)
          )
         )
         (i64.const 0)
        )
        (i64.or
         (i64.sub
          (get_local $1)
          (i64.const 4503599627370496)
         )
         (i64.shl
          (get_local $2)
          (i64.const 52)
         )
        )
        (i64.shr_u
         (get_local $1)
         (i64.add
          (i64.sub
           (i64.const 0)
           (get_local $2)
          )
          (i64.const 1)
         )
        )
       )
      )
      (i64.shl
       (get_local $5)
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
 (func $start (; 4 ;) (; has Stack IR ;) (type $v)
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
   )
  )
  (drop
   (call $~lib/math/NativeMathf.pow
    (get_global $binary/f)
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
   )
  )
  (set_global $binary/f
   (call $~lib/math/NativeMathf.pow
    (get_global $binary/f)
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
   )
  )
  (set_global $binary/f
   (call $~lib/math/NativeMathf.pow
    (get_global $binary/f)
   )
  )
  (drop
   (call $~lib/math/NativeMath.mod
    (get_global $binary/F)
   )
  )
  (drop
   (call $~lib/math/NativeMath.pow
    (get_global $binary/F)
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
   )
  )
  (set_global $binary/F
   (call $~lib/math/NativeMath.pow
    (get_global $binary/F)
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
   )
  )
  (set_global $binary/F
   (call $~lib/math/NativeMath.pow
    (get_global $binary/F)
   )
  )
 )
 (func $null (; 5 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
