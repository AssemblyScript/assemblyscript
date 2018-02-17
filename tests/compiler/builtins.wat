(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/constantOffset i32 (i32.const 8))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 4) "\0b\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s\00")
 (export "test" (func $builtins/test))
 (export "memory" (memory $0))
 (start $start)
 (func $builtins/test (; 1 ;) (type $v)
 )
 (func $start (; 2 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 f32)
  (local $5 f64)
  ;;@ builtins.ts:7:0
  (drop
   (i32.clz
    ;;@ builtins.ts:7:9
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:8:0
  (drop
   (i32.ctz
    ;;@ builtins.ts:8:9
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:9:0
  (drop
   (i32.popcnt
    ;;@ builtins.ts:9:12
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:10:0
  (drop
   (i32.rotl
    ;;@ builtins.ts:10:10
    (i32.const 1)
    ;;@ builtins.ts:10:13
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:11:0
  (drop
   (i32.rotr
    ;;@ builtins.ts:11:10
    (i32.const 1)
    ;;@ builtins.ts:11:13
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:12:0
  (drop
   (select
    (tee_local $0
     ;;@ builtins.ts:12:9
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
  ;;@ builtins.ts:13:0
  (drop
   (select
    (tee_local $0
     ;;@ builtins.ts:13:9
     (i32.const 1)
    )
    (tee_local $1
     ;;@ builtins.ts:13:12
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  ;;@ builtins.ts:14:0
  (drop
   (select
    (tee_local $0
     ;;@ builtins.ts:14:9
     (i32.const 1)
    )
    (tee_local $1
     ;;@ builtins.ts:14:12
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  ;;@ builtins.ts:16:0
  (set_global $builtins/i
   ;;@ builtins.ts:16:4
   (i32.clz
    ;;@ builtins.ts:16:13
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:17:0
  (set_global $builtins/i
   ;;@ builtins.ts:17:4
   (i32.ctz
    ;;@ builtins.ts:17:13
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:18:0
  (set_global $builtins/i
   ;;@ builtins.ts:18:4
   (i32.popcnt
    ;;@ builtins.ts:18:16
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:19:0
  (set_global $builtins/i
   ;;@ builtins.ts:19:4
   (i32.rotl
    ;;@ builtins.ts:19:14
    (i32.const 1)
    ;;@ builtins.ts:19:17
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:20:0
  (set_global $builtins/i
   ;;@ builtins.ts:20:4
   (i32.rotr
    ;;@ builtins.ts:20:14
    (i32.const 1)
    ;;@ builtins.ts:20:17
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:21:0
  (set_global $builtins/i
   ;;@ builtins.ts:21:4
   (select
    (tee_local $0
     ;;@ builtins.ts:21:13
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
  ;;@ builtins.ts:21:19
  (if
   (i32.eqz
    ;;@ builtins.ts:21:26
    (i32.eq
     (get_global $builtins/i)
     ;;@ builtins.ts:21:31
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 21)
     (i32.const 19)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:22:0
  (set_global $builtins/i
   ;;@ builtins.ts:22:4
   (select
    (tee_local $0
     ;;@ builtins.ts:22:13
     (i32.const 1)
    )
    (tee_local $1
     ;;@ builtins.ts:22:16
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  ;;@ builtins.ts:22:20
  (if
   (i32.eqz
    ;;@ builtins.ts:22:27
    (i32.eq
     (get_global $builtins/i)
     ;;@ builtins.ts:22:32
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 22)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:23:0
  (set_global $builtins/i
   ;;@ builtins.ts:23:4
   (select
    (tee_local $0
     ;;@ builtins.ts:23:13
     (i32.const 1)
    )
    (tee_local $1
     ;;@ builtins.ts:23:16
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  ;;@ builtins.ts:23:20
  (if
   (i32.eqz
    ;;@ builtins.ts:23:27
    (i32.eq
     (get_global $builtins/i)
     ;;@ builtins.ts:23:32
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 23)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:27:0
  (drop
   (i64.clz
    ;;@ builtins.ts:27:9
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:28:0
  (drop
   (i64.ctz
    ;;@ builtins.ts:28:9
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:29:0
  (drop
   (i64.popcnt
    ;;@ builtins.ts:29:12
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:30:0
  (drop
   (i64.rotl
    ;;@ builtins.ts:30:10
    (i64.const 1)
    ;;@ builtins.ts:30:13
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:31:0
  (drop
   (i64.rotr
    ;;@ builtins.ts:31:10
    (i64.const 1)
    ;;@ builtins.ts:31:13
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:32:0
  (drop
   (select
    (tee_local $2
     ;;@ builtins.ts:32:9
     (i64.const -42)
    )
    (i64.sub
     (i64.const 0)
     (get_local $2)
    )
    (i64.gt_s
     (get_local $2)
     (i64.const 0)
    )
   )
  )
  ;;@ builtins.ts:34:0
  (set_global $builtins/I
   ;;@ builtins.ts:34:4
   (i64.clz
    ;;@ builtins.ts:34:13
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:35:0
  (set_global $builtins/I
   ;;@ builtins.ts:35:4
   (i64.ctz
    ;;@ builtins.ts:35:13
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:36:0
  (set_global $builtins/I
   ;;@ builtins.ts:36:4
   (i64.popcnt
    ;;@ builtins.ts:36:16
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:37:0
  (set_global $builtins/I
   ;;@ builtins.ts:37:4
   (i64.rotl
    ;;@ builtins.ts:37:14
    (i64.const 1)
    ;;@ builtins.ts:37:17
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:38:0
  (set_global $builtins/I
   ;;@ builtins.ts:38:4
   (i64.rotr
    ;;@ builtins.ts:38:14
    (i64.const 1)
    ;;@ builtins.ts:38:17
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:39:0
  (set_global $builtins/I
   ;;@ builtins.ts:39:4
   (select
    (tee_local $2
     ;;@ builtins.ts:39:13
     (i64.const -42)
    )
    (i64.sub
     (i64.const 0)
     (get_local $2)
    )
    (i64.gt_s
     (get_local $2)
     (i64.const 0)
    )
   )
  )
  ;;@ builtins.ts:39:19
  (if
   (i32.eqz
    ;;@ builtins.ts:39:26
    (i64.eq
     (get_global $builtins/I)
     ;;@ builtins.ts:39:31
     (i64.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 39)
     (i32.const 19)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:40:0
  (set_global $builtins/I
   ;;@ builtins.ts:40:4
   (select
    (tee_local $2
     ;;@ builtins.ts:40:13
     (i64.const 1)
    )
    (tee_local $3
     ;;@ builtins.ts:40:16
     (i64.const 2)
    )
    (i64.gt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  ;;@ builtins.ts:40:20
  (if
   (i32.eqz
    ;;@ builtins.ts:40:27
    (i64.eq
     (get_global $builtins/I)
     ;;@ builtins.ts:40:32
     (i64.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 40)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:41:0
  (set_global $builtins/I
   ;;@ builtins.ts:41:4
   (select
    (tee_local $2
     ;;@ builtins.ts:41:13
     (i64.const 1)
    )
    (tee_local $3
     ;;@ builtins.ts:41:16
     (i64.const 2)
    )
    (i64.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  ;;@ builtins.ts:41:20
  (if
   (i32.eqz
    ;;@ builtins.ts:41:27
    (i32.eq
     (get_global $builtins/i)
     ;;@ builtins.ts:41:32
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 41)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:47:0
  (drop
   ;;@ builtins.ts:47:5
   (f32.const nan:0x400000)
  )
  ;;@ builtins.ts:48:0
  (drop
   ;;@ builtins.ts:48:5
   (f32.const inf)
  )
  ;;@ builtins.ts:49:0
  (drop
   (f32.abs
    ;;@ builtins.ts:49:9
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:50:0
  (drop
   (f32.ceil
    ;;@ builtins.ts:50:10
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:51:0
  (drop
   (f32.copysign
    ;;@ builtins.ts:51:14
    (f32.const 1.25)
    ;;@ builtins.ts:51:20
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:52:0
  (drop
   (f32.floor
    ;;@ builtins.ts:52:11
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:53:0
  (drop
   (f32.max
    ;;@ builtins.ts:53:9
    (f32.const 1.25)
    ;;@ builtins.ts:53:15
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:54:0
  (drop
   (f32.min
    ;;@ builtins.ts:54:9
    (f32.const 1.25)
    ;;@ builtins.ts:54:15
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:55:0
  (drop
   (f32.nearest
    ;;@ builtins.ts:55:13
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:56:0
  (drop
   (f32.sqrt
    ;;@ builtins.ts:56:10
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:57:0
  (drop
   (f32.trunc
    ;;@ builtins.ts:57:11
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:58:0
  (drop
   (f32.ne
    (tee_local $4
     ;;@ builtins.ts:58:11
     (f32.const 1.25)
    )
    (get_local $4)
   )
  )
  ;;@ builtins.ts:59:0
  (drop
   (select
    (f32.ne
     (f32.abs
      (tee_local $4
       ;;@ builtins.ts:59:14
       (f32.const 1.25)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $4)
     (get_local $4)
    )
   )
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
   ;;@ builtins.ts:63:4
   (f32.abs
    ;;@ builtins.ts:63:13
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:64:0
  (set_global $builtins/f
   ;;@ builtins.ts:64:4
   (f32.ceil
    ;;@ builtins.ts:64:14
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:65:0
  (set_global $builtins/f
   ;;@ builtins.ts:65:4
   (f32.copysign
    ;;@ builtins.ts:65:18
    (f32.const 1.25)
    ;;@ builtins.ts:65:24
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:66:0
  (set_global $builtins/f
   ;;@ builtins.ts:66:4
   (f32.floor
    ;;@ builtins.ts:66:15
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:67:0
  (set_global $builtins/f
   ;;@ builtins.ts:67:4
   (f32.max
    ;;@ builtins.ts:67:13
    (f32.const 1.25)
    ;;@ builtins.ts:67:19
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:68:0
  (set_global $builtins/f
   ;;@ builtins.ts:68:4
   (f32.min
    ;;@ builtins.ts:68:13
    (f32.const 1.25)
    ;;@ builtins.ts:68:19
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:69:0
  (set_global $builtins/f
   ;;@ builtins.ts:69:4
   (f32.nearest
    ;;@ builtins.ts:69:17
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:70:0
  (set_global $builtins/f
   ;;@ builtins.ts:70:4
   (f32.sqrt
    ;;@ builtins.ts:70:14
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:71:0
  (set_global $builtins/f
   ;;@ builtins.ts:71:4
   (f32.trunc
    ;;@ builtins.ts:71:15
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:72:0
  (set_global $builtins/b
   ;;@ builtins.ts:72:4
   (f32.ne
    (tee_local $4
     ;;@ builtins.ts:72:15
     (f32.const 1.25)
    )
    (get_local $4)
   )
  )
  ;;@ builtins.ts:73:0
  (set_global $builtins/b
   ;;@ builtins.ts:73:4
   (select
    (f32.ne
     (f32.abs
      (tee_local $4
       ;;@ builtins.ts:73:18
       (f32.const 1.25)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $4)
     (get_local $4)
    )
   )
  )
  ;;@ builtins.ts:77:0
  (drop
   ;;@ builtins.ts:77:5
   (f64.const nan:0x8000000000000)
  )
  ;;@ builtins.ts:78:0
  (drop
   ;;@ builtins.ts:78:5
   (f64.const inf)
  )
  ;;@ builtins.ts:79:0
  (drop
   (f64.const nan:0x8000000000000)
  )
  ;;@ builtins.ts:80:0
  (drop
   (f64.const inf)
  )
  ;;@ builtins.ts:81:0
  (drop
   (f64.abs
    ;;@ builtins.ts:81:9
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:82:0
  (drop
   (f64.ceil
    ;;@ builtins.ts:82:10
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:83:0
  (drop
   (f64.copysign
    ;;@ builtins.ts:83:14
    (f64.const 1.25)
    ;;@ builtins.ts:83:20
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:84:0
  (drop
   (f64.floor
    ;;@ builtins.ts:84:11
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:85:0
  (drop
   (f64.max
    ;;@ builtins.ts:85:9
    (f64.const 1.25)
    ;;@ builtins.ts:85:15
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:86:0
  (drop
   (f64.min
    ;;@ builtins.ts:86:9
    (f64.const 1.25)
    ;;@ builtins.ts:86:15
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:87:0
  (drop
   (f64.nearest
    ;;@ builtins.ts:87:13
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:88:0
  (drop
   (f64.sqrt
    ;;@ builtins.ts:88:10
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:89:0
  (drop
   (f64.trunc
    ;;@ builtins.ts:89:11
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:90:0
  (drop
   (f64.ne
    (tee_local $5
     ;;@ builtins.ts:90:11
     (f64.const 1.25)
    )
    (get_local $5)
   )
  )
  ;;@ builtins.ts:91:0
  (drop
   (select
    (f64.ne
     (f64.abs
      (tee_local $5
       ;;@ builtins.ts:91:14
       (f64.const 1.25)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $5)
     (get_local $5)
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
   ;;@ builtins.ts:95:4
   (f64.abs
    ;;@ builtins.ts:95:13
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:96:0
  (set_global $builtins/F
   ;;@ builtins.ts:96:4
   (f64.ceil
    ;;@ builtins.ts:96:14
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:97:0
  (set_global $builtins/F
   ;;@ builtins.ts:97:4
   (f64.copysign
    ;;@ builtins.ts:97:18
    (f64.const 1.25)
    ;;@ builtins.ts:97:24
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:98:0
  (set_global $builtins/F
   ;;@ builtins.ts:98:4
   (f64.floor
    ;;@ builtins.ts:98:15
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:99:0
  (set_global $builtins/F
   ;;@ builtins.ts:99:4
   (f64.max
    ;;@ builtins.ts:99:13
    (f64.const 1.25)
    ;;@ builtins.ts:99:19
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:100:0
  (set_global $builtins/F
   ;;@ builtins.ts:100:4
   (f64.min
    ;;@ builtins.ts:100:13
    (f64.const 1.25)
    ;;@ builtins.ts:100:19
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:101:0
  (set_global $builtins/F
   ;;@ builtins.ts:101:4
   (f64.nearest
    ;;@ builtins.ts:101:17
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:102:0
  (set_global $builtins/F
   ;;@ builtins.ts:102:4
   (f64.sqrt
    ;;@ builtins.ts:102:14
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:103:0
  (set_global $builtins/F
   ;;@ builtins.ts:103:4
   (f64.trunc
    ;;@ builtins.ts:103:15
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:104:0
  (set_global $builtins/b
   ;;@ builtins.ts:104:4
   (f64.ne
    (tee_local $5
     ;;@ builtins.ts:104:15
     (f64.const 1.25)
    )
    (get_local $5)
   )
  )
  ;;@ builtins.ts:105:0
  (set_global $builtins/b
   ;;@ builtins.ts:105:4
   (select
    (f64.ne
     (f64.abs
      (tee_local $5
       ;;@ builtins.ts:105:18
       (f64.const 1.25)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $5)
     (get_local $5)
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
   (i32.load offset=8
    ;;@ builtins.ts:119:14
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:119:34
  (i32.store offset=8
   ;;@ builtins.ts:119:45
   (i32.const 0)
   ;;@ builtins.ts:119:48
   (get_global $builtins/i)
  )
  ;;@ builtins.ts:120:0
  (i32.store offset=8
   ;;@ builtins.ts:120:11
   (i32.const 0)
   ;;@ builtins.ts:120:14
   (i32.load offset=8
    ;;@ builtins.ts:120:24
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:121:0
  (set_global $builtins/I
   ;;@ builtins.ts:121:4
   (i64.load offset=8
    ;;@ builtins.ts:121:14
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:121:34
  (i64.store offset=8
   ;;@ builtins.ts:121:45
   (i32.const 0)
   ;;@ builtins.ts:121:48
   (get_global $builtins/I)
  )
  ;;@ builtins.ts:122:0
  (i64.store offset=8
   ;;@ builtins.ts:122:11
   (i32.const 0)
   ;;@ builtins.ts:122:14
   (i64.load offset=8
    ;;@ builtins.ts:122:24
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:123:0
  (set_global $builtins/f
   ;;@ builtins.ts:123:4
   (f32.load offset=8
    ;;@ builtins.ts:123:14
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:123:34
  (f32.store offset=8
   ;;@ builtins.ts:123:45
   (i32.const 0)
   ;;@ builtins.ts:123:48
   (get_global $builtins/f)
  )
  ;;@ builtins.ts:124:0
  (f32.store offset=8
   ;;@ builtins.ts:124:11
   (i32.const 0)
   ;;@ builtins.ts:124:14
   (f32.load offset=8
    ;;@ builtins.ts:124:24
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:125:0
  (set_global $builtins/F
   ;;@ builtins.ts:125:4
   (f64.load offset=8
    ;;@ builtins.ts:125:14
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:125:34
  (f64.store offset=8
   ;;@ builtins.ts:125:45
   (i32.const 0)
   ;;@ builtins.ts:125:48
   (get_global $builtins/F)
  )
  ;;@ builtins.ts:126:0
  (f64.store offset=8
   ;;@ builtins.ts:126:11
   (i32.const 0)
   ;;@ builtins.ts:126:14
   (f64.load offset=8
    ;;@ builtins.ts:126:24
    (i32.const 0)
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
   (i64.extend_s/i32
    ;;@ builtins.ts:167:14
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:171:0
  (drop
   (i32.reinterpret/f32
    ;;@ builtins.ts:171:17
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:172:0
  (drop
   (f32.reinterpret/i32
    ;;@ builtins.ts:172:17
    (i32.const 25)
   )
  )
  ;;@ builtins.ts:173:0
  (drop
   (i64.reinterpret/f64
    ;;@ builtins.ts:173:17
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:174:0
  (drop
   (f64.reinterpret/i64
    ;;@ builtins.ts:174:17
    (i64.const 25)
   )
  )
  ;;@ builtins.ts:176:0
  (set_global $builtins/i
   ;;@ builtins.ts:176:4
   (i32.reinterpret/f32
    ;;@ builtins.ts:176:21
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:177:0
  (set_global $builtins/f
   ;;@ builtins.ts:177:4
   (f32.reinterpret/i32
    ;;@ builtins.ts:177:21
    (i32.const 25)
   )
  )
  ;;@ builtins.ts:178:0
  (set_global $builtins/I
   ;;@ builtins.ts:178:4
   (i64.reinterpret/f64
    ;;@ builtins.ts:178:21
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:179:0
  (set_global $builtins/F
   ;;@ builtins.ts:179:4
   (f64.reinterpret/i64
    ;;@ builtins.ts:179:21
    (i64.const 25)
   )
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
  ;;@ builtins.ts:193:0
  (drop
   (select
    ;;@ builtins.ts:193:12
    (i32.const 10)
    ;;@ builtins.ts:193:16
    (i32.const 20)
    ;;@ builtins.ts:193:20
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:194:0
  (drop
   (select
    ;;@ builtins.ts:194:12
    (i64.const 100)
    ;;@ builtins.ts:194:17
    (i64.const 200)
    ;;@ builtins.ts:194:22
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:195:0
  (drop
   (select
    ;;@ builtins.ts:195:12
    (f32.const 1.25)
    ;;@ builtins.ts:195:18
    (f32.const 2.5)
    ;;@ builtins.ts:195:23
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:196:0
  (drop
   (select
    ;;@ builtins.ts:196:12
    (f64.const 12.5)
    ;;@ builtins.ts:196:18
    (f64.const 25)
    ;;@ builtins.ts:196:24
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:198:0
  (set_global $builtins/i
   ;;@ builtins.ts:198:4
   (select
    ;;@ builtins.ts:198:16
    (i32.const 10)
    ;;@ builtins.ts:198:20
    (i32.const 20)
    ;;@ builtins.ts:198:24
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:199:0
  (set_global $builtins/I
   ;;@ builtins.ts:199:4
   (select
    ;;@ builtins.ts:199:16
    (i64.const 100)
    ;;@ builtins.ts:199:21
    (i64.const 200)
    ;;@ builtins.ts:199:26
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:200:0
  (set_global $builtins/f
   ;;@ builtins.ts:200:4
   (select
    ;;@ builtins.ts:200:16
    (f32.const 1.25)
    ;;@ builtins.ts:200:22
    (f32.const 2.5)
    ;;@ builtins.ts:200:27
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:201:0
  (set_global $builtins/F
   ;;@ builtins.ts:201:4
   (select
    ;;@ builtins.ts:201:16
    (f64.const 12.5)
    ;;@ builtins.ts:201:22
    (f64.const 25)
    ;;@ builtins.ts:201:28
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:203:0
  (if
   ;;@ builtins.ts:203:4
   (i32.const 0)
   ;;@ builtins.ts:203:7
   (unreachable)
  )
  ;;@ builtins.ts:207:0
  (drop
   (i32.const 1)
  )
  ;;@ builtins.ts:208:0
  (drop
   (i32.const 2)
  )
  ;;@ builtins.ts:209:0
  (drop
   (i32.const 4)
  )
  ;;@ builtins.ts:210:0
  (drop
   (i32.const 8)
  )
  ;;@ builtins.ts:211:0
  (drop
   (i32.const 4)
  )
  ;;@ builtins.ts:212:0
  (drop
   (i32.const 1)
  )
  ;;@ builtins.ts:213:0
  (drop
   (i32.const 1)
  )
  ;;@ builtins.ts:214:0
  (drop
   (i32.const 2)
  )
  ;;@ builtins.ts:215:0
  (drop
   (i32.const 4)
  )
  ;;@ builtins.ts:216:0
  (drop
   (i32.const 8)
  )
  ;;@ builtins.ts:217:0
  (drop
   (i32.const 4)
  )
  ;;@ builtins.ts:218:0
  (drop
   (i32.const 4)
  )
  ;;@ builtins.ts:219:0
  (drop
   (i32.const 8)
  )
  ;;@ builtins.ts:221:0
  (if
   (i32.eqz
    ;;@ builtins.ts:221:7
    (f64.ne
     (f64.const nan:0x8000000000000)
     ;;@ builtins.ts:221:14
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 221)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:222:0
  (if
   (i32.eqz
    ;;@ builtins.ts:222:7
    (f32.ne
     (tee_local $4
      ;;@ builtins.ts:222:18
      (f32.const nan:0x400000)
     )
     (get_local $4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 222)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:223:0
  (if
   (i32.eqz
    ;;@ builtins.ts:223:7
    (f64.ne
     (tee_local $5
      ;;@ builtins.ts:223:18
      (f64.const nan:0x8000000000000)
     )
     (get_local $5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 223)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:224:0
  (if
   (i32.eqz
    ;;@ builtins.ts:224:7
    (i32.eqz
     ;;@ builtins.ts:224:8
     (select
      (f32.ne
       (f32.abs
        (tee_local $4
         ;;@ builtins.ts:224:22
         (f32.const nan:0x400000)
        )
       )
       (f32.const inf)
      )
      (i32.const 0)
      (f32.eq
       (get_local $4)
       (get_local $4)
      )
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 224)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:225:0
  (if
   (i32.eqz
    ;;@ builtins.ts:225:7
    (i32.eqz
     ;;@ builtins.ts:225:8
     (select
      (f32.ne
       (f32.abs
        (tee_local $4
         ;;@ builtins.ts:225:22
         (f32.const inf)
        )
       )
       (f32.const inf)
      )
      (i32.const 0)
      (f32.eq
       (get_local $4)
       (get_local $4)
      )
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 225)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:226:0
  (if
   (i32.eqz
    ;;@ builtins.ts:226:7
    (i32.eqz
     ;;@ builtins.ts:226:8
     (select
      (f64.ne
       (f64.abs
        (tee_local $5
         ;;@ builtins.ts:226:22
         (f64.const nan:0x8000000000000)
        )
       )
       (f64.const inf)
      )
      (i32.const 0)
      (f64.eq
       (get_local $5)
       (get_local $5)
      )
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 226)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:227:0
  (if
   (i32.eqz
    ;;@ builtins.ts:227:7
    (i32.eqz
     ;;@ builtins.ts:227:8
     (select
      (f64.ne
       (f64.abs
        (tee_local $5
         ;;@ builtins.ts:227:22
         (f64.const inf)
        )
       )
       (f64.const inf)
      )
      (i32.const 0)
      (f64.eq
       (get_local $5)
       (get_local $5)
      )
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 227)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:228:0
  (if
   (i32.eqz
    ;;@ builtins.ts:228:7
    (select
     (f32.ne
      (f32.abs
       (tee_local $4
        ;;@ builtins.ts:228:21
        (f32.const 0)
       )
      )
      (f32.const inf)
     )
     (i32.const 0)
     (f32.eq
      (get_local $4)
      (get_local $4)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 228)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:229:0
  (if
   (i32.eqz
    ;;@ builtins.ts:229:7
    (select
     (f64.ne
      (f64.abs
       (tee_local $5
        ;;@ builtins.ts:229:21
        (f64.const 0)
       )
      )
      (f64.const inf)
     )
     (i32.const 0)
     (f64.eq
      (get_local $5)
      (get_local $5)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 229)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:242:0
  (if
   (i32.eqz
    ;;@ builtins.ts:242:7
    (i32.eq
     (i32.const -128)
     ;;@ builtins.ts:242:23
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
     (i32.const 4)
     (i32.const 242)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:243:0
  (if
   (i32.eqz
    ;;@ builtins.ts:243:7
    (i32.eq
     (i32.const 127)
     ;;@ builtins.ts:243:23
     (i32.const 127)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 243)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:244:0
  (if
   (i32.eqz
    ;;@ builtins.ts:244:7
    (i32.eq
     (i32.const -32768)
     ;;@ builtins.ts:244:24
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
     (i32.const 4)
     (i32.const 244)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:245:0
  (if
   (i32.eqz
    ;;@ builtins.ts:245:7
    (i32.eq
     (i32.const 32767)
     ;;@ builtins.ts:245:24
     (i32.const 32767)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 245)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:246:0
  (if
   (i32.eqz
    ;;@ builtins.ts:246:7
    (i32.eq
     (i32.const -2147483648)
     ;;@ builtins.ts:246:24
     (i32.wrap/i64
      (i64.const 2147483648)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 246)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:247:0
  (if
   (i32.eqz
    ;;@ builtins.ts:247:7
    (i32.eq
     (i32.const 2147483647)
     ;;@ builtins.ts:247:24
     (i32.const 2147483647)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 247)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:248:0
  (if
   (i32.eqz
    ;;@ builtins.ts:248:7
    (i64.eq
     (i64.const -9223372036854775808)
     ;;@ builtins.ts:248:24
     (i64.const -9223372036854775808)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 248)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:249:0
  (if
   (i32.eqz
    ;;@ builtins.ts:249:7
    (i64.eq
     (i64.const 9223372036854775807)
     ;;@ builtins.ts:249:24
     (i64.const 9223372036854775807)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 249)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:251:0
  (if
   (i32.eqz
    ;;@ builtins.ts:251:7
    (i32.eq
     (i32.const 0)
     ;;@ builtins.ts:251:23
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 251)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:252:0
  (if
   (i32.eqz
    ;;@ builtins.ts:252:7
    (i32.eq
     (i32.const 255)
     ;;@ builtins.ts:252:23
     (i32.const 255)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 252)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:253:0
  (if
   (i32.eqz
    ;;@ builtins.ts:253:7
    (i32.eq
     (i32.const 0)
     ;;@ builtins.ts:253:24
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 253)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:254:0
  (if
   (i32.eqz
    ;;@ builtins.ts:254:7
    (i32.eq
     (i32.const 65535)
     ;;@ builtins.ts:254:24
     (i32.const 65535)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 254)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:255:0
  (if
   (i32.eqz
    ;;@ builtins.ts:255:7
    (i32.eq
     (i32.const 0)
     ;;@ builtins.ts:255:24
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 255)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:256:0
  (if
   (i32.eqz
    ;;@ builtins.ts:256:7
    (i32.eq
     (i32.const -1)
     ;;@ builtins.ts:256:24
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 256)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:257:0
  (if
   (i32.eqz
    ;;@ builtins.ts:257:7
    (i64.eq
     (i64.const 0)
     ;;@ builtins.ts:257:24
     (i64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 257)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:258:0
  (if
   (i32.eqz
    ;;@ builtins.ts:258:7
    (i64.eq
     (i64.const -1)
     ;;@ builtins.ts:258:24
     (i64.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 258)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:259:0
  (if
   (i32.eqz
    ;;@ builtins.ts:259:7
    (i32.eq
     (i32.const 0)
     ;;@ builtins.ts:259:25
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 259)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:259:29
  (if
   (i32.eqz
    ;;@ builtins.ts:259:36
    (i32.eq
     (i32.const 0)
     ;;@ builtins.ts:259:54
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 259)
     (i32.const 29)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:260:0
  (if
   (i32.eqz
    ;;@ builtins.ts:260:7
    (i32.eq
     (i32.const 1)
     ;;@ builtins.ts:260:25
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 260)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:260:29
  (if
   (i32.eqz
    ;;@ builtins.ts:260:36
    (i32.eq
     (i32.const 1)
     ;;@ builtins.ts:260:54
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 260)
     (i32.const 29)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:262:0
  (if
   (i32.eqz
    ;;@ builtins.ts:262:7
    (f32.eq
     (f32.const -3402823466385288598117041e14)
     ;;@ builtins.ts:262:24
     (f32.const -3402823466385288598117041e14)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 262)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:263:0
  (if
   (i32.eqz
    ;;@ builtins.ts:263:7
    (f32.eq
     (f32.const 3402823466385288598117041e14)
     ;;@ builtins.ts:263:24
     (f32.const 3402823466385288598117041e14)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 263)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:264:0
  (if
   (i32.eqz
    ;;@ builtins.ts:264:7
    (f32.eq
     (f32.const -16777215)
     ;;@ builtins.ts:264:31
     (f32.const -16777215)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 264)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:265:0
  (if
   (i32.eqz
    ;;@ builtins.ts:265:7
    (f32.eq
     (f32.const 16777215)
     ;;@ builtins.ts:265:31
     (f32.const 16777215)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 265)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:266:0
  (if
   (i32.eqz
    ;;@ builtins.ts:266:7
    (f32.eq
     (f32.const 1.1920928955078125e-07)
     ;;@ builtins.ts:266:22
     (f32.const 1.1920928955078125e-07)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 266)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:267:0
  (if
   (i32.eqz
    ;;@ builtins.ts:267:7
    (f64.eq
     (f64.const -1797693134862315708145274e284)
     ;;@ builtins.ts:267:24
     (f64.const -1797693134862315708145274e284)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:268:0
  (if
   (i32.eqz
    ;;@ builtins.ts:268:7
    (f64.eq
     (f64.const 1797693134862315708145274e284)
     ;;@ builtins.ts:268:24
     (f64.const 1797693134862315708145274e284)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 268)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:269:0
  (if
   (i32.eqz
    ;;@ builtins.ts:269:7
    (f64.eq
     (f64.const -9007199254740991)
     ;;@ builtins.ts:269:31
     (f64.const -9007199254740991)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 269)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:270:0
  (if
   (i32.eqz
    ;;@ builtins.ts:270:7
    (f64.eq
     (f64.const 9007199254740991)
     ;;@ builtins.ts:270:31
     (f64.const 9007199254740991)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 270)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:271:0
  (if
   (i32.eqz
    ;;@ builtins.ts:271:7
    (f64.eq
     (f64.const 2.220446049250313e-16)
     ;;@ builtins.ts:271:22
     (f64.const 2.220446049250313e-16)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 271)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
