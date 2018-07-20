(module
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global $~lib/allocator/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/base_ptr (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/max_ptr (mut i32) (i32.const 0))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "memory.fill" (func $~lib/memory/memory.fill))
 (export "memory.copy" (func $~lib/memory/memory.copy))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (start $start)
 (func $~lib/memory/memset (; 0 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  ;;@ ~lib/memory.ts:244:2
  (if
   ;;@ ~lib/memory.ts:244:6
   (i32.eqz
    ;;@ ~lib/memory.ts:244:7
    (get_local $2)
   )
   ;;@ ~lib/memory.ts:244:10
   (return)
  )
  ;;@ ~lib/memory.ts:245:2
  (i32.store8
   ;;@ ~lib/memory.ts:245:12
   (get_local $0)
   ;;@ ~lib/memory.ts:245:18
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:246:2
  (i32.store8
   ;;@ ~lib/memory.ts:246:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:246:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:246:23
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:246:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:247:2
  (if
   ;;@ ~lib/memory.ts:247:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:247:11
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:247:14
   (return)
  )
  ;;@ ~lib/memory.ts:249:2
  (i32.store8
   ;;@ ~lib/memory.ts:249:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:249:19
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:249:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:250:2
  (i32.store8
   ;;@ ~lib/memory.ts:250:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:250:19
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:250:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:251:2
  (i32.store8
   ;;@ ~lib/memory.ts:251:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:251:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:251:23
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:251:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:252:2
  (i32.store8
   ;;@ ~lib/memory.ts:252:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:252:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:252:23
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:252:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:253:2
  (if
   ;;@ ~lib/memory.ts:253:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:253:11
    (i32.const 6)
   )
   ;;@ ~lib/memory.ts:253:14
   (return)
  )
  ;;@ ~lib/memory.ts:254:2
  (i32.store8
   ;;@ ~lib/memory.ts:254:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:254:19
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:254:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:255:2
  (i32.store8
   ;;@ ~lib/memory.ts:255:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:255:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:255:23
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:255:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:256:2
  (if
   ;;@ ~lib/memory.ts:256:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:256:11
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:256:14
   (return)
  )
  ;;@ ~lib/memory.ts:267:2
  (i32.store
   ;;@ ~lib/memory.ts:260:2
   (tee_local $0
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:259:2
     (tee_local $4
      ;;@ ~lib/memory.ts:259:17
      (i32.and
       (i32.sub
        (i32.const 0)
        ;;@ ~lib/memory.ts:259:18
        (get_local $0)
       )
       ;;@ ~lib/memory.ts:259:25
       (i32.const 3)
      )
     )
    )
   )
   ;;@ ~lib/memory.ts:264:2
   (tee_local $1
    ;;@ ~lib/memory.ts:264:17
    (i32.mul
     (i32.and
      ;;@ ~lib/memory.ts:264:33
      (get_local $1)
      (i32.const 255)
     )
     (i32.const 16843009)
    )
   )
  )
  ;;@ ~lib/memory.ts:268:2
  (i32.store
   ;;@ ~lib/memory.ts:268:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:262:2
     (tee_local $2
      (i32.and
       (i32.sub
        ;;@ ~lib/memory.ts:261:2
        (get_local $2)
        ;;@ ~lib/memory.ts:261:7
        (get_local $4)
       )
       ;;@ ~lib/memory.ts:262:7
       (i32.const -4)
      )
     )
    )
    ;;@ ~lib/memory.ts:268:24
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:268:27
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:269:2
  (if
   ;;@ ~lib/memory.ts:269:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:269:11
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:269:14
   (return)
  )
  ;;@ ~lib/memory.ts:270:2
  (i32.store
   ;;@ ~lib/memory.ts:270:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:270:20
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:270:23
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:271:2
  (i32.store
   ;;@ ~lib/memory.ts:271:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:271:20
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:271:23
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:272:2
  (i32.store
   ;;@ ~lib/memory.ts:272:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:272:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:272:24
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:272:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:273:2
  (i32.store
   ;;@ ~lib/memory.ts:273:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:273:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:273:24
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:273:27
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:274:2
  (if
   ;;@ ~lib/memory.ts:274:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:274:11
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:274:15
   (return)
  )
  ;;@ ~lib/memory.ts:275:2
  (i32.store
   ;;@ ~lib/memory.ts:275:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:275:20
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:275:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:276:2
  (i32.store
   ;;@ ~lib/memory.ts:276:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:276:20
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:276:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:277:2
  (i32.store
   ;;@ ~lib/memory.ts:277:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:277:20
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:277:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:278:2
  (i32.store
   ;;@ ~lib/memory.ts:278:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:278:20
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:278:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:279:2
  (i32.store
   ;;@ ~lib/memory.ts:279:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:279:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:279:24
    (i32.const 28)
   )
   ;;@ ~lib/memory.ts:279:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:280:2
  (i32.store
   ;;@ ~lib/memory.ts:280:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:280:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:280:24
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:280:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:281:2
  (i32.store
   ;;@ ~lib/memory.ts:281:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:281:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:281:24
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:281:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:282:2
  (i32.store
   ;;@ ~lib/memory.ts:282:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:282:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:282:24
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:282:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:286:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:285:2
    (tee_local $4
     ;;@ ~lib/memory.ts:285:6
     (i32.add
      ;;@ ~lib/memory.ts:285:11
      (i32.and
       ;;@ ~lib/memory.ts:285:12
       (get_local $0)
       ;;@ ~lib/memory.ts:285:19
       (i32.const 4)
      )
      ;;@ ~lib/memory.ts:285:6
      (i32.const 24)
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:287:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:287:7
    (get_local $4)
   )
  )
  ;;@ ~lib/memory.ts:290:2
  (set_local $3
   ;;@ ~lib/memory.ts:290:17
   (i64.or
    (i64.extend_u/i32
     (get_local $1)
    )
    ;;@ ~lib/memory.ts:290:28
    (i64.shl
     ;;@ ~lib/memory.ts:290:29
     (i64.extend_u/i32
      (get_local $1)
     )
     ;;@ ~lib/memory.ts:290:41
     (i64.const 32)
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ ~lib/memory.ts:291:9
    (i32.ge_u
     (get_local $2)
     ;;@ ~lib/memory.ts:291:14
     (i32.const 32)
    )
    (block
     ;;@ ~lib/memory.ts:292:4
     (i64.store
      ;;@ ~lib/memory.ts:292:15
      (get_local $0)
      ;;@ ~lib/memory.ts:292:21
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:293:4
     (i64.store
      ;;@ ~lib/memory.ts:293:15
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:293:22
       (i32.const 8)
      )
      ;;@ ~lib/memory.ts:293:25
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:294:4
     (i64.store
      ;;@ ~lib/memory.ts:294:15
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:294:22
       (i32.const 16)
      )
      ;;@ ~lib/memory.ts:294:26
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:295:4
     (i64.store
      ;;@ ~lib/memory.ts:295:15
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:295:22
       (i32.const 24)
      )
      ;;@ ~lib/memory.ts:295:26
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:296:4
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/memory.ts:296:9
       (i32.const 32)
      )
     )
     ;;@ ~lib/memory.ts:297:4
     (set_local $0
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:297:12
       (i32.const 32)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $~lib/memory/memory.fill (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/memory.ts:11:4
  (call $~lib/memory/memset
   ;;@ ~lib/memory.ts:11:11
   (get_local $0)
   ;;@ ~lib/memory.ts:11:17
   (get_local $1)
   ;;@ ~lib/memory.ts:11:20
   (get_local $2)
  )
 )
 (func $~lib/memory/memcpy (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $continue|0
   (if
    (select
     ;;@ ~lib/memory.ts:59:14
     (i32.and
      ;;@ ~lib/memory.ts:59:15
      (get_local $1)
      ;;@ ~lib/memory.ts:59:21
      (i32.const 3)
     )
     (get_local $2)
     ;;@ ~lib/memory.ts:59:9
     (get_local $2)
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $3
        ;;@ ~lib/memory.ts:60:14
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:60:4
     (i32.store8
      (get_local $3)
      ;;@ ~lib/memory.ts:60:31
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:60:22
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     ;;@ ~lib/memory.ts:61:4
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
  ;;@ ~lib/memory.ts:65:2
  (if
   (i32.eqz
    ;;@ ~lib/memory.ts:65:6
    (i32.and
     ;;@ ~lib/memory.ts:65:7
     (get_local $0)
     ;;@ ~lib/memory.ts:65:14
     (i32.const 3)
    )
   )
   ;;@ ~lib/memory.ts:65:23
   (block
    (loop $continue|1
     (if
      ;;@ ~lib/memory.ts:66:11
      (i32.ge_u
       (get_local $2)
       ;;@ ~lib/memory.ts:66:16
       (i32.const 16)
      )
      (block
       ;;@ ~lib/memory.ts:67:6
       (i32.store
        ;;@ ~lib/memory.ts:67:17
        (get_local $0)
        ;;@ ~lib/memory.ts:67:28
        (i32.load
         ;;@ ~lib/memory.ts:67:38
         (get_local $1)
        )
       )
       ;;@ ~lib/memory.ts:68:6
       (i32.store
        ;;@ ~lib/memory.ts:68:17
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:68:25
         (i32.const 4)
        )
        ;;@ ~lib/memory.ts:68:28
        (i32.load
         ;;@ ~lib/memory.ts:68:38
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:68:45
          (i32.const 4)
         )
        )
       )
       ;;@ ~lib/memory.ts:69:6
       (i32.store
        ;;@ ~lib/memory.ts:69:17
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:69:25
         (i32.const 8)
        )
        ;;@ ~lib/memory.ts:69:28
        (i32.load
         ;;@ ~lib/memory.ts:69:38
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:69:45
          (i32.const 8)
         )
        )
       )
       ;;@ ~lib/memory.ts:70:6
       (i32.store
        ;;@ ~lib/memory.ts:70:17
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:70:24
         (i32.const 12)
        )
        ;;@ ~lib/memory.ts:70:28
        (i32.load
         ;;@ ~lib/memory.ts:70:38
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:70:44
          (i32.const 12)
         )
        )
       )
       ;;@ ~lib/memory.ts:71:6
       (set_local $1
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:71:13
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:71:17
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:71:25
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:71:29
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:71:34
         (i32.const 16)
        )
       )
       (br $continue|1)
      )
     )
    )
    ;;@ ~lib/memory.ts:73:4
    (if
     ;;@ ~lib/memory.ts:73:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:73:12
      (i32.const 8)
     )
     ;;@ ~lib/memory.ts:73:15
     (block
      ;;@ ~lib/memory.ts:74:6
      (i32.store
       ;;@ ~lib/memory.ts:74:17
       (get_local $0)
       ;;@ ~lib/memory.ts:74:27
       (i32.load
        ;;@ ~lib/memory.ts:74:37
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:75:6
      (i32.store
       ;;@ ~lib/memory.ts:75:17
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:75:24
        (i32.const 4)
       )
       ;;@ ~lib/memory.ts:75:27
       (i32.load
        ;;@ ~lib/memory.ts:75:37
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:75:43
         (i32.const 4)
        )
       )
      )
      ;;@ ~lib/memory.ts:76:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:76:14
        (i32.const 8)
       )
      )
      ;;@ ~lib/memory.ts:76:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:76:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:78:4
    (if
     ;;@ ~lib/memory.ts:78:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:78:12
      (i32.const 4)
     )
     ;;@ ~lib/memory.ts:78:15
     (block
      ;;@ ~lib/memory.ts:79:6
      (i32.store
       ;;@ ~lib/memory.ts:79:17
       (get_local $0)
       ;;@ ~lib/memory.ts:79:23
       (i32.load
        ;;@ ~lib/memory.ts:79:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:80:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:80:14
        (i32.const 4)
       )
      )
      ;;@ ~lib/memory.ts:80:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:80:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:82:4
    (if
     ;;@ ~lib/memory.ts:82:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:82:12
      (i32.const 2)
     )
     ;;@ ~lib/memory.ts:82:15
     (block
      ;;@ ~lib/memory.ts:83:6
      (i32.store16
       ;;@ ~lib/memory.ts:83:17
       (get_local $0)
       ;;@ ~lib/memory.ts:83:23
       (i32.load16_u
        ;;@ ~lib/memory.ts:83:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:84:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:84:14
        (i32.const 2)
       )
      )
      ;;@ ~lib/memory.ts:84:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:84:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:86:4
    (if
     ;;@ ~lib/memory.ts:86:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:86:12
      (i32.const 1)
     )
     ;;@ ~lib/memory.ts:87:16
     (block
      (set_local $3
       (get_local $0)
      )
      ;;@ ~lib/memory.ts:86:15
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:87:33
       (block (result i32)
        (set_local $3
         (get_local $1)
        )
        ;;@ ~lib/memory.ts:87:24
        (i32.load8_u
         (get_local $3)
        )
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:89:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:94:2
  (if
   ;;@ ~lib/memory.ts:94:6
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/memory.ts:94:11
    (i32.const 32)
   )
   ;;@ ~lib/memory.ts:94:15
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (block $tablify|0
        (br_table $case0|2 $case1|2 $case2|2 $tablify|0
         (i32.sub
          ;;@ ~lib/memory.ts:95:12
          (i32.and
           (get_local $0)
           ;;@ ~lib/memory.ts:95:19
           (i32.const 3)
          )
          (i32.const 1)
         )
        )
       )
       (br $break|2)
      )
      ;;@ ~lib/memory.ts:98:8
      (set_local $4
       ;;@ ~lib/memory.ts:98:12
       (i32.load
        ;;@ ~lib/memory.ts:98:22
        (get_local $1)
       )
      )
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
      (set_local $0
       (i32.add
        (tee_local $3
         ;;@ ~lib/memory.ts:100:18
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:100:8
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:100:35
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        ;;@ ~lib/memory.ts:100:26
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         ;;@ ~lib/memory.ts:101:18
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:101:8
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:101:35
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        ;;@ ~lib/memory.ts:101:26
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      ;;@ ~lib/memory.ts:102:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ ~lib/memory.ts:102:13
        (i32.const 3)
       )
      )
      (loop $continue|3
       (if
        ;;@ ~lib/memory.ts:103:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:103:20
         (i32.const 17)
        )
        (block
         ;;@ ~lib/memory.ts:105:10
         (i32.store
          ;;@ ~lib/memory.ts:105:21
          (get_local $0)
          ;;@ ~lib/memory.ts:105:27
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ ~lib/memory.ts:105:32
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:105:37
           (i32.shl
            ;;@ ~lib/memory.ts:104:10
            (tee_local $3
             ;;@ ~lib/memory.ts:104:14
             (i32.load
              ;;@ ~lib/memory.ts:104:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:104:30
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/memory.ts:105:42
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:107:10
         (i32.store
          ;;@ ~lib/memory.ts:107:21
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:107:28
           (i32.const 4)
          )
          ;;@ ~lib/memory.ts:107:31
          (i32.or
           (i32.shr_u
            (get_local $3)
            ;;@ ~lib/memory.ts:107:36
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:107:41
           (i32.shl
            ;;@ ~lib/memory.ts:106:10
            (tee_local $4
             ;;@ ~lib/memory.ts:106:14
             (i32.load
              ;;@ ~lib/memory.ts:106:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:106:30
               (i32.const 5)
              )
             )
            )
            ;;@ ~lib/memory.ts:107:46
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:109:10
         (i32.store
          ;;@ ~lib/memory.ts:109:21
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:109:28
           (i32.const 8)
          )
          ;;@ ~lib/memory.ts:109:31
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ ~lib/memory.ts:109:36
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:109:41
           (i32.shl
            ;;@ ~lib/memory.ts:108:10
            (tee_local $3
             ;;@ ~lib/memory.ts:108:14
             (i32.load
              ;;@ ~lib/memory.ts:108:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:108:30
               (i32.const 9)
              )
             )
            )
            ;;@ ~lib/memory.ts:109:46
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:111:10
         (i32.store
          ;;@ ~lib/memory.ts:111:21
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:111:28
           (i32.const 12)
          )
          ;;@ ~lib/memory.ts:111:32
          (i32.or
           (i32.shr_u
            (get_local $3)
            ;;@ ~lib/memory.ts:111:37
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:111:42
           (i32.shl
            ;;@ ~lib/memory.ts:110:10
            (tee_local $4
             ;;@ ~lib/memory.ts:110:14
             (i32.load
              ;;@ ~lib/memory.ts:110:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:110:30
               (i32.const 13)
              )
             )
            )
            ;;@ ~lib/memory.ts:111:47
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:112:10
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:112:17
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:112:21
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:112:29
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:112:33
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/memory.ts:112:38
           (i32.const 16)
          )
         )
         (br $continue|3)
        )
       )
      )
      ;;@ ~lib/memory.ts:114:8
      (br $break|2)
     )
     ;;@ ~lib/memory.ts:117:8
     (set_local $4
      ;;@ ~lib/memory.ts:117:12
      (i32.load
       ;;@ ~lib/memory.ts:117:22
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        ;;@ ~lib/memory.ts:118:18
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:118:8
     (i32.store8
      (get_local $3)
      ;;@ ~lib/memory.ts:118:35
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:118:26
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        ;;@ ~lib/memory.ts:119:18
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:119:8
     (i32.store8
      (get_local $3)
      ;;@ ~lib/memory.ts:119:35
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:119:26
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     ;;@ ~lib/memory.ts:120:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/memory.ts:120:13
       (i32.const 2)
      )
     )
     (loop $continue|4
      (if
       ;;@ ~lib/memory.ts:121:15
       (i32.ge_u
        (get_local $2)
        ;;@ ~lib/memory.ts:121:20
        (i32.const 18)
       )
       (block
        ;;@ ~lib/memory.ts:123:10
        (i32.store
         ;;@ ~lib/memory.ts:123:21
         (get_local $0)
         ;;@ ~lib/memory.ts:123:27
         (i32.or
          (i32.shr_u
           (get_local $4)
           ;;@ ~lib/memory.ts:123:32
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:123:37
          (i32.shl
           ;;@ ~lib/memory.ts:122:10
           (tee_local $3
            ;;@ ~lib/memory.ts:122:14
            (i32.load
             ;;@ ~lib/memory.ts:122:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:122:30
              (i32.const 2)
             )
            )
           )
           ;;@ ~lib/memory.ts:123:42
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:125:10
        (i32.store
         ;;@ ~lib/memory.ts:125:21
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:125:28
          (i32.const 4)
         )
         ;;@ ~lib/memory.ts:125:31
         (i32.or
          (i32.shr_u
           (get_local $3)
           ;;@ ~lib/memory.ts:125:36
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:125:41
          (i32.shl
           ;;@ ~lib/memory.ts:124:10
           (tee_local $4
            ;;@ ~lib/memory.ts:124:14
            (i32.load
             ;;@ ~lib/memory.ts:124:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:124:30
              (i32.const 6)
             )
            )
           )
           ;;@ ~lib/memory.ts:125:46
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:127:10
        (i32.store
         ;;@ ~lib/memory.ts:127:21
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:127:28
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:127:31
         (i32.or
          (i32.shr_u
           (get_local $4)
           ;;@ ~lib/memory.ts:127:36
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:127:41
          (i32.shl
           ;;@ ~lib/memory.ts:126:10
           (tee_local $3
            ;;@ ~lib/memory.ts:126:14
            (i32.load
             ;;@ ~lib/memory.ts:126:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:126:30
              (i32.const 10)
             )
            )
           )
           ;;@ ~lib/memory.ts:127:46
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:129:10
        (i32.store
         ;;@ ~lib/memory.ts:129:21
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:129:28
          (i32.const 12)
         )
         ;;@ ~lib/memory.ts:129:32
         (i32.or
          (i32.shr_u
           (get_local $3)
           ;;@ ~lib/memory.ts:129:37
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:129:42
          (i32.shl
           ;;@ ~lib/memory.ts:128:10
           (tee_local $4
            ;;@ ~lib/memory.ts:128:14
            (i32.load
             ;;@ ~lib/memory.ts:128:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:128:30
              (i32.const 14)
             )
            )
           )
           ;;@ ~lib/memory.ts:129:47
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:130:10
        (set_local $1
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:130:17
          (i32.const 16)
         )
        )
        ;;@ ~lib/memory.ts:130:21
        (set_local $0
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:130:29
          (i32.const 16)
         )
        )
        ;;@ ~lib/memory.ts:130:33
        (set_local $2
         (i32.sub
          (get_local $2)
          ;;@ ~lib/memory.ts:130:38
          (i32.const 16)
         )
        )
        (br $continue|4)
       )
      )
     )
     ;;@ ~lib/memory.ts:132:8
     (br $break|2)
    )
    ;;@ ~lib/memory.ts:135:8
    (set_local $4
     ;;@ ~lib/memory.ts:135:12
     (i32.load
      ;;@ ~lib/memory.ts:135:22
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:136:18
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:136:8
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:136:35
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:136:26
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    ;;@ ~lib/memory.ts:137:8
    (set_local $2
     (i32.sub
      (get_local $2)
      ;;@ ~lib/memory.ts:137:13
      (i32.const 1)
     )
    )
    (loop $continue|5
     (if
      ;;@ ~lib/memory.ts:138:15
      (i32.ge_u
       (get_local $2)
       ;;@ ~lib/memory.ts:138:20
       (i32.const 19)
      )
      (block
       ;;@ ~lib/memory.ts:140:10
       (i32.store
        ;;@ ~lib/memory.ts:140:21
        (get_local $0)
        ;;@ ~lib/memory.ts:140:27
        (i32.or
         (i32.shr_u
          (get_local $4)
          ;;@ ~lib/memory.ts:140:32
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:140:36
         (i32.shl
          ;;@ ~lib/memory.ts:139:10
          (tee_local $3
           ;;@ ~lib/memory.ts:139:14
           (i32.load
            ;;@ ~lib/memory.ts:139:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:139:30
             (i32.const 3)
            )
           )
          )
          ;;@ ~lib/memory.ts:140:41
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:142:10
       (i32.store
        ;;@ ~lib/memory.ts:142:21
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:142:28
         (i32.const 4)
        )
        ;;@ ~lib/memory.ts:142:31
        (i32.or
         (i32.shr_u
          (get_local $3)
          ;;@ ~lib/memory.ts:142:36
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:142:40
         (i32.shl
          ;;@ ~lib/memory.ts:141:10
          (tee_local $4
           ;;@ ~lib/memory.ts:141:14
           (i32.load
            ;;@ ~lib/memory.ts:141:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:141:30
             (i32.const 7)
            )
           )
          )
          ;;@ ~lib/memory.ts:142:45
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:144:10
       (i32.store
        ;;@ ~lib/memory.ts:144:21
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:144:28
         (i32.const 8)
        )
        ;;@ ~lib/memory.ts:144:31
        (i32.or
         (i32.shr_u
          (get_local $4)
          ;;@ ~lib/memory.ts:144:36
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:144:40
         (i32.shl
          ;;@ ~lib/memory.ts:143:10
          (tee_local $3
           ;;@ ~lib/memory.ts:143:14
           (i32.load
            ;;@ ~lib/memory.ts:143:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:143:30
             (i32.const 11)
            )
           )
          )
          ;;@ ~lib/memory.ts:144:45
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:146:10
       (i32.store
        ;;@ ~lib/memory.ts:146:21
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:146:28
         (i32.const 12)
        )
        ;;@ ~lib/memory.ts:146:32
        (i32.or
         (i32.shr_u
          (get_local $3)
          ;;@ ~lib/memory.ts:146:37
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:146:41
         (i32.shl
          ;;@ ~lib/memory.ts:145:10
          (tee_local $4
           ;;@ ~lib/memory.ts:145:14
           (i32.load
            ;;@ ~lib/memory.ts:145:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:145:30
             (i32.const 15)
            )
           )
          )
          ;;@ ~lib/memory.ts:146:46
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:147:10
       (set_local $1
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:147:17
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:147:21
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:147:29
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:147:33
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:147:38
         (i32.const 16)
        )
       )
       (br $continue|5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:155:2
  (if
   ;;@ ~lib/memory.ts:155:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:155:10
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:155:14
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:156:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:156:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:156:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:156:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:157:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:157:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:157:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:157:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:158:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:158:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:158:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:158:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:159:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:159:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:159:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:159:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:160:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:160:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:160:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:160:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:161:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:161:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:161:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:161:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:162:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:162:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:162:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:162:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:163:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:163:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:163:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:163:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:164:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:164:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:164:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:164:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
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
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:166:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:166:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:166:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:166:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:167:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:167:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:167:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:167:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:168:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:168:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:168:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:168:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:169:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:169:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:169:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:169:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:170:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:170:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:170:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:170:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:171:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:171:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:171:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:171:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:173:2
  (if
   ;;@ ~lib/memory.ts:173:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:173:10
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:173:13
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:174:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:174:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:174:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:174:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:175:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:175:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:175:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:175:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:176:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:176:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:176:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:176:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:177:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:177:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:177:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:177:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:178:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:178:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:178:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:178:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:179:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:179:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:179:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:179:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:180:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:180:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:180:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:180:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:181:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:181:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:181:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:181:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:183:2
  (if
   ;;@ ~lib/memory.ts:183:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:183:10
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:183:13
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:184:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:184:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:184:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:184:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:185:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:185:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:185:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:185:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:186:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:186:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:186:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:186:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:187:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:187:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:187:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:187:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:189:2
  (if
   ;;@ ~lib/memory.ts:189:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:189:10
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:189:13
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:190:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:190:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:190:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:190:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:191:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:191:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:191:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:191:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:193:2
  (if
   ;;@ ~lib/memory.ts:193:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:193:10
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:194:14
   (block
    (set_local $3
     (get_local $0)
    )
    ;;@ ~lib/memory.ts:193:13
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:194:31
     (block (result i32)
      (set_local $3
       (get_local $1)
      )
      ;;@ ~lib/memory.ts:194:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
 )
 (func $~lib/memory/memmove (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/memory.ts:200:2
  (if
   ;;@ ~lib/memory.ts:200:6
   (i32.eq
    (get_local $0)
    ;;@ ~lib/memory.ts:200:14
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:200:19
   (return)
  )
  ;;@ ~lib/memory.ts:201:2
  (if
   ;;@ ~lib/memory.ts:201:6
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       ;;@ ~lib/memory.ts:201:12
       (get_local $2)
      )
      ;;@ ~lib/memory.ts:201:17
      (get_local $0)
     )
    )
    (get_local $3)
    ;;@ ~lib/memory.ts:201:25
    (i32.le_u
     (i32.add
      (get_local $0)
      ;;@ ~lib/memory.ts:201:32
      (get_local $2)
     )
     ;;@ ~lib/memory.ts:201:37
     (get_local $1)
    )
   )
   ;;@ ~lib/memory.ts:201:42
   (block
    ;;@ ~lib/memory.ts:202:4
    (call $~lib/memory/memcpy
     ;;@ ~lib/memory.ts:202:11
     (get_local $0)
     ;;@ ~lib/memory.ts:202:17
     (get_local $1)
     ;;@ ~lib/memory.ts:202:22
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:203:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:205:2
  (if
   ;;@ ~lib/memory.ts:205:6
   (i32.lt_u
    (get_local $0)
    ;;@ ~lib/memory.ts:205:13
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:205:18
   (block
    ;;@ ~lib/memory.ts:206:4
    (if
     ;;@ ~lib/memory.ts:206:8
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:206:9
       (get_local $1)
       ;;@ ~lib/memory.ts:206:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:206:21
      (i32.and
       ;;@ ~lib/memory.ts:206:22
       (get_local $0)
       ;;@ ~lib/memory.ts:206:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:206:33
     (block
      (loop $continue|0
       (if
        ;;@ ~lib/memory.ts:207:13
        (i32.and
         (get_local $0)
         ;;@ ~lib/memory.ts:207:20
         (i32.const 7)
        )
        (block
         ;;@ ~lib/memory.ts:208:8
         (if
          ;;@ ~lib/memory.ts:208:12
          (i32.eqz
           ;;@ ~lib/memory.ts:208:13
           (get_local $2)
          )
          ;;@ ~lib/memory.ts:208:16
          (return)
         )
         ;;@ ~lib/memory.ts:209:8
         (set_local $2
          (i32.sub
           ;;@ ~lib/memory.ts:209:10
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $0
          (i32.add
           (tee_local $3
            ;;@ ~lib/memory.ts:210:18
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         ;;@ ~lib/memory.ts:210:8
         (i32.store8
          (get_local $3)
          ;;@ ~lib/memory.ts:210:35
          (block (result i32)
           (set_local $1
            (i32.add
             (tee_local $3
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           ;;@ ~lib/memory.ts:210:26
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
        ;;@ ~lib/memory.ts:212:13
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:212:18
         (i32.const 8)
        )
        (block
         ;;@ ~lib/memory.ts:213:8
         (i64.store
          ;;@ ~lib/memory.ts:213:19
          (get_local $0)
          ;;@ ~lib/memory.ts:213:25
          (i64.load
           ;;@ ~lib/memory.ts:213:35
           (get_local $1)
          )
         )
         ;;@ ~lib/memory.ts:214:8
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/memory.ts:214:16
           (i32.const 8)
          )
         )
         ;;@ ~lib/memory.ts:215:8
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:215:16
           (i32.const 8)
          )
         )
         ;;@ ~lib/memory.ts:216:8
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:216:16
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
      ;;@ ~lib/memory.ts:219:11
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          ;;@ ~lib/memory.ts:220:16
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:220:6
       (i32.store8
        (get_local $3)
        ;;@ ~lib/memory.ts:220:33
        (block (result i32)
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         ;;@ ~lib/memory.ts:220:24
         (i32.load8_u
          (get_local $3)
         )
        )
       )
       ;;@ ~lib/memory.ts:221:6
       (set_local $2
        (i32.sub
         ;;@ ~lib/memory.ts:221:8
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $continue|2)
      )
     )
    )
   )
   ;;@ ~lib/memory.ts:223:9
   (block
    ;;@ ~lib/memory.ts:224:4
    (if
     ;;@ ~lib/memory.ts:224:8
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:224:9
       (get_local $1)
       ;;@ ~lib/memory.ts:224:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:224:21
      (i32.and
       ;;@ ~lib/memory.ts:224:22
       (get_local $0)
       ;;@ ~lib/memory.ts:224:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:224:33
     (block
      (loop $continue|3
       (if
        ;;@ ~lib/memory.ts:225:13
        (i32.and
         (i32.add
          ;;@ ~lib/memory.ts:225:14
          (get_local $0)
          ;;@ ~lib/memory.ts:225:21
          (get_local $2)
         )
         ;;@ ~lib/memory.ts:225:26
         (i32.const 7)
        )
        (block
         ;;@ ~lib/memory.ts:226:8
         (if
          ;;@ ~lib/memory.ts:226:12
          (i32.eqz
           ;;@ ~lib/memory.ts:226:13
           (get_local $2)
          )
          ;;@ ~lib/memory.ts:226:16
          (return)
         )
         ;;@ ~lib/memory.ts:227:8
         (i32.store8
          ;;@ ~lib/memory.ts:227:18
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:227:25
           (tee_local $2
            (i32.sub
             ;;@ ~lib/memory.ts:227:27
             (get_local $2)
             (i32.const 1)
            )
           )
          )
          ;;@ ~lib/memory.ts:227:30
          (i32.load8_u
           ;;@ ~lib/memory.ts:227:39
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:227:45
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
        ;;@ ~lib/memory.ts:229:13
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:229:18
         (i32.const 8)
        )
        (block
         ;;@ ~lib/memory.ts:231:8
         (i64.store
          ;;@ ~lib/memory.ts:231:19
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:230:8
           (tee_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:230:13
             (i32.const 8)
            )
           )
          )
          ;;@ ~lib/memory.ts:231:29
          (i64.load
           ;;@ ~lib/memory.ts:231:39
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:231:45
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
      ;;@ ~lib/memory.ts:234:11
      (get_local $2)
      (block
       ;;@ ~lib/memory.ts:234:14
       (i32.store8
        ;;@ ~lib/memory.ts:235:16
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:235:23
         (tee_local $2
          (i32.sub
           ;;@ ~lib/memory.ts:235:25
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        ;;@ ~lib/memory.ts:235:28
        (i32.load8_u
         ;;@ ~lib/memory.ts:235:37
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:235:43
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
 (func $~lib/memory/memory.copy (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/memory.ts:16:4
  (call $~lib/memory/memmove
   ;;@ ~lib/memory.ts:16:12
   (get_local $0)
   ;;@ ~lib/memory.ts:16:18
   (get_local $1)
   ;;@ ~lib/memory.ts:16:23
   (get_local $2)
  )
 )
 (func $~lib/memory/memcmp (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  ;;@ ~lib/memory.ts:302:2
  (if
   ;;@ ~lib/memory.ts:302:6
   (i32.eq
    (get_local $0)
    ;;@ ~lib/memory.ts:302:12
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:302:23
   (return
    (i32.const 0)
   )
  )
  (loop $continue|0
   (if
    ;;@ ~lib/memory.ts:303:9
    (if (result i32)
     (tee_local $3
      (i32.ne
       (get_local $2)
       ;;@ ~lib/memory.ts:303:14
       (i32.const 0)
      )
     )
     ;;@ ~lib/memory.ts:303:19
     (i32.eq
      (i32.load8_u
       ;;@ ~lib/memory.ts:303:28
       (get_local $0)
      )
      ;;@ ~lib/memory.ts:303:35
      (i32.load8_u
       ;;@ ~lib/memory.ts:303:44
       (get_local $1)
      )
     )
     (get_local $3)
    )
    (block
     ;;@ ~lib/memory.ts:304:4
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:304:9
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:304:15
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
  ;;@ ~lib/memory.ts:306:53
  (if (result i32)
   ;;@ ~lib/memory.ts:306:9
   (get_local $2)
   ;;@ ~lib/memory.ts:306:13
   (i32.sub
    (i32.load8_u
     ;;@ ~lib/memory.ts:306:27
     (get_local $0)
    )
    ;;@ ~lib/memory.ts:306:33
    (i32.load8_u
     ;;@ ~lib/memory.ts:306:47
     (get_local $1)
    )
   )
   ;;@ ~lib/memory.ts:306:53
   (i32.const 0)
  )
 )
 (func $~lib/memory/memory.compare (; 6 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ ~lib/memory.ts:21:27
  (call $~lib/memory/memcmp
   ;;@ ~lib/memory.ts:21:18
   (get_local $0)
   ;;@ ~lib/memory.ts:21:22
   (get_local $1)
   ;;@ ~lib/memory.ts:21:26
   (get_local $2)
  )
 )
 (func $~lib/allocator/buddy/update_max_ptr (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
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
    ;;@ ~lib/allocator/buddy.ts:182:4
    (if
     ;;@ ~lib/allocator/buddy.ts:182:8
     (i32.lt_s
      ;;@ ~lib/allocator/buddy.ts:182:15
      (grow_memory
       ;;@ ~lib/allocator/buddy.ts:182:20
       (i32.sub
        ;;@ ~lib/allocator/buddy.ts:180:4
        (tee_local $1
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
           (i32.const -65536)
          )
          ;;@ ~lib/allocator/buddy.ts:180:62
          (i32.const 16)
         )
        )
        ;;@ ~lib/allocator/buddy.ts:179:19
        (current_memory)
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
      (get_local $1)
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
  ;;@ ~lib/allocator/buddy.ts:102:59
  (i32.add
   ;;@ ~lib/allocator/buddy.ts:102:26
   (get_global $~lib/allocator/buddy/BUCKETS_START)
   ;;@ ~lib/allocator/buddy.ts:102:42
   (i32.shl
    (get_local $0)
    (i32.const 3)
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
  ;;@ ~lib/allocator/buddy.ts:207:2
  (i32.store
   (get_local $1)
   ;;@ ~lib/allocator/buddy.ts:206:2
   (tee_local $2
    ;;@ ~lib/allocator/buddy.ts:206:13
    (i32.load
     (get_local $0)
    )
   )
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
   (i32.const 26)
  )
  ;;@ ~lib/allocator/buddy.ts:280:2
  (set_local $2
   (i32.const 16)
  )
  (loop $continue|0
   (if
    ;;@ ~lib/allocator/buddy.ts:282:9
    (i32.lt_u
     (get_local $2)
     ;;@ ~lib/allocator/buddy.ts:282:16
     (get_local $0)
    )
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
      (i32.shl
       (get_local $2)
       ;;@ ~lib/allocator/buddy.ts:284:12
       (i32.const 1)
      )
     )
     (br $continue|0)
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
       ;;@ ~lib/allocator/buddy.ts:259:2
       (tee_local $0
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
       ;;@ ~lib/allocator/buddy.ts:260:37
       (i32.const 8)
      )
     )
     ;;@ ~lib/allocator/buddy.ts:260:44
     (i32.and
      ;;@ ~lib/allocator/buddy.ts:260:50
      (get_local $0)
      ;;@ ~lib/allocator/buddy.ts:260:58
      (i32.const 7)
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
  ;;@ ~lib/allocator/buddy.ts:222:2
  (i32.store offset=4
   ;;@ ~lib/allocator/buddy.ts:220:2
   (tee_local $1
    ;;@ ~lib/allocator/buddy.ts:220:13
    (i32.load
     (get_local $0)
    )
   )
   ;;@ ~lib/allocator/buddy.ts:221:2
   (tee_local $0
    ;;@ ~lib/allocator/buddy.ts:221:13
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:223:2
  (i32.store
   (get_local $0)
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
     (i32.const 30)
     ;;@ ~lib/allocator/buddy.ts:243:70
     (get_local $1)
    )
   )
  )
 )
 (func $~lib/allocator/buddy/flip_parent_is_split (; 17 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   ;;@ ~lib/allocator/buddy.ts:268:2
   (tee_local $1
    ;;@ ~lib/allocator/buddy.ts:268:18
    (i32.div_u
     ;;@ ~lib/allocator/buddy.ts:267:2
     (tee_local $0
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
     ;;@ ~lib/allocator/buddy.ts:268:26
     (i32.const 8)
    )
   )
  )
  (set_local $0
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
     (i32.and
      ;;@ ~lib/allocator/buddy.ts:270:47
      (get_local $0)
      ;;@ ~lib/allocator/buddy.ts:270:55
      (i32.const 7)
     )
    )
   )
  )
  (i32.store8
   (i32.add
    (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_START)
    (get_local $2)
   )
   (get_local $0)
  )
 )
 (func $~lib/allocator/buddy/lower_bucket_limit (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (loop $continue|0
   (if
    ;;@ ~lib/allocator/buddy.ts:296:9
    (i32.lt_u
     (get_local $0)
     ;;@ ~lib/allocator/buddy.ts:296:18
     (get_global $~lib/allocator/buddy/bucket_limit)
    )
    (block
     ;;@ ~lib/allocator/buddy.ts:306:4
     (if
      ;;@ ~lib/allocator/buddy.ts:306:8
      (i32.eqz
       ;;@ ~lib/allocator/buddy.ts:306:9
       (call $~lib/allocator/buddy/parent_is_split
        ;;@ ~lib/allocator/buddy.ts:297:4
        (tee_local $1
         ;;@ ~lib/allocator/buddy.ts:297:15
         (call $~lib/allocator/buddy/node_for_ptr
          ;;@ ~lib/allocator/buddy.ts:297:28
          (get_global $~lib/allocator/buddy/base_ptr)
          ;;@ ~lib/allocator/buddy.ts:297:38
          (get_global $~lib/allocator/buddy/bucket_limit)
         )
        )
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
     ;;@ ~lib/allocator/buddy.ts:322:4
     (if
      ;;@ ~lib/allocator/buddy.ts:322:8
      (i32.eqz
       ;;@ ~lib/allocator/buddy.ts:322:9
       (call $~lib/allocator/buddy/update_max_ptr
        ;;@ ~lib/allocator/buddy.ts:322:24
        (i32.add
         ;;@ ~lib/allocator/buddy.ts:321:4
         (tee_local $2
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
     ;;@ ~lib/allocator/buddy.ts:333:4
     (if
      ;;@ ~lib/allocator/buddy.ts:332:4
      (tee_local $1
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
      ;;@ ~lib/allocator/buddy.ts:333:19
      (call $~lib/allocator/buddy/flip_parent_is_split
       ;;@ ~lib/allocator/buddy.ts:334:27
       (get_local $1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:338:9
  (i32.const 1)
 )
 (func $~lib/allocator/buddy/list_pop (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ ~lib/allocator/buddy.ts:231:2
  (if
   ;;@ ~lib/allocator/buddy.ts:231:6
   (i32.eq
    ;;@ ~lib/allocator/buddy.ts:230:2
    (tee_local $1
     ;;@ ~lib/allocator/buddy.ts:230:13
     (i32.load
      (get_local $0)
     )
    )
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
 (func $~lib/allocator/buddy/__memory_allocate (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/allocator/buddy.ts:350:2
  (if
   ;;@ ~lib/allocator/buddy.ts:350:6
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
   )
   ;;@ ~lib/allocator/buddy.ts:350:41
   (unreachable)
  )
  ;;@ ~lib/allocator/buddy.ts:357:2
  (if
   (i32.eqz
    ;;@ ~lib/allocator/buddy.ts:357:6
    (get_global $~lib/allocator/buddy/base_ptr)
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
      (i32.const -8)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:360:4
    (set_global $~lib/allocator/buddy/max_ptr
     ;;@ ~lib/allocator/buddy.ts:360:14
     (i32.shl
      (current_memory)
      ;;@ ~lib/allocator/buddy.ts:360:38
      (i32.const 16)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:361:4
    (set_global $~lib/allocator/buddy/bucket_limit
     (i32.const 26)
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
      (i32.const 26)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:366:4
    (call $~lib/allocator/buddy/list_push
     ;;@ ~lib/allocator/buddy.ts:366:14
     (call $~lib/allocator/buddy/buckets$get
      (i32.const 26)
     )
     ;;@ ~lib/allocator/buddy.ts:366:45
     (get_global $~lib/allocator/buddy/base_ptr)
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:374:2
  (set_local $4
   ;;@ ~lib/allocator/buddy.ts:373:2
   (tee_local $1
    ;;@ ~lib/allocator/buddy.ts:373:11
    (call $~lib/allocator/buddy/bucket_for_request
     ;;@ ~lib/allocator/buddy.ts:373:30
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ ~lib/allocator/buddy.ts:381:9
    (i32.ne
     (get_local $1)
     ;;@ ~lib/allocator/buddy.ts:381:23
     (i32.const -1)
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
        (get_local $1)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:389:37
      (return
       ;;@ ~lib/allocator/buddy.ts:390:13
       (i32.const 0)
      )
     )
     ;;@ ~lib/allocator/buddy.ts:398:4
     (if
      ;;@ ~lib/allocator/buddy.ts:398:8
      (i32.eqz
       ;;@ ~lib/allocator/buddy.ts:397:4
       (tee_local $2
        ;;@ ~lib/allocator/buddy.ts:397:10
        (call $~lib/allocator/buddy/list_pop
         ;;@ ~lib/allocator/buddy.ts:397:37
         (call $~lib/allocator/buddy/buckets$get
          ;;@ ~lib/allocator/buddy.ts:397:49
          (get_local $1)
         )
        )
       )
      )
      ;;@ ~lib/allocator/buddy.ts:398:14
      (block
       ;;@ ~lib/allocator/buddy.ts:403:6
       (if
        ;;@ ~lib/allocator/buddy.ts:403:10
        (if (result i32)
         (tee_local $2
          (i32.ne
           (get_local $1)
           ;;@ ~lib/allocator/buddy.ts:403:20
           (get_global $~lib/allocator/buddy/bucket_limit)
          )
         )
         (get_local $2)
         (i32.eqz
          ;;@ ~lib/allocator/buddy.ts:403:36
          (get_local $1)
         )
        )
        ;;@ ~lib/allocator/buddy.ts:403:49
        (block
         ;;@ ~lib/allocator/buddy.ts:404:8
         (set_local $1
          (i32.sub
           (get_local $1)
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
           (get_local $1)
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
       (set_local $2
        ;;@ ~lib/allocator/buddy.ts:418:12
        (call $~lib/allocator/buddy/list_pop
         ;;@ ~lib/allocator/buddy.ts:418:39
         (call $~lib/allocator/buddy/buckets$get
          ;;@ ~lib/allocator/buddy.ts:418:51
          (get_local $1)
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
        (i32.const 30)
        ;;@ ~lib/allocator/buddy.ts:425:34
        (get_local $1)
       )
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
         (get_local $2)
         ;;@ ~lib/allocator/buddy.ts:426:19
         (if (result i32)
          (i32.lt_u
           (get_local $1)
           ;;@ ~lib/allocator/buddy.ts:426:28
           (get_local $4)
          )
          ;;@ ~lib/allocator/buddy.ts:426:46
          (i32.add
           (i32.div_u
            (get_local $3)
            ;;@ ~lib/allocator/buddy.ts:426:53
            (i32.const 2)
           )
           (i32.const 8)
          )
          ;;@ ~lib/allocator/buddy.ts:426:69
          (get_local $3)
         )
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
         (get_local $1)
        )
        ;;@ ~lib/allocator/buddy.ts:428:37
        (get_local $2)
       )
       ;;@ ~lib/allocator/buddy.ts:429:13
       (return
        (i32.const 0)
       )
      )
     )
     ;;@ ~lib/allocator/buddy.ts:444:4
     (if
      ;;@ ~lib/allocator/buddy.ts:443:4
      (tee_local $3
       ;;@ ~lib/allocator/buddy.ts:443:8
       (call $~lib/allocator/buddy/node_for_ptr
        ;;@ ~lib/allocator/buddy.ts:443:21
        (get_local $2)
        ;;@ ~lib/allocator/buddy.ts:443:26
        (get_local $1)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:444:16
      (call $~lib/allocator/buddy/flip_parent_is_split
       ;;@ ~lib/allocator/buddy.ts:445:27
       (get_local $3)
      )
     )
     (loop $continue|1
      (if
       ;;@ ~lib/allocator/buddy.ts:455:11
       (i32.lt_u
        (get_local $1)
        ;;@ ~lib/allocator/buddy.ts:455:20
        (get_local $4)
       )
       (block
        ;;@ ~lib/allocator/buddy.ts:458:6
        (call $~lib/allocator/buddy/flip_parent_is_split
         ;;@ ~lib/allocator/buddy.ts:456:6
         (tee_local $3
          ;;@ ~lib/allocator/buddy.ts:456:10
          (i32.add
           (i32.shl
            (get_local $3)
            ;;@ ~lib/allocator/buddy.ts:456:14
            (i32.const 1)
           )
           ;;@ ~lib/allocator/buddy.ts:456:18
           (i32.const 1)
          )
         )
        )
        ;;@ ~lib/allocator/buddy.ts:459:6
        (call $~lib/allocator/buddy/list_push
         ;;@ ~lib/allocator/buddy.ts:460:8
         (call $~lib/allocator/buddy/buckets$get
          ;;@ ~lib/allocator/buddy.ts:457:6
          (tee_local $1
           (i32.add
            (get_local $1)
            (i32.const 1)
           )
          )
         )
         ;;@ ~lib/allocator/buddy.ts:461:8
         (call $~lib/allocator/buddy/ptr_for_node
          ;;@ ~lib/allocator/buddy.ts:461:38
          (i32.add
           (get_local $3)
           ;;@ ~lib/allocator/buddy.ts:461:42
           (i32.const 1)
          )
          ;;@ ~lib/allocator/buddy.ts:461:45
          (get_local $1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ ~lib/allocator/buddy.ts:469:4
     (i32.store
      ;;@ ~lib/allocator/buddy.ts:469:17
      (get_local $2)
      ;;@ ~lib/allocator/buddy.ts:469:22
      (get_local $0)
     )
     ;;@ ~lib/allocator/buddy.ts:470:17
     (return
      ;;@ ~lib/allocator/buddy.ts:470:11
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:473:9
  (i32.const 0)
 )
 (func $~lib/memory/memory.allocate (; 21 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/memory.ts:37:45
  (call $~lib/allocator/buddy/__memory_allocate
   ;;@ ~lib/memory.ts:37:63
   (get_local $0)
  )
 )
 (func $~lib/allocator/buddy/__memory_free (; 22 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
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
  ;;@ ~lib/allocator/buddy.ts:493:2
  (set_local $1
   ;;@ ~lib/allocator/buddy.ts:493:11
   (call $~lib/allocator/buddy/bucket_for_request
    ;;@ ~lib/allocator/buddy.ts:493:30
    (i32.add
     (i32.load
      ;;@ ~lib/allocator/buddy.ts:492:2
      (tee_local $0
       ;;@ ~lib/allocator/buddy.ts:492:8
       (i32.sub
        (get_local $0)
        (i32.const 8)
       )
      )
     )
     (i32.const 8)
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:494:2
  (set_local $0
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
     (get_local $0)
     (block
      ;;@ ~lib/allocator/buddy.ts:507:4
      (call $~lib/allocator/buddy/flip_parent_is_split
       ;;@ ~lib/allocator/buddy.ts:507:25
       (get_local $0)
      )
      ;;@ ~lib/allocator/buddy.ts:517:54
      (br_if $break|0
       ;;@ ~lib/allocator/buddy.ts:517:8
       (if (result i32)
        (tee_local $2
         (call $~lib/allocator/buddy/parent_is_split
          ;;@ ~lib/allocator/buddy.ts:517:24
          (get_local $0)
         )
        )
        (get_local $2)
        ;;@ ~lib/allocator/buddy.ts:517:30
        (i32.eq
         (get_local $1)
         ;;@ ~lib/allocator/buddy.ts:517:40
         (get_global $~lib/allocator/buddy/bucket_limit)
        )
       )
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
           (get_local $0)
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
      (set_local $0
       ;;@ ~lib/allocator/buddy.ts:529:8
       (i32.div_u
        (i32.sub
         ;;@ ~lib/allocator/buddy.ts:529:9
         (get_local $0)
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
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:539:66
    (get_local $1)
   )
  )
 )
 (func $~lib/memory/memory.free (; 23 ;) (type $iv) (param $0 i32)
  ;;@ ~lib/memory.ts:43:36
  (call $~lib/allocator/buddy/__memory_free
   ;;@ ~lib/memory.ts:43:50
   (get_local $0)
  )
 )
 (func $~lib/memory/memory.reset (; 24 ;) (type $v)
  (unreachable)
 )
 (func $start (; 25 ;) (type $v)
  (set_global $~lib/allocator/buddy/BUCKETS_START
   (i32.const 8)
  )
  (set_global $~lib/allocator/buddy/BUCKETS_END
   ;;@ ~lib/allocator/buddy.ts:98:25
   (i32.add
    (get_global $~lib/allocator/buddy/BUCKETS_START)
    (i32.const 216)
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
    (i32.const 8388608)
   )
  )
 )
)
