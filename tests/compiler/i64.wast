(module
 (type $i (func (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (global $i64/lo (mut i32) (i32.const 0))
 (global $i64/hi (mut i32) (i32.const 0))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "getLo" (func $i64/getLo))
 (export "getHi" (func $i64/getHi))
 (export "clz" (func $i64/clz_))
 (export "ctz" (func $i64/ctz_))
 (export "popcnt" (func $i64/popcnt_))
 (export "eqz" (func $i64/eqz))
 (export "add" (func $i64/add))
 (export "sub" (func $i64/sub))
 (export "mul" (func $i64/mul))
 (export "div_s" (func $i64/div_s))
 (export "div_u" (func $i64/div_u))
 (export "rem_s" (func $i64/rem_s))
 (export "rem_u" (func $i64/rem_u))
 (export "and" (func $i64/and))
 (export "or" (func $i64/or))
 (export "xor" (func $i64/xor))
 (export "shl" (func $i64/shl))
 (export "shr_s" (func $i64/shr_s))
 (export "shr_u" (func $i64/shr_u))
 (export "rotl" (func $i64/rotl_))
 (export "rotr" (func $i64/rotr_))
 (export "eq" (func $i64/eq))
 (export "ne" (func $i64/ne))
 (export "lt_s" (func $i64/lt_s))
 (export "lt_u" (func $i64/lt_u))
 (export "le_s" (func $i64/le_s))
 (export "le_u" (func $i64/le_u))
 (export "gt_s" (func $i64/gt_s))
 (export "gt_u" (func $i64/gt_u))
 (export "ge_s" (func $i64/ge_s))
 (export "ge_u" (func $i64/ge_u))
 (export "memory" (memory $0))
 (func $i64/getLo (; 0 ;) (type $i) (result i32)
  (return
   (get_global $i64/lo)
  )
 )
 (func $i64/getHi (; 1 ;) (type $i) (result i32)
  (return
   (get_global $i64/hi)
  )
 )
 (func $i64/clz_ (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $2)
   )
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/ctz_ (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $2)
   )
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/popcnt_ (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $2)
   )
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/eqz (; 5 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $2)
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/add (; 6 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/sub (; 7 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/mul (; 8 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/div_s (; 9 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/div_u (; 10 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/rem_s (; 11 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/rem_u (; 12 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/and (; 13 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/or (; 14 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/xor (; 15 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/shl (; 16 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/shr_s (; 17 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/shr_u (; 18 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/rotl_ (; 19 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/rotr_ (; 20 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (block
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
  )
  (set_global $i64/lo
   (i32.wrap/i64
    (get_local $4)
   )
  )
  (set_global $i64/hi
   (i32.wrap/i64
    (i64.shr_u
     (get_local $4)
     (i64.const 32)
    )
   )
  )
 )
 (func $i64/eq (; 21 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $4)
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/ne (; 22 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $4)
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/lt_s (; 23 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $4)
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/lt_u (; 24 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $4)
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/le_s (; 25 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $4)
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/le_u (; 26 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $4)
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/gt_s (; 27 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $4)
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/gt_u (; 28 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $4)
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/ge_s (; 29 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $4)
  )
  (set_global $i64/hi
   (i32.const 0)
  )
 )
 (func $i64/ge_u (; 30 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (block
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
  )
  (set_global $i64/lo
   (get_local $4)
  )
  (set_global $i64/hi
   (i32.const 0)
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
  parseInt
  parseFloat
  i64/lo
  i64/hi
  i64/getLo
  i64/getHi
  i64/clz_
  i64/ctz_
  i64/popcnt_
  i64/eqz
  i64/add
  i64/sub
  i64/mul
  i64/div_s
  i64/div_u
  i64/rem_s
  i64/rem_u
  i64/and
  i64/or
  i64/xor
  i64/shl
  i64/shr_s
  i64/shr_u
  i64/rotl_
  i64/rotr_
  i64/eq
  i64/ne
  i64/lt_s
  i64/lt_u
  i64/le_s
  i64/le_u
  i64/gt_s
  i64/gt_u
  i64/ge_s
  i64/ge_u
[program.exports]
  i64/getLo
  i64/getHi
  i64/clz
  i64/ctz
  i64/popcnt
  i64/eqz
  i64/add
  i64/sub
  i64/mul
  i64/div_s
  i64/div_u
  i64/rem_s
  i64/rem_u
  i64/and
  i64/or
  i64/xor
  i64/shl
  i64/shr_s
  i64/shr_u
  i64/rotl
  i64/rotr
  i64/eq
  i64/ne
  i64/lt_s
  i64/lt_u
  i64/le_s
  i64/le_u
  i64/gt_s
  i64/gt_u
  i64/ge_s
  i64/ge_u
;)
