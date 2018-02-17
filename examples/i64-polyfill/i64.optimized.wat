(module
 (type $i (func (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (global $assembly/i64/lo (mut i32) (i32.const 0))
 (global $assembly/i64/hi (mut i32) (i32.const 0))
 (export "getLo" (func $assembly/i64/getLo))
 (export "getHi" (func $assembly/i64/getHi))
 (export "clz" (func $assembly/i64/clz_))
 (export "ctz" (func $assembly/i64/ctz_))
 (export "popcnt" (func $assembly/i64/popcnt_))
 (export "eqz" (func $assembly/i64/eqz))
 (export "add" (func $assembly/i64/add))
 (export "sub" (func $assembly/i64/sub))
 (export "mul" (func $assembly/i64/mul))
 (export "div_s" (func $assembly/i64/div_s))
 (export "div_u" (func $assembly/i64/div_u))
 (export "rem_s" (func $assembly/i64/rem_s))
 (export "rem_u" (func $assembly/i64/rem_u))
 (export "and" (func $assembly/i64/and))
 (export "or" (func $assembly/i64/or))
 (export "xor" (func $assembly/i64/xor))
 (export "shl" (func $assembly/i64/shl))
 (export "shr_s" (func $assembly/i64/shr_s))
 (export "shr_u" (func $assembly/i64/shr_u))
 (export "rotl" (func $assembly/i64/rotl_))
 (export "rotr" (func $assembly/i64/rotr_))
 (export "eq" (func $assembly/i64/eq))
 (export "ne" (func $assembly/i64/ne))
 (export "lt_s" (func $assembly/i64/lt_s))
 (export "lt_u" (func $assembly/i64/lt_u))
 (export "le_s" (func $assembly/i64/le_s))
 (export "le_u" (func $assembly/i64/le_u))
 (export "gt_s" (func $assembly/i64/gt_s))
 (export "gt_u" (func $assembly/i64/gt_u))
 (export "ge_s" (func $assembly/i64/ge_s))
 (export "ge_u" (func $assembly/i64/ge_u))
 (func $assembly/i64/getLo (; 0 ;) (type $i) (result i32)
  ;;@ assembly/i64.ts:5:9
  (get_global $assembly/i64/lo)
 )
 (func $assembly/i64/getHi (; 1 ;) (type $i) (result i32)
  ;;@ assembly/i64.ts:9:9
  (get_global $assembly/i64/hi)
 )
 (func $assembly/i64/clz_ (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/i64.ts:14:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:14:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:13:12
    (i64.clz
     ;;@ assembly/i64.ts:13:21
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      ;;@ assembly/i64.ts:13:35
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       ;;@ assembly/i64.ts:13:50
       (i64.const 32)
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:15:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:15:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ctz_ (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/i64.ts:21:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:21:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:20:12
    (i64.ctz
     ;;@ assembly/i64.ts:20:21
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      ;;@ assembly/i64.ts:20:35
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       ;;@ assembly/i64.ts:20:50
       (i64.const 32)
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:22:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:22:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/popcnt_ (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/i64.ts:28:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:28:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:27:12
    (i64.popcnt
     ;;@ assembly/i64.ts:27:24
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      ;;@ assembly/i64.ts:27:38
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       ;;@ assembly/i64.ts:27:53
       (i64.const 32)
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:29:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:29:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/eqz (; 5 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/i64.ts:35:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:34:18
   (i64.eqz
    ;;@ assembly/i64.ts:34:19
    (i64.or
     ;;@ assembly/i64.ts:34:20
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:34:34
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:34:49
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:36:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:36:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/add (; 6 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:41:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:41:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:40:2
    (tee_local $4
     ;;@ assembly/i64.ts:40:12
     (i64.add
      (i64.or
       ;;@ assembly/i64.ts:40:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:40:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:40:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:40:48
      (i64.or
       ;;@ assembly/i64.ts:40:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:40:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:40:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:42:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:42:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:42:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:42:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/sub (; 7 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:47:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:47:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:46:2
    (tee_local $4
     ;;@ assembly/i64.ts:46:12
     (i64.sub
      (i64.or
       ;;@ assembly/i64.ts:46:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:46:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:46:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:46:48
      (i64.or
       ;;@ assembly/i64.ts:46:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:46:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:46:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:48:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:48:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:48:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:48:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/mul (; 8 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:53:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:53:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:52:2
    (tee_local $4
     ;;@ assembly/i64.ts:52:12
     (i64.mul
      (i64.or
       ;;@ assembly/i64.ts:52:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:52:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:52:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:52:48
      (i64.or
       ;;@ assembly/i64.ts:52:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:52:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:52:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:54:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:54:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:54:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:54:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/div_s (; 9 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:59:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:59:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:58:2
    (tee_local $4
     ;;@ assembly/i64.ts:58:12
     (i64.div_s
      ;;@ assembly/i64.ts:58:18
      (i64.or
       ;;@ assembly/i64.ts:58:24
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:58:38
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:58:53
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:58:59
      (i64.or
       ;;@ assembly/i64.ts:58:65
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:58:80
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:58:96
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:60:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:60:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:60:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:60:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/div_u (; 10 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:65:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:65:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:64:2
    (tee_local $4
     ;;@ assembly/i64.ts:64:12
     (i64.div_u
      (i64.or
       ;;@ assembly/i64.ts:64:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:64:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:64:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:64:48
      (i64.or
       ;;@ assembly/i64.ts:64:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:64:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:64:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:66:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:66:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:66:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:66:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rem_s (; 11 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:71:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:71:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:70:2
    (tee_local $4
     ;;@ assembly/i64.ts:70:12
     (i64.rem_s
      ;;@ assembly/i64.ts:70:18
      (i64.or
       ;;@ assembly/i64.ts:70:24
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:70:38
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:70:53
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:70:59
      (i64.or
       ;;@ assembly/i64.ts:70:65
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:70:80
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:70:96
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:72:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:72:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:72:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:72:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rem_u (; 12 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:77:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:77:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:76:2
    (tee_local $4
     ;;@ assembly/i64.ts:76:12
     (i64.rem_u
      (i64.or
       ;;@ assembly/i64.ts:76:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:76:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:76:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:76:48
      (i64.or
       ;;@ assembly/i64.ts:76:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:76:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:76:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:78:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:78:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:78:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:78:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/and (; 13 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:83:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:83:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:82:2
    (tee_local $4
     ;;@ assembly/i64.ts:82:12
     (i64.and
      (i64.or
       ;;@ assembly/i64.ts:82:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:82:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:82:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:82:48
      (i64.or
       ;;@ assembly/i64.ts:82:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:82:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:82:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:84:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:84:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:84:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:84:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/or (; 14 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:89:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:89:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:88:2
    (tee_local $4
     ;;@ assembly/i64.ts:88:12
     (i64.or
      (i64.or
       ;;@ assembly/i64.ts:88:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:88:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:88:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:88:48
      (i64.or
       ;;@ assembly/i64.ts:88:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:88:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:88:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:90:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:90:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:90:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:90:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/xor (; 15 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:95:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:95:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:94:2
    (tee_local $4
     ;;@ assembly/i64.ts:94:12
     (i64.xor
      (i64.or
       ;;@ assembly/i64.ts:94:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:94:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:94:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:94:48
      (i64.or
       ;;@ assembly/i64.ts:94:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:94:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:94:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:96:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:96:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:96:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:96:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/shl (; 16 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:101:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:101:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:100:2
    (tee_local $4
     ;;@ assembly/i64.ts:100:12
     (i64.shl
      (i64.or
       ;;@ assembly/i64.ts:100:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:100:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:100:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:100:49
      (i64.or
       ;;@ assembly/i64.ts:100:50
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:100:65
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:100:81
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:102:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:102:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:102:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:102:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/shr_s (; 17 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:107:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:107:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:106:2
    (tee_local $4
     ;;@ assembly/i64.ts:106:12
     (i64.shr_s
      ;;@ assembly/i64.ts:106:18
      (i64.or
       ;;@ assembly/i64.ts:106:24
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:106:38
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:106:53
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:106:60
      (i64.or
       ;;@ assembly/i64.ts:106:66
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:106:81
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:106:97
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:108:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:108:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:108:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:108:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/shr_u (; 18 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:113:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:113:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:112:2
    (tee_local $4
     ;;@ assembly/i64.ts:112:12
     (i64.shr_u
      (i64.or
       ;;@ assembly/i64.ts:112:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:112:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:112:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:112:49
      (i64.or
       ;;@ assembly/i64.ts:112:50
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:112:65
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:112:81
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:114:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:114:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:114:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:114:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rotl_ (; 19 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:119:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:119:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:118:2
    (tee_local $4
     ;;@ assembly/i64.ts:118:12
     (i64.rotl
      ;;@ assembly/i64.ts:118:22
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:118:36
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:118:51
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:118:55
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:118:70
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:118:86
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:120:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:120:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:120:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:120:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rotr_ (; 20 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:126:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:126:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:125:2
    (tee_local $4
     ;;@ assembly/i64.ts:125:12
     (i64.rotr
      ;;@ assembly/i64.ts:125:22
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:125:36
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:125:51
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:125:55
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:125:70
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:125:86
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:127:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:127:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:127:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:127:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/eq (; 21 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:133:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:132:18
   (i64.eq
    (i64.or
     ;;@ assembly/i64.ts:132:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:132:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:132:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:132:55
    (i64.or
     ;;@ assembly/i64.ts:132:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:132:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:132:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:134:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:134:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ne (; 22 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:139:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:138:18
   (i64.ne
    (i64.or
     ;;@ assembly/i64.ts:138:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:138:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:138:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:138:55
    (i64.or
     ;;@ assembly/i64.ts:138:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:138:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:138:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:140:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:140:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/lt_s (; 23 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:145:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:144:18
   (i64.lt_s
    (i64.or
     ;;@ assembly/i64.ts:144:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:144:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:144:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:144:59
    (i64.or
     ;;@ assembly/i64.ts:144:65
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:144:80
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:144:96
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:146:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:146:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/lt_u (; 24 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:151:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:150:18
   (i64.lt_u
    (i64.or
     ;;@ assembly/i64.ts:150:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:150:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:150:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:150:54
    (i64.or
     ;;@ assembly/i64.ts:150:55
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:150:70
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:150:86
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:152:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:152:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/le_s (; 25 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:157:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:156:18
   (i64.le_s
    (i64.or
     ;;@ assembly/i64.ts:156:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:156:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:156:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:156:60
    (i64.or
     ;;@ assembly/i64.ts:156:66
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:156:81
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:156:97
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:158:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:158:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/le_u (; 26 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:163:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:162:18
   (i64.le_u
    (i64.or
     ;;@ assembly/i64.ts:162:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:162:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:162:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:162:55
    (i64.or
     ;;@ assembly/i64.ts:162:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:162:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:162:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:164:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:164:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/gt_s (; 27 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:169:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:168:18
   (i64.gt_s
    (i64.or
     ;;@ assembly/i64.ts:168:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:168:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:168:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:168:59
    (i64.or
     ;;@ assembly/i64.ts:168:65
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:168:80
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:168:96
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:170:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:170:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/gt_u (; 28 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:175:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:174:18
   (i64.gt_u
    (i64.or
     ;;@ assembly/i64.ts:174:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:174:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:174:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:174:54
    (i64.or
     ;;@ assembly/i64.ts:174:55
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:174:70
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:174:86
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:176:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:176:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ge_s (; 29 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:181:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:180:18
   (i64.ge_s
    (i64.or
     ;;@ assembly/i64.ts:180:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:180:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:180:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:180:60
    (i64.or
     ;;@ assembly/i64.ts:180:66
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:180:81
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:180:97
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:182:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:182:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ge_u (; 30 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:187:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:186:18
   (i64.ge_u
    (i64.or
     ;;@ assembly/i64.ts:186:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:186:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:186:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:186:55
    (i64.or
     ;;@ assembly/i64.ts:186:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:186:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:186:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:188:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:188:7
   (i32.const 0)
  )
 )
)
