(module
 (type $i (func (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (global $assembly/i64/lo (mut i32) (i32.const 0))
 (global $assembly/i64/hi (mut i32) (i32.const 0))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $Infinity f64 (f64.const inf))
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
  ;;@ assembly/i64.ts:3:29
  (return
   ;;@ assembly/i64.ts:4:9
   (get_global $assembly/i64/lo)
  )
 )
 (func $assembly/i64/getHi (; 1 ;) (type $i) (result i32)
  ;;@ assembly/i64.ts:7:29
  (return
   ;;@ assembly/i64.ts:8:9
   (get_global $assembly/i64/hi)
  )
 )
 (func $assembly/i64/clz (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  ;;@ assembly/i64.ts:14:2
  (set_local $2
   ;;@ assembly/i64.ts:14:12
   (i64.clz
    ;;@ assembly/i64.ts:14:29
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:14:43
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:14:58
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:15:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:15:7
   (i32.wrap/i64
    (get_local $2)
   )
  )
  ;;@ assembly/i64.ts:16:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:16:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ctz (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  ;;@ assembly/i64.ts:22:2
  (set_local $2
   ;;@ assembly/i64.ts:22:12
   (i64.ctz
    ;;@ assembly/i64.ts:22:29
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:22:43
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:22:58
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:23:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:23:7
   (i32.wrap/i64
    (get_local $2)
   )
  )
  ;;@ assembly/i64.ts:24:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:24:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/popcnt (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  ;;@ assembly/i64.ts:30:2
  (set_local $2
   ;;@ assembly/i64.ts:30:12
   (i64.popcnt
    ;;@ assembly/i64.ts:30:32
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:30:46
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:30:61
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:31:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:31:7
   (i32.wrap/i64
    (get_local $2)
   )
  )
  ;;@ assembly/i64.ts:32:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:32:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/eqz (; 5 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/i64.ts:36:2
  (set_local $2
   ;;@ assembly/i64.ts:36:18
   (i64.eqz
    ;;@ assembly/i64.ts:36:19
    (i64.or
     ;;@ assembly/i64.ts:36:20
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:36:34
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:36:49
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:37:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:37:7
   (get_local $2)
  )
  ;;@ assembly/i64.ts:38:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:38:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/add (; 6 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:42:2
  (set_local $4
   ;;@ assembly/i64.ts:42:12
   (i64.add
    (i64.or
     ;;@ assembly/i64.ts:42:13
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:42:27
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:42:42
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:42:48
    (i64.or
     ;;@ assembly/i64.ts:42:49
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:42:64
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:42:80
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:43:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:43:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:44:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:44:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:44:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:44:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/sub (; 7 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:48:2
  (set_local $4
   ;;@ assembly/i64.ts:48:12
   (i64.sub
    (i64.or
     ;;@ assembly/i64.ts:48:13
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:48:27
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:48:42
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:48:48
    (i64.or
     ;;@ assembly/i64.ts:48:49
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:48:64
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:48:80
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:49:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:49:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:50:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:50:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:50:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:50:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/mul (; 8 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:54:2
  (set_local $4
   ;;@ assembly/i64.ts:54:12
   (i64.mul
    (i64.or
     ;;@ assembly/i64.ts:54:13
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:54:27
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:54:42
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:54:48
    (i64.or
     ;;@ assembly/i64.ts:54:49
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:54:64
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:54:80
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:55:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:55:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:56:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:56:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:56:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:56:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/div_s (; 9 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:60:2
  (set_local $4
   ;;@ assembly/i64.ts:60:12
   (i64.div_s
    ;;@ assembly/i64.ts:60:18
    (i64.or
     ;;@ assembly/i64.ts:60:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:60:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:60:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:60:59
    (i64.or
     ;;@ assembly/i64.ts:60:65
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:60:80
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:60:96
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:61:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:61:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:62:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:62:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:62:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:62:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/div_u (; 10 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:66:2
  (set_local $4
   ;;@ assembly/i64.ts:66:12
   (i64.div_u
    (i64.or
     ;;@ assembly/i64.ts:66:13
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:66:27
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:66:42
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:66:48
    (i64.or
     ;;@ assembly/i64.ts:66:49
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:66:64
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:66:80
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:67:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:67:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:68:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:68:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:68:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:68:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rem_s (; 11 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:72:2
  (set_local $4
   ;;@ assembly/i64.ts:72:12
   (i64.rem_s
    ;;@ assembly/i64.ts:72:18
    (i64.or
     ;;@ assembly/i64.ts:72:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:72:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:72:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:72:59
    (i64.or
     ;;@ assembly/i64.ts:72:65
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:72:80
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:72:96
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:73:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:73:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:74:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:74:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:74:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:74:20
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rem_u (; 12 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:78:2
  (set_local $4
   ;;@ assembly/i64.ts:78:12
   (i64.rem_u
    (i64.or
     ;;@ assembly/i64.ts:78:13
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:78:27
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:78:42
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:78:48
    (i64.or
     ;;@ assembly/i64.ts:78:49
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:78:64
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:78:80
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:79:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:79:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:80:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:80:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:80:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:80:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/and (; 13 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:84:2
  (set_local $4
   ;;@ assembly/i64.ts:84:12
   (i64.and
    (i64.or
     ;;@ assembly/i64.ts:84:13
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:84:27
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:84:42
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:84:48
    (i64.or
     ;;@ assembly/i64.ts:84:49
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:84:64
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:84:80
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:85:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:85:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:86:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:86:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:86:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:86:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/or (; 14 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:90:2
  (set_local $4
   ;;@ assembly/i64.ts:90:12
   (i64.or
    (i64.or
     ;;@ assembly/i64.ts:90:13
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:90:27
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:90:42
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:90:48
    (i64.or
     ;;@ assembly/i64.ts:90:49
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:90:64
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:90:80
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:91:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:91:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:92:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:92:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:92:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:92:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/xor (; 15 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:96:2
  (set_local $4
   ;;@ assembly/i64.ts:96:12
   (i64.xor
    (i64.or
     ;;@ assembly/i64.ts:96:13
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:96:27
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:96:42
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:96:48
    (i64.or
     ;;@ assembly/i64.ts:96:49
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:96:64
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:96:80
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:97:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:97:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:98:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:98:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:98:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:98:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/shl (; 16 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:102:2
  (set_local $4
   ;;@ assembly/i64.ts:102:12
   (i64.shl
    (i64.or
     ;;@ assembly/i64.ts:102:13
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:102:27
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:102:42
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:102:49
    (i64.or
     ;;@ assembly/i64.ts:102:50
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:102:65
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:102:81
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:103:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:103:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:104:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:104:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:104:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:104:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/shr_s (; 17 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:108:2
  (set_local $4
   ;;@ assembly/i64.ts:108:12
   (i64.shr_s
    ;;@ assembly/i64.ts:108:18
    (i64.or
     ;;@ assembly/i64.ts:108:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:108:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:108:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:108:60
    (i64.or
     ;;@ assembly/i64.ts:108:66
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:108:81
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:108:97
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:109:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:109:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:110:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:110:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:110:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:110:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/shr_u (; 18 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:114:2
  (set_local $4
   ;;@ assembly/i64.ts:114:12
   (i64.shr_u
    (i64.or
     ;;@ assembly/i64.ts:114:13
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:114:27
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:114:42
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:114:49
    (i64.or
     ;;@ assembly/i64.ts:114:50
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:114:65
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:114:81
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:115:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:115:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:116:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:116:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:116:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:116:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rotl (; 19 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:122:2
  (set_local $4
   ;;@ assembly/i64.ts:122:12
   (i64.rotl
    ;;@ assembly/i64.ts:122:30
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:122:44
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:122:59
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:122:63
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:122:78
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:122:94
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:123:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:123:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:124:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:124:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:124:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:124:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/rotr (; 20 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  ;;@ assembly/i64.ts:130:2
  (set_local $4
   ;;@ assembly/i64.ts:130:12
   (i64.rotr
    ;;@ assembly/i64.ts:130:30
    (i64.or
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:130:44
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:130:59
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:130:63
    (i64.or
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:130:78
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:130:94
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:131:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:131:7
   (i32.wrap/i64
    (get_local $4)
   )
  )
  ;;@ assembly/i64.ts:132:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:132:7
   (i32.wrap/i64
    ;;@ assembly/i64.ts:132:13
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/i64.ts:132:21
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/i64/eq (; 21 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  ;;@ assembly/i64.ts:136:2
  (set_local $4
   ;;@ assembly/i64.ts:136:18
   (i64.eq
    (i64.or
     ;;@ assembly/i64.ts:136:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:136:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:136:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:136:55
    (i64.or
     ;;@ assembly/i64.ts:136:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:136:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:136:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:137:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:137:7
   (get_local $4)
  )
  ;;@ assembly/i64.ts:138:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:138:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ne (; 22 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  ;;@ assembly/i64.ts:142:2
  (set_local $4
   ;;@ assembly/i64.ts:142:18
   (i64.ne
    (i64.or
     ;;@ assembly/i64.ts:142:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:142:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:142:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:142:55
    (i64.or
     ;;@ assembly/i64.ts:142:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:142:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:142:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:143:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:143:7
   (get_local $4)
  )
  ;;@ assembly/i64.ts:144:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:144:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/lt_s (; 23 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  ;;@ assembly/i64.ts:148:2
  (set_local $4
   ;;@ assembly/i64.ts:148:18
   (i64.lt_s
    (i64.or
     ;;@ assembly/i64.ts:148:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:148:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:148:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:148:59
    (i64.or
     ;;@ assembly/i64.ts:148:65
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:148:80
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:148:96
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:149:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:149:7
   (get_local $4)
  )
  ;;@ assembly/i64.ts:150:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:150:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/lt_u (; 24 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  ;;@ assembly/i64.ts:154:2
  (set_local $4
   ;;@ assembly/i64.ts:154:18
   (i64.lt_u
    (i64.or
     ;;@ assembly/i64.ts:154:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:154:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:154:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:154:54
    (i64.or
     ;;@ assembly/i64.ts:154:55
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:154:70
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:154:86
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:155:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:155:7
   (get_local $4)
  )
  ;;@ assembly/i64.ts:156:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:156:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/le_s (; 25 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  ;;@ assembly/i64.ts:160:2
  (set_local $4
   ;;@ assembly/i64.ts:160:18
   (i64.le_s
    (i64.or
     ;;@ assembly/i64.ts:160:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:160:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:160:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:160:60
    (i64.or
     ;;@ assembly/i64.ts:160:66
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:160:81
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:160:97
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:161:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:161:7
   (get_local $4)
  )
  ;;@ assembly/i64.ts:162:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:162:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/le_u (; 26 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  ;;@ assembly/i64.ts:166:2
  (set_local $4
   ;;@ assembly/i64.ts:166:18
   (i64.le_u
    (i64.or
     ;;@ assembly/i64.ts:166:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:166:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:166:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:166:55
    (i64.or
     ;;@ assembly/i64.ts:166:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:166:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:166:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:167:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:167:7
   (get_local $4)
  )
  ;;@ assembly/i64.ts:168:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:168:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/gt_s (; 27 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  ;;@ assembly/i64.ts:172:2
  (set_local $4
   ;;@ assembly/i64.ts:172:18
   (i64.gt_s
    (i64.or
     ;;@ assembly/i64.ts:172:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:172:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:172:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:172:59
    (i64.or
     ;;@ assembly/i64.ts:172:65
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:172:80
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:172:96
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:173:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:173:7
   (get_local $4)
  )
  ;;@ assembly/i64.ts:174:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:174:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/gt_u (; 28 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  ;;@ assembly/i64.ts:178:2
  (set_local $4
   ;;@ assembly/i64.ts:178:18
   (i64.gt_u
    (i64.or
     ;;@ assembly/i64.ts:178:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:178:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:178:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:178:54
    (i64.or
     ;;@ assembly/i64.ts:178:55
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:178:70
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:178:86
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:179:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:179:7
   (get_local $4)
  )
  ;;@ assembly/i64.ts:180:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:180:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ge_s (; 29 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  ;;@ assembly/i64.ts:184:2
  (set_local $4
   ;;@ assembly/i64.ts:184:18
   (i64.ge_s
    (i64.or
     ;;@ assembly/i64.ts:184:24
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:184:38
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:184:53
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:184:60
    (i64.or
     ;;@ assembly/i64.ts:184:66
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:184:81
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:184:97
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:185:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:185:7
   (get_local $4)
  )
  ;;@ assembly/i64.ts:186:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:186:7
   (i32.const 0)
  )
 )
 (func $assembly/i64/ge_u (; 30 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  ;;@ assembly/i64.ts:190:2
  (set_local $4
   ;;@ assembly/i64.ts:190:18
   (i64.ge_u
    (i64.or
     ;;@ assembly/i64.ts:190:19
     (i64.extend_u/i32
      (get_local $0)
     )
     ;;@ assembly/i64.ts:190:33
     (i64.shl
      (i64.extend_u/i32
       (get_local $1)
      )
      ;;@ assembly/i64.ts:190:48
      (i64.const 32)
     )
    )
    ;;@ assembly/i64.ts:190:55
    (i64.or
     ;;@ assembly/i64.ts:190:56
     (i64.extend_u/i32
      (get_local $2)
     )
     ;;@ assembly/i64.ts:190:71
     (i64.shl
      (i64.extend_u/i32
       (get_local $3)
      )
      ;;@ assembly/i64.ts:190:87
      (i64.const 32)
     )
    )
   )
  )
  ;;@ assembly/i64.ts:191:2
  (set_global $assembly/i64/lo
   ;;@ assembly/i64.ts:191:7
   (get_local $4)
  )
  ;;@ assembly/i64.ts:192:2
  (set_global $assembly/i64/hi
   ;;@ assembly/i64.ts:192:7
   (i32.const 0)
  )
 )
)
