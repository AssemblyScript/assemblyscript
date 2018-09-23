(module
 (type $v (func))
 (import "env" "memory" (memory $0 (shared 256 256)))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "test" (func $assembly/index/test))
 (func $assembly/index/test (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  ;;@ assembly/index.ts:4:2
  (set_local $0
   ;;@ assembly/index.ts:4:15
   (i32.const 0)
  )
  ;;@ assembly/index.ts:5:2
  (set_local $1
   ;;@ assembly/index.ts:5:15
   (i32.const 0)
  )
  ;;@ assembly/index.ts:6:2
  (set_local $2
   ;;@ assembly/index.ts:6:15
   (i64.const 0)
  )
  ;;@ assembly/index.ts:7:2
  (set_local $3
   ;;@ assembly/index.ts:7:15
   (i64.const 0)
  )
  ;;@ assembly/index.ts:10:9
  (i32.atomic.store8
   ;;@ assembly/index.ts:10:19
   (i32.const 120)
   ;;@ assembly/index.ts:10:24
   (i32.const 8)
  )
  ;;@ assembly/index.ts:11:9
  (i32.atomic.store16
   ;;@ assembly/index.ts:11:20
   (i32.const 121)
   ;;@ assembly/index.ts:11:25
   (i32.const 16)
  )
  ;;@ assembly/index.ts:12:9
  (i32.atomic.store
   ;;@ assembly/index.ts:12:20
   (i32.const 123)
   ;;@ assembly/index.ts:12:25
   (i32.const 32)
  )
  ;;@ assembly/index.ts:14:9
  (i64.atomic.store8
   ;;@ assembly/index.ts:14:19
   (i32.const 120)
   ;;@ assembly/index.ts:14:24
   (i64.const 8)
  )
  ;;@ assembly/index.ts:15:9
  (i64.atomic.store16
   ;;@ assembly/index.ts:15:20
   (i32.const 121)
   ;;@ assembly/index.ts:15:25
   (i64.const 16)
  )
  ;;@ assembly/index.ts:16:9
  (i64.atomic.store32
   ;;@ assembly/index.ts:16:20
   (i32.const 123)
   ;;@ assembly/index.ts:16:25
   (i64.const 32)
  )
  ;;@ assembly/index.ts:17:9
  (i64.atomic.store
   ;;@ assembly/index.ts:17:20
   (i32.const 127)
   ;;@ assembly/index.ts:17:25
   (i64.const 64)
  )
  ;;@ assembly/index.ts:20:2
  (set_local $0
   ;;@ assembly/index.ts:20:13
   (i32.atomic.load8_u
    ;;@ assembly/index.ts:20:22
    (i32.const 120)
   )
  )
  ;;@ assembly/index.ts:21:2
  (set_local $0
   ;;@ assembly/index.ts:21:13
   (i32.atomic.load16_u
    ;;@ assembly/index.ts:21:23
    (i32.const 121)
   )
  )
  ;;@ assembly/index.ts:22:2
  (set_local $0
   ;;@ assembly/index.ts:22:13
   (i32.atomic.load
    ;;@ assembly/index.ts:22:23
    (i32.const 123)
   )
  )
  ;;@ assembly/index.ts:23:2
  (set_local $1
   ;;@ assembly/index.ts:23:13
   (i32.atomic.load8_u
    ;;@ assembly/index.ts:23:22
    (i32.const 120)
   )
  )
  ;;@ assembly/index.ts:24:2
  (set_local $1
   ;;@ assembly/index.ts:24:13
   (i32.atomic.load16_u
    ;;@ assembly/index.ts:24:23
    (i32.const 121)
   )
  )
  ;;@ assembly/index.ts:25:2
  (set_local $1
   ;;@ assembly/index.ts:25:13
   (i32.atomic.load
    ;;@ assembly/index.ts:25:23
    (i32.const 123)
   )
  )
  ;;@ assembly/index.ts:27:2
  (set_local $2
   ;;@ assembly/index.ts:27:13
   (i64.atomic.load8_u
    ;;@ assembly/index.ts:27:22
    (i32.const 120)
   )
  )
  ;;@ assembly/index.ts:28:2
  (set_local $2
   ;;@ assembly/index.ts:28:13
   (i64.atomic.load16_u
    ;;@ assembly/index.ts:28:23
    (i32.const 121)
   )
  )
  ;;@ assembly/index.ts:29:2
  (set_local $2
   ;;@ assembly/index.ts:29:13
   (i64.atomic.load32_u
    ;;@ assembly/index.ts:29:23
    (i32.const 123)
   )
  )
  ;;@ assembly/index.ts:30:2
  (set_local $2
   ;;@ assembly/index.ts:30:13
   (i64.atomic.load
    ;;@ assembly/index.ts:30:23
    (i32.const 127)
   )
  )
  ;;@ assembly/index.ts:31:2
  (set_local $3
   ;;@ assembly/index.ts:31:13
   (i64.atomic.load8_u
    ;;@ assembly/index.ts:31:22
    (i32.const 120)
   )
  )
  ;;@ assembly/index.ts:32:2
  (set_local $3
   ;;@ assembly/index.ts:32:13
   (i64.atomic.load16_u
    ;;@ assembly/index.ts:32:23
    (i32.const 121)
   )
  )
  ;;@ assembly/index.ts:33:2
  (set_local $3
   ;;@ assembly/index.ts:33:13
   (i64.atomic.load32_u
    ;;@ assembly/index.ts:33:23
    (i32.const 123)
   )
  )
  ;;@ assembly/index.ts:34:2
  (set_local $3
   ;;@ assembly/index.ts:34:13
   (i64.atomic.load
    ;;@ assembly/index.ts:34:23
    (i32.const 127)
   )
  )
  ;;@ assembly/index.ts:37:2
  (set_local $0
   ;;@ assembly/index.ts:37:13
   (i32.atomic.rmw8_u.add
    ;;@ assembly/index.ts:37:21
    (i32.const 120)
    ;;@ assembly/index.ts:37:26
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:38:2
  (set_local $0
   ;;@ assembly/index.ts:38:13
   (i32.atomic.rmw16_u.add
    ;;@ assembly/index.ts:38:22
    (i32.const 121)
    ;;@ assembly/index.ts:38:27
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:39:2
  (set_local $0
   ;;@ assembly/index.ts:39:13
   (i32.atomic.rmw.add
    ;;@ assembly/index.ts:39:22
    (i32.const 123)
    ;;@ assembly/index.ts:39:27
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:41:2
  (set_local $2
   ;;@ assembly/index.ts:41:13
   (i64.atomic.rmw8_u.add
    ;;@ assembly/index.ts:41:21
    (i32.const 120)
    ;;@ assembly/index.ts:41:26
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:42:2
  (set_local $2
   ;;@ assembly/index.ts:42:13
   (i64.atomic.rmw16_u.add
    ;;@ assembly/index.ts:42:22
    (i32.const 121)
    ;;@ assembly/index.ts:42:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:43:2
  (set_local $2
   ;;@ assembly/index.ts:43:13
   (i64.atomic.rmw32_u.add
    ;;@ assembly/index.ts:43:22
    (i32.const 123)
    ;;@ assembly/index.ts:43:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:44:2
  (set_local $2
   ;;@ assembly/index.ts:44:13
   (i64.atomic.rmw.add
    ;;@ assembly/index.ts:44:22
    (i32.const 127)
    ;;@ assembly/index.ts:44:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:47:9
  (drop
   (i32.atomic.rmw8_u.sub
    ;;@ assembly/index.ts:47:17
    (i32.const 120)
    ;;@ assembly/index.ts:47:22
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:48:9
  (drop
   (i32.atomic.rmw16_u.sub
    ;;@ assembly/index.ts:48:18
    (i32.const 121)
    ;;@ assembly/index.ts:48:23
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:49:9
  (drop
   (i32.atomic.rmw.sub
    ;;@ assembly/index.ts:49:18
    (i32.const 123)
    ;;@ assembly/index.ts:49:23
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:51:2
  (set_local $2
   ;;@ assembly/index.ts:51:13
   (i64.atomic.rmw8_u.sub
    ;;@ assembly/index.ts:51:21
    (i32.const 120)
    ;;@ assembly/index.ts:51:26
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:52:2
  (set_local $2
   ;;@ assembly/index.ts:52:13
   (i64.atomic.rmw16_u.sub
    ;;@ assembly/index.ts:52:22
    (i32.const 121)
    ;;@ assembly/index.ts:52:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:53:2
  (set_local $2
   ;;@ assembly/index.ts:53:13
   (i64.atomic.rmw32_u.sub
    ;;@ assembly/index.ts:53:22
    (i32.const 123)
    ;;@ assembly/index.ts:53:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:54:2
  (set_local $2
   ;;@ assembly/index.ts:54:13
   (i64.atomic.rmw.sub
    ;;@ assembly/index.ts:54:22
    (i32.const 127)
    ;;@ assembly/index.ts:54:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:57:9
  (drop
   (i32.atomic.rmw8_u.and
    ;;@ assembly/index.ts:57:17
    (i32.const 120)
    ;;@ assembly/index.ts:57:22
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:58:9
  (drop
   (i32.atomic.rmw16_u.and
    ;;@ assembly/index.ts:58:18
    (i32.const 121)
    ;;@ assembly/index.ts:58:23
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:59:9
  (drop
   (i32.atomic.rmw.and
    ;;@ assembly/index.ts:59:18
    (i32.const 123)
    ;;@ assembly/index.ts:59:23
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:61:2
  (set_local $2
   ;;@ assembly/index.ts:61:13
   (i64.atomic.rmw8_u.and
    ;;@ assembly/index.ts:61:21
    (i32.const 120)
    ;;@ assembly/index.ts:61:26
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:62:2
  (set_local $2
   ;;@ assembly/index.ts:62:13
   (i64.atomic.rmw16_u.and
    ;;@ assembly/index.ts:62:22
    (i32.const 121)
    ;;@ assembly/index.ts:62:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:63:2
  (set_local $2
   ;;@ assembly/index.ts:63:13
   (i64.atomic.rmw32_u.and
    ;;@ assembly/index.ts:63:22
    (i32.const 123)
    ;;@ assembly/index.ts:63:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:64:2
  (set_local $2
   ;;@ assembly/index.ts:64:13
   (i64.atomic.rmw.and
    ;;@ assembly/index.ts:64:22
    (i32.const 127)
    ;;@ assembly/index.ts:64:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:67:9
  (drop
   (i32.atomic.rmw8_u.or
    ;;@ assembly/index.ts:67:16
    (i32.const 120)
    ;;@ assembly/index.ts:67:21
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:68:9
  (drop
   (i32.atomic.rmw16_u.or
    ;;@ assembly/index.ts:68:17
    (i32.const 121)
    ;;@ assembly/index.ts:68:22
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:69:9
  (drop
   (i32.atomic.rmw.or
    ;;@ assembly/index.ts:69:17
    (i32.const 123)
    ;;@ assembly/index.ts:69:22
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:71:2
  (set_local $2
   ;;@ assembly/index.ts:71:13
   (i64.atomic.rmw8_u.or
    ;;@ assembly/index.ts:71:20
    (i32.const 120)
    ;;@ assembly/index.ts:71:25
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:72:2
  (set_local $2
   ;;@ assembly/index.ts:72:13
   (i64.atomic.rmw16_u.or
    ;;@ assembly/index.ts:72:21
    (i32.const 121)
    ;;@ assembly/index.ts:72:26
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:73:2
  (set_local $2
   ;;@ assembly/index.ts:73:13
   (i64.atomic.rmw32_u.or
    ;;@ assembly/index.ts:73:21
    (i32.const 123)
    ;;@ assembly/index.ts:73:26
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:74:2
  (set_local $2
   ;;@ assembly/index.ts:74:13
   (i64.atomic.rmw.or
    ;;@ assembly/index.ts:74:21
    (i32.const 127)
    ;;@ assembly/index.ts:74:26
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:77:9
  (drop
   (i32.atomic.rmw8_u.xor
    ;;@ assembly/index.ts:77:17
    (i32.const 120)
    ;;@ assembly/index.ts:77:22
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:78:9
  (drop
   (i32.atomic.rmw16_u.xor
    ;;@ assembly/index.ts:78:18
    (i32.const 121)
    ;;@ assembly/index.ts:78:23
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:79:9
  (drop
   (i32.atomic.rmw.xor
    ;;@ assembly/index.ts:79:18
    (i32.const 123)
    ;;@ assembly/index.ts:79:23
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:81:2
  (set_local $2
   ;;@ assembly/index.ts:81:13
   (i64.atomic.rmw8_u.xor
    ;;@ assembly/index.ts:81:21
    (i32.const 120)
    ;;@ assembly/index.ts:81:26
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:82:2
  (set_local $2
   ;;@ assembly/index.ts:82:13
   (i64.atomic.rmw16_u.xor
    ;;@ assembly/index.ts:82:22
    (i32.const 121)
    ;;@ assembly/index.ts:82:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:83:2
  (set_local $2
   ;;@ assembly/index.ts:83:13
   (i64.atomic.rmw32_u.xor
    ;;@ assembly/index.ts:83:22
    (i32.const 123)
    ;;@ assembly/index.ts:83:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:84:2
  (set_local $2
   ;;@ assembly/index.ts:84:13
   (i64.atomic.rmw.xor
    ;;@ assembly/index.ts:84:22
    (i32.const 127)
    ;;@ assembly/index.ts:84:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:87:9
  (drop
   (i32.atomic.rmw8_u.xchg
    ;;@ assembly/index.ts:87:18
    (i32.const 120)
    ;;@ assembly/index.ts:87:23
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:88:9
  (drop
   (i32.atomic.rmw16_u.xchg
    ;;@ assembly/index.ts:88:19
    (i32.const 121)
    ;;@ assembly/index.ts:88:24
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:89:9
  (drop
   (i32.atomic.rmw.xchg
    ;;@ assembly/index.ts:89:19
    (i32.const 123)
    ;;@ assembly/index.ts:89:24
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:91:2
  (set_local $2
   ;;@ assembly/index.ts:91:13
   (i64.atomic.rmw8_u.xchg
    ;;@ assembly/index.ts:91:22
    (i32.const 120)
    ;;@ assembly/index.ts:91:27
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:92:2
  (set_local $2
   ;;@ assembly/index.ts:92:13
   (i64.atomic.rmw16_u.xchg
    ;;@ assembly/index.ts:92:23
    (i32.const 121)
    ;;@ assembly/index.ts:92:28
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:93:2
  (set_local $2
   ;;@ assembly/index.ts:93:13
   (i64.atomic.rmw32_u.xchg
    ;;@ assembly/index.ts:93:23
    (i32.const 123)
    ;;@ assembly/index.ts:93:28
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:94:2
  (set_local $2
   ;;@ assembly/index.ts:94:13
   (i64.atomic.rmw.xchg
    ;;@ assembly/index.ts:94:23
    (i32.const 127)
    ;;@ assembly/index.ts:94:28
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:97:9
  (drop
   (i32.atomic.rmw8_u.cmpxchg
    ;;@ assembly/index.ts:97:21
    (i32.const 120)
    ;;@ assembly/index.ts:97:26
    (i32.const 1)
    ;;@ assembly/index.ts:97:29
    (i32.const 2)
   )
  )
  ;;@ assembly/index.ts:98:9
  (drop
   (i32.atomic.rmw16_u.cmpxchg
    ;;@ assembly/index.ts:98:22
    (i32.const 121)
    ;;@ assembly/index.ts:98:27
    (i32.const 1)
    ;;@ assembly/index.ts:98:30
    (i32.const 2)
   )
  )
  ;;@ assembly/index.ts:99:9
  (drop
   (i32.atomic.rmw.cmpxchg
    ;;@ assembly/index.ts:99:22
    (i32.const 123)
    ;;@ assembly/index.ts:99:27
    (i32.const 1)
    ;;@ assembly/index.ts:99:30
    (i32.const 2)
   )
  )
  ;;@ assembly/index.ts:101:2
  (set_local $2
   ;;@ assembly/index.ts:101:13
   (i64.atomic.rmw8_u.cmpxchg
    ;;@ assembly/index.ts:101:25
    (i32.const 120)
    ;;@ assembly/index.ts:101:30
    (i64.const 1)
    ;;@ assembly/index.ts:101:38
    (i64.const 2)
   )
  )
  ;;@ assembly/index.ts:102:2
  (set_local $2
   ;;@ assembly/index.ts:102:13
   (i64.atomic.rmw16_u.cmpxchg
    ;;@ assembly/index.ts:102:26
    (i32.const 121)
    ;;@ assembly/index.ts:102:31
    (i64.const 1)
    ;;@ assembly/index.ts:102:39
    (i64.const 2)
   )
  )
  ;;@ assembly/index.ts:103:2
  (set_local $2
   ;;@ assembly/index.ts:103:13
   (i64.atomic.rmw32_u.cmpxchg
    ;;@ assembly/index.ts:103:26
    (i32.const 123)
    ;;@ assembly/index.ts:103:31
    (i64.const 1)
    ;;@ assembly/index.ts:103:39
    (i64.const 2)
   )
  )
  ;;@ assembly/index.ts:104:2
  (set_local $2
   ;;@ assembly/index.ts:104:13
   (i64.atomic.rmw.cmpxchg
    ;;@ assembly/index.ts:104:26
    (i32.const 127)
    ;;@ assembly/index.ts:104:31
    (i64.const 1)
    ;;@ assembly/index.ts:104:39
    (i64.const 2)
   )
  )
 )
 (func $null (; 1 ;) (type $v)
 )
)
