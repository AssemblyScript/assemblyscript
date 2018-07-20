(module
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
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
 (func $~lib/allocator/arena/__memory_allocate (; 7 ;) (type $ii) (param $0 i32) (result i32)
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
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      ;;@ ~lib/allocator/arena.ts:22:17
      (i32.shl
       ;;@ ~lib/allocator/arena.ts:21:4
       (tee_local $2
        ;;@ ~lib/allocator/arena.ts:21:29
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
       ;;@ ~lib/allocator/arena.ts:25:17
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
        ;;@ ~lib/allocator/arena.ts:26:19
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
 (func $~lib/memory/memory.allocate (; 8 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/memory.ts:37:45
  (call $~lib/allocator/arena/__memory_allocate
   ;;@ ~lib/memory.ts:37:63
   (get_local $0)
  )
 )
 (func $~lib/memory/memory.free (; 9 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/memory/memory.reset (; 10 ;) (type $v)
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
 )
 (func $start (; 11 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 8)
  )
  (set_global $~lib/allocator/arena/offset
   ;;@ ~lib/allocator/arena.ts:13:20
   (get_global $~lib/allocator/arena/startOffset)
  )
 )
)
