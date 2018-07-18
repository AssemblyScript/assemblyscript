(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/buddy/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/allocator/buddy/MIN_ALLOC_LOG2 i32 (i32.const 4))
 (global $~lib/allocator/buddy/MIN_ALLOC i32 (i32.const 16))
 (global $~lib/allocator/buddy/MAX_ALLOC_LOG2 i32 (i32.const 30))
 (global $~lib/allocator/buddy/MAX_ALLOC i32 (i32.const 1073741824))
 (global $~lib/allocator/buddy/BUCKET_COUNT i32 (i32.const 27))
 (global $~lib/allocator/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/SPLIT_COUNT i32 (i32.const 8388608))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/base_ptr (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/max_ptr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 60))
 (memory $0 1)
 (data (i32.const 8) "\17\00\00\00~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00b\00u\00d\00d\00y\00.\00t\00s\00")
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
 (func $~lib/memory/memory.size (; 1 ;) (type $i) (result i32)
  ;;@ ~lib/memory.ts:4:25
  (current_memory)
 )
 (func $~lib/memory/memory.grow (; 2 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/memory.ts:8:30
  (grow_memory
   ;;@ ~lib/memory.ts:8:25
   (get_local $0)
  )
 )
 (func $~lib/memory/memory.fill (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
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
  ;;@ ~lib/memory.ts:32:4
  (set_local $3
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
  ;;@ ~lib/memory.ts:33:4
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:33:12
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:34:4
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:34:9
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:35:4
  (set_local $2
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:35:9
    (i32.const -4)
   )
  )
  ;;@ ~lib/memory.ts:37:4
  (set_local $4
   ;;@ ~lib/memory.ts:37:19
   (i32.mul
    (i32.div_u
     (i32.const -1)
     ;;@ ~lib/memory.ts:37:29
     (i32.const 255)
    )
    (i32.and
     ;;@ ~lib/memory.ts:37:35
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  ;;@ ~lib/memory.ts:40:4
  (i32.store
   ;;@ ~lib/memory.ts:40:15
   (get_local $0)
   ;;@ ~lib/memory.ts:40:21
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:41:4
  (i32.store
   ;;@ ~lib/memory.ts:41:15
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:41:22
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:41:26
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:41:29
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:58:4
  (set_local $3
   ;;@ ~lib/memory.ts:58:8
   (i32.add
    (i32.const 24)
    ;;@ ~lib/memory.ts:58:13
    (i32.and
     ;;@ ~lib/memory.ts:58:14
     (get_local $0)
     ;;@ ~lib/memory.ts:58:21
     (i32.const 4)
    )
   )
  )
  ;;@ ~lib/memory.ts:59:4
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:59:12
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:60:4
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:60:9
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:63:4
  (set_local $5
   ;;@ ~lib/memory.ts:63:19
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    ;;@ ~lib/memory.ts:63:30
    (i64.shl
     ;;@ ~lib/memory.ts:63:31
     (i64.extend_u/i32
      (get_local $4)
     )
     ;;@ ~lib/memory.ts:63:43
     (i64.const 32)
    )
   )
  )
  ;;@ ~lib/memory.ts:64:4
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/memory.ts:64:11
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/memory.ts:64:16
      (i32.const 32)
     )
     (block
      (block
       ;;@ ~lib/memory.ts:65:6
       (i64.store
        ;;@ ~lib/memory.ts:65:17
        (get_local $0)
        ;;@ ~lib/memory.ts:65:23
        (get_local $5)
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
        (get_local $5)
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
        (get_local $5)
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
        (get_local $5)
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
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/memory/memcpy (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/memory.ts:164:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/memory.ts:164:9
     (if (result i32)
      (get_local $2)
      ;;@ ~lib/memory.ts:164:14
      (i32.and
       ;;@ ~lib/memory.ts:164:15
       (get_local $1)
       ;;@ ~lib/memory.ts:164:21
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       ;;@ ~lib/memory.ts:165:4
       (i32.store8
        ;;@ ~lib/memory.ts:165:14
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:165:22
        (i32.load8_u
         ;;@ ~lib/memory.ts:165:31
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
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
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:170:2
  (if
   ;;@ ~lib/memory.ts:170:6
   (i32.eq
    (i32.and
     ;;@ ~lib/memory.ts:170:7
     (get_local $0)
     ;;@ ~lib/memory.ts:170:14
     (i32.const 3)
    )
    ;;@ ~lib/memory.ts:170:20
    (i32.const 0)
   )
   ;;@ ~lib/memory.ts:170:23
   (block
    (block $break|1
     (loop $continue|1
      (if
       ;;@ ~lib/memory.ts:171:11
       (i32.ge_u
        (get_local $2)
        ;;@ ~lib/memory.ts:171:16
        (i32.const 16)
       )
       (block
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
        )
        (br $continue|1)
       )
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
     ;;@ ~lib/memory.ts:191:15
     (i32.store8
      ;;@ ~lib/memory.ts:192:16
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      ;;@ ~lib/memory.ts:192:24
      (i32.load8_u
       ;;@ ~lib/memory.ts:192:33
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
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
       (set_local $5
        ;;@ ~lib/memory.ts:200:12
        (i32.and
         (get_local $0)
         ;;@ ~lib/memory.ts:200:19
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:202:11
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:221:11
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:239:11
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      ;;@ ~lib/memory.ts:202:14
      (block
       ;;@ ~lib/memory.ts:203:8
       (set_local $3
        ;;@ ~lib/memory.ts:203:12
        (i32.load
         ;;@ ~lib/memory.ts:203:22
         (get_local $1)
        )
       )
       ;;@ ~lib/memory.ts:204:8
       (i32.store8
        ;;@ ~lib/memory.ts:204:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:204:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:204:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:205:8
       (i32.store8
        ;;@ ~lib/memory.ts:205:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:205:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:205:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:206:8
       (i32.store8
        ;;@ ~lib/memory.ts:206:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:206:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:206:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
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
       ;;@ ~lib/memory.ts:208:8
       (block $break|3
        (loop $continue|3
         (if
          ;;@ ~lib/memory.ts:208:15
          (i32.ge_u
           (get_local $2)
           ;;@ ~lib/memory.ts:208:20
           (i32.const 17)
          )
          (block
           (block
            ;;@ ~lib/memory.ts:209:10
            (set_local $4
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
            ;;@ ~lib/memory.ts:210:10
            (i32.store
             ;;@ ~lib/memory.ts:210:21
             (get_local $0)
             ;;@ ~lib/memory.ts:210:27
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/memory.ts:210:32
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:210:37
              (i32.shl
               (get_local $4)
               ;;@ ~lib/memory.ts:210:42
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:211:10
            (set_local $3
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
               (get_local $4)
               ;;@ ~lib/memory.ts:212:36
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:212:41
              (i32.shl
               (get_local $3)
               ;;@ ~lib/memory.ts:212:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:213:10
            (set_local $4
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
               (get_local $3)
               ;;@ ~lib/memory.ts:214:36
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:214:41
              (i32.shl
               (get_local $4)
               ;;@ ~lib/memory.ts:214:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:215:10
            (set_local $3
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
               (get_local $4)
               ;;@ ~lib/memory.ts:216:37
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:216:42
              (i32.shl
               (get_local $3)
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
           )
           (br $continue|3)
          )
         )
        )
       )
       ;;@ ~lib/memory.ts:219:8
       (br $break|2)
      )
     )
     ;;@ ~lib/memory.ts:221:14
     (block
      ;;@ ~lib/memory.ts:222:8
      (set_local $3
       ;;@ ~lib/memory.ts:222:12
       (i32.load
        ;;@ ~lib/memory.ts:222:22
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:223:8
      (i32.store8
       ;;@ ~lib/memory.ts:223:18
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:223:26
       (i32.load8_u
        ;;@ ~lib/memory.ts:223:35
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      ;;@ ~lib/memory.ts:224:8
      (i32.store8
       ;;@ ~lib/memory.ts:224:18
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:224:26
       (i32.load8_u
        ;;@ ~lib/memory.ts:224:35
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
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
      ;;@ ~lib/memory.ts:226:8
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/memory.ts:226:15
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:226:20
          (i32.const 18)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:227:10
           (set_local $4
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
           ;;@ ~lib/memory.ts:228:10
           (i32.store
            ;;@ ~lib/memory.ts:228:21
            (get_local $0)
            ;;@ ~lib/memory.ts:228:27
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/memory.ts:228:32
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:228:37
             (i32.shl
              (get_local $4)
              ;;@ ~lib/memory.ts:228:42
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:229:10
           (set_local $3
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
              (get_local $4)
              ;;@ ~lib/memory.ts:230:36
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:230:41
             (i32.shl
              (get_local $3)
              ;;@ ~lib/memory.ts:230:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:231:10
           (set_local $4
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
              (get_local $3)
              ;;@ ~lib/memory.ts:232:36
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:232:41
             (i32.shl
              (get_local $4)
              ;;@ ~lib/memory.ts:232:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:233:10
           (set_local $3
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
              (get_local $4)
              ;;@ ~lib/memory.ts:234:37
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:234:42
             (i32.shl
              (get_local $3)
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
          )
          (br $continue|4)
         )
        )
       )
      )
      ;;@ ~lib/memory.ts:237:8
      (br $break|2)
     )
    )
    ;;@ ~lib/memory.ts:239:14
    (block
     ;;@ ~lib/memory.ts:240:8
     (set_local $3
      ;;@ ~lib/memory.ts:240:12
      (i32.load
       ;;@ ~lib/memory.ts:240:22
       (get_local $1)
      )
     )
     ;;@ ~lib/memory.ts:241:8
     (i32.store8
      ;;@ ~lib/memory.ts:241:18
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      ;;@ ~lib/memory.ts:241:26
      (i32.load8_u
       ;;@ ~lib/memory.ts:241:35
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
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
     ;;@ ~lib/memory.ts:243:8
     (block $break|5
      (loop $continue|5
       (if
        ;;@ ~lib/memory.ts:243:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:243:20
         (i32.const 19)
        )
        (block
         (block
          ;;@ ~lib/memory.ts:244:10
          (set_local $4
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
          ;;@ ~lib/memory.ts:245:10
          (i32.store
           ;;@ ~lib/memory.ts:245:21
           (get_local $0)
           ;;@ ~lib/memory.ts:245:27
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/memory.ts:245:32
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:245:36
            (i32.shl
             (get_local $4)
             ;;@ ~lib/memory.ts:245:41
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:246:10
          (set_local $3
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
             (get_local $4)
             ;;@ ~lib/memory.ts:247:36
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:247:40
            (i32.shl
             (get_local $3)
             ;;@ ~lib/memory.ts:247:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:248:10
          (set_local $4
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
             (get_local $3)
             ;;@ ~lib/memory.ts:249:36
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:249:40
            (i32.shl
             (get_local $4)
             ;;@ ~lib/memory.ts:249:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:250:10
          (set_local $3
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
             (get_local $4)
             ;;@ ~lib/memory.ts:251:37
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:251:41
            (i32.shl
             (get_local $3)
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
         )
         (br $continue|5)
        )
       )
      )
     )
     ;;@ ~lib/memory.ts:254:8
     (br $break|2)
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
    ;;@ ~lib/memory.ts:261:4
    (i32.store8
     ;;@ ~lib/memory.ts:261:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:261:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:261:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:262:4
    (i32.store8
     ;;@ ~lib/memory.ts:262:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:262:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:262:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:263:4
    (i32.store8
     ;;@ ~lib/memory.ts:263:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:263:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:263:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:264:4
    (i32.store8
     ;;@ ~lib/memory.ts:264:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:264:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:264:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:265:4
    (i32.store8
     ;;@ ~lib/memory.ts:265:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:265:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:265:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:266:4
    (i32.store8
     ;;@ ~lib/memory.ts:266:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:266:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:266:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:267:4
    (i32.store8
     ;;@ ~lib/memory.ts:267:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:267:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:267:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:268:4
    (i32.store8
     ;;@ ~lib/memory.ts:268:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:268:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:268:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:269:4
    (i32.store8
     ;;@ ~lib/memory.ts:269:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:269:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:269:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:270:4
    (i32.store8
     ;;@ ~lib/memory.ts:270:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:270:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:270:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:271:4
    (i32.store8
     ;;@ ~lib/memory.ts:271:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:271:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:271:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:272:4
    (i32.store8
     ;;@ ~lib/memory.ts:272:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:272:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:272:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:273:4
    (i32.store8
     ;;@ ~lib/memory.ts:273:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:273:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:273:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:274:4
    (i32.store8
     ;;@ ~lib/memory.ts:274:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:274:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:274:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:275:4
    (i32.store8
     ;;@ ~lib/memory.ts:275:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:275:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:275:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:276:4
    (i32.store8
     ;;@ ~lib/memory.ts:276:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:276:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:276:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
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
    ;;@ ~lib/memory.ts:279:4
    (i32.store8
     ;;@ ~lib/memory.ts:279:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:279:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:279:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:280:4
    (i32.store8
     ;;@ ~lib/memory.ts:280:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:280:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:280:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:281:4
    (i32.store8
     ;;@ ~lib/memory.ts:281:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:281:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:281:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:282:4
    (i32.store8
     ;;@ ~lib/memory.ts:282:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:282:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:282:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:283:4
    (i32.store8
     ;;@ ~lib/memory.ts:283:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:283:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:283:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:284:4
    (i32.store8
     ;;@ ~lib/memory.ts:284:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:284:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:284:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:285:4
    (i32.store8
     ;;@ ~lib/memory.ts:285:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:285:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:285:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:286:4
    (i32.store8
     ;;@ ~lib/memory.ts:286:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:286:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:286:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
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
    ;;@ ~lib/memory.ts:289:4
    (i32.store8
     ;;@ ~lib/memory.ts:289:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:289:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:289:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:290:4
    (i32.store8
     ;;@ ~lib/memory.ts:290:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:290:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:290:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:291:4
    (i32.store8
     ;;@ ~lib/memory.ts:291:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:291:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:291:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:292:4
    (i32.store8
     ;;@ ~lib/memory.ts:292:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:292:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:292:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
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
    ;;@ ~lib/memory.ts:295:4
    (i32.store8
     ;;@ ~lib/memory.ts:295:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:295:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:295:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:296:4
    (i32.store8
     ;;@ ~lib/memory.ts:296:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:296:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:296:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
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
   ;;@ ~lib/memory.ts:298:13
   (i32.store8
    ;;@ ~lib/memory.ts:299:14
    (block (result i32)
     (set_local $5
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    ;;@ ~lib/memory.ts:299:22
    (i32.load8_u
     ;;@ ~lib/memory.ts:299:31
     (block (result i32)
      (set_local $5
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/memory/memory.copy (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
      (block $break|0
       (loop $continue|0
        (if
         ;;@ ~lib/memory.ts:86:15
         (i32.and
          (get_local $0)
          ;;@ ~lib/memory.ts:86:22
          (i32.const 7)
         )
         (block
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
           ;;@ ~lib/memory.ts:89:10
           (i32.store8
            ;;@ ~lib/memory.ts:89:20
            (block (result i32)
             (set_local $3
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            ;;@ ~lib/memory.ts:89:28
            (i32.load8_u
             ;;@ ~lib/memory.ts:89:37
             (block (result i32)
              (set_local $3
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      ;;@ ~lib/memory.ts:91:8
      (block $break|1
       (loop $continue|1
        (if
         ;;@ ~lib/memory.ts:91:15
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:91:20
          (i32.const 8)
         )
         (block
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
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:98:6
    (block $break|2
     (loop $continue|2
      (if
       ;;@ ~lib/memory.ts:98:13
       (get_local $2)
       (block
        (block
         ;;@ ~lib/memory.ts:99:8
         (i32.store8
          ;;@ ~lib/memory.ts:99:18
          (block (result i32)
           (set_local $3
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          ;;@ ~lib/memory.ts:99:26
          (i32.load8_u
           ;;@ ~lib/memory.ts:99:35
           (block (result i32)
            (set_local $3
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
            )
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
        )
        (br $continue|2)
       )
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
      (block $break|3
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
          )
          (br $continue|3)
         )
        )
       )
      )
      ;;@ ~lib/memory.ts:108:8
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/memory.ts:108:15
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:108:20
          (i32.const 8)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:109:10
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:109:15
             (i32.const 8)
            )
           )
           ;;@ ~lib/memory.ts:110:10
           (i64.store
            ;;@ ~lib/memory.ts:110:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:110:28
             (get_local $2)
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
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:113:6
    (block $break|5
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
 )
 (func $~lib/memory/memory.compare (; 6 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  ;;@ ~lib/memory.ts:123:4
  (block $break|0
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
      )
      (br $continue|0)
     )
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
 (func $~lib/allocator/buddy/update_max_ptr (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/allocator/buddy.ts:175:2
  (if
   ;;@ ~lib/allocator/buddy.ts:175:6
   (i32.gt_u
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:175:18
    (get_global $~lib/allocator/buddy/max_ptr)
   )
   ;;@ ~lib/allocator/buddy.ts:175:27
   (block
    ;;@ ~lib/allocator/buddy.ts:179:4
    (set_local $1
     ;;@ ~lib/allocator/buddy.ts:179:19
     (call $~lib/memory/memory.size)
    )
    ;;@ ~lib/allocator/buddy.ts:180:4
    (set_local $2
     ;;@ ~lib/allocator/buddy.ts:180:19
     (i32.shr_u
      ;;@ ~lib/allocator/buddy.ts:180:25
      (i32.and
       ;;@ ~lib/allocator/buddy.ts:180:26
       (i32.add
        ;;@ ~lib/allocator/buddy.ts:180:27
        (get_local $0)
        ;;@ ~lib/allocator/buddy.ts:180:39
        (i32.const 65535)
       )
       ;;@ ~lib/allocator/buddy.ts:180:49
       (i32.xor
        ;;@ ~lib/allocator/buddy.ts:180:50
        (i32.const 65535)
        (i32.const -1)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:180:62
      (i32.const 16)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:181:4
    (if
     (i32.eqz
      ;;@ ~lib/allocator/buddy.ts:181:11
      (i32.gt_s
       (get_local $2)
       ;;@ ~lib/allocator/buddy.ts:181:22
       (get_local $1)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 181)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:182:4
    (if
     ;;@ ~lib/allocator/buddy.ts:182:8
     (i32.lt_s
      ;;@ ~lib/allocator/buddy.ts:182:15
      (call $~lib/memory/memory.grow
       ;;@ ~lib/allocator/buddy.ts:182:20
       (i32.sub
        (get_local $2)
        ;;@ ~lib/allocator/buddy.ts:182:31
        (get_local $1)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:182:43
      (i32.const 0)
     )
     ;;@ ~lib/allocator/buddy.ts:182:46
     (return
      ;;@ ~lib/allocator/buddy.ts:183:13
      (i32.const 0)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:186:4
    (set_global $~lib/allocator/buddy/max_ptr
     ;;@ ~lib/allocator/buddy.ts:186:14
     (i32.shl
      (get_local $2)
      ;;@ ~lib/allocator/buddy.ts:186:33
      (i32.const 16)
     )
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:188:9
  (i32.const 1)
 )
 (func $~lib/allocator/buddy/buckets$get (; 8 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:101:2
  (if
   (i32.eqz
    ;;@ ~lib/allocator/buddy.ts:101:9
    (i32.lt_u
     (get_local $0)
     ;;@ ~lib/allocator/buddy.ts:101:17
     (i32.const 27)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 101)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:102:59
  (i32.add
   ;;@ ~lib/allocator/buddy.ts:102:26
   (get_global $~lib/allocator/buddy/BUCKETS_START)
   ;;@ ~lib/allocator/buddy.ts:102:42
   (i32.mul
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:102:50
    (i32.const 8)
   )
  )
 )
 (func $~lib/allocator/buddy/list_init (; 9 ;) (type $iv) (param $0 i32)
  ;;@ ~lib/allocator/buddy.ts:197:2
  (i32.store
   (get_local $0)
   ;;@ ~lib/allocator/buddy.ts:197:14
   (get_local $0)
  )
  ;;@ ~lib/allocator/buddy.ts:198:2
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/allocator/buddy.ts:198:14
   (get_local $0)
  )
 )
 (func $~lib/allocator/buddy/list_push (; 10 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ ~lib/allocator/buddy.ts:206:2
  (set_local $2
   ;;@ ~lib/allocator/buddy.ts:206:13
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:207:2
  (i32.store
   (get_local $1)
   ;;@ ~lib/allocator/buddy.ts:207:15
   (get_local $2)
  )
  ;;@ ~lib/allocator/buddy.ts:208:2
  (i32.store offset=4
   (get_local $1)
   ;;@ ~lib/allocator/buddy.ts:208:15
   (get_local $0)
  )
  ;;@ ~lib/allocator/buddy.ts:209:2
  (i32.store offset=4
   (get_local $2)
   ;;@ ~lib/allocator/buddy.ts:209:14
   (get_local $1)
  )
  ;;@ ~lib/allocator/buddy.ts:210:2
  (i32.store
   (get_local $0)
   ;;@ ~lib/allocator/buddy.ts:210:14
   (get_local $1)
  )
 )
 (func $~lib/allocator/buddy/bucket_for_request (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/allocator/buddy.ts:279:2
  (set_local $1
   ;;@ ~lib/allocator/buddy.ts:279:15
   (i32.sub
    (i32.const 27)
    ;;@ ~lib/allocator/buddy.ts:279:30
    (i32.const 1)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:280:2
  (set_local $2
   ;;@ ~lib/allocator/buddy.ts:280:13
   (i32.const 16)
  )
  ;;@ ~lib/allocator/buddy.ts:282:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/allocator/buddy.ts:282:9
     (i32.lt_u
      (get_local $2)
      ;;@ ~lib/allocator/buddy.ts:282:16
      (get_local $0)
     )
     (block
      (block
       ;;@ ~lib/allocator/buddy.ts:283:4
       (set_local $1
        (i32.sub
         (get_local $1)
         (i32.const 1)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:284:4
       (set_local $2
        (i32.mul
         (get_local $2)
         ;;@ ~lib/allocator/buddy.ts:284:12
         (i32.const 2)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:287:9
  (get_local $1)
 )
 (func $~lib/allocator/buddy/node_for_ptr (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:252:75
  (i32.sub
   ;;@ ~lib/allocator/buddy.ts:252:9
   (i32.add
    (i32.shr_u
     ;;@ ~lib/allocator/buddy.ts:252:10
     (i32.sub
      ;;@ ~lib/allocator/buddy.ts:252:11
      (get_local $0)
      ;;@ ~lib/allocator/buddy.ts:252:17
      (get_global $~lib/allocator/buddy/base_ptr)
     )
     ;;@ ~lib/allocator/buddy.ts:252:30
     (i32.sub
      ;;@ ~lib/allocator/buddy.ts:252:31
      (i32.const 30)
      ;;@ ~lib/allocator/buddy.ts:252:48
      (get_local $1)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:252:59
    (i32.shl
     ;;@ ~lib/allocator/buddy.ts:252:60
     (i32.const 1)
     ;;@ ~lib/allocator/buddy.ts:252:65
     (get_local $1)
    )
   )
   ;;@ ~lib/allocator/buddy.ts:252:75
   (i32.const 1)
  )
 )
 (func $~lib/allocator/buddy/node_is_split$get (; 13 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:147:2
  (if
   (i32.eqz
    ;;@ ~lib/allocator/buddy.ts:147:9
    (i32.lt_u
     (get_local $0)
     ;;@ ~lib/allocator/buddy.ts:147:17
     (i32.const 8388608)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 147)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:148:45
  (i32.load8_u
   ;;@ ~lib/allocator/buddy.ts:148:18
   (i32.add
    (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_START)
    ;;@ ~lib/allocator/buddy.ts:148:40
    (get_local $0)
   )
  )
 )
 (func $~lib/allocator/buddy/parent_is_split (; 14 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:259:2
  (set_local $0
   ;;@ ~lib/allocator/buddy.ts:259:10
   (i32.div_u
    (i32.sub
     ;;@ ~lib/allocator/buddy.ts:259:11
     (get_local $0)
     ;;@ ~lib/allocator/buddy.ts:259:19
     (i32.const 1)
    )
    ;;@ ~lib/allocator/buddy.ts:259:24
    (i32.const 2)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:260:70
  (i32.eq
   ;;@ ~lib/allocator/buddy.ts:260:9
   (i32.and
    ;;@ ~lib/allocator/buddy.ts:260:10
    (i32.shr_u
     ;;@ ~lib/allocator/buddy.ts:260:11
     (call $~lib/allocator/buddy/node_is_split$get
      ;;@ ~lib/allocator/buddy.ts:260:29
      (i32.div_u
       (get_local $0)
       ;;@ ~lib/allocator/buddy.ts:260:37
       (i32.const 8)
      )
     )
     ;;@ ~lib/allocator/buddy.ts:260:44
     (i32.rem_u
      ;;@ ~lib/allocator/buddy.ts:260:50
      (get_local $0)
      ;;@ ~lib/allocator/buddy.ts:260:58
      (i32.const 8)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:260:64
    (i32.const 1)
   )
   ;;@ ~lib/allocator/buddy.ts:260:70
   (i32.const 1)
  )
 )
 (func $~lib/allocator/buddy/list_remove (; 15 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/allocator/buddy.ts:220:2
  (set_local $1
   ;;@ ~lib/allocator/buddy.ts:220:13
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:221:2
  (set_local $2
   ;;@ ~lib/allocator/buddy.ts:221:13
   (i32.load offset=4
    (get_local $0)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:222:2
  (i32.store offset=4
   (get_local $1)
   ;;@ ~lib/allocator/buddy.ts:222:14
   (get_local $2)
  )
  ;;@ ~lib/allocator/buddy.ts:223:2
  (i32.store
   (get_local $2)
   ;;@ ~lib/allocator/buddy.ts:223:14
   (get_local $1)
  )
 )
 (func $~lib/allocator/buddy/ptr_for_node (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:243:77
  (i32.add
   ;;@ ~lib/allocator/buddy.ts:243:9
   (get_global $~lib/allocator/buddy/base_ptr)
   ;;@ ~lib/allocator/buddy.ts:243:20
   (i32.shl
    ;;@ ~lib/allocator/buddy.ts:243:21
    (i32.add
     ;;@ ~lib/allocator/buddy.ts:243:22
     (i32.sub
      (get_local $0)
      ;;@ ~lib/allocator/buddy.ts:243:30
      (i32.shl
       ;;@ ~lib/allocator/buddy.ts:243:31
       (i32.const 1)
       ;;@ ~lib/allocator/buddy.ts:243:36
       (get_local $1)
      )
     )
     ;;@ ~lib/allocator/buddy.ts:243:46
     (i32.const 1)
    )
    ;;@ ~lib/allocator/buddy.ts:243:52
    (i32.sub
     ;;@ ~lib/allocator/buddy.ts:243:53
     (i32.const 30)
     ;;@ ~lib/allocator/buddy.ts:243:70
     (get_local $1)
    )
   )
  )
 )
 (func $~lib/allocator/buddy/node_is_split$set (; 17 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ ~lib/allocator/buddy.ts:152:2
  (if
   (i32.eqz
    ;;@ ~lib/allocator/buddy.ts:152:9
    (i32.lt_u
     (get_local $0)
     ;;@ ~lib/allocator/buddy.ts:152:17
     (i32.const 8388608)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 152)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:153:2
  (i32.store8
   ;;@ ~lib/allocator/buddy.ts:153:12
   (i32.add
    (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_START)
    ;;@ ~lib/allocator/buddy.ts:153:34
    (get_local $0)
   )
   ;;@ ~lib/allocator/buddy.ts:153:41
   (get_local $1)
  )
 )
 (func $~lib/allocator/buddy/flip_parent_is_split (; 18 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  ;;@ ~lib/allocator/buddy.ts:267:2
  (set_local $0
   ;;@ ~lib/allocator/buddy.ts:267:10
   (i32.div_u
    (i32.sub
     ;;@ ~lib/allocator/buddy.ts:267:11
     (get_local $0)
     ;;@ ~lib/allocator/buddy.ts:267:19
     (i32.const 1)
    )
    ;;@ ~lib/allocator/buddy.ts:267:24
    (i32.const 2)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:268:2
  (set_local $1
   ;;@ ~lib/allocator/buddy.ts:268:18
   (i32.div_u
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:268:26
    (i32.const 8)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:269:2
  (call $~lib/allocator/buddy/node_is_split$set
   ;;@ ~lib/allocator/buddy.ts:269:20
   (get_local $1)
   ;;@ ~lib/allocator/buddy.ts:270:4
   (i32.xor
    (call $~lib/allocator/buddy/node_is_split$get
     ;;@ ~lib/allocator/buddy.ts:270:22
     (get_local $1)
    )
    ;;@ ~lib/allocator/buddy.ts:270:35
    (i32.shl
     ;;@ ~lib/allocator/buddy.ts:270:41
     (i32.const 1)
     ;;@ ~lib/allocator/buddy.ts:270:46
     (i32.rem_u
      ;;@ ~lib/allocator/buddy.ts:270:47
      (get_local $0)
      ;;@ ~lib/allocator/buddy.ts:270:55
      (i32.const 8)
     )
    )
   )
  )
 )
 (func $~lib/allocator/buddy/lower_bucket_limit (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/allocator/buddy.ts:296:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/allocator/buddy.ts:296:9
     (i32.lt_u
      (get_local $0)
      ;;@ ~lib/allocator/buddy.ts:296:18
      (get_global $~lib/allocator/buddy/bucket_limit)
     )
     (block
      (block
       ;;@ ~lib/allocator/buddy.ts:297:4
       (set_local $1
        ;;@ ~lib/allocator/buddy.ts:297:15
        (call $~lib/allocator/buddy/node_for_ptr
         ;;@ ~lib/allocator/buddy.ts:297:28
         (get_global $~lib/allocator/buddy/base_ptr)
         ;;@ ~lib/allocator/buddy.ts:297:38
         (get_global $~lib/allocator/buddy/bucket_limit)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:306:4
       (if
        ;;@ ~lib/allocator/buddy.ts:306:8
        (i32.eqz
         ;;@ ~lib/allocator/buddy.ts:306:9
         (call $~lib/allocator/buddy/parent_is_split
          ;;@ ~lib/allocator/buddy.ts:306:25
          (get_local $1)
         )
        )
        ;;@ ~lib/allocator/buddy.ts:306:32
        (block
         ;;@ ~lib/allocator/buddy.ts:307:6
         (call $~lib/allocator/buddy/list_remove
          ;;@ ~lib/allocator/buddy.ts:307:18
          (get_global $~lib/allocator/buddy/base_ptr)
         )
         ;;@ ~lib/allocator/buddy.ts:308:6
         (call $~lib/allocator/buddy/list_init
          ;;@ ~lib/allocator/buddy.ts:308:16
          (call $~lib/allocator/buddy/buckets$get
           ;;@ ~lib/allocator/buddy.ts:308:28
           (block (result i32)
            (set_global $~lib/allocator/buddy/bucket_limit
             (i32.sub
              ;;@ ~lib/allocator/buddy.ts:308:30
              (get_global $~lib/allocator/buddy/bucket_limit)
              (i32.const 1)
             )
            )
            (get_global $~lib/allocator/buddy/bucket_limit)
           )
          )
         )
         ;;@ ~lib/allocator/buddy.ts:309:6
         (call $~lib/allocator/buddy/list_push
          ;;@ ~lib/allocator/buddy.ts:309:16
          (call $~lib/allocator/buddy/buckets$get
           ;;@ ~lib/allocator/buddy.ts:309:28
           (get_global $~lib/allocator/buddy/bucket_limit)
          )
          ;;@ ~lib/allocator/buddy.ts:309:43
          (get_global $~lib/allocator/buddy/base_ptr)
         )
         ;;@ ~lib/allocator/buddy.ts:310:6
         (br $continue|0)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:321:4
       (set_local $2
        ;;@ ~lib/allocator/buddy.ts:321:18
        (call $~lib/allocator/buddy/ptr_for_node
         ;;@ ~lib/allocator/buddy.ts:321:31
         (i32.add
          (get_local $1)
          ;;@ ~lib/allocator/buddy.ts:321:38
          (i32.const 1)
         )
         ;;@ ~lib/allocator/buddy.ts:321:41
         (get_global $~lib/allocator/buddy/bucket_limit)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:322:4
       (if
        ;;@ ~lib/allocator/buddy.ts:322:8
        (i32.eqz
         ;;@ ~lib/allocator/buddy.ts:322:9
         (call $~lib/allocator/buddy/update_max_ptr
          ;;@ ~lib/allocator/buddy.ts:322:24
          (i32.add
           (get_local $2)
           ;;@ ~lib/allocator/buddy.ts:322:38
           (i32.const 8)
          )
         )
        )
        ;;@ ~lib/allocator/buddy.ts:322:50
        (return
         ;;@ ~lib/allocator/buddy.ts:323:13
         (i32.const 0)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:325:4
       (call $~lib/allocator/buddy/list_push
        ;;@ ~lib/allocator/buddy.ts:325:14
        (call $~lib/allocator/buddy/buckets$get
         ;;@ ~lib/allocator/buddy.ts:325:26
         (get_global $~lib/allocator/buddy/bucket_limit)
        )
        ;;@ ~lib/allocator/buddy.ts:325:41
        (get_local $2)
       )
       ;;@ ~lib/allocator/buddy.ts:326:4
       (call $~lib/allocator/buddy/list_init
        ;;@ ~lib/allocator/buddy.ts:326:14
        (call $~lib/allocator/buddy/buckets$get
         ;;@ ~lib/allocator/buddy.ts:326:26
         (block (result i32)
          (set_global $~lib/allocator/buddy/bucket_limit
           (i32.sub
            ;;@ ~lib/allocator/buddy.ts:326:28
            (get_global $~lib/allocator/buddy/bucket_limit)
            (i32.const 1)
           )
          )
          (get_global $~lib/allocator/buddy/bucket_limit)
         )
        )
       )
       ;;@ ~lib/allocator/buddy.ts:332:4
       (set_local $1
        ;;@ ~lib/allocator/buddy.ts:332:11
        (i32.div_u
         (i32.sub
          ;;@ ~lib/allocator/buddy.ts:332:12
          (get_local $1)
          ;;@ ~lib/allocator/buddy.ts:332:19
          (i32.const 1)
         )
         ;;@ ~lib/allocator/buddy.ts:332:24
         (i32.const 2)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:333:4
       (if
        ;;@ ~lib/allocator/buddy.ts:333:8
        (i32.ne
         (get_local $1)
         ;;@ ~lib/allocator/buddy.ts:333:16
         (i32.const 0)
        )
        ;;@ ~lib/allocator/buddy.ts:333:19
        (call $~lib/allocator/buddy/flip_parent_is_split
         ;;@ ~lib/allocator/buddy.ts:334:27
         (get_local $1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:338:9
  (i32.const 1)
 )
 (func $~lib/allocator/buddy/list_pop (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ ~lib/allocator/buddy.ts:230:2
  (set_local $1
   ;;@ ~lib/allocator/buddy.ts:230:13
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:231:2
  (if
   ;;@ ~lib/allocator/buddy.ts:231:6
   (i32.eq
    (get_local $1)
    ;;@ ~lib/allocator/buddy.ts:231:14
    (get_local $0)
   )
   ;;@ ~lib/allocator/buddy.ts:231:27
   (return
    (i32.const 0)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:232:2
  (call $~lib/allocator/buddy/list_remove
   ;;@ ~lib/allocator/buddy.ts:232:14
   (get_local $1)
  )
  ;;@ ~lib/allocator/buddy.ts:233:9
  (get_local $1)
 )
 (func $~lib/allocator/buddy/__memory_allocate (; 21 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  ;;@ ~lib/allocator/buddy.ts:350:2
  (if
   ;;@ ~lib/allocator/buddy.ts:350:6
   (i32.gt_u
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:350:16
    (i32.sub
     (i32.const 1073741824)
     ;;@ ~lib/allocator/buddy.ts:350:28
     (i32.const 8)
    )
   )
   ;;@ ~lib/allocator/buddy.ts:350:41
   (unreachable)
  )
  ;;@ ~lib/allocator/buddy.ts:357:2
  (if
   ;;@ ~lib/allocator/buddy.ts:357:6
   (i32.eq
    (get_global $~lib/allocator/buddy/base_ptr)
    ;;@ ~lib/allocator/buddy.ts:357:18
    (i32.const 0)
   )
   ;;@ ~lib/allocator/buddy.ts:357:21
   (block
    ;;@ ~lib/allocator/buddy.ts:359:4
    (set_global $~lib/allocator/buddy/base_ptr
     ;;@ ~lib/allocator/buddy.ts:359:15
     (i32.and
      (i32.add
       ;;@ ~lib/allocator/buddy.ts:359:16
       (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_END)
       ;;@ ~lib/allocator/buddy.ts:359:36
       (i32.const 7)
      )
      ;;@ ~lib/allocator/buddy.ts:359:41
      (i32.xor
       ;;@ ~lib/allocator/buddy.ts:359:42
       (i32.const 7)
       (i32.const -1)
      )
     )
    )
    ;;@ ~lib/allocator/buddy.ts:360:4
    (set_global $~lib/allocator/buddy/max_ptr
     ;;@ ~lib/allocator/buddy.ts:360:14
     (i32.shl
      (call $~lib/memory/memory.size)
      ;;@ ~lib/allocator/buddy.ts:360:38
      (i32.const 16)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:361:4
    (set_global $~lib/allocator/buddy/bucket_limit
     ;;@ ~lib/allocator/buddy.ts:361:19
     (i32.sub
      (i32.const 27)
      ;;@ ~lib/allocator/buddy.ts:361:34
      (i32.const 1)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:362:4
    (if
     ;;@ ~lib/allocator/buddy.ts:362:8
     (i32.eqz
      ;;@ ~lib/allocator/buddy.ts:362:9
      (call $~lib/allocator/buddy/update_max_ptr
       ;;@ ~lib/allocator/buddy.ts:362:24
       (i32.add
        (get_global $~lib/allocator/buddy/base_ptr)
        ;;@ ~lib/allocator/buddy.ts:362:35
        (i32.const 8)
       )
      )
     )
     ;;@ ~lib/allocator/buddy.ts:362:47
     (return
      ;;@ ~lib/allocator/buddy.ts:363:13
      (i32.const 0)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:365:4
    (call $~lib/allocator/buddy/list_init
     ;;@ ~lib/allocator/buddy.ts:365:14
     (call $~lib/allocator/buddy/buckets$get
      ;;@ ~lib/allocator/buddy.ts:365:26
      (i32.sub
       (i32.const 27)
       ;;@ ~lib/allocator/buddy.ts:365:41
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/allocator/buddy.ts:366:4
    (call $~lib/allocator/buddy/list_push
     ;;@ ~lib/allocator/buddy.ts:366:14
     (call $~lib/allocator/buddy/buckets$get
      ;;@ ~lib/allocator/buddy.ts:366:26
      (i32.sub
       (i32.const 27)
       ;;@ ~lib/allocator/buddy.ts:366:41
       (i32.const 1)
      )
     )
     ;;@ ~lib/allocator/buddy.ts:366:45
     (get_global $~lib/allocator/buddy/base_ptr)
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:373:2
  (set_local $2
   ;;@ ~lib/allocator/buddy.ts:373:11
   (call $~lib/allocator/buddy/bucket_for_request
    ;;@ ~lib/allocator/buddy.ts:373:30
    (i32.add
     (get_local $0)
     ;;@ ~lib/allocator/buddy.ts:373:40
     (i32.const 8)
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:374:2
  (set_local $1
   ;;@ ~lib/allocator/buddy.ts:374:20
   (get_local $2)
  )
  ;;@ ~lib/allocator/buddy.ts:381:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/allocator/buddy.ts:381:9
     (i32.ne
      (i32.add
       (get_local $2)
       ;;@ ~lib/allocator/buddy.ts:381:18
       (i32.const 1)
      )
      ;;@ ~lib/allocator/buddy.ts:381:23
      (i32.const 0)
     )
     ;;@ ~lib/allocator/buddy.ts:381:26
     (block
      ;;@ ~lib/allocator/buddy.ts:389:4
      (if
       ;;@ ~lib/allocator/buddy.ts:389:8
       (i32.eqz
        ;;@ ~lib/allocator/buddy.ts:389:9
        (call $~lib/allocator/buddy/lower_bucket_limit
         ;;@ ~lib/allocator/buddy.ts:389:28
         (get_local $2)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:389:37
       (return
        ;;@ ~lib/allocator/buddy.ts:390:13
        (i32.const 0)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:397:4
      (set_local $6
       ;;@ ~lib/allocator/buddy.ts:397:10
       (call $~lib/allocator/buddy/list_pop
        ;;@ ~lib/allocator/buddy.ts:397:37
        (call $~lib/allocator/buddy/buckets$get
         ;;@ ~lib/allocator/buddy.ts:397:49
         (get_local $2)
        )
       )
      )
      ;;@ ~lib/allocator/buddy.ts:398:4
      (if
       ;;@ ~lib/allocator/buddy.ts:398:8
       (i32.eqz
        ;;@ ~lib/allocator/buddy.ts:398:9
        (get_local $6)
       )
       ;;@ ~lib/allocator/buddy.ts:398:14
       (block
        ;;@ ~lib/allocator/buddy.ts:403:6
        (if
         ;;@ ~lib/allocator/buddy.ts:403:10
         (if (result i32)
          (tee_local $7
           (i32.ne
            (get_local $2)
            ;;@ ~lib/allocator/buddy.ts:403:20
            (get_global $~lib/allocator/buddy/bucket_limit)
           )
          )
          (get_local $7)
          ;;@ ~lib/allocator/buddy.ts:403:36
          (i32.eq
           (get_local $2)
           ;;@ ~lib/allocator/buddy.ts:403:46
           (i32.const 0)
          )
         )
         ;;@ ~lib/allocator/buddy.ts:403:49
         (block
          ;;@ ~lib/allocator/buddy.ts:404:8
          (set_local $2
           (i32.sub
            (get_local $2)
            (i32.const 1)
           )
          )
          ;;@ ~lib/allocator/buddy.ts:405:8
          (br $continue|0)
         )
        )
        ;;@ ~lib/allocator/buddy.ts:415:6
        (if
         ;;@ ~lib/allocator/buddy.ts:415:10
         (i32.eqz
          ;;@ ~lib/allocator/buddy.ts:415:11
          (call $~lib/allocator/buddy/lower_bucket_limit
           ;;@ ~lib/allocator/buddy.ts:415:30
           (i32.sub
            (get_local $2)
            ;;@ ~lib/allocator/buddy.ts:415:39
            (i32.const 1)
           )
          )
         )
         ;;@ ~lib/allocator/buddy.ts:415:43
         (return
          ;;@ ~lib/allocator/buddy.ts:416:15
          (i32.const 0)
         )
        )
        ;;@ ~lib/allocator/buddy.ts:418:6
        (set_local $6
         ;;@ ~lib/allocator/buddy.ts:418:12
         (call $~lib/allocator/buddy/list_pop
          ;;@ ~lib/allocator/buddy.ts:418:39
          (call $~lib/allocator/buddy/buckets$get
           ;;@ ~lib/allocator/buddy.ts:418:51
           (get_local $2)
          )
         )
        )
       )
      )
      ;;@ ~lib/allocator/buddy.ts:425:4
      (set_local $3
       ;;@ ~lib/allocator/buddy.ts:425:11
       (i32.shl
        (i32.const 1)
        ;;@ ~lib/allocator/buddy.ts:425:16
        (i32.sub
         ;;@ ~lib/allocator/buddy.ts:425:17
         (i32.const 30)
         ;;@ ~lib/allocator/buddy.ts:425:34
         (get_local $2)
        )
       )
      )
      ;;@ ~lib/allocator/buddy.ts:426:4
      (set_local $4
       ;;@ ~lib/allocator/buddy.ts:426:19
       (if (result i32)
        (i32.lt_u
         (get_local $2)
         ;;@ ~lib/allocator/buddy.ts:426:28
         (get_local $1)
        )
        ;;@ ~lib/allocator/buddy.ts:426:46
        (i32.add
         (i32.div_u
          (get_local $3)
          ;;@ ~lib/allocator/buddy.ts:426:53
          (i32.const 2)
         )
         ;;@ ~lib/allocator/buddy.ts:426:57
         (i32.const 8)
        )
        ;;@ ~lib/allocator/buddy.ts:426:69
        (get_local $3)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:427:4
      (if
       ;;@ ~lib/allocator/buddy.ts:427:8
       (i32.eqz
        ;;@ ~lib/allocator/buddy.ts:427:9
        (call $~lib/allocator/buddy/update_max_ptr
         ;;@ ~lib/allocator/buddy.ts:427:24
         (i32.add
          (get_local $6)
          ;;@ ~lib/allocator/buddy.ts:427:30
          (get_local $4)
         )
        )
       )
       ;;@ ~lib/allocator/buddy.ts:427:45
       (block
        ;;@ ~lib/allocator/buddy.ts:428:6
        (call $~lib/allocator/buddy/list_push
         ;;@ ~lib/allocator/buddy.ts:428:16
         (call $~lib/allocator/buddy/buckets$get
          ;;@ ~lib/allocator/buddy.ts:428:28
          (get_local $2)
         )
         ;;@ ~lib/allocator/buddy.ts:428:37
         (get_local $6)
        )
        ;;@ ~lib/allocator/buddy.ts:429:13
        (return
         (i32.const 0)
        )
       )
      )
      ;;@ ~lib/allocator/buddy.ts:443:4
      (set_local $5
       ;;@ ~lib/allocator/buddy.ts:443:8
       (call $~lib/allocator/buddy/node_for_ptr
        ;;@ ~lib/allocator/buddy.ts:443:21
        (get_local $6)
        ;;@ ~lib/allocator/buddy.ts:443:26
        (get_local $2)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:444:4
      (if
       ;;@ ~lib/allocator/buddy.ts:444:8
       (i32.ne
        (get_local $5)
        ;;@ ~lib/allocator/buddy.ts:444:13
        (i32.const 0)
       )
       ;;@ ~lib/allocator/buddy.ts:444:16
       (call $~lib/allocator/buddy/flip_parent_is_split
        ;;@ ~lib/allocator/buddy.ts:445:27
        (get_local $5)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:455:4
      (block $break|1
       (loop $continue|1
        (if
         ;;@ ~lib/allocator/buddy.ts:455:11
         (i32.lt_u
          (get_local $2)
          ;;@ ~lib/allocator/buddy.ts:455:20
          (get_local $1)
         )
         (block
          (block
           ;;@ ~lib/allocator/buddy.ts:456:6
           (set_local $5
            ;;@ ~lib/allocator/buddy.ts:456:10
            (i32.add
             (i32.mul
              (get_local $5)
              ;;@ ~lib/allocator/buddy.ts:456:14
              (i32.const 2)
             )
             ;;@ ~lib/allocator/buddy.ts:456:18
             (i32.const 1)
            )
           )
           ;;@ ~lib/allocator/buddy.ts:457:6
           (set_local $2
            (i32.add
             (get_local $2)
             (i32.const 1)
            )
           )
           ;;@ ~lib/allocator/buddy.ts:458:6
           (call $~lib/allocator/buddy/flip_parent_is_split
            ;;@ ~lib/allocator/buddy.ts:458:27
            (get_local $5)
           )
           ;;@ ~lib/allocator/buddy.ts:459:6
           (call $~lib/allocator/buddy/list_push
            ;;@ ~lib/allocator/buddy.ts:460:8
            (call $~lib/allocator/buddy/buckets$get
             ;;@ ~lib/allocator/buddy.ts:460:20
             (get_local $2)
            )
            ;;@ ~lib/allocator/buddy.ts:461:8
            (call $~lib/allocator/buddy/ptr_for_node
             ;;@ ~lib/allocator/buddy.ts:461:38
             (i32.add
              (get_local $5)
              ;;@ ~lib/allocator/buddy.ts:461:42
              (i32.const 1)
             )
             ;;@ ~lib/allocator/buddy.ts:461:45
             (get_local $2)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
      ;;@ ~lib/allocator/buddy.ts:469:4
      (i32.store
       ;;@ ~lib/allocator/buddy.ts:469:17
       (get_local $6)
       ;;@ ~lib/allocator/buddy.ts:469:22
       (get_local $0)
      )
      ;;@ ~lib/allocator/buddy.ts:470:17
      (return
       ;;@ ~lib/allocator/buddy.ts:470:11
       (i32.add
        (get_local $6)
        ;;@ ~lib/allocator/buddy.ts:470:17
        (i32.const 8)
       )
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:473:9
  (i32.const 0)
 )
 (func $~lib/memory/memory.allocate (; 22 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/memory.ts:142:4
  (return
   ;;@ ~lib/memory.ts:142:45
   (call $~lib/allocator/buddy/__memory_allocate
    ;;@ ~lib/memory.ts:142:63
    (get_local $0)
   )
  )
 )
 (func $~lib/allocator/buddy/__memory_free (; 23 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ ~lib/allocator/buddy.ts:483:2
  (if
   ;;@ ~lib/allocator/buddy.ts:483:6
   (i32.eqz
    ;;@ ~lib/allocator/buddy.ts:483:7
    (get_local $0)
   )
   ;;@ ~lib/allocator/buddy.ts:483:12
   (return)
  )
  ;;@ ~lib/allocator/buddy.ts:492:2
  (set_local $0
   ;;@ ~lib/allocator/buddy.ts:492:8
   (i32.sub
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:492:14
    (i32.const 8)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:493:2
  (set_local $1
   ;;@ ~lib/allocator/buddy.ts:493:11
   (call $~lib/allocator/buddy/bucket_for_request
    ;;@ ~lib/allocator/buddy.ts:493:30
    (i32.add
     (i32.load
      ;;@ ~lib/allocator/buddy.ts:493:42
      (get_local $0)
     )
     ;;@ ~lib/allocator/buddy.ts:493:49
     (i32.const 8)
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:494:2
  (set_local $2
   ;;@ ~lib/allocator/buddy.ts:494:6
   (call $~lib/allocator/buddy/node_for_ptr
    ;;@ ~lib/allocator/buddy.ts:494:19
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:494:24
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:500:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/allocator/buddy.ts:500:9
     (i32.ne
      (get_local $2)
      ;;@ ~lib/allocator/buddy.ts:500:14
      (i32.const 0)
     )
     (block
      (block
       ;;@ ~lib/allocator/buddy.ts:507:4
       (call $~lib/allocator/buddy/flip_parent_is_split
        ;;@ ~lib/allocator/buddy.ts:507:25
        (get_local $2)
       )
       ;;@ ~lib/allocator/buddy.ts:517:4
       (if
        ;;@ ~lib/allocator/buddy.ts:517:8
        (if (result i32)
         (tee_local $3
          (call $~lib/allocator/buddy/parent_is_split
           ;;@ ~lib/allocator/buddy.ts:517:24
           (get_local $2)
          )
         )
         (get_local $3)
         ;;@ ~lib/allocator/buddy.ts:517:30
         (i32.eq
          (get_local $1)
          ;;@ ~lib/allocator/buddy.ts:517:40
          (get_global $~lib/allocator/buddy/bucket_limit)
         )
        )
        ;;@ ~lib/allocator/buddy.ts:517:54
        (br $break|0)
       )
       ;;@ ~lib/allocator/buddy.ts:528:4
       (call $~lib/allocator/buddy/list_remove
        ;;@ ~lib/allocator/buddy.ts:528:16
        (call $~lib/allocator/buddy/ptr_for_node
         ;;@ ~lib/allocator/buddy.ts:528:46
         (i32.add
          (i32.xor
           ;;@ ~lib/allocator/buddy.ts:528:47
           (i32.sub
            ;;@ ~lib/allocator/buddy.ts:528:48
            (get_local $2)
            ;;@ ~lib/allocator/buddy.ts:528:52
            (i32.const 1)
           )
           ;;@ ~lib/allocator/buddy.ts:528:57
           (i32.const 1)
          )
          ;;@ ~lib/allocator/buddy.ts:528:62
          (i32.const 1)
         )
         ;;@ ~lib/allocator/buddy.ts:528:65
         (get_local $1)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:529:4
       (set_local $2
        ;;@ ~lib/allocator/buddy.ts:529:8
        (i32.div_u
         (i32.sub
          ;;@ ~lib/allocator/buddy.ts:529:9
          (get_local $2)
          ;;@ ~lib/allocator/buddy.ts:529:13
          (i32.const 1)
         )
         ;;@ ~lib/allocator/buddy.ts:529:18
         (i32.const 2)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:530:4
       (set_local $1
        (i32.sub
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:539:2
  (call $~lib/allocator/buddy/list_push
   ;;@ ~lib/allocator/buddy.ts:539:12
   (call $~lib/allocator/buddy/buckets$get
    ;;@ ~lib/allocator/buddy.ts:539:24
    (get_local $1)
   )
   ;;@ ~lib/allocator/buddy.ts:539:33
   (call $~lib/allocator/buddy/ptr_for_node
    ;;@ ~lib/allocator/buddy.ts:539:63
    (get_local $2)
    ;;@ ~lib/allocator/buddy.ts:539:66
    (get_local $1)
   )
  )
 )
 (func $~lib/memory/memory.free (; 24 ;) (type $iv) (param $0 i32)
  ;;@ ~lib/memory.ts:148:36
  (call $~lib/allocator/buddy/__memory_free
   ;;@ ~lib/memory.ts:148:50
   (get_local $0)
  )
  ;;@ ~lib/memory.ts:148:56
  (return)
 )
 (func $~lib/allocator/buddy/__memory_reset (; 25 ;) (type $v)
  ;;@ ~lib/allocator/buddy.ts:544:2
  (unreachable)
 )
 (func $~lib/memory/memory.reset (; 26 ;) (type $v)
  ;;@ ~lib/memory.ts:154:37
  (call $~lib/allocator/buddy/__memory_reset)
  ;;@ ~lib/memory.ts:154:55
  (return)
 )
 (func $start (; 27 ;) (type $v)
  (set_global $~lib/allocator/buddy/BUCKETS_START
   ;;@ ~lib/allocator/buddy.ts:97:27
   (get_global $HEAP_BASE)
  )
  (set_global $~lib/allocator/buddy/BUCKETS_END
   ;;@ ~lib/allocator/buddy.ts:98:25
   (i32.add
    (get_global $~lib/allocator/buddy/BUCKETS_START)
    ;;@ ~lib/allocator/buddy.ts:98:41
    (i32.mul
     (i32.const 27)
     ;;@ ~lib/allocator/buddy.ts:98:56
     (i32.const 8)
    )
   )
  )
  (set_global $~lib/allocator/buddy/NODE_IS_SPLIT_START
   ;;@ ~lib/allocator/buddy.ts:143:33
   (get_global $~lib/allocator/buddy/BUCKETS_END)
  )
  (set_global $~lib/allocator/buddy/NODE_IS_SPLIT_END
   ;;@ ~lib/allocator/buddy.ts:144:31
   (i32.add
    (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_START)
    ;;@ ~lib/allocator/buddy.ts:144:53
    (i32.mul
     (i32.const 8388608)
     ;;@ ~lib/allocator/buddy.ts:144:67
     (i32.const 1)
    )
   )
  )
 )
)
