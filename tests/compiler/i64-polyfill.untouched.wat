(module
 (type $i (func (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (global $../../examples/i64-polyfill/assembly/i64/lo (mut i32) (i32.const 0))
 (global $../../examples/i64-polyfill/assembly/i64/hi (mut i32) (i32.const 0))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $Infinity f64 (f64.const inf))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 1)
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
 (export "memory" (memory $0))
 (func $../../examples/i64-polyfill/assembly/i64/getHi (; 0 ;) (type $i) (result i32)
  (return
   (get_global $../../examples/i64-polyfill/assembly/i64/hi)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/getLo (; 1 ;) (type $i) (result i32)
  (return
   (get_global $../../examples/i64-polyfill/assembly/i64/lo)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/clz (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  (set_local $2
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $2)
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/ctz (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  (set_local $2
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $2)
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/popcnt (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  (set_local $2
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $2)
   )
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/eqz (; 5 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (set_local $2
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $2)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/add (; 6 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/sub (; 7 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/mul (; 8 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/div_s (; 9 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/div_u (; 10 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/rem_s (; 11 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/rem_u (; 12 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/and (; 13 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/or (; 14 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/xor (; 15 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/shl (; 16 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/shr_s (; 17 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/shr_u (; 18 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/rotl (; 19 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/rotr (; 20 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (i32.wrap/i64
    (get_local $4)
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
 (func $../../examples/i64-polyfill/assembly/i64/eq (; 21 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $4)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/ne (; 22 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $4)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/lt_s (; 23 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $4)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/lt_u (; 24 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $4)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/le_s (; 25 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $4)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/le_u (; 26 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $4)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/gt_s (; 27 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $4)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/gt_u (; 28 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $4)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/ge_s (; 29 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $4)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
 (func $../../examples/i64-polyfill/assembly/i64/ge_u (; 30 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_local $4
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
  (set_global $../../examples/i64-polyfill/assembly/i64/lo
   (get_local $4)
  )
  (set_global $../../examples/i64-polyfill/assembly/i64/hi
   (i32.const 0)
  )
 )
)
