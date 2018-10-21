(module
 (type $i (func (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (memory $0 0)
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $../../examples/i64-polyfill/assembly/i64/lo (mut i32) (i32.const 0))
 (global $../../examples/i64-polyfill/assembly/i64/hi (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "getHi" (func $../../examples/i64-polyfill/assembly/i64/getHi))
 (export "getLo" (func $../../examples/i64-polyfill/assembly/i64/getLo))
 (export "clz" (func $../../examples/i64-polyfill/assembly/i64/clz))
 (export "ctz" (func $../../examples/i64-polyfill/assembly/i64/ctz))
 (export "popcnt" (func $../../examples/i64-polyfill/assembly/i64/popcnt))
 (export "eqz" (func $../../examples/i64-polyfill/assembly/i64/eqz))
 (export "add" (func $../../examples/i64-polyfill/assembly/i64/add))
 (export "sub" (func $../../examples/i64-polyfill/assembly/i64/sub))
 (export "mul" (func $../../examples/i64-polyfill/assembly/i64/mul))
 (export "div_s" (func $../../examples/i64-polyfill/assembly/i64/div_s))
 (export "div_u" (func $../../examples/i64-polyfill/assembly/i64/div_u))
 (export "rem_s" (func $../../examples/i64-polyfill/assembly/i64/rem_s))
 (export "rem_u" (func $../../examples/i64-polyfill/assembly/i64/rem_u))
 (export "and" (func $../../examples/i64-polyfill/assembly/i64/and))
 (export "or" (func $../../examples/i64-polyfill/assembly/i64/or))
 (export "xor" (func $../../examples/i64-polyfill/assembly/i64/xor))
 (export "shl" (func $../../examples/i64-polyfill/assembly/i64/shl))
 (export "shr_s" (func $../../examples/i64-polyfill/assembly/i64/shr_s))
 (export "shr_u" (func $../../examples/i64-polyfill/assembly/i64/shr_u))
 (export "rotl" (func $../../examples/i64-polyfill/assembly/i64/rotl))
 (export "rotr" (func $../../examples/i64-polyfill/assembly/i64/rotr))
 (export "eq" (func $../../examples/i64-polyfill/assembly/i64/eq))
 (export "ne" (func $../../examples/i64-polyfill/assembly/i64/ne))
 (export "lt_s" (func $../../examples/i64-polyfill/assembly/i64/lt_s))
 (export "lt_u" (func $../../examples/i64-polyfill/assembly/i64/lt_u))
 (export "le_s" (func $../../examples/i64-polyfill/assembly/i64/le_s))
 (export "le_u" (func $../../examples/i64-polyfill/assembly/i64/le_u))
 (export "gt_s" (func $../../examples/i64-polyfill/assembly/i64/gt_s))
 (export "gt_u" (func $../../examples/i64-polyfill/assembly/i64/gt_u))
 (export "ge_s" (func $../../examples/i64-polyfill/assembly/i64/ge_s))
 (export "ge_u" (func $../../examples/i64-polyfill/assembly/i64/ge_u))
 (func $../../examples/i64-polyfill/assembly/i64/getHi (; 0 ;) (; has Stack IR ;) (type $i) (result i32)
  (get_global $../../examples/i64-polyfill/assembly/i64/hi)
 )
 (func $../../examples/i64-polyfill/assembly/i64/getLo (; 1 ;) (; has Stack IR ;) (type $i) (result i32)
  (get_global $../../examples/i64-polyfill/assembly/i64/lo)
 )
 (func $../../examples/i64-polyfill/assembly/i64/clz (; 2 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (i64.clz
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/ctz (; 3 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (i64.ctz
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/popcnt (; 4 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (i64.popcnt
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       (i64.const 32)
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/eqz (; 5 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.eqz
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/add (; 6 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.add
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/sub (; 7 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.sub
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/mul (; 8 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.mul
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/div_s (; 9 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.div_s
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/div_u (; 10 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.div_u
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/rem_s (; 11 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.rem_s
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/rem_u (; 12 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.rem_u
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/and (; 13 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.and
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/or (; 14 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.or
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/xor (; 15 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.xor
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/shl (; 16 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.shl
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/shr_s (; 17 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.shr_s
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/shr_u (; 18 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.shr_u
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/rotl (; 19 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.rotl
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/rotr (; 20 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (tee_local $4
     (i64.rotr
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 32)
       )
      )
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/eq (; 21 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.eq
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/ne (; 22 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.ne
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/lt_s (; 23 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.lt_s
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/lt_u (; 24 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.lt_u
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/le_s (; 25 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.le_s
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/le_u (; 26 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.le_u
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/gt_s (; 27 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.gt_s
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/gt_u (; 28 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.gt_u
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/ge_s (; 29 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.ge_s
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/ge_u (; 30 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i64.ge_u
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 32)
     )
    )
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      (i64.const 32)
     )
    )
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $null (; 31 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
