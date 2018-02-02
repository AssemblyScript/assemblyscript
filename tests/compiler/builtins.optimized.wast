(module
 (type $v (func))
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (memory $0 1)
 (export "test" (func $builtins/test))
 (export "memory" (memory $0))
 (start $start)
 (func $builtins/test (; 0 ;) (type $v)
  (nop)
 )
 (func $start (; 1 ;) (type $v)
  (local $0 f32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  ;;@ builtins.ts:13:0
  (drop
   (select
    (tee_local $2
     ;;@ builtins.ts:13:9
     (i32.const 1)
    )
    (tee_local $3
     ;;@ builtins.ts:13:12
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  ;;@ builtins.ts:16:0
  (set_global $builtins/i
   (i32.const 31)
  )
  ;;@ builtins.ts:17:0
  (set_global $builtins/i
   (i32.const 0)
  )
  ;;@ builtins.ts:18:0
  (set_global $builtins/i
   (i32.const 1)
  )
  ;;@ builtins.ts:19:0
  (set_global $builtins/i
   (i32.const 2)
  )
  ;;@ builtins.ts:20:0
  (set_global $builtins/i
   (i32.const -2147483648)
  )
  ;;@ builtins.ts:21:0
  (set_global $builtins/i
   ;;@ builtins.ts:21:4
   (select
    (tee_local $2
     (i32.const -42)
    )
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
    (i32.gt_s
     (get_local $2)
     (i32.const 0)
    )
   )
  )
  ;;@ builtins.ts:21:19
  (if
   ;;@ builtins.ts:21:26
   (i32.ne
    (get_global $builtins/i)
    ;;@ builtins.ts:21:31
    (i32.const 42)
   )
   (unreachable)
  )
  ;;@ builtins.ts:22:0
  (set_global $builtins/i
   ;;@ builtins.ts:22:4
   (select
    (tee_local $2
     ;;@ builtins.ts:22:13
     (i32.const 1)
    )
    ;;@ builtins.ts:22:16
    (i32.const 2)
    (i32.gt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  ;;@ builtins.ts:22:20
  (if
   ;;@ builtins.ts:22:27
   (i32.ne
    (get_global $builtins/i)
    ;;@ builtins.ts:22:32
    (i32.const 2)
   )
   (unreachable)
  )
  ;;@ builtins.ts:23:0
  (set_global $builtins/i
   ;;@ builtins.ts:23:4
   (select
    ;;@ builtins.ts:23:13
    (i32.const 1)
    ;;@ builtins.ts:23:16
    (i32.const 2)
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  ;;@ builtins.ts:23:20
  (if
   ;;@ builtins.ts:23:27
   (i32.ne
    (get_global $builtins/i)
    ;;@ builtins.ts:23:32
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ builtins.ts:34:0
  (set_global $builtins/I
   (i64.const 63)
  )
  ;;@ builtins.ts:35:0
  (set_global $builtins/I
   (i64.const 0)
  )
  ;;@ builtins.ts:36:0
  (set_global $builtins/I
   (i64.const 1)
  )
  ;;@ builtins.ts:37:0
  (set_global $builtins/I
   (i64.const 2)
  )
  ;;@ builtins.ts:38:0
  (set_global $builtins/I
   (i64.const -9223372036854775808)
  )
  ;;@ builtins.ts:39:0
  (set_global $builtins/I
   ;;@ builtins.ts:39:4
   (select
    (tee_local $4
     (i64.const -42)
    )
    (i64.sub
     (i64.const 0)
     (get_local $4)
    )
    (i64.gt_s
     (get_local $4)
     (i64.const 0)
    )
   )
  )
  ;;@ builtins.ts:39:19
  (if
   ;;@ builtins.ts:39:26
   (i64.ne
    (get_global $builtins/I)
    ;;@ builtins.ts:39:31
    (i64.const 42)
   )
   (unreachable)
  )
  ;;@ builtins.ts:40:0
  (set_global $builtins/I
   ;;@ builtins.ts:40:4
   (select
    (tee_local $4
     ;;@ builtins.ts:40:13
     (i64.const 1)
    )
    (tee_local $5
     ;;@ builtins.ts:40:16
     (i64.const 2)
    )
    (i64.gt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  ;;@ builtins.ts:40:20
  (if
   ;;@ builtins.ts:40:27
   (i64.ne
    (get_global $builtins/I)
    ;;@ builtins.ts:40:32
    (i64.const 2)
   )
   (unreachable)
  )
  ;;@ builtins.ts:41:0
  (set_global $builtins/I
   ;;@ builtins.ts:41:4
   (select
    ;;@ builtins.ts:41:13
    (i64.const 1)
    ;;@ builtins.ts:41:16
    (i64.const 2)
    (i64.lt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  ;;@ builtins.ts:41:20
  (if
   ;;@ builtins.ts:41:27
   (i32.ne
    (get_global $builtins/i)
    ;;@ builtins.ts:41:32
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ builtins.ts:61:0
  (set_global $builtins/f
   ;;@ builtins.ts:61:4
   (f32.const nan:0x400000)
  )
  ;;@ builtins.ts:62:0
  (set_global $builtins/f
   ;;@ builtins.ts:62:4
   (f32.const inf)
  )
  ;;@ builtins.ts:63:0
  (set_global $builtins/f
   (f32.const 1.25)
  )
  ;;@ builtins.ts:64:0
  (set_global $builtins/f
   (f32.const 2)
  )
  ;;@ builtins.ts:65:0
  (set_global $builtins/f
   (f32.const 1.25)
  )
  ;;@ builtins.ts:66:0
  (set_global $builtins/f
   (f32.const 1)
  )
  ;;@ builtins.ts:67:0
  (set_global $builtins/f
   (f32.const 2.5)
  )
  ;;@ builtins.ts:68:0
  (set_global $builtins/f
   (f32.const 1.25)
  )
  ;;@ builtins.ts:69:0
  (set_global $builtins/f
   (f32.const 1.25)
  )
  ;;@ builtins.ts:70:0
  (set_global $builtins/f
   (f32.const 1.1180340051651)
  )
  ;;@ builtins.ts:71:0
  (set_global $builtins/f
   (f32.const 1)
  )
  ;;@ builtins.ts:72:0
  (set_global $builtins/b
   ;;@ builtins.ts:72:4
   (f32.ne
    (tee_local $0
     ;;@ builtins.ts:72:15
     (f32.const 1.25)
    )
    (get_local $0)
   )
  )
  ;;@ builtins.ts:73:0
  (set_global $builtins/b
   ;;@ builtins.ts:73:4
   (select
    (f32.ne
     (f32.abs
      ;;@ builtins.ts:73:18
      (f32.const 1.25)
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $0)
     (get_local $0)
    )
   )
  )
  ;;@ builtins.ts:93:0
  (set_global $builtins/F
   ;;@ builtins.ts:93:4
   (f64.const nan:0x8000000000000)
  )
  ;;@ builtins.ts:94:0
  (set_global $builtins/F
   ;;@ builtins.ts:94:4
   (f64.const inf)
  )
  ;;@ builtins.ts:95:0
  (set_global $builtins/F
   (f64.const 1.25)
  )
  ;;@ builtins.ts:96:0
  (set_global $builtins/F
   (f64.const 2)
  )
  ;;@ builtins.ts:97:0
  (set_global $builtins/F
   (f64.const 1.25)
  )
  ;;@ builtins.ts:98:0
  (set_global $builtins/F
   (f64.const 1)
  )
  ;;@ builtins.ts:99:0
  (set_global $builtins/F
   (f64.const 2.5)
  )
  ;;@ builtins.ts:100:0
  (set_global $builtins/F
   (f64.const 1.25)
  )
  ;;@ builtins.ts:101:0
  (set_global $builtins/F
   (f64.const 1)
  )
  ;;@ builtins.ts:102:0
  (set_global $builtins/F
   (f64.const 1.118033988749895)
  )
  ;;@ builtins.ts:103:0
  (set_global $builtins/F
   (f64.const 1)
  )
  ;;@ builtins.ts:104:0
  (set_global $builtins/b
   ;;@ builtins.ts:104:4
   (f64.ne
    (tee_local $1
     ;;@ builtins.ts:104:15
     (f64.const 1.25)
    )
    (get_local $1)
   )
  )
  ;;@ builtins.ts:105:0
  (set_global $builtins/b
   ;;@ builtins.ts:105:4
   (select
    (f64.ne
     (f64.abs
      ;;@ builtins.ts:105:18
      (f64.const 1.25)
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $1)
     (get_local $1)
    )
   )
  )
  ;;@ builtins.ts:109:0
  (set_global $builtins/i
   ;;@ builtins.ts:109:4
   (i32.load
    ;;@ builtins.ts:109:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:109:18
  (i32.store
   ;;@ builtins.ts:109:29
   (i32.const 8)
   ;;@ builtins.ts:109:32
   (get_global $builtins/i)
  )
  ;;@ builtins.ts:110:0
  (i32.store
   ;;@ builtins.ts:110:11
   (i32.const 8)
   ;;@ builtins.ts:110:14
   (i32.load
    ;;@ builtins.ts:110:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:111:0
  (set_global $builtins/I
   ;;@ builtins.ts:111:4
   (i64.load
    ;;@ builtins.ts:111:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:111:18
  (i64.store
   ;;@ builtins.ts:111:29
   (i32.const 8)
   ;;@ builtins.ts:111:32
   (get_global $builtins/I)
  )
  ;;@ builtins.ts:112:0
  (i64.store
   ;;@ builtins.ts:112:11
   (i32.const 8)
   ;;@ builtins.ts:112:14
   (i64.load
    ;;@ builtins.ts:112:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:113:0
  (set_global $builtins/f
   ;;@ builtins.ts:113:4
   (f32.load
    ;;@ builtins.ts:113:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:113:18
  (f32.store
   ;;@ builtins.ts:113:29
   (i32.const 8)
   ;;@ builtins.ts:113:32
   (get_global $builtins/f)
  )
  ;;@ builtins.ts:114:0
  (f32.store
   ;;@ builtins.ts:114:11
   (i32.const 8)
   ;;@ builtins.ts:114:14
   (f32.load
    ;;@ builtins.ts:114:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:115:0
  (set_global $builtins/F
   ;;@ builtins.ts:115:4
   (f64.load
    ;;@ builtins.ts:115:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:115:18
  (f64.store
   ;;@ builtins.ts:115:29
   (i32.const 8)
   ;;@ builtins.ts:115:32
   (get_global $builtins/F)
  )
  ;;@ builtins.ts:116:0
  (f64.store
   ;;@ builtins.ts:116:11
   (i32.const 8)
   ;;@ builtins.ts:116:14
   (f64.load
    ;;@ builtins.ts:116:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:119:0
  (set_global $builtins/i
   ;;@ builtins.ts:119:4
   (i32.load
    ;;@ builtins.ts:119:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:119:34
  (i32.store
   ;;@ builtins.ts:119:45
   (i32.const 8)
   ;;@ builtins.ts:119:48
   (get_global $builtins/i)
  )
  ;;@ builtins.ts:120:0
  (i32.store
   ;;@ builtins.ts:120:11
   (i32.const 8)
   ;;@ builtins.ts:120:14
   (i32.load
    ;;@ builtins.ts:120:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:121:0
  (set_global $builtins/I
   ;;@ builtins.ts:121:4
   (i64.load
    ;;@ builtins.ts:121:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:121:34
  (i64.store
   ;;@ builtins.ts:121:45
   (i32.const 8)
   ;;@ builtins.ts:121:48
   (get_global $builtins/I)
  )
  ;;@ builtins.ts:122:0
  (i64.store
   ;;@ builtins.ts:122:11
   (i32.const 8)
   ;;@ builtins.ts:122:14
   (i64.load
    ;;@ builtins.ts:122:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:123:0
  (set_global $builtins/f
   ;;@ builtins.ts:123:4
   (f32.load
    ;;@ builtins.ts:123:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:123:34
  (f32.store
   ;;@ builtins.ts:123:45
   (i32.const 8)
   ;;@ builtins.ts:123:48
   (get_global $builtins/f)
  )
  ;;@ builtins.ts:124:0
  (f32.store
   ;;@ builtins.ts:124:11
   (i32.const 8)
   ;;@ builtins.ts:124:14
   (f32.load
    ;;@ builtins.ts:124:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:125:0
  (set_global $builtins/F
   ;;@ builtins.ts:125:4
   (f64.load
    ;;@ builtins.ts:125:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:125:34
  (f64.store
   ;;@ builtins.ts:125:45
   (i32.const 8)
   ;;@ builtins.ts:125:48
   (get_global $builtins/F)
  )
  ;;@ builtins.ts:126:0
  (f64.store
   ;;@ builtins.ts:126:11
   (i32.const 8)
   ;;@ builtins.ts:126:14
   (f64.load
    ;;@ builtins.ts:126:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:130:0
  (set_global $builtins/i
   ;;@ builtins.ts:130:4
   (i32.load8_s
    ;;@ builtins.ts:130:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:131:0
  (set_global $builtins/i
   ;;@ builtins.ts:131:4
   (i32.load16_s
    ;;@ builtins.ts:131:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:132:0
  (set_global $builtins/i
   ;;@ builtins.ts:132:4
   (i32.load
    ;;@ builtins.ts:132:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:134:0
  (set_global $builtins/i
   ;;@ builtins.ts:134:4
   (i32.load8_u
    ;;@ builtins.ts:134:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:135:0
  (set_global $builtins/i
   ;;@ builtins.ts:135:4
   (i32.load16_u
    ;;@ builtins.ts:135:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:136:0
  (set_global $builtins/i
   ;;@ builtins.ts:136:4
   (i32.load
    ;;@ builtins.ts:136:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:139:0
  (set_global $builtins/u
   ;;@ builtins.ts:139:4
   (i32.load8_u
    ;;@ builtins.ts:139:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:140:0
  (set_global $builtins/u
   ;;@ builtins.ts:140:4
   (i32.load16_u
    ;;@ builtins.ts:140:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:141:0
  (set_global $builtins/u
   ;;@ builtins.ts:141:4
   (i32.load
    ;;@ builtins.ts:141:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:143:0
  (set_global $builtins/u
   ;;@ builtins.ts:143:4
   (i32.load8_s
    ;;@ builtins.ts:143:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:144:0
  (set_global $builtins/u
   ;;@ builtins.ts:144:4
   (i32.load16_s
    ;;@ builtins.ts:144:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:145:0
  (set_global $builtins/u
   ;;@ builtins.ts:145:4
   (i32.load
    ;;@ builtins.ts:145:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:147:0
  (set_global $builtins/I
   ;;@ builtins.ts:147:4
   (i64.load8_s
    ;;@ builtins.ts:147:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:148:0
  (set_global $builtins/I
   ;;@ builtins.ts:148:4
   (i64.load16_s
    ;;@ builtins.ts:148:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:149:0
  (set_global $builtins/I
   ;;@ builtins.ts:149:4
   (i64.load32_s
    ;;@ builtins.ts:149:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:150:0
  (set_global $builtins/I
   ;;@ builtins.ts:150:4
   (i64.load
    ;;@ builtins.ts:150:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:153:0
  (set_global $builtins/U
   ;;@ builtins.ts:153:4
   (i64.load8_u
    ;;@ builtins.ts:153:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:154:0
  (set_global $builtins/U
   ;;@ builtins.ts:154:4
   (i64.load16_u
    ;;@ builtins.ts:154:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:155:0
  (set_global $builtins/U
   ;;@ builtins.ts:155:4
   (i64.load32_u
    ;;@ builtins.ts:155:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:156:0
  (set_global $builtins/U
   ;;@ builtins.ts:156:4
   (i64.load
    ;;@ builtins.ts:156:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:158:0
  (i32.store8
   ;;@ builtins.ts:158:10
   (i32.const 8)
   ;;@ builtins.ts:158:13
   (i32.const 1)
  )
  ;;@ builtins.ts:159:0
  (i32.store16
   ;;@ builtins.ts:159:11
   (i32.const 8)
   ;;@ builtins.ts:159:14
   (i32.const 1)
  )
  ;;@ builtins.ts:160:0
  (i32.store
   ;;@ builtins.ts:160:11
   (i32.const 8)
   ;;@ builtins.ts:160:14
   (i32.const 1)
  )
  ;;@ builtins.ts:162:0
  (i64.store8
   ;;@ builtins.ts:162:10
   (i32.const 8)
   ;;@ builtins.ts:162:13
   (i64.const 1)
  )
  ;;@ builtins.ts:163:0
  (i64.store16
   ;;@ builtins.ts:163:11
   (i32.const 8)
   ;;@ builtins.ts:163:14
   (i64.const 1)
  )
  ;;@ builtins.ts:164:0
  (i64.store32
   ;;@ builtins.ts:164:11
   (i32.const 8)
   ;;@ builtins.ts:164:14
   (i64.const 1)
  )
  ;;@ builtins.ts:165:0
  (i64.store
   ;;@ builtins.ts:165:11
   (i32.const 8)
   ;;@ builtins.ts:165:14
   (i64.const 1)
  )
  ;;@ builtins.ts:167:0
  (i64.store
   ;;@ builtins.ts:167:11
   (i32.const 8)
   (i64.const 1)
  )
  ;;@ builtins.ts:176:0
  (set_global $builtins/i
   (i32.const 1067450368)
  )
  ;;@ builtins.ts:177:0
  (set_global $builtins/f
   (f32.const 3.5032461608120427e-44)
  )
  ;;@ builtins.ts:178:0
  (set_global $builtins/I
   (i64.const 4608308318706860032)
  )
  ;;@ builtins.ts:179:0
  (set_global $builtins/F
   (f64.const 1.24e-322)
  )
  ;;@ builtins.ts:185:0
  (drop
   (current_memory)
  )
  ;;@ builtins.ts:186:0
  (drop
   (grow_memory
    ;;@ builtins.ts:186:12
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:188:0
  (set_global $builtins/s
   ;;@ builtins.ts:188:4
   (current_memory)
  )
  ;;@ builtins.ts:189:0
  (set_global $builtins/s
   ;;@ builtins.ts:189:4
   (grow_memory
    ;;@ builtins.ts:189:16
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:198:0
  (set_global $builtins/i
   (i32.const 10)
  )
  ;;@ builtins.ts:199:0
  (set_global $builtins/I
   (i64.const 200)
  )
  ;;@ builtins.ts:200:0
  (set_global $builtins/f
   (f32.const 1.25)
  )
  ;;@ builtins.ts:201:0
  (set_global $builtins/F
   (f64.const 25)
  )
  ;;@ builtins.ts:222:0
  (if
   ;;@ builtins.ts:222:7
   (f32.eq
    (tee_local $0
     ;;@ builtins.ts:222:18
     (f32.const nan:0x400000)
    )
    (get_local $0)
   )
   (unreachable)
  )
  ;;@ builtins.ts:223:0
  (if
   ;;@ builtins.ts:223:7
   (f64.eq
    (tee_local $1
     ;;@ builtins.ts:223:18
     (f64.const nan:0x8000000000000)
    )
    (get_local $1)
   )
   (unreachable)
  )
  ;;@ builtins.ts:224:0
  (if
   ;;@ builtins.ts:224:8
   (select
    (f32.ne
     (f32.abs
      (tee_local $0
       ;;@ builtins.ts:224:22
       (f32.const nan:0x400000)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $0)
     (get_local $0)
    )
   )
   (unreachable)
  )
  ;;@ builtins.ts:225:0
  (if
   ;;@ builtins.ts:225:8
   (select
    (f32.ne
     (f32.abs
      (tee_local $0
       ;;@ builtins.ts:225:22
       (f32.const inf)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $0)
     (get_local $0)
    )
   )
   (unreachable)
  )
  ;;@ builtins.ts:226:0
  (if
   ;;@ builtins.ts:226:8
   (select
    (f64.ne
     (f64.abs
      (tee_local $1
       ;;@ builtins.ts:226:22
       (f64.const nan:0x8000000000000)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $1)
     (get_local $1)
    )
   )
   (unreachable)
  )
  ;;@ builtins.ts:227:0
  (if
   ;;@ builtins.ts:227:8
   (select
    (f64.ne
     (f64.abs
      (tee_local $1
       ;;@ builtins.ts:227:22
       (f64.const inf)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $1)
     (get_local $1)
    )
   )
   (unreachable)
  )
  ;;@ builtins.ts:228:0
  (if
   (i32.eqz
    ;;@ builtins.ts:228:7
    (select
     (f32.ne
      (f32.abs
       (tee_local $0
        ;;@ builtins.ts:228:21
        (f32.const 0)
       )
      )
      (f32.const inf)
     )
     (i32.const 0)
     (f32.eq
      (get_local $0)
      (get_local $0)
     )
    )
   )
   (unreachable)
  )
  ;;@ builtins.ts:229:0
  (if
   (i32.eqz
    ;;@ builtins.ts:229:7
    (select
     (f64.ne
      (f64.abs
       (tee_local $1
        ;;@ builtins.ts:229:21
        (f64.const 0)
       )
      )
      (f64.const inf)
     )
     (i32.const 0)
     (f64.eq
      (get_local $1)
      (get_local $1)
     )
    )
   )
   (unreachable)
  )
 )
)
