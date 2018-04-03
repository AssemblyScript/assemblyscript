(module
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
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "allocate_memory" (func $~lib/allocator/buddy/allocate_memory))
 (export "free_memory" (func $~lib/allocator/buddy/free_memory))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/buddy/update_max_ptr (; 0 ;) (type $ii) (param $0 i32) (result i32)
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
          ;;@ ~lib/allocator/buddy.ts:180:61
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
     ;;@ ~lib/allocator/buddy.ts:183:13
     (return
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
 (func $~lib/allocator/buddy/buckets$get (; 1 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:102:9
  (i32.add
   ;;@ ~lib/allocator/buddy.ts:102:26
   (get_global $~lib/allocator/buddy/BUCKETS_START)
   ;;@ ~lib/allocator/buddy.ts:102:42
   (i32.shl
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:102:50
    (i32.const 3)
   )
  )
 )
 (func $~lib/allocator/buddy/list_init (; 2 ;) (type $iv) (param $0 i32)
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
 (func $~lib/allocator/buddy/list_push (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/allocator/buddy/bucket_for_request (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/allocator/buddy.ts:279:2
  (set_local $1
   ;;@ ~lib/allocator/buddy.ts:279:15
   (i32.const 26)
  )
  ;;@ ~lib/allocator/buddy.ts:280:2
  (set_local $2
   ;;@ ~lib/allocator/buddy.ts:280:13
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
 (func $~lib/allocator/buddy/node_for_ptr (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:252:9
  (i32.sub
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
 (func $~lib/allocator/buddy/node_is_split$get (; 6 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:148:9
  (i32.load8_u
   ;;@ ~lib/allocator/buddy.ts:148:18
   (i32.add
    (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_START)
    ;;@ ~lib/allocator/buddy.ts:148:40
    (get_local $0)
   )
  )
 )
 (func $~lib/allocator/buddy/parent_is_split (; 7 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:260:9
  (i32.and
   (i32.shr_u
    ;;@ ~lib/allocator/buddy.ts:260:10
    (call $~lib/allocator/buddy/node_is_split$get
     ;;@ ~lib/allocator/buddy.ts:260:28
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
      ;;@ ~lib/allocator/buddy.ts:260:36
      (i32.const 8)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:260:43
    (i32.and
     ;;@ ~lib/allocator/buddy.ts:260:49
     (get_local $0)
     ;;@ ~lib/allocator/buddy.ts:260:57
     (i32.const 7)
    )
   )
   ;;@ ~lib/allocator/buddy.ts:260:63
   (i32.const 1)
  )
 )
 (func $~lib/allocator/buddy/list_remove (; 8 ;) (type $iv) (param $0 i32)
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
 (func $~lib/allocator/buddy/ptr_for_node (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:243:9
  (i32.add
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
 (func $~lib/allocator/buddy/flip_parent_is_split (; 10 ;) (type $iv) (param $0 i32)
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
 (func $~lib/allocator/buddy/lower_bucket_limit (; 11 ;) (type $ii) (param $0 i32) (result i32)
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
         ;;@ ~lib/allocator/buddy.ts:322:38
         (i32.const 8)
        )
       )
      )
      ;;@ ~lib/allocator/buddy.ts:323:13
      (return
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
      ;;@ ~lib/allocator/buddy.ts:334:6
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
 (func $~lib/allocator/buddy/list_pop (; 12 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/allocator/buddy/allocate_memory (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/allocator/buddy.ts:350:2
  (if
   ;;@ ~lib/allocator/buddy.ts:350:6
   (i32.gt_u
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:350:16
    (i32.const 1073741816)
   )
   ;;@ ~lib/allocator/buddy.ts:351:11
   (return
    (i32.const 0)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:359:2
  (if
   (i32.eqz
    ;;@ ~lib/allocator/buddy.ts:359:6
    (get_global $~lib/allocator/buddy/base_ptr)
   )
   ;;@ ~lib/allocator/buddy.ts:359:21
   (block
    ;;@ ~lib/allocator/buddy.ts:361:4
    (set_global $~lib/allocator/buddy/base_ptr
     ;;@ ~lib/allocator/buddy.ts:361:15
     (i32.and
      (i32.add
       ;;@ ~lib/allocator/buddy.ts:361:16
       (get_global $~lib/allocator/buddy/NODE_IS_SPLIT_END)
       ;;@ ~lib/allocator/buddy.ts:361:36
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:362:4
    (set_global $~lib/allocator/buddy/max_ptr
     ;;@ ~lib/allocator/buddy.ts:362:14
     (i32.shl
      (current_memory)
      ;;@ ~lib/allocator/buddy.ts:362:41
      (i32.const 16)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:363:4
    (set_global $~lib/allocator/buddy/bucket_limit
     ;;@ ~lib/allocator/buddy.ts:363:19
     (i32.const 26)
    )
    ;;@ ~lib/allocator/buddy.ts:364:4
    (if
     ;;@ ~lib/allocator/buddy.ts:364:8
     (i32.eqz
      ;;@ ~lib/allocator/buddy.ts:364:9
      (call $~lib/allocator/buddy/update_max_ptr
       ;;@ ~lib/allocator/buddy.ts:364:24
       (i32.add
        (get_global $~lib/allocator/buddy/base_ptr)
        ;;@ ~lib/allocator/buddy.ts:364:35
        (i32.const 8)
       )
      )
     )
     ;;@ ~lib/allocator/buddy.ts:365:13
     (return
      (i32.const 0)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:367:4
    (call $~lib/allocator/buddy/list_init
     ;;@ ~lib/allocator/buddy.ts:367:14
     (call $~lib/allocator/buddy/buckets$get
      ;;@ ~lib/allocator/buddy.ts:367:26
      (i32.const 26)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:368:4
    (call $~lib/allocator/buddy/list_push
     ;;@ ~lib/allocator/buddy.ts:368:14
     (call $~lib/allocator/buddy/buckets$get
      ;;@ ~lib/allocator/buddy.ts:368:26
      (i32.const 26)
     )
     ;;@ ~lib/allocator/buddy.ts:368:45
     (get_global $~lib/allocator/buddy/base_ptr)
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:376:2
  (set_local $4
   ;;@ ~lib/allocator/buddy.ts:375:2
   (tee_local $1
    ;;@ ~lib/allocator/buddy.ts:375:11
    (call $~lib/allocator/buddy/bucket_for_request
     ;;@ ~lib/allocator/buddy.ts:375:30
     (i32.add
      (get_local $0)
      ;;@ ~lib/allocator/buddy.ts:375:40
      (i32.const 8)
     )
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ ~lib/allocator/buddy.ts:383:9
    (i32.add
     (get_local $1)
     ;;@ ~lib/allocator/buddy.ts:383:18
     (i32.const 1)
    )
    ;;@ ~lib/allocator/buddy.ts:383:26
    (block
     ;;@ ~lib/allocator/buddy.ts:391:4
     (if
      ;;@ ~lib/allocator/buddy.ts:391:8
      (i32.eqz
       ;;@ ~lib/allocator/buddy.ts:391:9
       (call $~lib/allocator/buddy/lower_bucket_limit
        ;;@ ~lib/allocator/buddy.ts:391:28
        (get_local $1)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:392:13
      (return
       (i32.const 0)
      )
     )
     ;;@ ~lib/allocator/buddy.ts:400:4
     (if
      ;;@ ~lib/allocator/buddy.ts:400:8
      (i32.eqz
       ;;@ ~lib/allocator/buddy.ts:399:4
       (tee_local $2
        ;;@ ~lib/allocator/buddy.ts:399:10
        (call $~lib/allocator/buddy/list_pop
         ;;@ ~lib/allocator/buddy.ts:399:37
         (call $~lib/allocator/buddy/buckets$get
          ;;@ ~lib/allocator/buddy.ts:399:49
          (get_local $1)
         )
        )
       )
      )
      ;;@ ~lib/allocator/buddy.ts:400:14
      (block
       ;;@ ~lib/allocator/buddy.ts:405:6
       (if
        ;;@ ~lib/allocator/buddy.ts:405:10
        (i32.and
         (if (result i32)
          (tee_local $2
           (i32.ne
            (get_local $1)
            ;;@ ~lib/allocator/buddy.ts:405:20
            (get_global $~lib/allocator/buddy/bucket_limit)
           )
          )
          (get_local $2)
          (i32.eqz
           ;;@ ~lib/allocator/buddy.ts:405:36
           (get_local $1)
          )
         )
         (i32.const 1)
        )
        ;;@ ~lib/allocator/buddy.ts:405:49
        (block
         ;;@ ~lib/allocator/buddy.ts:406:8
         (set_local $1
          (i32.sub
           (get_local $1)
           (i32.const 1)
          )
         )
         ;;@ ~lib/allocator/buddy.ts:407:8
         (br $continue|0)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:417:6
       (if
        ;;@ ~lib/allocator/buddy.ts:417:10
        (i32.eqz
         ;;@ ~lib/allocator/buddy.ts:417:11
         (call $~lib/allocator/buddy/lower_bucket_limit
          ;;@ ~lib/allocator/buddy.ts:417:30
          (i32.sub
           (get_local $1)
           ;;@ ~lib/allocator/buddy.ts:417:39
           (i32.const 1)
          )
         )
        )
        ;;@ ~lib/allocator/buddy.ts:418:15
        (return
         (i32.const 0)
        )
       )
       ;;@ ~lib/allocator/buddy.ts:420:6
       (set_local $2
        ;;@ ~lib/allocator/buddy.ts:420:12
        (call $~lib/allocator/buddy/list_pop
         ;;@ ~lib/allocator/buddy.ts:420:39
         (call $~lib/allocator/buddy/buckets$get
          ;;@ ~lib/allocator/buddy.ts:420:51
          (get_local $1)
         )
        )
       )
      )
     )
     ;;@ ~lib/allocator/buddy.ts:427:4
     (set_local $3
      ;;@ ~lib/allocator/buddy.ts:427:11
      (i32.shl
       (i32.const 1)
       ;;@ ~lib/allocator/buddy.ts:427:16
       (i32.sub
        ;;@ ~lib/allocator/buddy.ts:427:17
        (i32.const 30)
        ;;@ ~lib/allocator/buddy.ts:427:34
        (get_local $1)
       )
      )
     )
     ;;@ ~lib/allocator/buddy.ts:429:4
     (if
      ;;@ ~lib/allocator/buddy.ts:429:8
      (i32.eqz
       ;;@ ~lib/allocator/buddy.ts:429:9
       (call $~lib/allocator/buddy/update_max_ptr
        ;;@ ~lib/allocator/buddy.ts:429:24
        (i32.add
         (get_local $2)
         ;;@ ~lib/allocator/buddy.ts:428:19
         (if (result i32)
          (i32.lt_u
           (get_local $1)
           ;;@ ~lib/allocator/buddy.ts:428:28
           (get_local $4)
          )
          ;;@ ~lib/allocator/buddy.ts:428:46
          (i32.add
           (i32.div_u
            (get_local $3)
            ;;@ ~lib/allocator/buddy.ts:428:53
            (i32.const 2)
           )
           ;;@ ~lib/allocator/buddy.ts:428:57
           (i32.const 8)
          )
          ;;@ ~lib/allocator/buddy.ts:428:69
          (get_local $3)
         )
        )
       )
      )
      ;;@ ~lib/allocator/buddy.ts:429:45
      (block
       ;;@ ~lib/allocator/buddy.ts:430:6
       (call $~lib/allocator/buddy/list_push
        ;;@ ~lib/allocator/buddy.ts:430:16
        (call $~lib/allocator/buddy/buckets$get
         ;;@ ~lib/allocator/buddy.ts:430:28
         (get_local $1)
        )
        ;;@ ~lib/allocator/buddy.ts:430:37
        (get_local $2)
       )
       ;;@ ~lib/allocator/buddy.ts:431:13
       (return
        (i32.const 0)
       )
      )
     )
     ;;@ ~lib/allocator/buddy.ts:446:4
     (if
      ;;@ ~lib/allocator/buddy.ts:445:4
      (tee_local $3
       ;;@ ~lib/allocator/buddy.ts:445:8
       (call $~lib/allocator/buddy/node_for_ptr
        ;;@ ~lib/allocator/buddy.ts:445:21
        (get_local $2)
        ;;@ ~lib/allocator/buddy.ts:445:26
        (get_local $1)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:447:6
      (call $~lib/allocator/buddy/flip_parent_is_split
       ;;@ ~lib/allocator/buddy.ts:447:27
       (get_local $3)
      )
     )
     (loop $continue|1
      (if
       ;;@ ~lib/allocator/buddy.ts:457:11
       (i32.lt_u
        (get_local $1)
        ;;@ ~lib/allocator/buddy.ts:457:20
        (get_local $4)
       )
       (block
        ;;@ ~lib/allocator/buddy.ts:460:6
        (call $~lib/allocator/buddy/flip_parent_is_split
         ;;@ ~lib/allocator/buddy.ts:458:6
         (tee_local $3
          ;;@ ~lib/allocator/buddy.ts:458:10
          (i32.add
           (i32.shl
            (get_local $3)
            ;;@ ~lib/allocator/buddy.ts:458:14
            (i32.const 1)
           )
           ;;@ ~lib/allocator/buddy.ts:458:18
           (i32.const 1)
          )
         )
        )
        ;;@ ~lib/allocator/buddy.ts:461:6
        (call $~lib/allocator/buddy/list_push
         ;;@ ~lib/allocator/buddy.ts:462:8
         (call $~lib/allocator/buddy/buckets$get
          ;;@ ~lib/allocator/buddy.ts:459:6
          (tee_local $1
           (i32.add
            (get_local $1)
            (i32.const 1)
           )
          )
         )
         ;;@ ~lib/allocator/buddy.ts:463:8
         (call $~lib/allocator/buddy/ptr_for_node
          ;;@ ~lib/allocator/buddy.ts:463:38
          (i32.add
           (get_local $3)
           ;;@ ~lib/allocator/buddy.ts:463:42
           (i32.const 1)
          )
          ;;@ ~lib/allocator/buddy.ts:463:45
          (get_local $1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ ~lib/allocator/buddy.ts:471:4
     (i32.store
      ;;@ ~lib/allocator/buddy.ts:471:17
      (get_local $2)
      ;;@ ~lib/allocator/buddy.ts:471:22
      (get_local $0)
     )
     ;;@ ~lib/allocator/buddy.ts:472:17
     (return
      ;;@ ~lib/allocator/buddy.ts:472:11
      (i32.add
       (get_local $2)
       ;;@ ~lib/allocator/buddy.ts:472:17
       (i32.const 8)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:475:9
  (i32.const 0)
 )
 (func $~lib/allocator/buddy/free_memory (; 14 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/allocator/buddy.ts:485:2
  (if
   ;;@ ~lib/allocator/buddy.ts:485:6
   (i32.eqz
    ;;@ ~lib/allocator/buddy.ts:485:7
    (get_local $0)
   )
   ;;@ ~lib/allocator/buddy.ts:486:4
   (return)
  )
  ;;@ ~lib/allocator/buddy.ts:495:2
  (set_local $1
   ;;@ ~lib/allocator/buddy.ts:495:11
   (call $~lib/allocator/buddy/bucket_for_request
    ;;@ ~lib/allocator/buddy.ts:495:30
    (i32.add
     (i32.load
      ;;@ ~lib/allocator/buddy.ts:494:2
      (tee_local $0
       ;;@ ~lib/allocator/buddy.ts:494:8
       (i32.sub
        (get_local $0)
        ;;@ ~lib/allocator/buddy.ts:494:14
        (i32.const 8)
       )
      )
     )
     ;;@ ~lib/allocator/buddy.ts:495:49
     (i32.const 8)
    )
   )
  )
  ;;@ ~lib/allocator/buddy.ts:496:2
  (set_local $0
   ;;@ ~lib/allocator/buddy.ts:496:6
   (call $~lib/allocator/buddy/node_for_ptr
    ;;@ ~lib/allocator/buddy.ts:496:19
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:496:24
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/buddy.ts:502:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/allocator/buddy.ts:502:9
     (get_local $0)
     (block
      ;;@ ~lib/allocator/buddy.ts:509:4
      (call $~lib/allocator/buddy/flip_parent_is_split
       ;;@ ~lib/allocator/buddy.ts:509:25
       (get_local $0)
      )
      ;;@ ~lib/allocator/buddy.ts:520:6
      (br_if $break|0
       ;;@ ~lib/allocator/buddy.ts:519:8
       (if (result i32)
        (tee_local $2
         (call $~lib/allocator/buddy/parent_is_split
          ;;@ ~lib/allocator/buddy.ts:519:24
          (get_local $0)
         )
        )
        (get_local $2)
        ;;@ ~lib/allocator/buddy.ts:519:30
        (i32.eq
         (get_local $1)
         ;;@ ~lib/allocator/buddy.ts:519:40
         (get_global $~lib/allocator/buddy/bucket_limit)
        )
       )
      )
      ;;@ ~lib/allocator/buddy.ts:530:4
      (call $~lib/allocator/buddy/list_remove
       ;;@ ~lib/allocator/buddy.ts:530:16
       (call $~lib/allocator/buddy/ptr_for_node
        ;;@ ~lib/allocator/buddy.ts:530:46
        (i32.add
         (i32.xor
          ;;@ ~lib/allocator/buddy.ts:530:47
          (i32.sub
           ;;@ ~lib/allocator/buddy.ts:530:48
           (get_local $0)
           ;;@ ~lib/allocator/buddy.ts:530:52
           (i32.const 1)
          )
          ;;@ ~lib/allocator/buddy.ts:530:57
          (i32.const 1)
         )
         ;;@ ~lib/allocator/buddy.ts:530:62
         (i32.const 1)
        )
        ;;@ ~lib/allocator/buddy.ts:530:65
        (get_local $1)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:531:4
      (set_local $0
       ;;@ ~lib/allocator/buddy.ts:531:8
       (i32.div_u
        (i32.sub
         ;;@ ~lib/allocator/buddy.ts:531:9
         (get_local $0)
         ;;@ ~lib/allocator/buddy.ts:531:13
         (i32.const 1)
        )
        ;;@ ~lib/allocator/buddy.ts:531:18
        (i32.const 2)
       )
      )
      ;;@ ~lib/allocator/buddy.ts:532:4
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
  ;;@ ~lib/allocator/buddy.ts:541:2
  (call $~lib/allocator/buddy/list_push
   ;;@ ~lib/allocator/buddy.ts:541:12
   (call $~lib/allocator/buddy/buckets$get
    ;;@ ~lib/allocator/buddy.ts:541:24
    (get_local $1)
   )
   ;;@ ~lib/allocator/buddy.ts:541:33
   (call $~lib/allocator/buddy/ptr_for_node
    ;;@ ~lib/allocator/buddy.ts:541:63
    (get_local $0)
    ;;@ ~lib/allocator/buddy.ts:541:66
    (get_local $1)
   )
  )
 )
 (func $start (; 15 ;) (type $v)
  (set_global $~lib/allocator/buddy/BUCKETS_START
   ;;@ ~lib/allocator/buddy.ts:97:27
   (get_global $HEAP_BASE)
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
    ;;@ ~lib/allocator/buddy.ts:144:53
    (i32.const 8388608)
   )
  )
 )
)
