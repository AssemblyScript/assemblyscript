(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (global $assembly/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $assembly/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $assembly/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $assembly/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $assembly/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (global $assembly/buddy/base_ptr (mut i32) (i32.const 0))
 (global $assembly/buddy/max_ptr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "allocate_memory" (func $assembly/buddy/allocate_memory))
 (export "free_memory" (func $assembly/buddy/free_memory))
 (export "set_memory" (func "$(lib)/memory/set_memory"))
 (export "memory" (memory $0))
 (start $start)
 (func $assembly/buddy/update_max_ptr (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/buddy.ts:170:2
  (if
   ;;@ assembly/buddy.ts:170:6
   (i32.gt_u
    (get_local $0)
    ;;@ assembly/buddy.ts:170:18
    (get_global $assembly/buddy/max_ptr)
   )
   ;;@ assembly/buddy.ts:170:27
   (block
    ;;@ assembly/buddy.ts:177:4
    (if
     ;;@ assembly/buddy.ts:177:8
     (i32.lt_s
      (grow_memory
       ;;@ assembly/buddy.ts:177:20
       (i32.sub
        ;;@ assembly/buddy.ts:175:4
        (tee_local $1
         ;;@ assembly/buddy.ts:175:19
         (i32.shr_u
          ;;@ assembly/buddy.ts:175:25
          (i32.and
           ;;@ assembly/buddy.ts:175:26
           (i32.add
            ;;@ assembly/buddy.ts:175:27
            (get_local $0)
            ;;@ assembly/buddy.ts:175:39
            (i32.const 65535)
           )
           (i32.const -65536)
          )
          ;;@ assembly/buddy.ts:175:61
          (i32.const 16)
         )
        )
        ;;@ assembly/buddy.ts:174:19
        (current_memory)
       )
      )
      ;;@ assembly/buddy.ts:177:43
      (i32.const 0)
     )
     ;;@ assembly/buddy.ts:178:13
     (return
      (i32.const 0)
     )
    )
    ;;@ assembly/buddy.ts:181:4
    (set_global $assembly/buddy/max_ptr
     ;;@ assembly/buddy.ts:181:14
     (i32.shl
      (get_local $1)
      ;;@ assembly/buddy.ts:181:33
      (i32.const 16)
     )
    )
   )
  )
  ;;@ assembly/buddy.ts:183:9
  (i32.const 1)
 )
 (func $assembly/buddy/buckets$get (; 1 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:97:9
  (i32.add
   ;;@ assembly/buddy.ts:97:26
   (get_global $assembly/buddy/BUCKETS_START)
   ;;@ assembly/buddy.ts:97:42
   (i32.shl
    (get_local $0)
    ;;@ assembly/buddy.ts:97:50
    (i32.const 3)
   )
  )
 )
 (func $assembly/buddy/list_init (; 2 ;) (type $iv) (param $0 i32)
  ;;@ assembly/buddy.ts:192:2
  (i32.store
   (get_local $0)
   ;;@ assembly/buddy.ts:192:14
   (get_local $0)
  )
  ;;@ assembly/buddy.ts:193:2
  (i32.store offset=4
   (get_local $0)
   ;;@ assembly/buddy.ts:193:14
   (get_local $0)
  )
 )
 (func $assembly/buddy/list_push (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:202:2
  (i32.store
   (get_local $1)
   ;;@ assembly/buddy.ts:201:2
   (tee_local $2
    ;;@ assembly/buddy.ts:201:13
    (i32.load
     (get_local $0)
    )
   )
  )
  ;;@ assembly/buddy.ts:203:2
  (i32.store offset=4
   (get_local $1)
   ;;@ assembly/buddy.ts:203:15
   (get_local $0)
  )
  ;;@ assembly/buddy.ts:204:2
  (i32.store offset=4
   (get_local $2)
   ;;@ assembly/buddy.ts:204:14
   (get_local $1)
  )
  ;;@ assembly/buddy.ts:205:2
  (i32.store
   (get_local $0)
   ;;@ assembly/buddy.ts:205:14
   (get_local $1)
  )
 )
 (func $assembly/buddy/bucket_for_request (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:274:2
  (set_local $1
   ;;@ assembly/buddy.ts:274:15
   (i32.const 27)
  )
  ;;@ assembly/buddy.ts:275:2
  (set_local $2
   ;;@ assembly/buddy.ts:275:13
   (i32.const 16)
  )
  (loop $continue|0
   (if
    ;;@ assembly/buddy.ts:277:9
    (i32.lt_u
     (get_local $2)
     ;;@ assembly/buddy.ts:277:16
     (get_local $0)
    )
    (block
     ;;@ assembly/buddy.ts:278:4
     (set_local $1
      (i32.sub
       (get_local $1)
       (i32.const 1)
      )
     )
     ;;@ assembly/buddy.ts:279:4
     (set_local $2
      (i32.shl
       (get_local $2)
       ;;@ assembly/buddy.ts:279:12
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/buddy.ts:282:9
  (get_local $1)
 )
 (func $assembly/buddy/node_for_ptr (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/buddy.ts:247:9
  (i32.sub
   (i32.add
    (i32.shr_u
     ;;@ assembly/buddy.ts:247:10
     (i32.sub
      ;;@ assembly/buddy.ts:247:11
      (get_local $0)
      ;;@ assembly/buddy.ts:247:17
      (get_global $assembly/buddy/base_ptr)
     )
     ;;@ assembly/buddy.ts:247:30
     (i32.sub
      ;;@ assembly/buddy.ts:247:31
      (i32.const 31)
      ;;@ assembly/buddy.ts:247:48
      (get_local $1)
     )
    )
    ;;@ assembly/buddy.ts:247:59
    (i32.shl
     ;;@ assembly/buddy.ts:247:60
     (i32.const 1)
     ;;@ assembly/buddy.ts:247:65
     (get_local $1)
    )
   )
   ;;@ assembly/buddy.ts:247:75
   (i32.const 1)
  )
 )
 (func $assembly/buddy/node_is_split$get (; 6 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:143:9
  (i32.load8_u
   ;;@ assembly/buddy.ts:143:18
   (i32.add
    (get_global $assembly/buddy/NODE_IS_SPLIT_START)
    ;;@ assembly/buddy.ts:143:40
    (get_local $0)
   )
  )
 )
 (func $assembly/buddy/parent_is_split (; 7 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:255:9
  (i32.and
   (i32.shr_u
    ;;@ assembly/buddy.ts:255:10
    (call $assembly/buddy/node_is_split$get
     ;;@ assembly/buddy.ts:255:28
     (i32.div_u
      ;;@ assembly/buddy.ts:254:2
      (tee_local $0
       ;;@ assembly/buddy.ts:254:10
       (i32.div_u
        (i32.sub
         ;;@ assembly/buddy.ts:254:11
         (get_local $0)
         ;;@ assembly/buddy.ts:254:19
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:254:24
        (i32.const 2)
       )
      )
      ;;@ assembly/buddy.ts:255:36
      (i32.const 8)
     )
    )
    ;;@ assembly/buddy.ts:255:43
    (i32.and
     ;;@ assembly/buddy.ts:255:49
     (get_local $0)
     ;;@ assembly/buddy.ts:255:57
     (i32.const 7)
    )
   )
   ;;@ assembly/buddy.ts:255:63
   (i32.const 1)
  )
 )
 (func $assembly/buddy/list_remove (; 8 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  ;;@ assembly/buddy.ts:217:2
  (i32.store offset=4
   ;;@ assembly/buddy.ts:215:2
   (tee_local $1
    ;;@ assembly/buddy.ts:215:13
    (i32.load
     (get_local $0)
    )
   )
   ;;@ assembly/buddy.ts:216:2
   (tee_local $0
    ;;@ assembly/buddy.ts:216:13
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  ;;@ assembly/buddy.ts:218:2
  (i32.store
   (get_local $0)
   ;;@ assembly/buddy.ts:218:14
   (get_local $1)
  )
 )
 (func $assembly/buddy/ptr_for_node (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/buddy.ts:238:9
  (i32.add
   (get_global $assembly/buddy/base_ptr)
   ;;@ assembly/buddy.ts:238:20
   (i32.shl
    ;;@ assembly/buddy.ts:238:21
    (i32.add
     ;;@ assembly/buddy.ts:238:22
     (i32.sub
      (get_local $0)
      ;;@ assembly/buddy.ts:238:30
      (i32.shl
       ;;@ assembly/buddy.ts:238:31
       (i32.const 1)
       ;;@ assembly/buddy.ts:238:36
       (get_local $1)
      )
     )
     ;;@ assembly/buddy.ts:238:46
     (i32.const 1)
    )
    ;;@ assembly/buddy.ts:238:52
    (i32.sub
     ;;@ assembly/buddy.ts:238:53
     (i32.const 31)
     ;;@ assembly/buddy.ts:238:70
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/buddy/flip_parent_is_split (; 10 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   ;;@ assembly/buddy.ts:263:2
   (tee_local $1
    ;;@ assembly/buddy.ts:263:18
    (i32.div_u
     ;;@ assembly/buddy.ts:262:2
     (tee_local $0
      ;;@ assembly/buddy.ts:262:10
      (i32.div_u
       (i32.sub
        ;;@ assembly/buddy.ts:262:11
        (get_local $0)
        ;;@ assembly/buddy.ts:262:19
        (i32.const 1)
       )
       ;;@ assembly/buddy.ts:262:24
       (i32.const 2)
      )
     )
     ;;@ assembly/buddy.ts:263:26
     (i32.const 8)
    )
   )
  )
  (set_local $0
   ;;@ assembly/buddy.ts:265:4
   (i32.xor
    (call $assembly/buddy/node_is_split$get
     ;;@ assembly/buddy.ts:265:22
     (get_local $1)
    )
    ;;@ assembly/buddy.ts:265:35
    (i32.shl
     ;;@ assembly/buddy.ts:265:41
     (i32.const 1)
     ;;@ assembly/buddy.ts:265:46
     (i32.and
      ;;@ assembly/buddy.ts:265:47
      (get_local $0)
      ;;@ assembly/buddy.ts:265:55
      (i32.const 7)
     )
    )
   )
  )
  (i32.store8
   (i32.add
    (get_global $assembly/buddy/NODE_IS_SPLIT_START)
    (get_local $2)
   )
   (get_local $0)
  )
 )
 (func $assembly/buddy/lower_bucket_limit (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (loop $continue|0
   (if
    ;;@ assembly/buddy.ts:291:9
    (i32.lt_u
     (get_local $0)
     ;;@ assembly/buddy.ts:291:18
     (get_global $assembly/buddy/bucket_limit)
    )
    (block
     ;;@ assembly/buddy.ts:301:4
     (if
      ;;@ assembly/buddy.ts:301:8
      (i32.eqz
       ;;@ assembly/buddy.ts:301:9
       (call $assembly/buddy/parent_is_split
        ;;@ assembly/buddy.ts:292:4
        (tee_local $1
         ;;@ assembly/buddy.ts:292:15
         (call $assembly/buddy/node_for_ptr
          ;;@ assembly/buddy.ts:292:28
          (get_global $assembly/buddy/base_ptr)
          ;;@ assembly/buddy.ts:292:38
          (get_global $assembly/buddy/bucket_limit)
         )
        )
       )
      )
      ;;@ assembly/buddy.ts:301:32
      (block
       ;;@ assembly/buddy.ts:302:6
       (call $assembly/buddy/list_remove
        ;;@ assembly/buddy.ts:302:18
        (get_global $assembly/buddy/base_ptr)
       )
       ;;@ assembly/buddy.ts:303:6
       (call $assembly/buddy/list_init
        ;;@ assembly/buddy.ts:303:16
        (call $assembly/buddy/buckets$get
         ;;@ assembly/buddy.ts:303:28
         (block (result i32)
          (set_global $assembly/buddy/bucket_limit
           (i32.sub
            ;;@ assembly/buddy.ts:303:30
            (get_global $assembly/buddy/bucket_limit)
            (i32.const 1)
           )
          )
          (get_global $assembly/buddy/bucket_limit)
         )
        )
       )
       ;;@ assembly/buddy.ts:304:6
       (call $assembly/buddy/list_push
        ;;@ assembly/buddy.ts:304:16
        (call $assembly/buddy/buckets$get
         ;;@ assembly/buddy.ts:304:28
         (get_global $assembly/buddy/bucket_limit)
        )
        ;;@ assembly/buddy.ts:304:43
        (get_global $assembly/buddy/base_ptr)
       )
       ;;@ assembly/buddy.ts:305:6
       (br $continue|0)
      )
     )
     ;;@ assembly/buddy.ts:317:4
     (if
      ;;@ assembly/buddy.ts:317:8
      (i32.eqz
       ;;@ assembly/buddy.ts:317:9
       (call $assembly/buddy/update_max_ptr
        ;;@ assembly/buddy.ts:317:24
        (i32.add
         ;;@ assembly/buddy.ts:316:4
         (tee_local $2
          ;;@ assembly/buddy.ts:316:18
          (call $assembly/buddy/ptr_for_node
           ;;@ assembly/buddy.ts:316:31
           (i32.add
            (get_local $1)
            ;;@ assembly/buddy.ts:316:38
            (i32.const 1)
           )
           ;;@ assembly/buddy.ts:316:41
           (get_global $assembly/buddy/bucket_limit)
          )
         )
         ;;@ assembly/buddy.ts:317:38
         (i32.const 8)
        )
       )
      )
      ;;@ assembly/buddy.ts:318:13
      (return
       (i32.const 0)
      )
     )
     ;;@ assembly/buddy.ts:320:4
     (call $assembly/buddy/list_push
      ;;@ assembly/buddy.ts:320:14
      (call $assembly/buddy/buckets$get
       ;;@ assembly/buddy.ts:320:26
       (get_global $assembly/buddy/bucket_limit)
      )
      ;;@ assembly/buddy.ts:320:41
      (get_local $2)
     )
     ;;@ assembly/buddy.ts:321:4
     (call $assembly/buddy/list_init
      ;;@ assembly/buddy.ts:321:14
      (call $assembly/buddy/buckets$get
       ;;@ assembly/buddy.ts:321:26
       (block (result i32)
        (set_global $assembly/buddy/bucket_limit
         (i32.sub
          ;;@ assembly/buddy.ts:321:28
          (get_global $assembly/buddy/bucket_limit)
          (i32.const 1)
         )
        )
        (get_global $assembly/buddy/bucket_limit)
       )
      )
     )
     ;;@ assembly/buddy.ts:328:4
     (if
      ;;@ assembly/buddy.ts:327:4
      (tee_local $1
       ;;@ assembly/buddy.ts:327:11
       (i32.div_u
        (i32.sub
         ;;@ assembly/buddy.ts:327:12
         (get_local $1)
         ;;@ assembly/buddy.ts:327:19
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:327:24
        (i32.const 2)
       )
      )
      ;;@ assembly/buddy.ts:329:6
      (call $assembly/buddy/flip_parent_is_split
       ;;@ assembly/buddy.ts:329:27
       (get_local $1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/buddy.ts:333:9
  (i32.const 1)
 )
 (func $assembly/buddy/list_pop (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/buddy.ts:226:2
  (if
   ;;@ assembly/buddy.ts:226:6
   (i32.eq
    ;;@ assembly/buddy.ts:225:2
    (tee_local $1
     ;;@ assembly/buddy.ts:225:13
     (i32.load
      (get_local $0)
     )
    )
    ;;@ assembly/buddy.ts:226:14
    (get_local $0)
   )
   ;;@ assembly/buddy.ts:226:27
   (return
    (i32.const 0)
   )
  )
  ;;@ assembly/buddy.ts:227:2
  (call $assembly/buddy/list_remove
   ;;@ assembly/buddy.ts:227:14
   (get_local $1)
  )
  ;;@ assembly/buddy.ts:228:9
  (get_local $1)
 )
 (func $assembly/buddy/allocate_memory (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/buddy.ts:345:2
  (if
   ;;@ assembly/buddy.ts:345:6
   (i32.gt_u
    (i32.add
     (get_local $0)
     ;;@ assembly/buddy.ts:345:16
     (i32.const 8)
    )
    ;;@ assembly/buddy.ts:345:30
    (i32.const -2147483648)
   )
   ;;@ assembly/buddy.ts:346:11
   (return
    (i32.const 0)
   )
  )
  ;;@ assembly/buddy.ts:354:2
  (if
   (i32.eqz
    ;;@ assembly/buddy.ts:354:6
    (get_global $assembly/buddy/base_ptr)
   )
   ;;@ assembly/buddy.ts:354:21
   (block
    ;;@ assembly/buddy.ts:356:4
    (set_global $assembly/buddy/base_ptr
     ;;@ assembly/buddy.ts:356:15
     (i32.and
      (i32.add
       ;;@ assembly/buddy.ts:356:16
       (get_global $assembly/buddy/NODE_IS_SPLIT_END)
       ;;@ assembly/buddy.ts:356:36
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    ;;@ assembly/buddy.ts:357:4
    (set_global $assembly/buddy/max_ptr
     ;;@ assembly/buddy.ts:357:14
     (i32.shl
      (current_memory)
      ;;@ assembly/buddy.ts:357:41
      (i32.const 16)
     )
    )
    ;;@ assembly/buddy.ts:358:4
    (set_global $assembly/buddy/bucket_limit
     ;;@ assembly/buddy.ts:358:19
     (i32.const 27)
    )
    ;;@ assembly/buddy.ts:359:4
    (if
     ;;@ assembly/buddy.ts:359:8
     (i32.eqz
      ;;@ assembly/buddy.ts:359:9
      (call $assembly/buddy/update_max_ptr
       ;;@ assembly/buddy.ts:359:24
       (i32.add
        (get_global $assembly/buddy/base_ptr)
        ;;@ assembly/buddy.ts:359:35
        (i32.const 8)
       )
      )
     )
     ;;@ assembly/buddy.ts:360:13
     (return
      (i32.const 0)
     )
    )
    ;;@ assembly/buddy.ts:362:4
    (call $assembly/buddy/list_init
     ;;@ assembly/buddy.ts:362:14
     (call $assembly/buddy/buckets$get
      ;;@ assembly/buddy.ts:362:26
      (i32.const 27)
     )
    )
    ;;@ assembly/buddy.ts:363:4
    (call $assembly/buddy/list_push
     ;;@ assembly/buddy.ts:363:14
     (call $assembly/buddy/buckets$get
      ;;@ assembly/buddy.ts:363:26
      (i32.const 27)
     )
     ;;@ assembly/buddy.ts:363:45
     (get_global $assembly/buddy/base_ptr)
    )
   )
  )
  ;;@ assembly/buddy.ts:371:2
  (set_local $4
   ;;@ assembly/buddy.ts:370:2
   (tee_local $1
    ;;@ assembly/buddy.ts:370:11
    (call $assembly/buddy/bucket_for_request
     ;;@ assembly/buddy.ts:370:30
     (i32.add
      (get_local $0)
      ;;@ assembly/buddy.ts:370:40
      (i32.const 8)
     )
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/buddy.ts:378:9
    (i32.add
     (get_local $1)
     ;;@ assembly/buddy.ts:378:18
     (i32.const 1)
    )
    ;;@ assembly/buddy.ts:378:26
    (block
     ;;@ assembly/buddy.ts:386:4
     (if
      ;;@ assembly/buddy.ts:386:8
      (i32.eqz
       ;;@ assembly/buddy.ts:386:9
       (call $assembly/buddy/lower_bucket_limit
        ;;@ assembly/buddy.ts:386:28
        (get_local $1)
       )
      )
      ;;@ assembly/buddy.ts:387:13
      (return
       (i32.const 0)
      )
     )
     ;;@ assembly/buddy.ts:395:4
     (if
      ;;@ assembly/buddy.ts:395:8
      (i32.eqz
       ;;@ assembly/buddy.ts:394:4
       (tee_local $2
        ;;@ assembly/buddy.ts:394:10
        (call $assembly/buddy/list_pop
         ;;@ assembly/buddy.ts:394:37
         (call $assembly/buddy/buckets$get
          ;;@ assembly/buddy.ts:394:49
          (get_local $1)
         )
        )
       )
      )
      ;;@ assembly/buddy.ts:395:14
      (block
       ;;@ assembly/buddy.ts:400:6
       (if
        ;;@ assembly/buddy.ts:400:10
        (i32.and
         (if (result i32)
          (tee_local $2
           (i32.ne
            (get_local $1)
            ;;@ assembly/buddy.ts:400:20
            (get_global $assembly/buddy/bucket_limit)
           )
          )
          (get_local $2)
          (i32.eqz
           ;;@ assembly/buddy.ts:400:36
           (get_local $1)
          )
         )
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:400:49
        (block
         ;;@ assembly/buddy.ts:401:8
         (set_local $1
          (i32.sub
           (get_local $1)
           (i32.const 1)
          )
         )
         ;;@ assembly/buddy.ts:402:8
         (br $continue|0)
        )
       )
       ;;@ assembly/buddy.ts:412:6
       (if
        ;;@ assembly/buddy.ts:412:10
        (i32.eqz
         ;;@ assembly/buddy.ts:412:11
         (call $assembly/buddy/lower_bucket_limit
          ;;@ assembly/buddy.ts:412:30
          (i32.sub
           (get_local $1)
           ;;@ assembly/buddy.ts:412:39
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/buddy.ts:413:15
        (return
         (i32.const 0)
        )
       )
       ;;@ assembly/buddy.ts:415:6
       (set_local $2
        ;;@ assembly/buddy.ts:415:12
        (call $assembly/buddy/list_pop
         ;;@ assembly/buddy.ts:415:39
         (call $assembly/buddy/buckets$get
          ;;@ assembly/buddy.ts:415:51
          (get_local $1)
         )
        )
       )
      )
     )
     ;;@ assembly/buddy.ts:422:4
     (set_local $3
      ;;@ assembly/buddy.ts:422:11
      (i32.shl
       (i32.const 1)
       ;;@ assembly/buddy.ts:422:16
       (i32.sub
        ;;@ assembly/buddy.ts:422:17
        (i32.const 31)
        ;;@ assembly/buddy.ts:422:34
        (get_local $1)
       )
      )
     )
     ;;@ assembly/buddy.ts:424:4
     (if
      ;;@ assembly/buddy.ts:424:8
      (i32.eqz
       ;;@ assembly/buddy.ts:424:9
       (call $assembly/buddy/update_max_ptr
        ;;@ assembly/buddy.ts:424:24
        (i32.add
         (get_local $2)
         ;;@ assembly/buddy.ts:423:19
         (if (result i32)
          (i32.lt_u
           (get_local $1)
           ;;@ assembly/buddy.ts:423:28
           (get_local $4)
          )
          ;;@ assembly/buddy.ts:423:46
          (i32.add
           (i32.div_u
            (get_local $3)
            ;;@ assembly/buddy.ts:423:53
            (i32.const 2)
           )
           ;;@ assembly/buddy.ts:423:57
           (i32.const 8)
          )
          ;;@ assembly/buddy.ts:423:69
          (get_local $3)
         )
        )
       )
      )
      ;;@ assembly/buddy.ts:424:45
      (block
       ;;@ assembly/buddy.ts:425:6
       (call $assembly/buddy/list_push
        ;;@ assembly/buddy.ts:425:16
        (call $assembly/buddy/buckets$get
         ;;@ assembly/buddy.ts:425:28
         (get_local $1)
        )
        ;;@ assembly/buddy.ts:425:37
        (get_local $2)
       )
       ;;@ assembly/buddy.ts:426:13
       (return
        (i32.const 0)
       )
      )
     )
     ;;@ assembly/buddy.ts:441:4
     (if
      ;;@ assembly/buddy.ts:440:4
      (tee_local $3
       ;;@ assembly/buddy.ts:440:8
       (call $assembly/buddy/node_for_ptr
        ;;@ assembly/buddy.ts:440:21
        (get_local $2)
        ;;@ assembly/buddy.ts:440:26
        (get_local $1)
       )
      )
      ;;@ assembly/buddy.ts:442:6
      (call $assembly/buddy/flip_parent_is_split
       ;;@ assembly/buddy.ts:442:27
       (get_local $3)
      )
     )
     (loop $continue|1
      (if
       ;;@ assembly/buddy.ts:452:11
       (i32.lt_u
        (get_local $1)
        ;;@ assembly/buddy.ts:452:20
        (get_local $4)
       )
       (block
        ;;@ assembly/buddy.ts:455:6
        (call $assembly/buddy/flip_parent_is_split
         ;;@ assembly/buddy.ts:453:6
         (tee_local $3
          ;;@ assembly/buddy.ts:453:10
          (i32.add
           (i32.shl
            (get_local $3)
            ;;@ assembly/buddy.ts:453:14
            (i32.const 1)
           )
           ;;@ assembly/buddy.ts:453:18
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/buddy.ts:456:6
        (call $assembly/buddy/list_push
         ;;@ assembly/buddy.ts:457:8
         (call $assembly/buddy/buckets$get
          ;;@ assembly/buddy.ts:454:6
          (tee_local $1
           (i32.add
            (get_local $1)
            (i32.const 1)
           )
          )
         )
         ;;@ assembly/buddy.ts:458:8
         (call $assembly/buddy/ptr_for_node
          ;;@ assembly/buddy.ts:458:38
          (i32.add
           (get_local $3)
           ;;@ assembly/buddy.ts:458:42
           (i32.const 1)
          )
          ;;@ assembly/buddy.ts:458:45
          (get_local $1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/buddy.ts:466:4
     (i32.store
      ;;@ assembly/buddy.ts:466:17
      (get_local $2)
      ;;@ assembly/buddy.ts:466:22
      (get_local $0)
     )
     ;;@ assembly/buddy.ts:467:17
     (return
      ;;@ assembly/buddy.ts:467:11
      (i32.add
       (get_local $2)
       ;;@ assembly/buddy.ts:467:17
       (i32.const 8)
      )
     )
    )
   )
  )
  ;;@ assembly/buddy.ts:470:9
  (i32.const 0)
 )
 (func $assembly/buddy/free_memory (; 14 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:480:2
  (if
   ;;@ assembly/buddy.ts:480:6
   (i32.eqz
    ;;@ assembly/buddy.ts:480:7
    (get_local $0)
   )
   ;;@ assembly/buddy.ts:481:4
   (return)
  )
  ;;@ assembly/buddy.ts:490:2
  (set_local $1
   ;;@ assembly/buddy.ts:490:11
   (call $assembly/buddy/bucket_for_request
    ;;@ assembly/buddy.ts:490:30
    (i32.add
     (i32.load
      ;;@ assembly/buddy.ts:489:2
      (tee_local $0
       ;;@ assembly/buddy.ts:489:8
       (i32.sub
        (get_local $0)
        ;;@ assembly/buddy.ts:489:14
        (i32.const 8)
       )
      )
     )
     ;;@ assembly/buddy.ts:490:49
     (i32.const 8)
    )
   )
  )
  ;;@ assembly/buddy.ts:491:2
  (set_local $0
   ;;@ assembly/buddy.ts:491:6
   (call $assembly/buddy/node_for_ptr
    ;;@ assembly/buddy.ts:491:19
    (get_local $0)
    ;;@ assembly/buddy.ts:491:24
    (get_local $1)
   )
  )
  ;;@ assembly/buddy.ts:497:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/buddy.ts:497:9
     (get_local $0)
     (block
      ;;@ assembly/buddy.ts:504:4
      (call $assembly/buddy/flip_parent_is_split
       ;;@ assembly/buddy.ts:504:25
       (get_local $0)
      )
      ;;@ assembly/buddy.ts:515:6
      (br_if $break|0
       ;;@ assembly/buddy.ts:514:8
       (if (result i32)
        (tee_local $2
         (call $assembly/buddy/parent_is_split
          ;;@ assembly/buddy.ts:514:24
          (get_local $0)
         )
        )
        (get_local $2)
        ;;@ assembly/buddy.ts:514:30
        (i32.eq
         (get_local $1)
         ;;@ assembly/buddy.ts:514:40
         (get_global $assembly/buddy/bucket_limit)
        )
       )
      )
      ;;@ assembly/buddy.ts:525:4
      (call $assembly/buddy/list_remove
       ;;@ assembly/buddy.ts:525:16
       (call $assembly/buddy/ptr_for_node
        ;;@ assembly/buddy.ts:525:46
        (i32.add
         (i32.xor
          ;;@ assembly/buddy.ts:525:47
          (i32.sub
           ;;@ assembly/buddy.ts:525:48
           (get_local $0)
           ;;@ assembly/buddy.ts:525:52
           (i32.const 1)
          )
          ;;@ assembly/buddy.ts:525:57
          (i32.const 1)
         )
         ;;@ assembly/buddy.ts:525:62
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:525:65
        (get_local $1)
       )
      )
      ;;@ assembly/buddy.ts:526:4
      (set_local $0
       ;;@ assembly/buddy.ts:526:8
       (i32.div_u
        (i32.sub
         ;;@ assembly/buddy.ts:526:9
         (get_local $0)
         ;;@ assembly/buddy.ts:526:13
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:526:18
        (i32.const 2)
       )
      )
      ;;@ assembly/buddy.ts:527:4
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
  ;;@ assembly/buddy.ts:536:2
  (call $assembly/buddy/list_push
   ;;@ assembly/buddy.ts:536:12
   (call $assembly/buddy/buckets$get
    ;;@ assembly/buddy.ts:536:24
    (get_local $1)
   )
   ;;@ assembly/buddy.ts:536:33
   (call $assembly/buddy/ptr_for_node
    ;;@ assembly/buddy.ts:536:63
    (get_local $0)
    ;;@ assembly/buddy.ts:536:66
    (get_local $1)
   )
  )
 )
 (func "$(lib)/memory/set_memory" (; 15 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  ;;@ (lib)/memory.ts:196:2
  (if
   ;;@ (lib)/memory.ts:196:6
   (i32.eqz
    ;;@ (lib)/memory.ts:196:7
    (get_local $2)
   )
   ;;@ (lib)/memory.ts:197:4
   (return)
  )
  ;;@ (lib)/memory.ts:198:2
  (i32.store8
   ;;@ (lib)/memory.ts:198:12
   (get_local $0)
   ;;@ (lib)/memory.ts:198:18
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:199:2
  (i32.store8
   ;;@ (lib)/memory.ts:199:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:199:19
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:199:23
    (i32.const 1)
   )
   ;;@ (lib)/memory.ts:199:26
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:200:2
  (if
   ;;@ (lib)/memory.ts:200:6
   (i32.le_u
    (get_local $2)
    ;;@ (lib)/memory.ts:200:11
    (i32.const 2)
   )
   ;;@ (lib)/memory.ts:201:4
   (return)
  )
  ;;@ (lib)/memory.ts:203:2
  (i32.store8
   ;;@ (lib)/memory.ts:203:12
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:203:19
    (i32.const 1)
   )
   ;;@ (lib)/memory.ts:203:22
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:204:2
  (i32.store8
   ;;@ (lib)/memory.ts:204:12
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:204:19
    (i32.const 2)
   )
   ;;@ (lib)/memory.ts:204:22
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:205:2
  (i32.store8
   ;;@ (lib)/memory.ts:205:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:205:19
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:205:23
    (i32.const 2)
   )
   ;;@ (lib)/memory.ts:205:26
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:206:2
  (i32.store8
   ;;@ (lib)/memory.ts:206:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:206:19
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:206:23
    (i32.const 3)
   )
   ;;@ (lib)/memory.ts:206:26
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:207:2
  (if
   ;;@ (lib)/memory.ts:207:6
   (i32.le_u
    (get_local $2)
    ;;@ (lib)/memory.ts:207:11
    (i32.const 6)
   )
   ;;@ (lib)/memory.ts:208:4
   (return)
  )
  ;;@ (lib)/memory.ts:209:2
  (i32.store8
   ;;@ (lib)/memory.ts:209:12
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:209:19
    (i32.const 3)
   )
   ;;@ (lib)/memory.ts:209:22
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:210:2
  (i32.store8
   ;;@ (lib)/memory.ts:210:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:210:19
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:210:23
    (i32.const 4)
   )
   ;;@ (lib)/memory.ts:210:26
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:211:2
  (if
   ;;@ (lib)/memory.ts:211:6
   (i32.le_u
    (get_local $2)
    ;;@ (lib)/memory.ts:211:11
    (i32.const 8)
   )
   ;;@ (lib)/memory.ts:212:4
   (return)
  )
  ;;@ (lib)/memory.ts:223:2
  (i32.store
   ;;@ (lib)/memory.ts:216:2
   (tee_local $0
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:215:2
     (tee_local $4
      ;;@ (lib)/memory.ts:215:17
      (i32.and
       (i32.sub
        (i32.const 0)
        ;;@ (lib)/memory.ts:215:18
        (get_local $0)
       )
       ;;@ (lib)/memory.ts:215:25
       (i32.const 3)
      )
     )
    )
   )
   ;;@ (lib)/memory.ts:220:2
   (tee_local $1
    ;;@ (lib)/memory.ts:220:17
    (i32.mul
     ;;@ (lib)/memory.ts:220:33
     (get_local $1)
     (i32.const 16843009)
    )
   )
  )
  ;;@ (lib)/memory.ts:224:2
  (i32.store
   ;;@ (lib)/memory.ts:224:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:218:2
     (tee_local $2
      (i32.and
       (i32.sub
        ;;@ (lib)/memory.ts:217:2
        (get_local $2)
        ;;@ (lib)/memory.ts:217:7
        (get_local $4)
       )
       ;;@ (lib)/memory.ts:218:7
       (i32.const -4)
      )
     )
    )
    ;;@ (lib)/memory.ts:224:24
    (i32.const 4)
   )
   ;;@ (lib)/memory.ts:224:27
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:225:2
  (if
   ;;@ (lib)/memory.ts:225:6
   (i32.le_u
    (get_local $2)
    ;;@ (lib)/memory.ts:225:11
    (i32.const 8)
   )
   ;;@ (lib)/memory.ts:226:4
   (return)
  )
  ;;@ (lib)/memory.ts:227:2
  (i32.store
   ;;@ (lib)/memory.ts:227:13
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:227:20
    (i32.const 4)
   )
   ;;@ (lib)/memory.ts:227:23
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:228:2
  (i32.store
   ;;@ (lib)/memory.ts:228:13
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:228:20
    (i32.const 8)
   )
   ;;@ (lib)/memory.ts:228:23
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:229:2
  (i32.store
   ;;@ (lib)/memory.ts:229:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:229:20
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:229:24
    (i32.const 12)
   )
   ;;@ (lib)/memory.ts:229:28
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:230:2
  (i32.store
   ;;@ (lib)/memory.ts:230:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:230:20
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:230:24
    (i32.const 8)
   )
   ;;@ (lib)/memory.ts:230:27
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:231:2
  (if
   ;;@ (lib)/memory.ts:231:6
   (i32.le_u
    (get_local $2)
    ;;@ (lib)/memory.ts:231:11
    (i32.const 24)
   )
   ;;@ (lib)/memory.ts:232:4
   (return)
  )
  ;;@ (lib)/memory.ts:233:2
  (i32.store
   ;;@ (lib)/memory.ts:233:13
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:233:20
    (i32.const 12)
   )
   ;;@ (lib)/memory.ts:233:24
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:234:2
  (i32.store
   ;;@ (lib)/memory.ts:234:13
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:234:20
    (i32.const 16)
   )
   ;;@ (lib)/memory.ts:234:24
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:235:2
  (i32.store
   ;;@ (lib)/memory.ts:235:13
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:235:20
    (i32.const 20)
   )
   ;;@ (lib)/memory.ts:235:24
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:236:2
  (i32.store
   ;;@ (lib)/memory.ts:236:13
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:236:20
    (i32.const 24)
   )
   ;;@ (lib)/memory.ts:236:24
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:237:2
  (i32.store
   ;;@ (lib)/memory.ts:237:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:237:20
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:237:24
    (i32.const 28)
   )
   ;;@ (lib)/memory.ts:237:28
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:238:2
  (i32.store
   ;;@ (lib)/memory.ts:238:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:238:20
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:238:24
    (i32.const 24)
   )
   ;;@ (lib)/memory.ts:238:28
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:239:2
  (i32.store
   ;;@ (lib)/memory.ts:239:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:239:20
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:239:24
    (i32.const 20)
   )
   ;;@ (lib)/memory.ts:239:28
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:240:2
  (i32.store
   ;;@ (lib)/memory.ts:240:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:240:20
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:240:24
    (i32.const 16)
   )
   ;;@ (lib)/memory.ts:240:28
   (get_local $1)
  )
  ;;@ (lib)/memory.ts:244:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:243:2
    (tee_local $4
     ;;@ (lib)/memory.ts:243:6
     (i32.add
      ;;@ (lib)/memory.ts:243:11
      (i32.and
       ;;@ (lib)/memory.ts:243:12
       (get_local $0)
       ;;@ (lib)/memory.ts:243:19
       (i32.const 4)
      )
      ;;@ (lib)/memory.ts:243:6
      (i32.const 24)
     )
    )
   )
  )
  ;;@ (lib)/memory.ts:245:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ (lib)/memory.ts:245:7
    (get_local $4)
   )
  )
  ;;@ (lib)/memory.ts:248:2
  (set_local $3
   ;;@ (lib)/memory.ts:248:17
   (i64.or
    (i64.extend_u/i32
     (get_local $1)
    )
    ;;@ (lib)/memory.ts:248:28
    (i64.shl
     ;;@ (lib)/memory.ts:248:29
     (i64.extend_u/i32
      (get_local $1)
     )
     ;;@ (lib)/memory.ts:248:41
     (i64.const 32)
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ (lib)/memory.ts:249:9
    (i32.ge_u
     (get_local $2)
     ;;@ (lib)/memory.ts:249:14
     (i32.const 32)
    )
    (block
     ;;@ (lib)/memory.ts:250:4
     (i64.store
      ;;@ (lib)/memory.ts:250:15
      (get_local $0)
      ;;@ (lib)/memory.ts:250:21
      (get_local $3)
     )
     ;;@ (lib)/memory.ts:251:4
     (i64.store
      ;;@ (lib)/memory.ts:251:15
      (i32.add
       (get_local $0)
       ;;@ (lib)/memory.ts:251:22
       (i32.const 8)
      )
      ;;@ (lib)/memory.ts:251:25
      (get_local $3)
     )
     ;;@ (lib)/memory.ts:252:4
     (i64.store
      ;;@ (lib)/memory.ts:252:15
      (i32.add
       (get_local $0)
       ;;@ (lib)/memory.ts:252:22
       (i32.const 16)
      )
      ;;@ (lib)/memory.ts:252:26
      (get_local $3)
     )
     ;;@ (lib)/memory.ts:253:4
     (i64.store
      ;;@ (lib)/memory.ts:253:15
      (i32.add
       (get_local $0)
       ;;@ (lib)/memory.ts:253:22
       (i32.const 24)
      )
      ;;@ (lib)/memory.ts:253:26
      (get_local $3)
     )
     ;;@ (lib)/memory.ts:254:4
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ (lib)/memory.ts:254:9
       (i32.const 32)
      )
     )
     ;;@ (lib)/memory.ts:255:4
     (set_local $0
      (i32.add
       (get_local $0)
       ;;@ (lib)/memory.ts:255:12
       (i32.const 32)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $start (; 16 ;) (type $v)
  (set_global $assembly/buddy/BUCKETS_START
   ;;@ assembly/buddy.ts:92:27
   (get_global $HEAP_BASE)
  )
  (set_global $assembly/buddy/BUCKETS_END
   ;;@ assembly/buddy.ts:93:25
   (i32.add
    (get_global $assembly/buddy/BUCKETS_START)
    (i32.const 224)
   )
  )
  (set_global $assembly/buddy/NODE_IS_SPLIT_START
   ;;@ assembly/buddy.ts:138:33
   (get_global $assembly/buddy/BUCKETS_END)
  )
  (set_global $assembly/buddy/NODE_IS_SPLIT_END
   ;;@ assembly/buddy.ts:139:31
   (i32.add
    (get_global $assembly/buddy/NODE_IS_SPLIT_START)
    ;;@ assembly/buddy.ts:139:53
    (i32.const 16777216)
   )
  )
 )
)
