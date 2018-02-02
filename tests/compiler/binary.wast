(module
 (type $v (func))
 (global $binary/b (mut i32) (i32.const 0))
 (global $binary/i (mut i32) (i32.const 0))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  ;;@ binary.ts:5:0
  (drop
   (i32.lt_s
    (get_global $binary/i)
    ;;@ binary.ts:5:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:6:0
  (drop
   (i32.gt_s
    (get_global $binary/i)
    ;;@ binary.ts:6:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:7:0
  (drop
   (i32.le_s
    (get_global $binary/i)
    ;;@ binary.ts:7:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:8:0
  (drop
   (i32.ge_s
    (get_global $binary/i)
    ;;@ binary.ts:8:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:9:0
  (drop
   (i32.eq
    (get_global $binary/i)
    ;;@ binary.ts:9:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:10:0
  (drop
   (i32.eq
    (get_global $binary/i)
    ;;@ binary.ts:10:6
    (i32.const 1)
   )
  )
  ;;@ binary.ts:11:0
  (drop
   (i32.add
    (get_global $binary/i)
    ;;@ binary.ts:11:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:12:0
  (drop
   (i32.sub
    (get_global $binary/i)
    ;;@ binary.ts:12:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:13:0
  (drop
   (i32.mul
    (get_global $binary/i)
    ;;@ binary.ts:13:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:14:0
  (drop
   (i32.div_s
    (get_global $binary/i)
    ;;@ binary.ts:14:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:15:0
  (drop
   (i32.rem_s
    (get_global $binary/i)
    ;;@ binary.ts:15:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:16:0
  (drop
   (i32.shl
    (get_global $binary/i)
    ;;@ binary.ts:16:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:17:0
  (drop
   (i32.shr_s
    (get_global $binary/i)
    ;;@ binary.ts:17:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:18:0
  (drop
   (i32.shr_u
    (get_global $binary/i)
    ;;@ binary.ts:18:6
    (i32.const 1)
   )
  )
  ;;@ binary.ts:19:0
  (drop
   (i32.and
    (get_global $binary/i)
    ;;@ binary.ts:19:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:20:0
  (drop
   (i32.or
    (get_global $binary/i)
    ;;@ binary.ts:20:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:21:0
  (drop
   (i32.xor
    (get_global $binary/i)
    ;;@ binary.ts:21:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:23:0
  (set_global $binary/b
   ;;@ binary.ts:23:4
   (i32.lt_s
    (get_global $binary/i)
    ;;@ binary.ts:23:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:24:0
  (set_global $binary/b
   ;;@ binary.ts:24:4
   (i32.gt_s
    (get_global $binary/i)
    ;;@ binary.ts:24:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:25:0
  (set_global $binary/b
   ;;@ binary.ts:25:4
   (i32.le_s
    (get_global $binary/i)
    ;;@ binary.ts:25:9
    (i32.const 1)
   )
  )
  ;;@ binary.ts:26:0
  (set_global $binary/b
   ;;@ binary.ts:26:4
   (i32.ge_s
    (get_global $binary/i)
    ;;@ binary.ts:26:9
    (i32.const 1)
   )
  )
  ;;@ binary.ts:27:0
  (set_global $binary/b
   ;;@ binary.ts:27:4
   (i32.eq
    (get_global $binary/i)
    ;;@ binary.ts:27:9
    (i32.const 1)
   )
  )
  ;;@ binary.ts:28:0
  (set_global $binary/b
   ;;@ binary.ts:28:4
   (i32.eq
    (get_global $binary/i)
    ;;@ binary.ts:28:10
    (i32.const 1)
   )
  )
  ;;@ binary.ts:29:0
  (set_global $binary/i
   ;;@ binary.ts:29:4
   (i32.add
    (get_global $binary/i)
    ;;@ binary.ts:29:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:30:0
  (set_global $binary/i
   ;;@ binary.ts:30:4
   (i32.sub
    (get_global $binary/i)
    ;;@ binary.ts:30:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:31:0
  (set_global $binary/i
   ;;@ binary.ts:31:4
   (i32.mul
    (get_global $binary/i)
    ;;@ binary.ts:31:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:32:0
  (set_global $binary/i
   ;;@ binary.ts:32:4
   (i32.div_s
    (get_global $binary/i)
    ;;@ binary.ts:32:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:33:0
  (set_global $binary/i
   ;;@ binary.ts:33:4
   (i32.rem_s
    (get_global $binary/i)
    ;;@ binary.ts:33:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:34:0
  (set_global $binary/i
   ;;@ binary.ts:34:4
   (i32.shl
    (get_global $binary/i)
    ;;@ binary.ts:34:9
    (i32.const 1)
   )
  )
  ;;@ binary.ts:35:0
  (set_global $binary/i
   ;;@ binary.ts:35:4
   (i32.shr_s
    (get_global $binary/i)
    ;;@ binary.ts:35:9
    (i32.const 1)
   )
  )
  ;;@ binary.ts:36:0
  (set_global $binary/i
   ;;@ binary.ts:36:4
   (i32.shr_u
    (get_global $binary/i)
    ;;@ binary.ts:36:10
    (i32.const 1)
   )
  )
  ;;@ binary.ts:37:0
  (set_global $binary/i
   ;;@ binary.ts:37:4
   (i32.and
    (get_global $binary/i)
    ;;@ binary.ts:37:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:38:0
  (set_global $binary/i
   ;;@ binary.ts:38:4
   (i32.or
    (get_global $binary/i)
    ;;@ binary.ts:38:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:39:0
  (set_global $binary/i
   ;;@ binary.ts:39:4
   (i32.xor
    (get_global $binary/i)
    ;;@ binary.ts:39:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:41:0
  (set_global $binary/i
   (i32.add
    (get_global $binary/i)
    ;;@ binary.ts:41:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:42:0
  (set_global $binary/i
   (i32.sub
    (get_global $binary/i)
    ;;@ binary.ts:42:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:43:0
  (set_global $binary/i
   (i32.mul
    (get_global $binary/i)
    ;;@ binary.ts:43:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:44:0
  (set_global $binary/i
   (i32.rem_s
    (get_global $binary/i)
    ;;@ binary.ts:44:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:45:0
  (set_global $binary/i
   (i32.shl
    (get_global $binary/i)
    ;;@ binary.ts:45:6
    (i32.const 1)
   )
  )
  ;;@ binary.ts:46:0
  (set_global $binary/i
   (i32.shr_s
    (get_global $binary/i)
    ;;@ binary.ts:46:6
    (i32.const 1)
   )
  )
  ;;@ binary.ts:47:0
  (set_global $binary/i
   (i32.shr_u
    (get_global $binary/i)
    ;;@ binary.ts:47:7
    (i32.const 1)
   )
  )
  ;;@ binary.ts:48:0
  (set_global $binary/i
   (i32.and
    (get_global $binary/i)
    ;;@ binary.ts:48:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:49:0
  (set_global $binary/i
   (i32.or
    (get_global $binary/i)
    ;;@ binary.ts:49:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:50:0
  (set_global $binary/i
   (i32.xor
    (get_global $binary/i)
    ;;@ binary.ts:50:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:54:0
  (drop
   (i64.lt_s
    (get_global $binary/I)
    ;;@ binary.ts:54:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:55:0
  (drop
   (i64.gt_s
    (get_global $binary/I)
    ;;@ binary.ts:55:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:56:0
  (drop
   (i64.le_s
    (get_global $binary/I)
    ;;@ binary.ts:56:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:57:0
  (drop
   (i64.ge_s
    (get_global $binary/I)
    ;;@ binary.ts:57:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:58:0
  (drop
   (i64.eq
    (get_global $binary/I)
    ;;@ binary.ts:58:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:59:0
  (drop
   (i64.eq
    (get_global $binary/I)
    ;;@ binary.ts:59:6
    (i64.const 1)
   )
  )
  ;;@ binary.ts:60:0
  (drop
   (i64.add
    (get_global $binary/I)
    ;;@ binary.ts:60:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:61:0
  (drop
   (i64.sub
    (get_global $binary/I)
    ;;@ binary.ts:61:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:62:0
  (drop
   (i64.mul
    (get_global $binary/I)
    ;;@ binary.ts:62:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:63:0
  (drop
   (i64.div_s
    (get_global $binary/I)
    ;;@ binary.ts:63:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:64:0
  (drop
   (i64.rem_s
    (get_global $binary/I)
    ;;@ binary.ts:64:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:65:0
  (drop
   (i64.shl
    (get_global $binary/I)
    ;;@ binary.ts:65:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:66:0
  (drop
   (i64.shr_s
    (get_global $binary/I)
    ;;@ binary.ts:66:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:67:0
  (drop
   (i64.shr_u
    (get_global $binary/I)
    ;;@ binary.ts:67:6
    (i64.const 1)
   )
  )
  ;;@ binary.ts:68:0
  (drop
   (i64.and
    (get_global $binary/I)
    ;;@ binary.ts:68:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:69:0
  (drop
   (i64.or
    (get_global $binary/I)
    ;;@ binary.ts:69:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:70:0
  (drop
   (i64.xor
    (get_global $binary/I)
    ;;@ binary.ts:70:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:72:0
  (set_global $binary/b
   ;;@ binary.ts:72:4
   (i64.lt_s
    (get_global $binary/I)
    ;;@ binary.ts:72:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:73:0
  (set_global $binary/b
   ;;@ binary.ts:73:4
   (i64.gt_s
    (get_global $binary/I)
    ;;@ binary.ts:73:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:74:0
  (set_global $binary/b
   ;;@ binary.ts:74:4
   (i64.le_s
    (get_global $binary/I)
    ;;@ binary.ts:74:9
    (i64.const 1)
   )
  )
  ;;@ binary.ts:75:0
  (set_global $binary/b
   ;;@ binary.ts:75:4
   (i64.ge_s
    (get_global $binary/I)
    ;;@ binary.ts:75:9
    (i64.const 1)
   )
  )
  ;;@ binary.ts:76:0
  (set_global $binary/b
   ;;@ binary.ts:76:4
   (i64.eq
    (get_global $binary/I)
    ;;@ binary.ts:76:9
    (i64.const 1)
   )
  )
  ;;@ binary.ts:77:0
  (set_global $binary/b
   ;;@ binary.ts:77:4
   (i64.eq
    (get_global $binary/I)
    ;;@ binary.ts:77:10
    (i64.const 1)
   )
  )
  ;;@ binary.ts:78:0
  (set_global $binary/I
   ;;@ binary.ts:78:4
   (i64.add
    (get_global $binary/I)
    ;;@ binary.ts:78:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:79:0
  (set_global $binary/I
   ;;@ binary.ts:79:4
   (i64.sub
    (get_global $binary/I)
    ;;@ binary.ts:79:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:80:0
  (set_global $binary/I
   ;;@ binary.ts:80:4
   (i64.mul
    (get_global $binary/I)
    ;;@ binary.ts:80:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:81:0
  (set_global $binary/I
   ;;@ binary.ts:81:4
   (i64.div_s
    (get_global $binary/I)
    ;;@ binary.ts:81:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:82:0
  (set_global $binary/I
   ;;@ binary.ts:82:4
   (i64.rem_s
    (get_global $binary/I)
    ;;@ binary.ts:82:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:83:0
  (set_global $binary/I
   ;;@ binary.ts:83:4
   (i64.shl
    (get_global $binary/I)
    ;;@ binary.ts:83:9
    (i64.const 1)
   )
  )
  ;;@ binary.ts:84:0
  (set_global $binary/I
   ;;@ binary.ts:84:4
   (i64.shr_s
    (get_global $binary/I)
    ;;@ binary.ts:84:9
    (i64.const 1)
   )
  )
  ;;@ binary.ts:85:0
  (set_global $binary/I
   ;;@ binary.ts:85:4
   (i64.shr_u
    (get_global $binary/I)
    ;;@ binary.ts:85:10
    (i64.const 1)
   )
  )
  ;;@ binary.ts:86:0
  (set_global $binary/I
   ;;@ binary.ts:86:4
   (i64.and
    (get_global $binary/I)
    ;;@ binary.ts:86:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:87:0
  (set_global $binary/I
   ;;@ binary.ts:87:4
   (i64.or
    (get_global $binary/I)
    ;;@ binary.ts:87:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:88:0
  (set_global $binary/I
   ;;@ binary.ts:88:4
   (i64.xor
    (get_global $binary/I)
    ;;@ binary.ts:88:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:90:0
  (set_global $binary/I
   (i64.add
    (get_global $binary/I)
    ;;@ binary.ts:90:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:91:0
  (set_global $binary/I
   (i64.sub
    (get_global $binary/I)
    ;;@ binary.ts:91:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:92:0
  (set_global $binary/I
   (i64.mul
    (get_global $binary/I)
    ;;@ binary.ts:92:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:93:0
  (set_global $binary/I
   (i64.rem_s
    (get_global $binary/I)
    ;;@ binary.ts:93:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:94:0
  (set_global $binary/I
   (i64.shl
    (get_global $binary/I)
    ;;@ binary.ts:94:6
    (i64.const 1)
   )
  )
  ;;@ binary.ts:95:0
  (set_global $binary/I
   (i64.shr_s
    (get_global $binary/I)
    ;;@ binary.ts:95:6
    (i64.const 1)
   )
  )
  ;;@ binary.ts:96:0
  (set_global $binary/I
   (i64.shr_u
    (get_global $binary/I)
    ;;@ binary.ts:96:7
    (i64.const 1)
   )
  )
  ;;@ binary.ts:97:0
  (set_global $binary/I
   (i64.and
    (get_global $binary/I)
    ;;@ binary.ts:97:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:98:0
  (set_global $binary/I
   (i64.or
    (get_global $binary/I)
    ;;@ binary.ts:98:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:99:0
  (set_global $binary/I
   (i64.xor
    (get_global $binary/I)
    ;;@ binary.ts:99:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:103:0
  (drop
   (f32.lt
    (get_global $binary/f)
    ;;@ binary.ts:103:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:104:0
  (drop
   (f32.gt
    (get_global $binary/f)
    ;;@ binary.ts:104:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:105:0
  (drop
   (f32.le
    (get_global $binary/f)
    ;;@ binary.ts:105:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:106:0
  (drop
   (f32.ge
    (get_global $binary/f)
    ;;@ binary.ts:106:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:107:0
  (drop
   (f32.eq
    (get_global $binary/f)
    ;;@ binary.ts:107:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:108:0
  (drop
   (f32.eq
    (get_global $binary/f)
    ;;@ binary.ts:108:6
    (f32.const 1)
   )
  )
  ;;@ binary.ts:109:0
  (drop
   (f32.add
    (get_global $binary/f)
    ;;@ binary.ts:109:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:110:0
  (drop
   (f32.sub
    (get_global $binary/f)
    ;;@ binary.ts:110:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:111:0
  (drop
   (f32.mul
    (get_global $binary/f)
    ;;@ binary.ts:111:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:112:0
  (drop
   (f32.div
    (get_global $binary/f)
    ;;@ binary.ts:112:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:115:0
  (set_global $binary/b
   ;;@ binary.ts:115:4
   (f32.lt
    (get_global $binary/f)
    ;;@ binary.ts:115:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:116:0
  (set_global $binary/b
   ;;@ binary.ts:116:4
   (f32.gt
    (get_global $binary/f)
    ;;@ binary.ts:116:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:117:0
  (set_global $binary/b
   ;;@ binary.ts:117:4
   (f32.le
    (get_global $binary/f)
    ;;@ binary.ts:117:9
    (f32.const 1)
   )
  )
  ;;@ binary.ts:118:0
  (set_global $binary/b
   ;;@ binary.ts:118:4
   (f32.ge
    (get_global $binary/f)
    ;;@ binary.ts:118:9
    (f32.const 1)
   )
  )
  ;;@ binary.ts:119:0
  (set_global $binary/b
   ;;@ binary.ts:119:4
   (f32.eq
    (get_global $binary/f)
    ;;@ binary.ts:119:9
    (f32.const 1)
   )
  )
  ;;@ binary.ts:120:0
  (set_global $binary/b
   ;;@ binary.ts:120:4
   (f32.eq
    (get_global $binary/f)
    ;;@ binary.ts:120:10
    (f32.const 1)
   )
  )
  ;;@ binary.ts:121:0
  (set_global $binary/f
   ;;@ binary.ts:121:4
   (f32.add
    (get_global $binary/f)
    ;;@ binary.ts:121:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:122:0
  (set_global $binary/f
   ;;@ binary.ts:122:4
   (f32.sub
    (get_global $binary/f)
    ;;@ binary.ts:122:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:123:0
  (set_global $binary/f
   ;;@ binary.ts:123:4
   (f32.mul
    (get_global $binary/f)
    ;;@ binary.ts:123:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:124:0
  (set_global $binary/f
   ;;@ binary.ts:124:4
   (f32.div
    (get_global $binary/f)
    ;;@ binary.ts:124:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:127:0
  (set_global $binary/f
   (f32.add
    (get_global $binary/f)
    ;;@ binary.ts:127:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:128:0
  (set_global $binary/f
   (f32.sub
    (get_global $binary/f)
    ;;@ binary.ts:128:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:129:0
  (set_global $binary/f
   (f32.mul
    (get_global $binary/f)
    ;;@ binary.ts:129:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:134:0
  (drop
   (f64.lt
    (get_global $binary/F)
    ;;@ binary.ts:134:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:135:0
  (drop
   (f64.gt
    (get_global $binary/F)
    ;;@ binary.ts:135:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:136:0
  (drop
   (f64.le
    (get_global $binary/F)
    ;;@ binary.ts:136:5
    (f64.const 1)
   )
  )
  ;;@ binary.ts:137:0
  (drop
   (f64.ge
    (get_global $binary/F)
    ;;@ binary.ts:137:5
    (f64.const 1)
   )
  )
  ;;@ binary.ts:138:0
  (drop
   (f64.eq
    (get_global $binary/F)
    ;;@ binary.ts:138:5
    (f64.const 1)
   )
  )
  ;;@ binary.ts:139:0
  (drop
   (f64.eq
    (get_global $binary/F)
    ;;@ binary.ts:139:6
    (f64.const 1)
   )
  )
  ;;@ binary.ts:140:0
  (drop
   (f64.add
    (get_global $binary/F)
    ;;@ binary.ts:140:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:141:0
  (drop
   (f64.sub
    (get_global $binary/F)
    ;;@ binary.ts:141:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:142:0
  (drop
   (f64.mul
    (get_global $binary/F)
    ;;@ binary.ts:142:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:143:0
  (drop
   (f64.div
    (get_global $binary/F)
    ;;@ binary.ts:143:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:146:0
  (set_global $binary/b
   ;;@ binary.ts:146:4
   (f64.lt
    (get_global $binary/F)
    ;;@ binary.ts:146:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:147:0
  (set_global $binary/b
   ;;@ binary.ts:147:4
   (f64.gt
    (get_global $binary/F)
    ;;@ binary.ts:147:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:148:0
  (set_global $binary/b
   ;;@ binary.ts:148:4
   (f64.le
    (get_global $binary/F)
    ;;@ binary.ts:148:9
    (f64.const 1)
   )
  )
  ;;@ binary.ts:149:0
  (set_global $binary/b
   ;;@ binary.ts:149:4
   (f64.ge
    (get_global $binary/F)
    ;;@ binary.ts:149:9
    (f64.const 1)
   )
  )
  ;;@ binary.ts:150:0
  (set_global $binary/b
   ;;@ binary.ts:150:4
   (f64.eq
    (get_global $binary/F)
    ;;@ binary.ts:150:9
    (f64.const 1)
   )
  )
  ;;@ binary.ts:151:0
  (set_global $binary/b
   ;;@ binary.ts:151:4
   (f64.eq
    (get_global $binary/F)
    ;;@ binary.ts:151:10
    (f64.const 1)
   )
  )
  ;;@ binary.ts:152:0
  (set_global $binary/F
   ;;@ binary.ts:152:4
   (f64.add
    (get_global $binary/F)
    ;;@ binary.ts:152:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:153:0
  (set_global $binary/F
   ;;@ binary.ts:153:4
   (f64.sub
    (get_global $binary/F)
    ;;@ binary.ts:153:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:154:0
  (set_global $binary/F
   ;;@ binary.ts:154:4
   (f64.mul
    (get_global $binary/F)
    ;;@ binary.ts:154:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:155:0
  (set_global $binary/F
   ;;@ binary.ts:155:4
   (f64.div
    (get_global $binary/F)
    ;;@ binary.ts:155:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:158:0
  (set_global $binary/F
   (f64.add
    (get_global $binary/F)
    ;;@ binary.ts:158:5
    (f64.const 1)
   )
  )
  ;;@ binary.ts:159:0
  (set_global $binary/F
   (f64.sub
    (get_global $binary/F)
    ;;@ binary.ts:159:5
    (f64.const 1)
   )
  )
  ;;@ binary.ts:160:0
  (set_global $binary/F
   (f64.mul
    (get_global $binary/F)
    ;;@ binary.ts:160:5
    (f64.const 1)
   )
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: abort
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  GLOBAL: binary/b
  GLOBAL: binary/i
  GLOBAL: binary/I
  GLOBAL: binary/f
  GLOBAL: binary/F
[program.exports]
  
;)
