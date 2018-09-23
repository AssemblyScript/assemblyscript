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
  ;;@ assembly/index.ts:37:9
  (drop
   (i32.atomic.rmw8_u.add
    ;;@ assembly/index.ts:37:17
    (i32.const 120)
    ;;@ assembly/index.ts:37:22
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:38:9
  (drop
   (i32.atomic.rmw16_u.add
    ;;@ assembly/index.ts:38:18
    (i32.const 121)
    ;;@ assembly/index.ts:38:23
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:39:9
  (drop
   (i32.atomic.rmw.add
    ;;@ assembly/index.ts:39:18
    (i32.const 123)
    ;;@ assembly/index.ts:39:23
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:41:9
  (drop
   (i64.atomic.rmw8_u.add
    ;;@ assembly/index.ts:41:17
    (i32.const 120)
    ;;@ assembly/index.ts:41:22
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:42:9
  (drop
   (i64.atomic.rmw16_u.add
    ;;@ assembly/index.ts:42:18
    (i32.const 121)
    ;;@ assembly/index.ts:42:23
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:43:9
  (drop
   (i64.atomic.rmw32_u.add
    ;;@ assembly/index.ts:43:18
    (i32.const 123)
    ;;@ assembly/index.ts:43:23
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:44:9
  (drop
   (i64.atomic.rmw.add
    ;;@ assembly/index.ts:44:18
    (i32.const 127)
    ;;@ assembly/index.ts:44:23
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
  ;;@ assembly/index.ts:51:9
  (drop
   (i64.atomic.rmw8_u.sub
    ;;@ assembly/index.ts:51:17
    (i32.const 120)
    ;;@ assembly/index.ts:51:22
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:52:9
  (drop
   (i64.atomic.rmw16_u.sub
    ;;@ assembly/index.ts:52:18
    (i32.const 121)
    ;;@ assembly/index.ts:52:23
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:53:9
  (drop
   (i64.atomic.rmw32_u.sub
    ;;@ assembly/index.ts:53:18
    (i32.const 123)
    ;;@ assembly/index.ts:53:23
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:54:9
  (drop
   (i64.atomic.rmw.sub
    ;;@ assembly/index.ts:54:18
    (i32.const 127)
    ;;@ assembly/index.ts:54:23
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
  ;;@ assembly/index.ts:61:9
  (drop
   (i64.atomic.rmw8_u.and
    ;;@ assembly/index.ts:61:17
    (i32.const 120)
    ;;@ assembly/index.ts:61:22
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:62:9
  (drop
   (i64.atomic.rmw16_u.and
    ;;@ assembly/index.ts:62:18
    (i32.const 121)
    ;;@ assembly/index.ts:62:23
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:63:9
  (drop
   (i64.atomic.rmw32_u.and
    ;;@ assembly/index.ts:63:18
    (i32.const 123)
    ;;@ assembly/index.ts:63:23
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:64:9
  (drop
   (i64.atomic.rmw.and
    ;;@ assembly/index.ts:64:18
    (i32.const 127)
    ;;@ assembly/index.ts:64:23
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
  ;;@ assembly/index.ts:71:9
  (drop
   (i64.atomic.rmw8_u.or
    ;;@ assembly/index.ts:71:16
    (i32.const 120)
    ;;@ assembly/index.ts:71:21
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:72:9
  (drop
   (i64.atomic.rmw16_u.or
    ;;@ assembly/index.ts:72:17
    (i32.const 121)
    ;;@ assembly/index.ts:72:22
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:73:9
  (drop
   (i64.atomic.rmw32_u.or
    ;;@ assembly/index.ts:73:17
    (i32.const 123)
    ;;@ assembly/index.ts:73:22
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:74:9
  (drop
   (i64.atomic.rmw.or
    ;;@ assembly/index.ts:74:17
    (i32.const 127)
    ;;@ assembly/index.ts:74:22
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
  ;;@ assembly/index.ts:81:9
  (drop
   (i64.atomic.rmw8_u.xor
    ;;@ assembly/index.ts:81:17
    (i32.const 120)
    ;;@ assembly/index.ts:81:22
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:82:9
  (drop
   (i64.atomic.rmw16_u.xor
    ;;@ assembly/index.ts:82:18
    (i32.const 121)
    ;;@ assembly/index.ts:82:23
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:83:9
  (drop
   (i64.atomic.rmw32_u.xor
    ;;@ assembly/index.ts:83:18
    (i32.const 123)
    ;;@ assembly/index.ts:83:23
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:84:9
  (drop
   (i64.atomic.rmw.xor
    ;;@ assembly/index.ts:84:18
    (i32.const 127)
    ;;@ assembly/index.ts:84:23
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
  ;;@ assembly/index.ts:91:9
  (drop
   (i64.atomic.rmw8_u.xchg
    ;;@ assembly/index.ts:91:18
    (i32.const 120)
    ;;@ assembly/index.ts:91:23
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:92:9
  (drop
   (i64.atomic.rmw16_u.xchg
    ;;@ assembly/index.ts:92:19
    (i32.const 121)
    ;;@ assembly/index.ts:92:24
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:93:9
  (drop
   (i64.atomic.rmw32_u.xchg
    ;;@ assembly/index.ts:93:19
    (i32.const 123)
    ;;@ assembly/index.ts:93:24
    (i64.const 1)
   )
  )
  ;;@ assembly/index.ts:94:9
  (drop
   (i64.atomic.rmw.xchg
    ;;@ assembly/index.ts:94:19
    (i32.const 127)
    ;;@ assembly/index.ts:94:24
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
  ;;@ assembly/index.ts:101:9
  (drop
   (i64.atomic.rmw8_u.cmpxchg
    ;;@ assembly/index.ts:101:21
    (i32.const 120)
    ;;@ assembly/index.ts:101:26
    (i64.const 1)
    ;;@ assembly/index.ts:101:34
    (i64.const 2)
   )
  )
  ;;@ assembly/index.ts:102:9
  (drop
   (i64.atomic.rmw16_u.cmpxchg
    ;;@ assembly/index.ts:102:22
    (i32.const 121)
    ;;@ assembly/index.ts:102:27
    (i64.const 1)
    ;;@ assembly/index.ts:102:35
    (i64.const 2)
   )
  )
  ;;@ assembly/index.ts:103:9
  (drop
   (i64.atomic.rmw32_u.cmpxchg
    ;;@ assembly/index.ts:103:22
    (i32.const 123)
    ;;@ assembly/index.ts:103:27
    (i64.const 1)
    ;;@ assembly/index.ts:103:35
    (i64.const 2)
   )
  )
  ;;@ assembly/index.ts:104:9
  (drop
   (i64.atomic.rmw.cmpxchg
    ;;@ assembly/index.ts:104:22
    (i32.const 127)
    ;;@ assembly/index.ts:104:27
    (i64.const 1)
    ;;@ assembly/index.ts:104:35
    (i64.const 2)
   )
  )
 )
 (func $null (; 1 ;) (type $v)
 )
)
