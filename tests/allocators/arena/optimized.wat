(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 0)
 (export "memory.size" (func $~lib/memory/memory.size))
 (export "memory.grow" (func $~lib/memory/memory.grow))
 (export "memory.fill" (func $~lib/memory/memory.fill))
 (export "memory.copy" (func $~lib/memory/memory.copy))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/memory/memory.size (; 0 ;) (type $i) (result i32)
  ;;@ ~lib/memory.ts:4:25
  (current_memory)
 )
 (func $~lib/memory/memory.grow (; 1 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/memory.ts:8:30
  (grow_memory
   ;;@ ~lib/memory.ts:8:25
   (get_local $0)
  )
 )
 (func $~lib/memory/memory.fill (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  ;;@ ~lib/memory.ts:17:4
  (if
   ;;@ ~lib/memory.ts:17:8
   (i32.eqz
    ;;@ ~lib/memory.ts:17:9
    (get_local $2)
   )
   ;;@ ~lib/memory.ts:17:12
   (return)
  )
  ;;@ ~lib/memory.ts:18:4
  (i32.store8
   ;;@ ~lib/memory.ts:18:14
   (get_local $0)
   ;;@ ~lib/memory.ts:18:20
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:19:4
  (i32.store8
   ;;@ ~lib/memory.ts:19:14
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:19:21
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:19:25
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:19:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:20:4
  (if
   ;;@ ~lib/memory.ts:20:8
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:20:13
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:20:16
   (return)
  )
  ;;@ ~lib/memory.ts:22:4
  (i32.store8
   ;;@ ~lib/memory.ts:22:14
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:22:21
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:22:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:23:4
  (i32.store8
   ;;@ ~lib/memory.ts:23:14
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:23:21
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:23:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:24:4
  (i32.store8
   ;;@ ~lib/memory.ts:24:14
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:24:21
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:24:25
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:24:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:25:4
  (i32.store8
   ;;@ ~lib/memory.ts:25:14
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:25:21
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:25:25
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:25:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:26:4
  (if
   ;;@ ~lib/memory.ts:26:8
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:26:13
    (i32.const 6)
   )
   ;;@ ~lib/memory.ts:26:16
   (return)
  )
  ;;@ ~lib/memory.ts:27:4
  (i32.store8
   ;;@ ~lib/memory.ts:27:14
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:27:21
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:27:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:28:4
  (i32.store8
   ;;@ ~lib/memory.ts:28:14
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:28:21
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:28:25
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:28:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:29:4
  (if
   ;;@ ~lib/memory.ts:29:8
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:29:13
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:29:16
   (return)
  )
  ;;@ ~lib/memory.ts:40:4
  (i32.store
   ;;@ ~lib/memory.ts:33:4
   (tee_local $0
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:32:4
     (tee_local $4
      ;;@ ~lib/memory.ts:32:19
      (i32.and
       (i32.sub
        (i32.const 0)
        ;;@ ~lib/memory.ts:32:20
        (get_local $0)
       )
       ;;@ ~lib/memory.ts:32:27
       (i32.const 3)
      )
     )
    )
   )
   ;;@ ~lib/memory.ts:37:4
   (tee_local $1
    ;;@ ~lib/memory.ts:37:19
    (i32.mul
     (i32.and
      ;;@ ~lib/memory.ts:37:35
      (get_local $1)
      (i32.const 255)
     )
     (i32.const 16843009)
    )
   )
  )
  ;;@ ~lib/memory.ts:41:4
  (i32.store
   ;;@ ~lib/memory.ts:41:15
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:35:4
     (tee_local $2
      (i32.and
       (i32.sub
        ;;@ ~lib/memory.ts:34:4
        (get_local $2)
        ;;@ ~lib/memory.ts:34:9
        (get_local $4)
       )
       ;;@ ~lib/memory.ts:35:9
       (i32.const -4)
      )
     )
    )
    ;;@ ~lib/memory.ts:41:26
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:41:29
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:42:4
  (if
   ;;@ ~lib/memory.ts:42:8
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:42:13
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:42:16
   (return)
  )
  ;;@ ~lib/memory.ts:43:4
  (i32.store
   ;;@ ~lib/memory.ts:43:15
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:43:22
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:43:25
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:44:4
  (i32.store
   ;;@ ~lib/memory.ts:44:15
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:44:22
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:44:25
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:45:4
  (i32.store
   ;;@ ~lib/memory.ts:45:15
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:45:22
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:45:26
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:45:30
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:46:4
  (i32.store
   ;;@ ~lib/memory.ts:46:15
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:46:22
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:46:26
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:46:29
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:47:4
  (if
   ;;@ ~lib/memory.ts:47:8
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:47:13
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:47:17
   (return)
  )
  ;;@ ~lib/memory.ts:48:4
  (i32.store
   ;;@ ~lib/memory.ts:48:15
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:48:22
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:48:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:49:4
  (i32.store
   ;;@ ~lib/memory.ts:49:15
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:49:22
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:49:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:50:4
  (i32.store
   ;;@ ~lib/memory.ts:50:15
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:50:22
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:50:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:51:4
  (i32.store
   ;;@ ~lib/memory.ts:51:15
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:51:22
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:51:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:52:4
  (i32.store
   ;;@ ~lib/memory.ts:52:15
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:52:22
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:52:26
    (i32.const 28)
   )
   ;;@ ~lib/memory.ts:52:30
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:53:4
  (i32.store
   ;;@ ~lib/memory.ts:53:15
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:53:22
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:53:26
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:53:30
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:54:4
  (i32.store
   ;;@ ~lib/memory.ts:54:15
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:54:22
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:54:26
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:54:30
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:55:4
  (i32.store
   ;;@ ~lib/memory.ts:55:15
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:55:22
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:55:26
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:55:30
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:59:4
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:58:4
    (tee_local $4
     ;;@ ~lib/memory.ts:58:8
     (i32.add
      ;;@ ~lib/memory.ts:58:13
      (i32.and
       ;;@ ~lib/memory.ts:58:14
       (get_local $0)
       ;;@ ~lib/memory.ts:58:21
       (i32.const 4)
      )
      ;;@ ~lib/memory.ts:58:8
      (i32.const 24)
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:60:4
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:60:9
    (get_local $4)
   )
  )
  ;;@ ~lib/memory.ts:63:4
  (set_local $3
   ;;@ ~lib/memory.ts:63:19
   (i64.or
    (i64.extend_u/i32
     (get_local $1)
    )
    ;;@ ~lib/memory.ts:63:30
    (i64.shl
     ;;@ ~lib/memory.ts:63:31
     (i64.extend_u/i32
      (get_local $1)
     )
     ;;@ ~lib/memory.ts:63:43
     (i64.const 32)
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ ~lib/memory.ts:64:11
    (i32.ge_u
     (get_local $2)
     ;;@ ~lib/memory.ts:64:16
     (i32.const 32)
    )
    (block
     ;;@ ~lib/memory.ts:65:6
     (i64.store
      ;;@ ~lib/memory.ts:65:17
      (get_local $0)
      ;;@ ~lib/memory.ts:65:23
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:66:6
     (i64.store
      ;;@ ~lib/memory.ts:66:17
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:66:24
       (i32.const 8)
      )
      ;;@ ~lib/memory.ts:66:27
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:67:6
     (i64.store
      ;;@ ~lib/memory.ts:67:17
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:67:24
       (i32.const 16)
      )
      ;;@ ~lib/memory.ts:67:28
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:68:6
     (i64.store
      ;;@ ~lib/memory.ts:68:17
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:68:24
       (i32.const 24)
      )
      ;;@ ~lib/memory.ts:68:28
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:69:6
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/memory.ts:69:11
       (i32.const 32)
      )
     )
     ;;@ ~lib/memory.ts:70:6
     (set_local $0
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:70:14
       (i32.const 32)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $~lib/memory/memcpy (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $continue|0
   (if
    (select
     ;;@ ~lib/memory.ts:164:14
     (i32.and
      ;;@ ~lib/memory.ts:164:15
      (get_local $1)
      ;;@ ~lib/memory.ts:164:21
      (i32.const 3)
     )
     (get_local $2)
     ;;@ ~lib/memory.ts:164:9
     (get_local $2)
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $3
        ;;@ ~lib/memory.ts:165:14
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:165:4
     (i32.store8
      (get_local $3)
      ;;@ ~lib/memory.ts:165:31
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:165:22
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     ;;@ ~lib/memory.ts:166:4
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ ~lib/memory.ts:170:2
  (if
   (i32.eqz
    ;;@ ~lib/memory.ts:170:6
    (i32.and
     ;;@ ~lib/memory.ts:170:7
     (get_local $0)
     ;;@ ~lib/memory.ts:170:14
     (i32.const 3)
    )
   )
   ;;@ ~lib/memory.ts:170:23
   (block
    (loop $continue|1
     (if
      ;;@ ~lib/memory.ts:171:11
      (i32.ge_u
       (get_local $2)
       ;;@ ~lib/memory.ts:171:16
       (i32.const 16)
      )
      (block
       ;;@ ~lib/memory.ts:172:6
       (i32.store
        ;;@ ~lib/memory.ts:172:17
        (get_local $0)
        ;;@ ~lib/memory.ts:172:28
        (i32.load
         ;;@ ~lib/memory.ts:172:38
         (get_local $1)
        )
       )
       ;;@ ~lib/memory.ts:173:6
       (i32.store
        ;;@ ~lib/memory.ts:173:17
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:173:25
         (i32.const 4)
        )
        ;;@ ~lib/memory.ts:173:28
        (i32.load
         ;;@ ~lib/memory.ts:173:38
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:173:45
          (i32.const 4)
         )
        )
       )
       ;;@ ~lib/memory.ts:174:6
       (i32.store
        ;;@ ~lib/memory.ts:174:17
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:174:25
         (i32.const 8)
        )
        ;;@ ~lib/memory.ts:174:28
        (i32.load
         ;;@ ~lib/memory.ts:174:38
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:174:45
          (i32.const 8)
         )
        )
       )
       ;;@ ~lib/memory.ts:175:6
       (i32.store
        ;;@ ~lib/memory.ts:175:17
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:175:24
         (i32.const 12)
        )
        ;;@ ~lib/memory.ts:175:28
        (i32.load
         ;;@ ~lib/memory.ts:175:38
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:175:44
          (i32.const 12)
         )
        )
       )
       ;;@ ~lib/memory.ts:176:6
       (set_local $1
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:176:13
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:176:17
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:176:25
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:176:29
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:176:34
         (i32.const 16)
        )
       )
       (br $continue|1)
      )
     )
    )
    ;;@ ~lib/memory.ts:178:4
    (if
     ;;@ ~lib/memory.ts:178:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:178:12
      (i32.const 8)
     )
     ;;@ ~lib/memory.ts:178:15
     (block
      ;;@ ~lib/memory.ts:179:6
      (i32.store
       ;;@ ~lib/memory.ts:179:17
       (get_local $0)
       ;;@ ~lib/memory.ts:179:27
       (i32.load
        ;;@ ~lib/memory.ts:179:37
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:180:6
      (i32.store
       ;;@ ~lib/memory.ts:180:17
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:180:24
        (i32.const 4)
       )
       ;;@ ~lib/memory.ts:180:27
       (i32.load
        ;;@ ~lib/memory.ts:180:37
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:180:43
         (i32.const 4)
        )
       )
      )
      ;;@ ~lib/memory.ts:181:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:181:14
        (i32.const 8)
       )
      )
      ;;@ ~lib/memory.ts:181:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:181:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:183:4
    (if
     ;;@ ~lib/memory.ts:183:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:183:12
      (i32.const 4)
     )
     ;;@ ~lib/memory.ts:183:15
     (block
      ;;@ ~lib/memory.ts:184:6
      (i32.store
       ;;@ ~lib/memory.ts:184:17
       (get_local $0)
       ;;@ ~lib/memory.ts:184:23
       (i32.load
        ;;@ ~lib/memory.ts:184:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:185:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:185:14
        (i32.const 4)
       )
      )
      ;;@ ~lib/memory.ts:185:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:185:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:187:4
    (if
     ;;@ ~lib/memory.ts:187:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:187:12
      (i32.const 2)
     )
     ;;@ ~lib/memory.ts:187:15
     (block
      ;;@ ~lib/memory.ts:188:6
      (i32.store16
       ;;@ ~lib/memory.ts:188:17
       (get_local $0)
       ;;@ ~lib/memory.ts:188:23
       (i32.load16_u
        ;;@ ~lib/memory.ts:188:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:189:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:189:14
        (i32.const 2)
       )
      )
      ;;@ ~lib/memory.ts:189:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:189:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:191:4
    (if
     ;;@ ~lib/memory.ts:191:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:191:12
      (i32.const 1)
     )
     ;;@ ~lib/memory.ts:192:16
     (block
      (set_local $3
       (get_local $0)
      )
      ;;@ ~lib/memory.ts:191:15
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:192:33
       (block (result i32)
        (set_local $3
         (get_local $1)
        )
        ;;@ ~lib/memory.ts:192:24
        (i32.load8_u
         (get_local $3)
        )
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:194:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:199:2
  (if
   ;;@ ~lib/memory.ts:199:6
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/memory.ts:199:11
    (i32.const 32)
   )
   ;;@ ~lib/memory.ts:199:15
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (block $tablify|0
        (br_table $case0|2 $case1|2 $case2|2 $tablify|0
         (i32.sub
          ;;@ ~lib/memory.ts:200:12
          (i32.and
           (get_local $0)
           ;;@ ~lib/memory.ts:200:19
           (i32.const 3)
          )
          (i32.const 1)
         )
        )
       )
       (br $break|2)
      )
      ;;@ ~lib/memory.ts:203:8
      (set_local $4
       ;;@ ~lib/memory.ts:203:12
       (i32.load
        ;;@ ~lib/memory.ts:203:22
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         ;;@ ~lib/memory.ts:204:18
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:204:8
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:204:35
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        ;;@ ~lib/memory.ts:204:26
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         ;;@ ~lib/memory.ts:205:18
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:205:8
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:205:35
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        ;;@ ~lib/memory.ts:205:26
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         ;;@ ~lib/memory.ts:206:18
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:206:8
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:206:35
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        ;;@ ~lib/memory.ts:206:26
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      ;;@ ~lib/memory.ts:207:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ ~lib/memory.ts:207:13
        (i32.const 3)
       )
      )
      (loop $continue|3
       (if
        ;;@ ~lib/memory.ts:208:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:208:20
         (i32.const 17)
        )
        (block
         ;;@ ~lib/memory.ts:210:10
         (i32.store
          ;;@ ~lib/memory.ts:210:21
          (get_local $0)
          ;;@ ~lib/memory.ts:210:27
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ ~lib/memory.ts:210:32
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:210:37
           (i32.shl
            ;;@ ~lib/memory.ts:209:10
            (tee_local $3
             ;;@ ~lib/memory.ts:209:14
             (i32.load
              ;;@ ~lib/memory.ts:209:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:209:30
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/memory.ts:210:42
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:212:10
         (i32.store
          ;;@ ~lib/memory.ts:212:21
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:212:28
           (i32.const 4)
          )
          ;;@ ~lib/memory.ts:212:31
          (i32.or
           (i32.shr_u
            (get_local $3)
            ;;@ ~lib/memory.ts:212:36
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:212:41
           (i32.shl
            ;;@ ~lib/memory.ts:211:10
            (tee_local $4
             ;;@ ~lib/memory.ts:211:14
             (i32.load
              ;;@ ~lib/memory.ts:211:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:211:30
               (i32.const 5)
              )
             )
            )
            ;;@ ~lib/memory.ts:212:46
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:214:10
         (i32.store
          ;;@ ~lib/memory.ts:214:21
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:214:28
           (i32.const 8)
          )
          ;;@ ~lib/memory.ts:214:31
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ ~lib/memory.ts:214:36
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:214:41
           (i32.shl
            ;;@ ~lib/memory.ts:213:10
            (tee_local $3
             ;;@ ~lib/memory.ts:213:14
             (i32.load
              ;;@ ~lib/memory.ts:213:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:213:30
               (i32.const 9)
              )
             )
            )
            ;;@ ~lib/memory.ts:214:46
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:216:10
         (i32.store
          ;;@ ~lib/memory.ts:216:21
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:216:28
           (i32.const 12)
          )
          ;;@ ~lib/memory.ts:216:32
          (i32.or
           (i32.shr_u
            (get_local $3)
            ;;@ ~lib/memory.ts:216:37
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:216:42
           (i32.shl
            ;;@ ~lib/memory.ts:215:10
            (tee_local $4
             ;;@ ~lib/memory.ts:215:14
             (i32.load
              ;;@ ~lib/memory.ts:215:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:215:30
               (i32.const 13)
              )
             )
            )
            ;;@ ~lib/memory.ts:216:47
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:217:10
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:217:17
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:217:21
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:217:29
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:217:33
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/memory.ts:217:38
           (i32.const 16)
          )
         )
         (br $continue|3)
        )
       )
      )
      ;;@ ~lib/memory.ts:219:8
      (br $break|2)
     )
     ;;@ ~lib/memory.ts:222:8
     (set_local $4
      ;;@ ~lib/memory.ts:222:12
      (i32.load
       ;;@ ~lib/memory.ts:222:22
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        ;;@ ~lib/memory.ts:223:18
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:223:8
     (i32.store8
      (get_local $3)
      ;;@ ~lib/memory.ts:223:35
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:223:26
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        ;;@ ~lib/memory.ts:224:18
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:224:8
     (i32.store8
      (get_local $3)
      ;;@ ~lib/memory.ts:224:35
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:224:26
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     ;;@ ~lib/memory.ts:225:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/memory.ts:225:13
       (i32.const 2)
      )
     )
     (loop $continue|4
      (if
       ;;@ ~lib/memory.ts:226:15
       (i32.ge_u
        (get_local $2)
        ;;@ ~lib/memory.ts:226:20
        (i32.const 18)
       )
       (block
        ;;@ ~lib/memory.ts:228:10
        (i32.store
         ;;@ ~lib/memory.ts:228:21
         (get_local $0)
         ;;@ ~lib/memory.ts:228:27
         (i32.or
          (i32.shr_u
           (get_local $4)
           ;;@ ~lib/memory.ts:228:32
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:228:37
          (i32.shl
           ;;@ ~lib/memory.ts:227:10
           (tee_local $3
            ;;@ ~lib/memory.ts:227:14
            (i32.load
             ;;@ ~lib/memory.ts:227:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:227:30
              (i32.const 2)
             )
            )
           )
           ;;@ ~lib/memory.ts:228:42
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:230:10
        (i32.store
         ;;@ ~lib/memory.ts:230:21
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:230:28
          (i32.const 4)
         )
         ;;@ ~lib/memory.ts:230:31
         (i32.or
          (i32.shr_u
           (get_local $3)
           ;;@ ~lib/memory.ts:230:36
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:230:41
          (i32.shl
           ;;@ ~lib/memory.ts:229:10
           (tee_local $4
            ;;@ ~lib/memory.ts:229:14
            (i32.load
             ;;@ ~lib/memory.ts:229:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:229:30
              (i32.const 6)
             )
            )
           )
           ;;@ ~lib/memory.ts:230:46
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:232:10
        (i32.store
         ;;@ ~lib/memory.ts:232:21
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:232:28
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:232:31
         (i32.or
          (i32.shr_u
           (get_local $4)
           ;;@ ~lib/memory.ts:232:36
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:232:41
          (i32.shl
           ;;@ ~lib/memory.ts:231:10
           (tee_local $3
            ;;@ ~lib/memory.ts:231:14
            (i32.load
             ;;@ ~lib/memory.ts:231:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:231:30
              (i32.const 10)
             )
            )
           )
           ;;@ ~lib/memory.ts:232:46
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:234:10
        (i32.store
         ;;@ ~lib/memory.ts:234:21
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:234:28
          (i32.const 12)
         )
         ;;@ ~lib/memory.ts:234:32
         (i32.or
          (i32.shr_u
           (get_local $3)
           ;;@ ~lib/memory.ts:234:37
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:234:42
          (i32.shl
           ;;@ ~lib/memory.ts:233:10
           (tee_local $4
            ;;@ ~lib/memory.ts:233:14
            (i32.load
             ;;@ ~lib/memory.ts:233:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:233:30
              (i32.const 14)
             )
            )
           )
           ;;@ ~lib/memory.ts:234:47
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:235:10
        (set_local $1
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:235:17
          (i32.const 16)
         )
        )
        ;;@ ~lib/memory.ts:235:21
        (set_local $0
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:235:29
          (i32.const 16)
         )
        )
        ;;@ ~lib/memory.ts:235:33
        (set_local $2
         (i32.sub
          (get_local $2)
          ;;@ ~lib/memory.ts:235:38
          (i32.const 16)
         )
        )
        (br $continue|4)
       )
      )
     )
     ;;@ ~lib/memory.ts:237:8
     (br $break|2)
    )
    ;;@ ~lib/memory.ts:240:8
    (set_local $4
     ;;@ ~lib/memory.ts:240:12
     (i32.load
      ;;@ ~lib/memory.ts:240:22
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:241:18
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:241:8
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:241:35
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:241:26
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    ;;@ ~lib/memory.ts:242:8
    (set_local $2
     (i32.sub
      (get_local $2)
      ;;@ ~lib/memory.ts:242:13
      (i32.const 1)
     )
    )
    (loop $continue|5
     (if
      ;;@ ~lib/memory.ts:243:15
      (i32.ge_u
       (get_local $2)
       ;;@ ~lib/memory.ts:243:20
       (i32.const 19)
      )
      (block
       ;;@ ~lib/memory.ts:245:10
       (i32.store
        ;;@ ~lib/memory.ts:245:21
        (get_local $0)
        ;;@ ~lib/memory.ts:245:27
        (i32.or
         (i32.shr_u
          (get_local $4)
          ;;@ ~lib/memory.ts:245:32
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:245:36
         (i32.shl
          ;;@ ~lib/memory.ts:244:10
          (tee_local $3
           ;;@ ~lib/memory.ts:244:14
           (i32.load
            ;;@ ~lib/memory.ts:244:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:244:30
             (i32.const 3)
            )
           )
          )
          ;;@ ~lib/memory.ts:245:41
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:247:10
       (i32.store
        ;;@ ~lib/memory.ts:247:21
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:247:28
         (i32.const 4)
        )
        ;;@ ~lib/memory.ts:247:31
        (i32.or
         (i32.shr_u
          (get_local $3)
          ;;@ ~lib/memory.ts:247:36
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:247:40
         (i32.shl
          ;;@ ~lib/memory.ts:246:10
          (tee_local $4
           ;;@ ~lib/memory.ts:246:14
           (i32.load
            ;;@ ~lib/memory.ts:246:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:246:30
             (i32.const 7)
            )
           )
          )
          ;;@ ~lib/memory.ts:247:45
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:249:10
       (i32.store
        ;;@ ~lib/memory.ts:249:21
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:249:28
         (i32.const 8)
        )
        ;;@ ~lib/memory.ts:249:31
        (i32.or
         (i32.shr_u
          (get_local $4)
          ;;@ ~lib/memory.ts:249:36
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:249:40
         (i32.shl
          ;;@ ~lib/memory.ts:248:10
          (tee_local $3
           ;;@ ~lib/memory.ts:248:14
           (i32.load
            ;;@ ~lib/memory.ts:248:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:248:30
             (i32.const 11)
            )
           )
          )
          ;;@ ~lib/memory.ts:249:45
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:251:10
       (i32.store
        ;;@ ~lib/memory.ts:251:21
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:251:28
         (i32.const 12)
        )
        ;;@ ~lib/memory.ts:251:32
        (i32.or
         (i32.shr_u
          (get_local $3)
          ;;@ ~lib/memory.ts:251:37
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:251:41
         (i32.shl
          ;;@ ~lib/memory.ts:250:10
          (tee_local $4
           ;;@ ~lib/memory.ts:250:14
           (i32.load
            ;;@ ~lib/memory.ts:250:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:250:30
             (i32.const 15)
            )
           )
          )
          ;;@ ~lib/memory.ts:251:46
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:252:10
       (set_local $1
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:252:17
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:252:21
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:252:29
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:252:33
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:252:38
         (i32.const 16)
        )
       )
       (br $continue|5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:260:2
  (if
   ;;@ ~lib/memory.ts:260:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:260:10
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:260:14
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:261:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:261:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:261:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:261:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:262:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:262:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:262:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:262:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:263:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:263:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:263:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:263:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:264:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:264:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:264:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:264:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:265:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:265:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:265:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:265:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:266:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:266:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:266:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:266:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:267:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:267:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:267:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:267:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:268:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:268:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:268:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:268:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:269:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:269:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:269:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:269:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:270:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:270:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:270:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:270:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:271:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:271:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:271:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:271:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:272:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:272:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:272:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:272:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:273:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:273:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:273:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:273:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:274:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:274:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:274:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:274:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:275:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:275:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:275:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:275:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:276:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:276:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:276:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:276:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:278:2
  (if
   ;;@ ~lib/memory.ts:278:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:278:10
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:278:13
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:279:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:279:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:279:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:279:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:280:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:280:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:280:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:280:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:281:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:281:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:281:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:281:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:282:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:282:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:282:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:282:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:283:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:283:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:283:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:283:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:284:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:284:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:284:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:284:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:285:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:285:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:285:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:285:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:286:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:286:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:286:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:286:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:288:2
  (if
   ;;@ ~lib/memory.ts:288:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:288:10
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:288:13
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:289:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:289:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:289:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:289:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:290:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:290:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:290:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:290:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:291:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:291:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:291:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:291:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:292:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:292:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:292:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:292:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:294:2
  (if
   ;;@ ~lib/memory.ts:294:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:294:10
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:294:13
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:295:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:295:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:295:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:295:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:296:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:296:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:296:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:296:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:298:2
  (if
   ;;@ ~lib/memory.ts:298:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:298:10
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:299:14
   (block
    (set_local $3
     (get_local $0)
    )
    ;;@ ~lib/memory.ts:298:13
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:299:31
     (block (result i32)
      (set_local $3
       (get_local $1)
      )
      ;;@ ~lib/memory.ts:299:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
 )
 (func $~lib/memory/memory.copy (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/memory.ts:79:4
  (if
   ;;@ ~lib/memory.ts:79:8
   (i32.eq
    (get_local $0)
    ;;@ ~lib/memory.ts:79:16
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:79:21
   (return)
  )
  ;;@ ~lib/memory.ts:80:4
  (if
   ;;@ ~lib/memory.ts:80:8
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       ;;@ ~lib/memory.ts:80:14
       (get_local $2)
      )
      ;;@ ~lib/memory.ts:80:19
      (get_local $0)
     )
    )
    (get_local $3)
    ;;@ ~lib/memory.ts:80:27
    (i32.le_u
     (i32.add
      (get_local $0)
      ;;@ ~lib/memory.ts:80:34
      (get_local $2)
     )
     ;;@ ~lib/memory.ts:80:39
     (get_local $1)
    )
   )
   ;;@ ~lib/memory.ts:80:44
   (block
    ;;@ ~lib/memory.ts:81:6
    (call $~lib/memory/memcpy
     ;;@ ~lib/memory.ts:81:13
     (get_local $0)
     ;;@ ~lib/memory.ts:81:19
     (get_local $1)
     ;;@ ~lib/memory.ts:81:24
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:82:6
    (return)
   )
  )
  ;;@ ~lib/memory.ts:84:4
  (if
   ;;@ ~lib/memory.ts:84:8
   (i32.lt_u
    (get_local $0)
    ;;@ ~lib/memory.ts:84:15
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:84:20
   (block
    ;;@ ~lib/memory.ts:85:6
    (if
     ;;@ ~lib/memory.ts:85:10
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:85:11
       (get_local $1)
       ;;@ ~lib/memory.ts:85:17
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:85:23
      (i32.and
       ;;@ ~lib/memory.ts:85:24
       (get_local $0)
       ;;@ ~lib/memory.ts:85:31
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:85:35
     (block
      (loop $continue|0
       (if
        ;;@ ~lib/memory.ts:86:15
        (i32.and
         (get_local $0)
         ;;@ ~lib/memory.ts:86:22
         (i32.const 7)
        )
        (block
         ;;@ ~lib/memory.ts:87:10
         (if
          ;;@ ~lib/memory.ts:87:14
          (i32.eqz
           ;;@ ~lib/memory.ts:87:15
           (get_local $2)
          )
          ;;@ ~lib/memory.ts:87:18
          (return)
         )
         ;;@ ~lib/memory.ts:88:10
         (set_local $2
          (i32.sub
           ;;@ ~lib/memory.ts:88:12
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $0
          (i32.add
           (tee_local $3
            ;;@ ~lib/memory.ts:89:20
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         ;;@ ~lib/memory.ts:89:10
         (i32.store8
          (get_local $3)
          ;;@ ~lib/memory.ts:89:37
          (block (result i32)
           (set_local $1
            (i32.add
             (tee_local $3
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           ;;@ ~lib/memory.ts:89:28
           (i32.load8_u
            (get_local $3)
           )
          )
         )
         (br $continue|0)
        )
       )
      )
      (loop $continue|1
       (if
        ;;@ ~lib/memory.ts:91:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:91:20
         (i32.const 8)
        )
        (block
         ;;@ ~lib/memory.ts:92:10
         (i64.store
          ;;@ ~lib/memory.ts:92:21
          (get_local $0)
          ;;@ ~lib/memory.ts:92:27
          (i64.load
           ;;@ ~lib/memory.ts:92:37
           (get_local $1)
          )
         )
         ;;@ ~lib/memory.ts:93:10
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/memory.ts:93:18
           (i32.const 8)
          )
         )
         ;;@ ~lib/memory.ts:94:10
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:94:18
           (i32.const 8)
          )
         )
         ;;@ ~lib/memory.ts:95:10
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:95:18
           (i32.const 8)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
    )
    (loop $continue|2
     (if
      ;;@ ~lib/memory.ts:98:13
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          ;;@ ~lib/memory.ts:99:18
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:99:8
       (i32.store8
        (get_local $3)
        ;;@ ~lib/memory.ts:99:35
        (block (result i32)
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         ;;@ ~lib/memory.ts:99:26
         (i32.load8_u
          (get_local $3)
         )
        )
       )
       ;;@ ~lib/memory.ts:100:8
       (set_local $2
        (i32.sub
         ;;@ ~lib/memory.ts:100:10
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $continue|2)
      )
     )
    )
   )
   ;;@ ~lib/memory.ts:102:11
   (block
    ;;@ ~lib/memory.ts:103:6
    (if
     ;;@ ~lib/memory.ts:103:10
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:103:11
       (get_local $1)
       ;;@ ~lib/memory.ts:103:17
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:103:23
      (i32.and
       ;;@ ~lib/memory.ts:103:24
       (get_local $0)
       ;;@ ~lib/memory.ts:103:31
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:103:35
     (block
      (loop $continue|3
       (if
        ;;@ ~lib/memory.ts:104:15
        (i32.and
         (i32.add
          ;;@ ~lib/memory.ts:104:16
          (get_local $0)
          ;;@ ~lib/memory.ts:104:23
          (get_local $2)
         )
         ;;@ ~lib/memory.ts:104:28
         (i32.const 7)
        )
        (block
         ;;@ ~lib/memory.ts:105:10
         (if
          ;;@ ~lib/memory.ts:105:14
          (i32.eqz
           ;;@ ~lib/memory.ts:105:15
           (get_local $2)
          )
          ;;@ ~lib/memory.ts:105:18
          (return)
         )
         ;;@ ~lib/memory.ts:106:10
         (i32.store8
          ;;@ ~lib/memory.ts:106:20
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:106:27
           (tee_local $2
            (i32.sub
             ;;@ ~lib/memory.ts:106:29
             (get_local $2)
             (i32.const 1)
            )
           )
          )
          ;;@ ~lib/memory.ts:106:32
          (i32.load8_u
           ;;@ ~lib/memory.ts:106:41
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:106:47
            (get_local $2)
           )
          )
         )
         (br $continue|3)
        )
       )
      )
      (loop $continue|4
       (if
        ;;@ ~lib/memory.ts:108:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:108:20
         (i32.const 8)
        )
        (block
         ;;@ ~lib/memory.ts:110:10
         (i64.store
          ;;@ ~lib/memory.ts:110:21
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:109:10
           (tee_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:109:15
             (i32.const 8)
            )
           )
          )
          ;;@ ~lib/memory.ts:110:31
          (i64.load
           ;;@ ~lib/memory.ts:110:41
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:110:47
            (get_local $2)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (loop $continue|5
     (if
      ;;@ ~lib/memory.ts:113:13
      (get_local $2)
      (block
       ;;@ ~lib/memory.ts:113:16
       (i32.store8
        ;;@ ~lib/memory.ts:114:18
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:114:25
         (tee_local $2
          (i32.sub
           ;;@ ~lib/memory.ts:114:27
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        ;;@ ~lib/memory.ts:114:30
        (i32.load8_u
         ;;@ ~lib/memory.ts:114:39
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:114:45
          (get_local $2)
         )
        )
       )
       (br $continue|5)
      )
     )
    )
   )
  )
 )
 (func $~lib/memory/memory.compare (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  ;;@ ~lib/memory.ts:122:4
  (if
   ;;@ ~lib/memory.ts:122:8
   (i32.eq
    (get_local $0)
    ;;@ ~lib/memory.ts:122:14
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:122:25
   (return
    (i32.const 0)
   )
  )
  (loop $continue|0
   (if
    ;;@ ~lib/memory.ts:123:11
    (if (result i32)
     (tee_local $3
      (i32.ne
       (get_local $2)
       ;;@ ~lib/memory.ts:123:16
       (i32.const 0)
      )
     )
     ;;@ ~lib/memory.ts:123:21
     (i32.eq
      (i32.load8_u
       ;;@ ~lib/memory.ts:123:30
       (get_local $0)
      )
      ;;@ ~lib/memory.ts:123:37
      (i32.load8_u
       ;;@ ~lib/memory.ts:123:46
       (get_local $1)
      )
     )
     (get_local $3)
    )
    (block
     ;;@ ~lib/memory.ts:124:6
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:124:11
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:124:17
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ ~lib/memory.ts:126:55
  (if (result i32)
   ;;@ ~lib/memory.ts:126:11
   (get_local $2)
   ;;@ ~lib/memory.ts:126:15
   (i32.sub
    (i32.load8_u
     ;;@ ~lib/memory.ts:126:29
     (get_local $0)
    )
    ;;@ ~lib/memory.ts:126:35
    (i32.load8_u
     ;;@ ~lib/memory.ts:126:49
     (get_local $1)
    )
   )
   ;;@ ~lib/memory.ts:126:55
   (i32.const 0)
  )
 )
 (func $~lib/allocator/arena/__memory_allocate (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/allocator/arena.ts:17:2
  (if
   ;;@ ~lib/allocator/arena.ts:17:6
   (get_local $0)
   ;;@ ~lib/allocator/arena.ts:17:12
   (block
    ;;@ ~lib/allocator/arena.ts:18:4
    (if
     ;;@ ~lib/allocator/arena.ts:18:8
     (i32.gt_u
      (get_local $0)
      ;;@ ~lib/allocator/arena.ts:18:15
      (i32.const 1073741824)
     )
     ;;@ ~lib/allocator/arena.ts:18:28
     (unreachable)
    )
    ;;@ ~lib/allocator/arena.ts:22:4
    (if
     ;;@ ~lib/allocator/arena.ts:22:8
     (i32.gt_u
      ;;@ ~lib/allocator/arena.ts:20:4
      (tee_local $0
       ;;@ ~lib/allocator/arena.ts:20:17
       (i32.and
        (i32.add
         ;;@ ~lib/allocator/arena.ts:20:18
         (i32.add
          ;;@ ~lib/allocator/arena.ts:19:4
          (tee_local $1
           ;;@ ~lib/allocator/arena.ts:19:14
           (get_global $~lib/allocator/arena/offset)
          )
          ;;@ ~lib/allocator/arena.ts:20:24
          (get_local $0)
         )
         ;;@ ~lib/allocator/arena.ts:20:31
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      ;;@ ~lib/allocator/arena.ts:22:17
      (i32.shl
       ;;@ ~lib/allocator/arena.ts:21:4
       (tee_local $2
        (current_memory)
       )
       ;;@ ~lib/allocator/arena.ts:22:39
       (i32.const 16)
      )
     )
     ;;@ ~lib/allocator/arena.ts:25:6
     (if
      ;;@ ~lib/allocator/arena.ts:25:10
      (i32.lt_s
       (grow_memory
        ;;@ ~lib/allocator/arena.ts:24:24
        (select
         ;;@ ~lib/allocator/arena.ts:24:28
         (get_local $2)
         (tee_local $4
          ;;@ ~lib/allocator/arena.ts:23:6
          (tee_local $3
           ;;@ ~lib/allocator/arena.ts:23:24
           (i32.shr_u
            (i32.and
             ;;@ ~lib/allocator/arena.ts:23:25
             (i32.add
              ;;@ ~lib/allocator/arena.ts:23:26
              (i32.sub
               (get_local $0)
               ;;@ ~lib/allocator/arena.ts:23:35
               (get_local $1)
              )
              ;;@ ~lib/allocator/arena.ts:23:41
              (i32.const 65535)
             )
             (i32.const -65536)
            )
            ;;@ ~lib/allocator/arena.ts:23:64
            (i32.const 16)
           )
          )
         )
         (i32.gt_s
          (get_local $2)
          (get_local $4)
         )
        )
       )
       ;;@ ~lib/allocator/arena.ts:25:37
       (i32.const 0)
      )
      ;;@ ~lib/allocator/arena.ts:25:40
      (if
       ;;@ ~lib/allocator/arena.ts:26:12
       (i32.lt_s
        (grow_memory
         ;;@ ~lib/allocator/arena.ts:26:24
         (get_local $3)
        )
        ;;@ ~lib/allocator/arena.ts:26:39
        (i32.const 0)
       )
       ;;@ ~lib/allocator/arena.ts:26:42
       (unreachable)
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:31:4
    (set_global $~lib/allocator/arena/offset
     ;;@ ~lib/allocator/arena.ts:31:13
     (get_local $0)
    )
    ;;@ ~lib/allocator/arena.ts:32:11
    (return
     (get_local $1)
    )
   )
  )
  ;;@ ~lib/allocator/arena.ts:34:9
  (i32.const 0)
 )
 (func $~lib/memory/memory.allocate (; 7 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/memory.ts:142:45
  (call $~lib/allocator/arena/__memory_allocate
   ;;@ ~lib/memory.ts:142:63
   (get_local $0)
  )
 )
 (func $~lib/memory/memory.free (; 8 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/memory/memory.reset (; 9 ;) (type $v)
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
 )
 (func $start (; 10 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   ;;@ ~lib/allocator/arena.ts:12:25
   (i32.and
    (i32.add
     ;;@ ~lib/allocator/arena.ts:12:26
     (get_global $HEAP_BASE)
     ;;@ ~lib/allocator/arena.ts:12:38
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global $~lib/allocator/arena/offset
   ;;@ ~lib/allocator/arena.ts:13:20
   (get_global $~lib/allocator/arena/startOffset)
  )
 )
)
