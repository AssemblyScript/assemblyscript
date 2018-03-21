(module
 (type $i (func (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (global $assembly/i64/lo (mut i32) (i32.const 0))
 (global $assembly/i64/hi (mut i32) (i32.const 0))
 (export "getLo" (func $assembly/i64/getLo))
 (export "getHi" (func $assembly/i64/getHi))
 (export "clz" (func $assembly/i64/clz))
 (export "ctz" (func $assembly/i64/ctz))
 (export "popcnt" (func $assembly/i64/popcnt))
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
 (export "rotl" (func $assembly/i64/rotl))
 (export "rotr" (func $assembly/i64/rotr))
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
 (func $assembly/i64/clz (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/i64.ts:16:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:16:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:15:12
    (i64.clz
     ;;@ assembly/i64.ts:15:29
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      ;;@ assembly/i64.ts:15:43
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       ;;@ assembly/i64.ts:15:58
       (i64.const 32)
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:17:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:17:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ctz (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/i64.ts:24:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:24:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:23:12
    (i64.ctz
     ;;@ assembly/i64.ts:23:29
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      ;;@ assembly/i64.ts:23:43
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       ;;@ assembly/i64.ts:23:58
       (i64.const 32)
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:25:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:25:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/popcnt (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/i64.ts:32:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:32:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:31:12
    (i64.popcnt
     ;;@ assembly/i64.ts:31:32
     (i64.or
      (i64.extend_u/i32
       (get_local $0)
      )
      ;;@ assembly/i64.ts:31:46
      (i64.shl
       (i64.extend_u/i32
        (get_local $1)
       )
       ;;@ assembly/i64.ts:31:61
       (i64.const 32)
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:33:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:33:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/eqz (; 5 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/i64.ts:38:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:37:18
   (i64.eqz
    ;;@ assembly/i64.ts:37:19
    (i64.or
     ;;@ assembly/i64.ts:37:20
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:37:34
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:37:49
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:39:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:39:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/add (; 6 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:44:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:44:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:43:2
    (tee_local $4
     ;;@ assembly/i64.ts:43:12
     (i64.add
      (i64.or
       ;;@ assembly/i64.ts:43:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:43:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:43:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:43:48
      (i64.or
       ;;@ assembly/i64.ts:43:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:43:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:43:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:45:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:45:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:45:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:45:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/sub (; 7 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:50:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:50:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:49:2
    (tee_local $4
     ;;@ assembly/i64.ts:49:12
     (i64.sub
      (i64.or
       ;;@ assembly/i64.ts:49:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:49:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:49:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:49:48
      (i64.or
       ;;@ assembly/i64.ts:49:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:49:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:49:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:51:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:51:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:51:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:51:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/mul (; 8 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:56:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:56:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:55:2
    (tee_local $4
     ;;@ assembly/i64.ts:55:12
     (i64.mul
      (i64.or
       ;;@ assembly/i64.ts:55:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:55:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:55:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:55:48
      (i64.or
       ;;@ assembly/i64.ts:55:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:55:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:55:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:57:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:57:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:57:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:57:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/div_s (; 9 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:62:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:62:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:61:2
    (tee_local $4
     ;;@ assembly/i64.ts:61:12
     (i64.div_s
      ;;@ assembly/i64.ts:61:18
      (i64.or
       ;;@ assembly/i64.ts:61:24
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:61:38
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:61:53
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:61:59
      (i64.or
       ;;@ assembly/i64.ts:61:65
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:61:80
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:61:96
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:63:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:63:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:63:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:63:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/div_u (; 10 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:68:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:68:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:67:2
    (tee_local $4
     ;;@ assembly/i64.ts:67:12
     (i64.div_u
      (i64.or
       ;;@ assembly/i64.ts:67:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:67:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:67:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:67:48
      (i64.or
       ;;@ assembly/i64.ts:67:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:67:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:67:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:69:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:69:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:69:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:69:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rem_s (; 11 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:74:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:74:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:73:2
    (tee_local $4
     ;;@ assembly/i64.ts:73:12
     (i64.rem_s
      ;;@ assembly/i64.ts:73:18
      (i64.or
       ;;@ assembly/i64.ts:73:24
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:73:38
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:73:53
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:73:59
      (i64.or
       ;;@ assembly/i64.ts:73:65
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:73:80
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:73:96
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:75:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:75:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:75:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:75:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rem_u (; 12 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:80:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:80:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:79:2
    (tee_local $4
     ;;@ assembly/i64.ts:79:12
     (i64.rem_u
      (i64.or
       ;;@ assembly/i64.ts:79:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:79:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:79:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:79:48
      (i64.or
       ;;@ assembly/i64.ts:79:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:79:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:79:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:81:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:81:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:81:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:81:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/and (; 13 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:86:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:86:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:85:2
    (tee_local $4
     ;;@ assembly/i64.ts:85:12
     (i64.and
      (i64.or
       ;;@ assembly/i64.ts:85:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:85:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:85:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:85:48
      (i64.or
       ;;@ assembly/i64.ts:85:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:85:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:85:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:87:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:87:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:87:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:87:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/or (; 14 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:92:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:92:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:91:2
    (tee_local $4
     ;;@ assembly/i64.ts:91:12
     (i64.or
      (i64.or
       ;;@ assembly/i64.ts:91:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:91:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:91:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:91:48
      (i64.or
       ;;@ assembly/i64.ts:91:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:91:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:91:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:93:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:93:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:93:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:93:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/xor (; 15 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:98:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:98:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:97:2
    (tee_local $4
     ;;@ assembly/i64.ts:97:12
     (i64.xor
      (i64.or
       ;;@ assembly/i64.ts:97:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:97:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:97:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:97:48
      (i64.or
       ;;@ assembly/i64.ts:97:49
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:97:64
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:97:80
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:99:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:99:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:99:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:99:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/shl (; 16 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:104:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:104:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:103:2
    (tee_local $4
     ;;@ assembly/i64.ts:103:12
     (i64.shl
      (i64.or
       ;;@ assembly/i64.ts:103:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:103:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:103:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:103:49
      (i64.or
       ;;@ assembly/i64.ts:103:50
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:103:65
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:103:81
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:105:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:105:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:105:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:105:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/shr_s (; 17 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:110:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:110:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:109:2
    (tee_local $4
     ;;@ assembly/i64.ts:109:12
     (i64.shr_s
      ;;@ assembly/i64.ts:109:18
      (i64.or
       ;;@ assembly/i64.ts:109:24
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:109:38
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:109:53
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:109:60
      (i64.or
       ;;@ assembly/i64.ts:109:66
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:109:81
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:109:97
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:111:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:111:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:111:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:111:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/shr_u (; 18 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:116:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:116:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:115:2
    (tee_local $4
     ;;@ assembly/i64.ts:115:12
     (i64.shr_u
      (i64.or
       ;;@ assembly/i64.ts:115:13
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:115:27
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:115:42
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:115:49
      (i64.or
       ;;@ assembly/i64.ts:115:50
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:115:65
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:115:81
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:117:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:117:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:117:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:117:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rotl (; 19 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:124:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:124:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:123:2
    (tee_local $4
     ;;@ assembly/i64.ts:123:12
     (i64.rotl
      ;;@ assembly/i64.ts:123:30
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:123:44
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:123:59
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:123:63
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:123:78
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:123:94
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:125:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:125:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:125:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:125:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rotr (; 20 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:132:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:132:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:131:2
    (tee_local $4
     ;;@ assembly/i64.ts:131:12
     (i64.rotr
      ;;@ assembly/i64.ts:131:30
      (i64.or
       (i64.extend_u/i32
        (get_local $0)
       )
       ;;@ assembly/i64.ts:131:44
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        ;;@ assembly/i64.ts:131:59
        (i64.const 32)
       )
      )
      ;;@ assembly/i64.ts:131:63
      (i64.or
       (i64.extend_u/i32
        (get_local $2)
       )
       ;;@ assembly/i64.ts:131:78
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        ;;@ assembly/i64.ts:131:94
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/i64.ts:133:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:133:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:133:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:133:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/eq (; 21 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:138:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:137:18
   (i64.eq
    (i64.or
     ;;@ assembly/i64.ts:137:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:137:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:137:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:137:55
    (i64.or
     ;;@ assembly/i64.ts:137:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:137:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:137:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:139:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:139:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ne (; 22 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:144:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:143:18
   (i64.ne
    (i64.or
     ;;@ assembly/i64.ts:143:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:143:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:143:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:143:55
    (i64.or
     ;;@ assembly/i64.ts:143:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:143:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:143:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:145:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:145:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/lt_s (; 23 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:150:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:149:18
   (i64.lt_s
    (i64.or
     ;;@ assembly/i64.ts:149:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:149:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:149:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:149:59
    (i64.or
     ;;@ assembly/i64.ts:149:65
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:149:80
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:149:96
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:151:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:151:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/lt_u (; 24 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:156:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:155:18
   (i64.lt_u
    (i64.or
     ;;@ assembly/i64.ts:155:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:155:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:155:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:155:54
    (i64.or
     ;;@ assembly/i64.ts:155:55
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:155:70
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:155:86
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:157:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:157:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/le_s (; 25 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:162:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:161:18
   (i64.le_s
    (i64.or
     ;;@ assembly/i64.ts:161:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:161:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:161:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:161:60
    (i64.or
     ;;@ assembly/i64.ts:161:66
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:161:81
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:161:97
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:163:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:163:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/le_u (; 26 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:168:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:167:18
   (i64.le_u
    (i64.or
     ;;@ assembly/i64.ts:167:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:167:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:167:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:167:55
    (i64.or
     ;;@ assembly/i64.ts:167:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:167:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:167:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:169:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:169:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/gt_s (; 27 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:174:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:173:18
   (i64.gt_s
    (i64.or
     ;;@ assembly/i64.ts:173:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:173:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:173:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:173:59
    (i64.or
     ;;@ assembly/i64.ts:173:65
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:173:80
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:173:96
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:175:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:175:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/gt_u (; 28 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:180:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:179:18
   (i64.gt_u
    (i64.or
     ;;@ assembly/i64.ts:179:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:179:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:179:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:179:54
    (i64.or
     ;;@ assembly/i64.ts:179:55
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:179:70
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:179:86
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:181:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:181:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ge_s (; 29 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:186:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:185:18
   (i64.ge_s
    (i64.or
     ;;@ assembly/i64.ts:185:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:185:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:185:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:185:60
    (i64.or
     ;;@ assembly/i64.ts:185:66
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:185:81
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:185:97
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:187:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:187:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ge_u (; 30 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ assembly/i64.ts:192:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:191:18
   (i64.ge_u
    (i64.or
     ;;@ assembly/i64.ts:191:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:191:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:191:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:191:55
    (i64.or
     ;;@ assembly/i64.ts:191:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:191:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:191:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:193:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:193:7
   (i32.const 0)
  )
 )
)
