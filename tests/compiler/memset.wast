(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $memset/dest (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 8) "\t\00\00\00m\00e\00m\00s\00e\00t\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $memset/memset (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  ;;@ memset.ts:2:2
  (set_local $3
   ;;@ memset.ts:2:12
   (get_local $0)
  )
  ;;@ memset.ts:5:2
  (if
   ;;@ memset.ts:5:6
   (i32.eqz
    ;;@ memset.ts:5:7
    (get_local $2)
   )
   ;;@ memset.ts:6:11
   (return
    (get_local $3)
   )
  )
  ;;@ memset.ts:7:2
  (i32.store8
   ;;@ memset.ts:7:12
   (get_local $0)
   ;;@ memset.ts:7:18
   (get_local $1)
  )
  ;;@ memset.ts:8:2
  (i32.store8
   ;;@ memset.ts:8:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:8:19
     (get_local $2)
    )
    ;;@ memset.ts:8:23
    (i32.const 1)
   )
   ;;@ memset.ts:8:26
   (get_local $1)
  )
  ;;@ memset.ts:9:2
  (if
   ;;@ memset.ts:9:6
   (i32.le_u
    (get_local $2)
    ;;@ memset.ts:9:11
    (i32.const 2)
   )
   ;;@ memset.ts:10:11
   (return
    (get_local $3)
   )
  )
  ;;@ memset.ts:12:2
  (i32.store8
   ;;@ memset.ts:12:12
   (i32.add
    (get_local $0)
    ;;@ memset.ts:12:19
    (i32.const 1)
   )
   ;;@ memset.ts:12:22
   (get_local $1)
  )
  ;;@ memset.ts:13:2
  (i32.store8
   ;;@ memset.ts:13:12
   (i32.add
    (get_local $0)
    ;;@ memset.ts:13:19
    (i32.const 2)
   )
   ;;@ memset.ts:13:22
   (get_local $1)
  )
  ;;@ memset.ts:14:2
  (i32.store8
   ;;@ memset.ts:14:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:14:19
     (get_local $2)
    )
    ;;@ memset.ts:14:23
    (i32.const 2)
   )
   ;;@ memset.ts:14:26
   (get_local $1)
  )
  ;;@ memset.ts:15:2
  (i32.store8
   ;;@ memset.ts:15:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:15:19
     (get_local $2)
    )
    ;;@ memset.ts:15:23
    (i32.const 3)
   )
   ;;@ memset.ts:15:26
   (get_local $1)
  )
  ;;@ memset.ts:16:2
  (if
   ;;@ memset.ts:16:6
   (i32.le_u
    (get_local $2)
    ;;@ memset.ts:16:11
    (i32.const 6)
   )
   ;;@ memset.ts:17:11
   (return
    (get_local $3)
   )
  )
  ;;@ memset.ts:18:2
  (i32.store8
   ;;@ memset.ts:18:12
   (i32.add
    (get_local $0)
    ;;@ memset.ts:18:19
    (i32.const 3)
   )
   ;;@ memset.ts:18:22
   (get_local $1)
  )
  ;;@ memset.ts:19:2
  (i32.store8
   ;;@ memset.ts:19:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:19:19
     (get_local $2)
    )
    ;;@ memset.ts:19:23
    (i32.const 4)
   )
   ;;@ memset.ts:19:26
   (get_local $1)
  )
  ;;@ memset.ts:20:2
  (if
   ;;@ memset.ts:20:6
   (i32.le_u
    (get_local $2)
    ;;@ memset.ts:20:11
    (i32.const 8)
   )
   ;;@ memset.ts:21:11
   (return
    (get_local $3)
   )
  )
  ;;@ memset.ts:24:2
  (set_local $4
   ;;@ memset.ts:24:17
   (i32.and
    (i32.sub
     (i32.const 0)
     ;;@ memset.ts:24:18
     (get_local $0)
    )
    ;;@ memset.ts:24:25
    (i32.const 3)
   )
  )
  ;;@ memset.ts:25:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ memset.ts:25:10
    (get_local $4)
   )
  )
  ;;@ memset.ts:26:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ memset.ts:26:7
    (get_local $4)
   )
  )
  ;;@ memset.ts:27:2
  (set_local $2
   (i32.and
    (get_local $2)
    ;;@ memset.ts:27:7
    (i32.sub
     (i32.const 0)
     ;;@ memset.ts:27:8
     (i32.const 4)
    )
   )
  )
  ;;@ memset.ts:29:2
  (set_local $5
   ;;@ memset.ts:29:17
   (i32.mul
    (i32.div_u
     (i32.sub
      (i32.const 0)
      ;;@ memset.ts:29:18
      (i32.const 1)
     )
     ;;@ memset.ts:29:22
     (i32.const 255)
    )
    ;;@ memset.ts:29:28
    (get_local $1)
   )
  )
  ;;@ memset.ts:32:2
  (i32.store
   ;;@ memset.ts:32:13
   (get_local $0)
   ;;@ memset.ts:32:19
   (get_local $5)
  )
  ;;@ memset.ts:33:2
  (i32.store
   ;;@ memset.ts:33:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:33:20
     (get_local $2)
    )
    ;;@ memset.ts:33:24
    (i32.const 4)
   )
   ;;@ memset.ts:33:27
   (get_local $5)
  )
  ;;@ memset.ts:34:2
  (if
   ;;@ memset.ts:34:6
   (i32.le_u
    (get_local $2)
    ;;@ memset.ts:34:11
    (i32.const 8)
   )
   ;;@ memset.ts:35:11
   (return
    (get_local $3)
   )
  )
  ;;@ memset.ts:36:2
  (i32.store
   ;;@ memset.ts:36:13
   (i32.add
    (get_local $0)
    ;;@ memset.ts:36:20
    (i32.const 4)
   )
   ;;@ memset.ts:36:23
   (get_local $5)
  )
  ;;@ memset.ts:37:2
  (i32.store
   ;;@ memset.ts:37:13
   (i32.add
    (get_local $0)
    ;;@ memset.ts:37:20
    (i32.const 8)
   )
   ;;@ memset.ts:37:23
   (get_local $5)
  )
  ;;@ memset.ts:38:2
  (i32.store
   ;;@ memset.ts:38:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:38:20
     (get_local $2)
    )
    ;;@ memset.ts:38:24
    (i32.const 12)
   )
   ;;@ memset.ts:38:28
   (get_local $5)
  )
  ;;@ memset.ts:39:2
  (i32.store
   ;;@ memset.ts:39:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:39:20
     (get_local $2)
    )
    ;;@ memset.ts:39:24
    (i32.const 8)
   )
   ;;@ memset.ts:39:27
   (get_local $5)
  )
  ;;@ memset.ts:40:2
  (if
   ;;@ memset.ts:40:6
   (i32.le_u
    (get_local $2)
    ;;@ memset.ts:40:11
    (i32.const 24)
   )
   ;;@ memset.ts:41:11
   (return
    (get_local $3)
   )
  )
  ;;@ memset.ts:42:2
  (i32.store
   ;;@ memset.ts:42:13
   (i32.add
    (get_local $0)
    ;;@ memset.ts:42:20
    (i32.const 12)
   )
   ;;@ memset.ts:42:24
   (get_local $5)
  )
  ;;@ memset.ts:43:2
  (i32.store
   ;;@ memset.ts:43:13
   (i32.add
    (get_local $0)
    ;;@ memset.ts:43:20
    (i32.const 16)
   )
   ;;@ memset.ts:43:24
   (get_local $5)
  )
  ;;@ memset.ts:44:2
  (i32.store
   ;;@ memset.ts:44:13
   (i32.add
    (get_local $0)
    ;;@ memset.ts:44:20
    (i32.const 20)
   )
   ;;@ memset.ts:44:24
   (get_local $5)
  )
  ;;@ memset.ts:45:2
  (i32.store
   ;;@ memset.ts:45:13
   (i32.add
    (get_local $0)
    ;;@ memset.ts:45:20
    (i32.const 24)
   )
   ;;@ memset.ts:45:24
   (get_local $5)
  )
  ;;@ memset.ts:46:2
  (i32.store
   ;;@ memset.ts:46:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:46:20
     (get_local $2)
    )
    ;;@ memset.ts:46:24
    (i32.const 28)
   )
   ;;@ memset.ts:46:28
   (get_local $5)
  )
  ;;@ memset.ts:47:2
  (i32.store
   ;;@ memset.ts:47:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:47:20
     (get_local $2)
    )
    ;;@ memset.ts:47:24
    (i32.const 24)
   )
   ;;@ memset.ts:47:28
   (get_local $5)
  )
  ;;@ memset.ts:48:2
  (i32.store
   ;;@ memset.ts:48:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:48:20
     (get_local $2)
    )
    ;;@ memset.ts:48:24
    (i32.const 20)
   )
   ;;@ memset.ts:48:28
   (get_local $5)
  )
  ;;@ memset.ts:49:2
  (i32.store
   ;;@ memset.ts:49:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ memset.ts:49:20
     (get_local $2)
    )
    ;;@ memset.ts:49:24
    (i32.const 16)
   )
   ;;@ memset.ts:49:28
   (get_local $5)
  )
  ;;@ memset.ts:52:2
  (set_local $4
   ;;@ memset.ts:52:6
   (i32.add
    (i32.const 24)
    ;;@ memset.ts:52:11
    (i32.and
     ;;@ memset.ts:52:12
     (get_local $0)
     ;;@ memset.ts:52:19
     (i32.const 4)
    )
   )
  )
  ;;@ memset.ts:53:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ memset.ts:53:10
    (get_local $4)
   )
  )
  ;;@ memset.ts:54:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ memset.ts:54:7
    (get_local $4)
   )
  )
  ;;@ memset.ts:57:2
  (set_local $6
   ;;@ memset.ts:57:17
   (i64.or
    (i64.extend_u/i32
     (get_local $5)
    )
    ;;@ memset.ts:57:28
    (i64.shl
     ;;@ memset.ts:57:29
     (i64.extend_u/i32
      (get_local $5)
     )
     ;;@ memset.ts:57:41
     (i64.const 32)
    )
   )
  )
  ;;@ memset.ts:58:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ memset.ts:58:9
     (i32.ge_u
      (get_local $2)
      ;;@ memset.ts:58:14
      (i32.const 32)
     )
     (block
      (block
       ;;@ memset.ts:59:4
       (i64.store
        ;;@ memset.ts:59:15
        (get_local $0)
        ;;@ memset.ts:59:21
        (get_local $6)
       )
       ;;@ memset.ts:60:4
       (i64.store
        ;;@ memset.ts:60:15
        (i32.add
         (get_local $0)
         ;;@ memset.ts:60:22
         (i32.const 8)
        )
        ;;@ memset.ts:60:25
        (get_local $6)
       )
       ;;@ memset.ts:61:4
       (i64.store
        ;;@ memset.ts:61:15
        (i32.add
         (get_local $0)
         ;;@ memset.ts:61:22
         (i32.const 16)
        )
        ;;@ memset.ts:61:26
        (get_local $6)
       )
       ;;@ memset.ts:62:4
       (i64.store
        ;;@ memset.ts:62:15
        (i32.add
         (get_local $0)
         ;;@ memset.ts:62:22
         (i32.const 24)
        )
        ;;@ memset.ts:62:26
        (get_local $6)
       )
       ;;@ memset.ts:63:4
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ memset.ts:63:9
         (i32.const 32)
        )
       )
       ;;@ memset.ts:64:4
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ memset.ts:64:12
         (i32.const 32)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ memset.ts:66:9
  (return
   (get_local $3)
  )
 )
 (func $start (; 2 ;) (type $v)
  (set_global $memset/dest
   ;;@ memset.ts:69:11
   (get_global $HEAP_BASE)
  )
  ;;@ memset.ts:70:0
  (drop
   (call $memset/memset
    ;;@ memset.ts:70:7
    (get_global $memset/dest)
    ;;@ memset.ts:70:13
    (i32.const 1)
    ;;@ memset.ts:70:16
    (i32.const 16)
   )
  )
  ;;@ memset.ts:72:0
  (if
   (i32.eqz
    ;;@ memset.ts:72:7
    (i32.eq
     (i32.load8_u
      ;;@ memset.ts:72:16
      (get_global $memset/dest)
     )
     ;;@ memset.ts:72:25
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 72)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memset.ts:73:0
  (if
   (i32.eqz
    ;;@ memset.ts:73:7
    (i32.eq
     (i32.load8_u
      ;;@ memset.ts:73:16
      (i32.add
       (get_global $memset/dest)
       ;;@ memset.ts:73:23
       (i32.const 15)
      )
     )
     ;;@ memset.ts:73:30
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 73)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memset.ts:75:0
  (drop
   (call $memset/memset
    ;;@ memset.ts:75:7
    (i32.add
     (get_global $memset/dest)
     ;;@ memset.ts:75:14
     (i32.const 1)
    )
    ;;@ memset.ts:75:17
    (i32.const 2)
    ;;@ memset.ts:75:20
    (i32.const 14)
   )
  )
  ;;@ memset.ts:77:0
  (if
   (i32.eqz
    ;;@ memset.ts:77:7
    (i32.eq
     (i32.load8_u
      ;;@ memset.ts:77:16
      (get_global $memset/dest)
     )
     ;;@ memset.ts:77:25
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 77)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memset.ts:78:0
  (if
   (i32.eqz
    ;;@ memset.ts:78:7
    (i32.eq
     (i32.load8_u
      ;;@ memset.ts:78:16
      (i32.add
       (get_global $memset/dest)
       ;;@ memset.ts:78:23
       (i32.const 1)
      )
     )
     ;;@ memset.ts:78:29
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 78)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memset.ts:79:0
  (if
   (i32.eqz
    ;;@ memset.ts:79:7
    (i32.eq
     (i32.load8_u
      ;;@ memset.ts:79:16
      (i32.add
       (get_global $memset/dest)
       ;;@ memset.ts:79:23
       (i32.const 14)
      )
     )
     ;;@ memset.ts:79:30
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 79)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memset.ts:80:0
  (if
   (i32.eqz
    ;;@ memset.ts:80:7
    (i32.eq
     (i32.load8_u
      ;;@ memset.ts:80:16
      (i32.add
       (get_global $memset/dest)
       ;;@ memset.ts:80:23
       (i32.const 15)
      )
     )
     ;;@ memset.ts:80:30
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
