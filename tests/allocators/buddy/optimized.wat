(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global "$(lib)/allocator/buddy/BUCKETS_START" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/buddy/BUCKETS_END" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/buddy/bucket_limit" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/buddy/NODE_IS_SPLIT_START" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/buddy/NODE_IS_SPLIT_END" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/buddy/base_ptr" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/buddy/max_ptr" (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "allocate_memory" (func "$(lib)/allocator/buddy/allocate_memory"))
 (export "free_memory" (func "$(lib)/allocator/buddy/free_memory"))
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/allocator/buddy/update_max_ptr" (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ (lib)/allocator/buddy.ts:174:2
  (if
   ;;@ (lib)/allocator/buddy.ts:174:6
   (i32.gt_u
    (get_local $0)
    ;;@ (lib)/allocator/buddy.ts:174:18
    (get_global "$(lib)/allocator/buddy/max_ptr")
   )
   ;;@ (lib)/allocator/buddy.ts:174:27
   (block
    ;;@ (lib)/allocator/buddy.ts:181:4
    (if
     ;;@ (lib)/allocator/buddy.ts:181:8
     (i32.lt_s
      (grow_memory
       ;;@ (lib)/allocator/buddy.ts:181:20
       (i32.sub
        ;;@ (lib)/allocator/buddy.ts:179:4
        (tee_local $1
         ;;@ (lib)/allocator/buddy.ts:179:19
         (i32.shr_u
          ;;@ (lib)/allocator/buddy.ts:179:25
          (i32.and
           ;;@ (lib)/allocator/buddy.ts:179:26
           (i32.add
            ;;@ (lib)/allocator/buddy.ts:179:27
            (get_local $0)
            ;;@ (lib)/allocator/buddy.ts:179:39
            (i32.const 65535)
           )
           (i32.const -65536)
          )
          ;;@ (lib)/allocator/buddy.ts:179:61
          (i32.const 16)
         )
        )
        ;;@ (lib)/allocator/buddy.ts:178:19
        (current_memory)
       )
      )
      ;;@ (lib)/allocator/buddy.ts:181:43
      (i32.const 0)
     )
     ;;@ (lib)/allocator/buddy.ts:182:13
     (return
      (i32.const 0)
     )
    )
    ;;@ (lib)/allocator/buddy.ts:185:4
    (set_global "$(lib)/allocator/buddy/max_ptr"
     ;;@ (lib)/allocator/buddy.ts:185:14
     (i32.shl
      (get_local $1)
      ;;@ (lib)/allocator/buddy.ts:185:33
      (i32.const 16)
     )
    )
   )
  )
  ;;@ (lib)/allocator/buddy.ts:187:9
  (i32.const 1)
 )
 (func "$(lib)/allocator/buddy/buckets$get" (; 1 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/buddy.ts:101:9
  (i32.add
   ;;@ (lib)/allocator/buddy.ts:101:26
   (get_global "$(lib)/allocator/buddy/BUCKETS_START")
   ;;@ (lib)/allocator/buddy.ts:101:42
   (i32.shl
    (get_local $0)
    ;;@ (lib)/allocator/buddy.ts:101:50
    (i32.const 3)
   )
  )
 )
 (func "$(lib)/allocator/buddy/list_init" (; 2 ;) (type $iv) (param $0 i32)
  ;;@ (lib)/allocator/buddy.ts:196:2
  (i32.store
   (get_local $0)
   ;;@ (lib)/allocator/buddy.ts:196:14
   (get_local $0)
  )
  ;;@ (lib)/allocator/buddy.ts:197:2
  (i32.store offset=4
   (get_local $0)
   ;;@ (lib)/allocator/buddy.ts:197:14
   (get_local $0)
  )
 )
 (func "$(lib)/allocator/buddy/list_push" (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ (lib)/allocator/buddy.ts:206:2
  (i32.store
   (get_local $1)
   ;;@ (lib)/allocator/buddy.ts:205:2
   (tee_local $2
    ;;@ (lib)/allocator/buddy.ts:205:13
    (i32.load
     (get_local $0)
    )
   )
  )
  ;;@ (lib)/allocator/buddy.ts:207:2
  (i32.store offset=4
   (get_local $1)
   ;;@ (lib)/allocator/buddy.ts:207:15
   (get_local $0)
  )
  ;;@ (lib)/allocator/buddy.ts:208:2
  (i32.store offset=4
   (get_local $2)
   ;;@ (lib)/allocator/buddy.ts:208:14
   (get_local $1)
  )
  ;;@ (lib)/allocator/buddy.ts:209:2
  (i32.store
   (get_local $0)
   ;;@ (lib)/allocator/buddy.ts:209:14
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/buddy/bucket_for_request" (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ (lib)/allocator/buddy.ts:278:2
  (set_local $1
   ;;@ (lib)/allocator/buddy.ts:278:15
   (i32.const 26)
  )
  ;;@ (lib)/allocator/buddy.ts:279:2
  (set_local $2
   ;;@ (lib)/allocator/buddy.ts:279:13
   (i32.const 16)
  )
  (loop $continue|0
   (if
    ;;@ (lib)/allocator/buddy.ts:281:9
    (i32.lt_u
     (get_local $2)
     ;;@ (lib)/allocator/buddy.ts:281:16
     (get_local $0)
    )
    (block
     ;;@ (lib)/allocator/buddy.ts:282:4
     (set_local $1
      (i32.sub
       (get_local $1)
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/buddy.ts:283:4
     (set_local $2
      (i32.shl
       (get_local $2)
       ;;@ (lib)/allocator/buddy.ts:283:12
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ (lib)/allocator/buddy.ts:286:9
  (get_local $1)
 )
 (func "$(lib)/allocator/buddy/node_for_ptr" (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/allocator/buddy.ts:251:9
  (i32.sub
   (i32.add
    (i32.shr_u
     ;;@ (lib)/allocator/buddy.ts:251:10
     (i32.sub
      ;;@ (lib)/allocator/buddy.ts:251:11
      (get_local $0)
      ;;@ (lib)/allocator/buddy.ts:251:17
      (get_global "$(lib)/allocator/buddy/base_ptr")
     )
     ;;@ (lib)/allocator/buddy.ts:251:30
     (i32.sub
      ;;@ (lib)/allocator/buddy.ts:251:31
      (i32.const 30)
      ;;@ (lib)/allocator/buddy.ts:251:48
      (get_local $1)
     )
    )
    ;;@ (lib)/allocator/buddy.ts:251:59
    (i32.shl
     ;;@ (lib)/allocator/buddy.ts:251:60
     (i32.const 1)
     ;;@ (lib)/allocator/buddy.ts:251:65
     (get_local $1)
    )
   )
   ;;@ (lib)/allocator/buddy.ts:251:75
   (i32.const 1)
  )
 )
 (func "$(lib)/allocator/buddy/node_is_split$get" (; 6 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/buddy.ts:147:9
  (i32.load8_u
   ;;@ (lib)/allocator/buddy.ts:147:18
   (i32.add
    (get_global "$(lib)/allocator/buddy/NODE_IS_SPLIT_START")
    ;;@ (lib)/allocator/buddy.ts:147:40
    (get_local $0)
   )
  )
 )
 (func "$(lib)/allocator/buddy/parent_is_split" (; 7 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/buddy.ts:259:9
  (i32.and
   (i32.shr_u
    ;;@ (lib)/allocator/buddy.ts:259:10
    (call "$(lib)/allocator/buddy/node_is_split$get"
     ;;@ (lib)/allocator/buddy.ts:259:28
     (i32.div_u
      ;;@ (lib)/allocator/buddy.ts:258:2
      (tee_local $0
       ;;@ (lib)/allocator/buddy.ts:258:10
       (i32.div_u
        (i32.sub
         ;;@ (lib)/allocator/buddy.ts:258:11
         (get_local $0)
         ;;@ (lib)/allocator/buddy.ts:258:19
         (i32.const 1)
        )
        ;;@ (lib)/allocator/buddy.ts:258:24
        (i32.const 2)
       )
      )
      ;;@ (lib)/allocator/buddy.ts:259:36
      (i32.const 8)
     )
    )
    ;;@ (lib)/allocator/buddy.ts:259:43
    (i32.and
     ;;@ (lib)/allocator/buddy.ts:259:49
     (get_local $0)
     ;;@ (lib)/allocator/buddy.ts:259:57
     (i32.const 7)
    )
   )
   ;;@ (lib)/allocator/buddy.ts:259:63
   (i32.const 1)
  )
 )
 (func "$(lib)/allocator/buddy/list_remove" (; 8 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  ;;@ (lib)/allocator/buddy.ts:221:2
  (i32.store offset=4
   ;;@ (lib)/allocator/buddy.ts:219:2
   (tee_local $1
    ;;@ (lib)/allocator/buddy.ts:219:13
    (i32.load
     (get_local $0)
    )
   )
   ;;@ (lib)/allocator/buddy.ts:220:2
   (tee_local $0
    ;;@ (lib)/allocator/buddy.ts:220:13
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  ;;@ (lib)/allocator/buddy.ts:222:2
  (i32.store
   (get_local $0)
   ;;@ (lib)/allocator/buddy.ts:222:14
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/buddy/ptr_for_node" (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/allocator/buddy.ts:242:9
  (i32.add
   (get_global "$(lib)/allocator/buddy/base_ptr")
   ;;@ (lib)/allocator/buddy.ts:242:20
   (i32.shl
    ;;@ (lib)/allocator/buddy.ts:242:21
    (i32.add
     ;;@ (lib)/allocator/buddy.ts:242:22
     (i32.sub
      (get_local $0)
      ;;@ (lib)/allocator/buddy.ts:242:30
      (i32.shl
       ;;@ (lib)/allocator/buddy.ts:242:31
       (i32.const 1)
       ;;@ (lib)/allocator/buddy.ts:242:36
       (get_local $1)
      )
     )
     ;;@ (lib)/allocator/buddy.ts:242:46
     (i32.const 1)
    )
    ;;@ (lib)/allocator/buddy.ts:242:52
    (i32.sub
     ;;@ (lib)/allocator/buddy.ts:242:53
     (i32.const 30)
     ;;@ (lib)/allocator/buddy.ts:242:70
     (get_local $1)
    )
   )
  )
 )
 (func "$(lib)/allocator/buddy/flip_parent_is_split" (; 10 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   ;;@ (lib)/allocator/buddy.ts:267:2
   (tee_local $1
    ;;@ (lib)/allocator/buddy.ts:267:18
    (i32.div_u
     ;;@ (lib)/allocator/buddy.ts:266:2
     (tee_local $0
      ;;@ (lib)/allocator/buddy.ts:266:10
      (i32.div_u
       (i32.sub
        ;;@ (lib)/allocator/buddy.ts:266:11
        (get_local $0)
        ;;@ (lib)/allocator/buddy.ts:266:19
        (i32.const 1)
       )
       ;;@ (lib)/allocator/buddy.ts:266:24
       (i32.const 2)
      )
     )
     ;;@ (lib)/allocator/buddy.ts:267:26
     (i32.const 8)
    )
   )
  )
  (set_local $0
   ;;@ (lib)/allocator/buddy.ts:269:4
   (i32.xor
    (call "$(lib)/allocator/buddy/node_is_split$get"
     ;;@ (lib)/allocator/buddy.ts:269:22
     (get_local $1)
    )
    ;;@ (lib)/allocator/buddy.ts:269:35
    (i32.shl
     ;;@ (lib)/allocator/buddy.ts:269:41
     (i32.const 1)
     ;;@ (lib)/allocator/buddy.ts:269:46
     (i32.and
      ;;@ (lib)/allocator/buddy.ts:269:47
      (get_local $0)
      ;;@ (lib)/allocator/buddy.ts:269:55
      (i32.const 7)
     )
    )
   )
  )
  (i32.store8
   (i32.add
    (get_global "$(lib)/allocator/buddy/NODE_IS_SPLIT_START")
    (get_local $2)
   )
   (get_local $0)
  )
 )
 (func "$(lib)/allocator/buddy/lower_bucket_limit" (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (loop $continue|0
   (if
    ;;@ (lib)/allocator/buddy.ts:295:9
    (i32.lt_u
     (get_local $0)
     ;;@ (lib)/allocator/buddy.ts:295:18
     (get_global "$(lib)/allocator/buddy/bucket_limit")
    )
    (block
     ;;@ (lib)/allocator/buddy.ts:305:4
     (if
      ;;@ (lib)/allocator/buddy.ts:305:8
      (i32.eqz
       ;;@ (lib)/allocator/buddy.ts:305:9
       (call "$(lib)/allocator/buddy/parent_is_split"
        ;;@ (lib)/allocator/buddy.ts:296:4
        (tee_local $1
         ;;@ (lib)/allocator/buddy.ts:296:15
         (call "$(lib)/allocator/buddy/node_for_ptr"
          ;;@ (lib)/allocator/buddy.ts:296:28
          (get_global "$(lib)/allocator/buddy/base_ptr")
          ;;@ (lib)/allocator/buddy.ts:296:38
          (get_global "$(lib)/allocator/buddy/bucket_limit")
         )
        )
       )
      )
      ;;@ (lib)/allocator/buddy.ts:305:32
      (block
       ;;@ (lib)/allocator/buddy.ts:306:6
       (call "$(lib)/allocator/buddy/list_remove"
        ;;@ (lib)/allocator/buddy.ts:306:18
        (get_global "$(lib)/allocator/buddy/base_ptr")
       )
       ;;@ (lib)/allocator/buddy.ts:307:6
       (call "$(lib)/allocator/buddy/list_init"
        ;;@ (lib)/allocator/buddy.ts:307:16
        (call "$(lib)/allocator/buddy/buckets$get"
         ;;@ (lib)/allocator/buddy.ts:307:28
         (block (result i32)
          (set_global "$(lib)/allocator/buddy/bucket_limit"
           (i32.sub
            ;;@ (lib)/allocator/buddy.ts:307:30
            (get_global "$(lib)/allocator/buddy/bucket_limit")
            (i32.const 1)
           )
          )
          (get_global "$(lib)/allocator/buddy/bucket_limit")
         )
        )
       )
       ;;@ (lib)/allocator/buddy.ts:308:6
       (call "$(lib)/allocator/buddy/list_push"
        ;;@ (lib)/allocator/buddy.ts:308:16
        (call "$(lib)/allocator/buddy/buckets$get"
         ;;@ (lib)/allocator/buddy.ts:308:28
         (get_global "$(lib)/allocator/buddy/bucket_limit")
        )
        ;;@ (lib)/allocator/buddy.ts:308:43
        (get_global "$(lib)/allocator/buddy/base_ptr")
       )
       ;;@ (lib)/allocator/buddy.ts:309:6
       (br $continue|0)
      )
     )
     ;;@ (lib)/allocator/buddy.ts:321:4
     (if
      ;;@ (lib)/allocator/buddy.ts:321:8
      (i32.eqz
       ;;@ (lib)/allocator/buddy.ts:321:9
       (call "$(lib)/allocator/buddy/update_max_ptr"
        ;;@ (lib)/allocator/buddy.ts:321:24
        (i32.add
         ;;@ (lib)/allocator/buddy.ts:320:4
         (tee_local $2
          ;;@ (lib)/allocator/buddy.ts:320:18
          (call "$(lib)/allocator/buddy/ptr_for_node"
           ;;@ (lib)/allocator/buddy.ts:320:31
           (i32.add
            (get_local $1)
            ;;@ (lib)/allocator/buddy.ts:320:38
            (i32.const 1)
           )
           ;;@ (lib)/allocator/buddy.ts:320:41
           (get_global "$(lib)/allocator/buddy/bucket_limit")
          )
         )
         ;;@ (lib)/allocator/buddy.ts:321:38
         (i32.const 8)
        )
       )
      )
      ;;@ (lib)/allocator/buddy.ts:322:13
      (return
       (i32.const 0)
      )
     )
     ;;@ (lib)/allocator/buddy.ts:324:4
     (call "$(lib)/allocator/buddy/list_push"
      ;;@ (lib)/allocator/buddy.ts:324:14
      (call "$(lib)/allocator/buddy/buckets$get"
       ;;@ (lib)/allocator/buddy.ts:324:26
       (get_global "$(lib)/allocator/buddy/bucket_limit")
      )
      ;;@ (lib)/allocator/buddy.ts:324:41
      (get_local $2)
     )
     ;;@ (lib)/allocator/buddy.ts:325:4
     (call "$(lib)/allocator/buddy/list_init"
      ;;@ (lib)/allocator/buddy.ts:325:14
      (call "$(lib)/allocator/buddy/buckets$get"
       ;;@ (lib)/allocator/buddy.ts:325:26
       (block (result i32)
        (set_global "$(lib)/allocator/buddy/bucket_limit"
         (i32.sub
          ;;@ (lib)/allocator/buddy.ts:325:28
          (get_global "$(lib)/allocator/buddy/bucket_limit")
          (i32.const 1)
         )
        )
        (get_global "$(lib)/allocator/buddy/bucket_limit")
       )
      )
     )
     ;;@ (lib)/allocator/buddy.ts:332:4
     (if
      ;;@ (lib)/allocator/buddy.ts:331:4
      (tee_local $1
       ;;@ (lib)/allocator/buddy.ts:331:11
       (i32.div_u
        (i32.sub
         ;;@ (lib)/allocator/buddy.ts:331:12
         (get_local $1)
         ;;@ (lib)/allocator/buddy.ts:331:19
         (i32.const 1)
        )
        ;;@ (lib)/allocator/buddy.ts:331:24
        (i32.const 2)
       )
      )
      ;;@ (lib)/allocator/buddy.ts:333:6
      (call "$(lib)/allocator/buddy/flip_parent_is_split"
       ;;@ (lib)/allocator/buddy.ts:333:27
       (get_local $1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ (lib)/allocator/buddy.ts:337:9
  (i32.const 1)
 )
 (func "$(lib)/allocator/buddy/list_pop" (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ (lib)/allocator/buddy.ts:230:2
  (if
   ;;@ (lib)/allocator/buddy.ts:230:6
   (i32.eq
    ;;@ (lib)/allocator/buddy.ts:229:2
    (tee_local $1
     ;;@ (lib)/allocator/buddy.ts:229:13
     (i32.load
      (get_local $0)
     )
    )
    ;;@ (lib)/allocator/buddy.ts:230:14
    (get_local $0)
   )
   ;;@ (lib)/allocator/buddy.ts:230:27
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/buddy.ts:231:2
  (call "$(lib)/allocator/buddy/list_remove"
   ;;@ (lib)/allocator/buddy.ts:231:14
   (get_local $1)
  )
  ;;@ (lib)/allocator/buddy.ts:232:9
  (get_local $1)
 )
 (func "$(lib)/allocator/buddy/allocate_memory" (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/buddy.ts:349:2
  (if
   ;;@ (lib)/allocator/buddy.ts:349:6
   (i32.gt_u
    (i32.add
     (get_local $0)
     ;;@ (lib)/allocator/buddy.ts:349:16
     (i32.const 8)
    )
    ;;@ (lib)/allocator/buddy.ts:349:30
    (i32.const 1073741824)
   )
   ;;@ (lib)/allocator/buddy.ts:350:11
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/buddy.ts:358:2
  (if
   (i32.eqz
    ;;@ (lib)/allocator/buddy.ts:358:6
    (get_global "$(lib)/allocator/buddy/base_ptr")
   )
   ;;@ (lib)/allocator/buddy.ts:358:21
   (block
    ;;@ (lib)/allocator/buddy.ts:360:4
    (set_global "$(lib)/allocator/buddy/base_ptr"
     ;;@ (lib)/allocator/buddy.ts:360:15
     (i32.and
      (i32.add
       ;;@ (lib)/allocator/buddy.ts:360:16
       (get_global "$(lib)/allocator/buddy/NODE_IS_SPLIT_END")
       ;;@ (lib)/allocator/buddy.ts:360:36
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    ;;@ (lib)/allocator/buddy.ts:361:4
    (set_global "$(lib)/allocator/buddy/max_ptr"
     ;;@ (lib)/allocator/buddy.ts:361:14
     (i32.shl
      (current_memory)
      ;;@ (lib)/allocator/buddy.ts:361:41
      (i32.const 16)
     )
    )
    ;;@ (lib)/allocator/buddy.ts:362:4
    (set_global "$(lib)/allocator/buddy/bucket_limit"
     ;;@ (lib)/allocator/buddy.ts:362:19
     (i32.const 26)
    )
    ;;@ (lib)/allocator/buddy.ts:363:4
    (if
     ;;@ (lib)/allocator/buddy.ts:363:8
     (i32.eqz
      ;;@ (lib)/allocator/buddy.ts:363:9
      (call "$(lib)/allocator/buddy/update_max_ptr"
       ;;@ (lib)/allocator/buddy.ts:363:24
       (i32.add
        (get_global "$(lib)/allocator/buddy/base_ptr")
        ;;@ (lib)/allocator/buddy.ts:363:35
        (i32.const 8)
       )
      )
     )
     ;;@ (lib)/allocator/buddy.ts:364:13
     (return
      (i32.const 0)
     )
    )
    ;;@ (lib)/allocator/buddy.ts:366:4
    (call "$(lib)/allocator/buddy/list_init"
     ;;@ (lib)/allocator/buddy.ts:366:14
     (call "$(lib)/allocator/buddy/buckets$get"
      ;;@ (lib)/allocator/buddy.ts:366:26
      (i32.const 26)
     )
    )
    ;;@ (lib)/allocator/buddy.ts:367:4
    (call "$(lib)/allocator/buddy/list_push"
     ;;@ (lib)/allocator/buddy.ts:367:14
     (call "$(lib)/allocator/buddy/buckets$get"
      ;;@ (lib)/allocator/buddy.ts:367:26
      (i32.const 26)
     )
     ;;@ (lib)/allocator/buddy.ts:367:45
     (get_global "$(lib)/allocator/buddy/base_ptr")
    )
   )
  )
  ;;@ (lib)/allocator/buddy.ts:375:2
  (set_local $4
   ;;@ (lib)/allocator/buddy.ts:374:2
   (tee_local $1
    ;;@ (lib)/allocator/buddy.ts:374:11
    (call "$(lib)/allocator/buddy/bucket_for_request"
     ;;@ (lib)/allocator/buddy.ts:374:30
     (i32.add
      (get_local $0)
      ;;@ (lib)/allocator/buddy.ts:374:40
      (i32.const 8)
     )
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ (lib)/allocator/buddy.ts:382:9
    (i32.add
     (get_local $1)
     ;;@ (lib)/allocator/buddy.ts:382:18
     (i32.const 1)
    )
    ;;@ (lib)/allocator/buddy.ts:382:26
    (block
     ;;@ (lib)/allocator/buddy.ts:390:4
     (if
      ;;@ (lib)/allocator/buddy.ts:390:8
      (i32.eqz
       ;;@ (lib)/allocator/buddy.ts:390:9
       (call "$(lib)/allocator/buddy/lower_bucket_limit"
        ;;@ (lib)/allocator/buddy.ts:390:28
        (get_local $1)
       )
      )
      ;;@ (lib)/allocator/buddy.ts:391:13
      (return
       (i32.const 0)
      )
     )
     ;;@ (lib)/allocator/buddy.ts:399:4
     (if
      ;;@ (lib)/allocator/buddy.ts:399:8
      (i32.eqz
       ;;@ (lib)/allocator/buddy.ts:398:4
       (tee_local $2
        ;;@ (lib)/allocator/buddy.ts:398:10
        (call "$(lib)/allocator/buddy/list_pop"
         ;;@ (lib)/allocator/buddy.ts:398:37
         (call "$(lib)/allocator/buddy/buckets$get"
          ;;@ (lib)/allocator/buddy.ts:398:49
          (get_local $1)
         )
        )
       )
      )
      ;;@ (lib)/allocator/buddy.ts:399:14
      (block
       ;;@ (lib)/allocator/buddy.ts:404:6
       (if
        ;;@ (lib)/allocator/buddy.ts:404:10
        (i32.and
         (if (result i32)
          (tee_local $2
           (i32.ne
            (get_local $1)
            ;;@ (lib)/allocator/buddy.ts:404:20
            (get_global "$(lib)/allocator/buddy/bucket_limit")
           )
          )
          (get_local $2)
          (i32.eqz
           ;;@ (lib)/allocator/buddy.ts:404:36
           (get_local $1)
          )
         )
         (i32.const 1)
        )
        ;;@ (lib)/allocator/buddy.ts:404:49
        (block
         ;;@ (lib)/allocator/buddy.ts:405:8
         (set_local $1
          (i32.sub
           (get_local $1)
           (i32.const 1)
          )
         )
         ;;@ (lib)/allocator/buddy.ts:406:8
         (br $continue|0)
        )
       )
       ;;@ (lib)/allocator/buddy.ts:416:6
       (if
        ;;@ (lib)/allocator/buddy.ts:416:10
        (i32.eqz
         ;;@ (lib)/allocator/buddy.ts:416:11
         (call "$(lib)/allocator/buddy/lower_bucket_limit"
          ;;@ (lib)/allocator/buddy.ts:416:30
          (i32.sub
           (get_local $1)
           ;;@ (lib)/allocator/buddy.ts:416:39
           (i32.const 1)
          )
         )
        )
        ;;@ (lib)/allocator/buddy.ts:417:15
        (return
         (i32.const 0)
        )
       )
       ;;@ (lib)/allocator/buddy.ts:419:6
       (set_local $2
        ;;@ (lib)/allocator/buddy.ts:419:12
        (call "$(lib)/allocator/buddy/list_pop"
         ;;@ (lib)/allocator/buddy.ts:419:39
         (call "$(lib)/allocator/buddy/buckets$get"
          ;;@ (lib)/allocator/buddy.ts:419:51
          (get_local $1)
         )
        )
       )
      )
     )
     ;;@ (lib)/allocator/buddy.ts:426:4
     (set_local $3
      ;;@ (lib)/allocator/buddy.ts:426:11
      (i32.shl
       (i32.const 1)
       ;;@ (lib)/allocator/buddy.ts:426:16
       (i32.sub
        ;;@ (lib)/allocator/buddy.ts:426:17
        (i32.const 30)
        ;;@ (lib)/allocator/buddy.ts:426:34
        (get_local $1)
       )
      )
     )
     ;;@ (lib)/allocator/buddy.ts:428:4
     (if
      ;;@ (lib)/allocator/buddy.ts:428:8
      (i32.eqz
       ;;@ (lib)/allocator/buddy.ts:428:9
       (call "$(lib)/allocator/buddy/update_max_ptr"
        ;;@ (lib)/allocator/buddy.ts:428:24
        (i32.add
         (get_local $2)
         ;;@ (lib)/allocator/buddy.ts:427:19
         (if (result i32)
          (i32.lt_u
           (get_local $1)
           ;;@ (lib)/allocator/buddy.ts:427:28
           (get_local $4)
          )
          ;;@ (lib)/allocator/buddy.ts:427:46
          (i32.add
           (i32.div_u
            (get_local $3)
            ;;@ (lib)/allocator/buddy.ts:427:53
            (i32.const 2)
           )
           ;;@ (lib)/allocator/buddy.ts:427:57
           (i32.const 8)
          )
          ;;@ (lib)/allocator/buddy.ts:427:69
          (get_local $3)
         )
        )
       )
      )
      ;;@ (lib)/allocator/buddy.ts:428:45
      (block
       ;;@ (lib)/allocator/buddy.ts:429:6
       (call "$(lib)/allocator/buddy/list_push"
        ;;@ (lib)/allocator/buddy.ts:429:16
        (call "$(lib)/allocator/buddy/buckets$get"
         ;;@ (lib)/allocator/buddy.ts:429:28
         (get_local $1)
        )
        ;;@ (lib)/allocator/buddy.ts:429:37
        (get_local $2)
       )
       ;;@ (lib)/allocator/buddy.ts:430:13
       (return
        (i32.const 0)
       )
      )
     )
     ;;@ (lib)/allocator/buddy.ts:445:4
     (if
      ;;@ (lib)/allocator/buddy.ts:444:4
      (tee_local $3
       ;;@ (lib)/allocator/buddy.ts:444:8
       (call "$(lib)/allocator/buddy/node_for_ptr"
        ;;@ (lib)/allocator/buddy.ts:444:21
        (get_local $2)
        ;;@ (lib)/allocator/buddy.ts:444:26
        (get_local $1)
       )
      )
      ;;@ (lib)/allocator/buddy.ts:446:6
      (call "$(lib)/allocator/buddy/flip_parent_is_split"
       ;;@ (lib)/allocator/buddy.ts:446:27
       (get_local $3)
      )
     )
     (loop $continue|1
      (if
       ;;@ (lib)/allocator/buddy.ts:456:11
       (i32.lt_u
        (get_local $1)
        ;;@ (lib)/allocator/buddy.ts:456:20
        (get_local $4)
       )
       (block
        ;;@ (lib)/allocator/buddy.ts:459:6
        (call "$(lib)/allocator/buddy/flip_parent_is_split"
         ;;@ (lib)/allocator/buddy.ts:457:6
         (tee_local $3
          ;;@ (lib)/allocator/buddy.ts:457:10
          (i32.add
           (i32.shl
            (get_local $3)
            ;;@ (lib)/allocator/buddy.ts:457:14
            (i32.const 1)
           )
           ;;@ (lib)/allocator/buddy.ts:457:18
           (i32.const 1)
          )
         )
        )
        ;;@ (lib)/allocator/buddy.ts:460:6
        (call "$(lib)/allocator/buddy/list_push"
         ;;@ (lib)/allocator/buddy.ts:461:8
         (call "$(lib)/allocator/buddy/buckets$get"
          ;;@ (lib)/allocator/buddy.ts:458:6
          (tee_local $1
           (i32.add
            (get_local $1)
            (i32.const 1)
           )
          )
         )
         ;;@ (lib)/allocator/buddy.ts:462:8
         (call "$(lib)/allocator/buddy/ptr_for_node"
          ;;@ (lib)/allocator/buddy.ts:462:38
          (i32.add
           (get_local $3)
           ;;@ (lib)/allocator/buddy.ts:462:42
           (i32.const 1)
          )
          ;;@ (lib)/allocator/buddy.ts:462:45
          (get_local $1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ (lib)/allocator/buddy.ts:470:4
     (i32.store
      ;;@ (lib)/allocator/buddy.ts:470:17
      (get_local $2)
      ;;@ (lib)/allocator/buddy.ts:470:22
      (get_local $0)
     )
     ;;@ (lib)/allocator/buddy.ts:471:17
     (return
      ;;@ (lib)/allocator/buddy.ts:471:11
      (i32.add
       (get_local $2)
       ;;@ (lib)/allocator/buddy.ts:471:17
       (i32.const 8)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/buddy.ts:474:9
  (i32.const 0)
 )
 (func "$(lib)/allocator/buddy/free_memory" (; 14 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ (lib)/allocator/buddy.ts:484:2
  (if
   ;;@ (lib)/allocator/buddy.ts:484:6
   (i32.eqz
    ;;@ (lib)/allocator/buddy.ts:484:7
    (get_local $0)
   )
   ;;@ (lib)/allocator/buddy.ts:485:4
   (return)
  )
  ;;@ (lib)/allocator/buddy.ts:494:2
  (set_local $1
   ;;@ (lib)/allocator/buddy.ts:494:11
   (call "$(lib)/allocator/buddy/bucket_for_request"
    ;;@ (lib)/allocator/buddy.ts:494:30
    (i32.add
     (i32.load
      ;;@ (lib)/allocator/buddy.ts:493:2
      (tee_local $0
       ;;@ (lib)/allocator/buddy.ts:493:8
       (i32.sub
        (get_local $0)
        ;;@ (lib)/allocator/buddy.ts:493:14
        (i32.const 8)
       )
      )
     )
     ;;@ (lib)/allocator/buddy.ts:494:49
     (i32.const 8)
    )
   )
  )
  ;;@ (lib)/allocator/buddy.ts:495:2
  (set_local $0
   ;;@ (lib)/allocator/buddy.ts:495:6
   (call "$(lib)/allocator/buddy/node_for_ptr"
    ;;@ (lib)/allocator/buddy.ts:495:19
    (get_local $0)
    ;;@ (lib)/allocator/buddy.ts:495:24
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/buddy.ts:501:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ (lib)/allocator/buddy.ts:501:9
     (get_local $0)
     (block
      ;;@ (lib)/allocator/buddy.ts:508:4
      (call "$(lib)/allocator/buddy/flip_parent_is_split"
       ;;@ (lib)/allocator/buddy.ts:508:25
       (get_local $0)
      )
      ;;@ (lib)/allocator/buddy.ts:519:6
      (br_if $break|0
       ;;@ (lib)/allocator/buddy.ts:518:8
       (if (result i32)
        (tee_local $2
         (call "$(lib)/allocator/buddy/parent_is_split"
          ;;@ (lib)/allocator/buddy.ts:518:24
          (get_local $0)
         )
        )
        (get_local $2)
        ;;@ (lib)/allocator/buddy.ts:518:30
        (i32.eq
         (get_local $1)
         ;;@ (lib)/allocator/buddy.ts:518:40
         (get_global "$(lib)/allocator/buddy/bucket_limit")
        )
       )
      )
      ;;@ (lib)/allocator/buddy.ts:529:4
      (call "$(lib)/allocator/buddy/list_remove"
       ;;@ (lib)/allocator/buddy.ts:529:16
       (call "$(lib)/allocator/buddy/ptr_for_node"
        ;;@ (lib)/allocator/buddy.ts:529:46
        (i32.add
         (i32.xor
          ;;@ (lib)/allocator/buddy.ts:529:47
          (i32.sub
           ;;@ (lib)/allocator/buddy.ts:529:48
           (get_local $0)
           ;;@ (lib)/allocator/buddy.ts:529:52
           (i32.const 1)
          )
          ;;@ (lib)/allocator/buddy.ts:529:57
          (i32.const 1)
         )
         ;;@ (lib)/allocator/buddy.ts:529:62
         (i32.const 1)
        )
        ;;@ (lib)/allocator/buddy.ts:529:65
        (get_local $1)
       )
      )
      ;;@ (lib)/allocator/buddy.ts:530:4
      (set_local $0
       ;;@ (lib)/allocator/buddy.ts:530:8
       (i32.div_u
        (i32.sub
         ;;@ (lib)/allocator/buddy.ts:530:9
         (get_local $0)
         ;;@ (lib)/allocator/buddy.ts:530:13
         (i32.const 1)
        )
        ;;@ (lib)/allocator/buddy.ts:530:18
        (i32.const 2)
       )
      )
      ;;@ (lib)/allocator/buddy.ts:531:4
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
  ;;@ (lib)/allocator/buddy.ts:540:2
  (call "$(lib)/allocator/buddy/list_push"
   ;;@ (lib)/allocator/buddy.ts:540:12
   (call "$(lib)/allocator/buddy/buckets$get"
    ;;@ (lib)/allocator/buddy.ts:540:24
    (get_local $1)
   )
   ;;@ (lib)/allocator/buddy.ts:540:33
   (call "$(lib)/allocator/buddy/ptr_for_node"
    ;;@ (lib)/allocator/buddy.ts:540:63
    (get_local $0)
    ;;@ (lib)/allocator/buddy.ts:540:66
    (get_local $1)
   )
  )
 )
 (func $start (; 15 ;) (type $v)
  (set_global "$(lib)/allocator/buddy/BUCKETS_START"
   ;;@ (lib)/allocator/buddy.ts:96:27
   (get_global $HEAP_BASE)
  )
  (set_global "$(lib)/allocator/buddy/BUCKETS_END"
   ;;@ (lib)/allocator/buddy.ts:97:25
   (i32.add
    (get_global "$(lib)/allocator/buddy/BUCKETS_START")
    (i32.const 216)
   )
  )
  (set_global "$(lib)/allocator/buddy/NODE_IS_SPLIT_START"
   ;;@ (lib)/allocator/buddy.ts:142:33
   (get_global "$(lib)/allocator/buddy/BUCKETS_END")
  )
  (set_global "$(lib)/allocator/buddy/NODE_IS_SPLIT_END"
   ;;@ (lib)/allocator/buddy.ts:143:31
   (i32.add
    (get_global "$(lib)/allocator/buddy/NODE_IS_SPLIT_START")
    ;;@ (lib)/allocator/buddy.ts:143:53
    (i32.const 8388608)
   )
  )
 )
)
