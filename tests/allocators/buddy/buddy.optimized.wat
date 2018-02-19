(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global $assembly/buddy/BUCKET_START (mut i32) (i32.const 0))
 (global $assembly/buddy/BUCKET_END (mut i32) (i32.const 0))
 (global $assembly/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $assembly/buddy/SPLIT_START (mut i32) (i32.const 0))
 (global $assembly/buddy/SPLIT_END (mut i32) (i32.const 0))
 (global $assembly/buddy/base_ptr (mut i32) (i32.const 0))
 (global $assembly/buddy/max_ptr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "allocate_memory" (func $assembly/buddy/allocate_memory))
 (export "free_memory" (func $assembly/buddy/free_memory))
 (export "memory" (memory $0))
 (start $start)
 (func $assembly/buddy/update_max_ptr (; 0 ;) (type $ii) (param $0 i32) (result i32)
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
    ;;@ assembly/buddy.ts:172:4
    (if
     ;;@ assembly/buddy.ts:172:8
     (i32.lt_s
      (grow_memory
       ;;@ assembly/buddy.ts:171:16
       (i32.shr_u
        (i32.and
         ;;@ assembly/buddy.ts:171:17
         (i32.add
          ;;@ assembly/buddy.ts:171:18
          (i32.sub
           ;;@ assembly/buddy.ts:171:19
           (get_local $0)
           ;;@ assembly/buddy.ts:171:31
           (get_global $assembly/buddy/max_ptr)
          )
          ;;@ assembly/buddy.ts:171:42
          (i32.const 65535)
         )
         (i32.const -65536)
        )
        ;;@ assembly/buddy.ts:171:65
        (i32.const 16)
       )
      )
      ;;@ assembly/buddy.ts:172:29
      (i32.const 0)
     )
     ;;@ assembly/buddy.ts:173:13
     (return
      (i32.const 0)
     )
    )
    ;;@ assembly/buddy.ts:175:4
    (set_global $assembly/buddy/max_ptr
     ;;@ assembly/buddy.ts:175:14
     (get_local $0)
    )
   )
  )
  ;;@ assembly/buddy.ts:177:9
  (i32.const 1)
 )
 (func $assembly/buddy/get_bucket (; 1 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:97:9
  (i32.add
   ;;@ assembly/buddy.ts:97:26
   (get_global $assembly/buddy/BUCKET_START)
   ;;@ assembly/buddy.ts:97:41
   (i32.mul
    (get_local $0)
    ;;@ assembly/buddy.ts:97:49
    (i32.const 8)
   )
  )
 )
 (func $assembly/buddy/list_init (; 2 ;) (type $iv) (param $0 i32)
  ;;@ assembly/buddy.ts:186:2
  (i32.store
   (get_local $0)
   ;;@ assembly/buddy.ts:186:14
   (get_local $0)
  )
  ;;@ assembly/buddy.ts:187:2
  (i32.store offset=4
   (get_local $0)
   ;;@ assembly/buddy.ts:187:14
   (get_local $0)
  )
 )
 (func $assembly/buddy/list_push (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:196:2
  (i32.store
   (get_local $1)
   ;;@ assembly/buddy.ts:195:2
   (tee_local $2
    ;;@ assembly/buddy.ts:195:13
    (i32.load
     (get_local $0)
    )
   )
  )
  ;;@ assembly/buddy.ts:197:2
  (i32.store offset=4
   (get_local $1)
   ;;@ assembly/buddy.ts:197:15
   (get_local $0)
  )
  ;;@ assembly/buddy.ts:198:2
  (i32.store offset=4
   (get_local $2)
   ;;@ assembly/buddy.ts:198:14
   (get_local $1)
  )
  ;;@ assembly/buddy.ts:199:2
  (i32.store
   (get_local $0)
   ;;@ assembly/buddy.ts:199:14
   (get_local $1)
  )
 )
 (func $assembly/buddy/bucket_for_request (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:266:2
  (set_local $1
   ;;@ assembly/buddy.ts:266:15
   (i32.const 27)
  )
  ;;@ assembly/buddy.ts:267:2
  (set_local $2
   ;;@ assembly/buddy.ts:267:13
   (i32.const 16)
  )
  (loop $continue|0
   (if
    ;;@ assembly/buddy.ts:269:9
    (i32.lt_u
     (get_local $2)
     ;;@ assembly/buddy.ts:269:16
     (get_local $0)
    )
    (block
     ;;@ assembly/buddy.ts:270:4
     (set_local $1
      (i32.sub
       (get_local $1)
       (i32.const 1)
      )
     )
     ;;@ assembly/buddy.ts:271:4
     (set_local $2
      (i32.mul
       (get_local $2)
       ;;@ assembly/buddy.ts:271:12
       (i32.const 2)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/buddy.ts:274:9
  (get_local $1)
 )
 (func $assembly/buddy/node_for_ptr (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/buddy.ts:241:9
  (i32.sub
   (i32.add
    (i32.shr_u
     ;;@ assembly/buddy.ts:241:10
     (i32.sub
      ;;@ assembly/buddy.ts:241:11
      (get_local $0)
      ;;@ assembly/buddy.ts:241:17
      (get_global $assembly/buddy/base_ptr)
     )
     ;;@ assembly/buddy.ts:241:30
     (i32.sub
      ;;@ assembly/buddy.ts:241:31
      (i32.const 31)
      ;;@ assembly/buddy.ts:241:48
      (get_local $1)
     )
    )
    ;;@ assembly/buddy.ts:241:59
    (i32.shl
     ;;@ assembly/buddy.ts:241:60
     (i32.const 1)
     ;;@ assembly/buddy.ts:241:65
     (get_local $1)
    )
   )
   ;;@ assembly/buddy.ts:241:75
   (i32.const 1)
  )
 )
 (func $assembly/buddy/node_is_split (; 6 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:143:9
  (i32.load8_u
   ;;@ assembly/buddy.ts:143:18
   (i32.add
    (get_global $assembly/buddy/SPLIT_START)
    ;;@ assembly/buddy.ts:143:32
    (get_local $0)
   )
  )
 )
 (func $assembly/buddy/parent_is_split (; 7 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:249:9
  (i32.and
   (i32.shr_s
    ;;@ assembly/buddy.ts:249:10
    (call $assembly/buddy/node_is_split
     ;;@ assembly/buddy.ts:249:24
     (i32.div_u
      ;;@ assembly/buddy.ts:248:2
      (tee_local $0
       ;;@ assembly/buddy.ts:248:10
       (i32.div_u
        (i32.sub
         ;;@ assembly/buddy.ts:248:11
         (get_local $0)
         ;;@ assembly/buddy.ts:248:19
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:248:24
        (i32.const 2)
       )
      )
      ;;@ assembly/buddy.ts:249:32
      (i32.const 8)
     )
    )
    ;;@ assembly/buddy.ts:249:38
    (i32.rem_u
     ;;@ assembly/buddy.ts:249:44
     (get_local $0)
     ;;@ assembly/buddy.ts:249:52
     (i32.const 8)
    )
   )
   ;;@ assembly/buddy.ts:249:58
   (i32.const 1)
  )
 )
 (func $assembly/buddy/list_remove (; 8 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  ;;@ assembly/buddy.ts:211:2
  (i32.store offset=4
   ;;@ assembly/buddy.ts:209:2
   (tee_local $1
    ;;@ assembly/buddy.ts:209:13
    (i32.load
     (get_local $0)
    )
   )
   ;;@ assembly/buddy.ts:210:2
   (tee_local $0
    ;;@ assembly/buddy.ts:210:13
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  ;;@ assembly/buddy.ts:212:2
  (i32.store
   (get_local $0)
   ;;@ assembly/buddy.ts:212:14
   (get_local $1)
  )
 )
 (func $assembly/buddy/ptr_for_node (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/buddy.ts:232:9
  (i32.add
   (get_global $assembly/buddy/base_ptr)
   ;;@ assembly/buddy.ts:232:20
   (i32.shl
    ;;@ assembly/buddy.ts:232:21
    (i32.add
     ;;@ assembly/buddy.ts:232:22
     (i32.sub
      (get_local $0)
      ;;@ assembly/buddy.ts:232:30
      (i32.shl
       ;;@ assembly/buddy.ts:232:31
       (i32.const 1)
       ;;@ assembly/buddy.ts:232:36
       (get_local $1)
      )
     )
     ;;@ assembly/buddy.ts:232:46
     (i32.const 1)
    )
    ;;@ assembly/buddy.ts:232:52
    (i32.sub
     ;;@ assembly/buddy.ts:232:53
     (i32.const 31)
     ;;@ assembly/buddy.ts:232:70
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/buddy/flip_parent_is_split (; 10 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   ;;@ assembly/buddy.ts:257:2
   (tee_local $1
    ;;@ assembly/buddy.ts:257:18
    (i32.div_u
     ;;@ assembly/buddy.ts:256:2
     (tee_local $0
      ;;@ assembly/buddy.ts:256:10
      (i32.div_u
       (i32.sub
        ;;@ assembly/buddy.ts:256:11
        (get_local $0)
        ;;@ assembly/buddy.ts:256:19
        (i32.const 1)
       )
       ;;@ assembly/buddy.ts:256:24
       (i32.const 2)
      )
     )
     ;;@ assembly/buddy.ts:257:26
     (i32.const 8)
    )
   )
  )
  (set_local $0
   ;;@ assembly/buddy.ts:258:28
   (i32.xor
    (call $assembly/buddy/node_is_split
     ;;@ assembly/buddy.ts:258:42
     (get_local $1)
    )
    ;;@ assembly/buddy.ts:258:55
    (i32.shl
     ;;@ assembly/buddy.ts:258:61
     (i32.const 1)
     ;;@ assembly/buddy.ts:258:66
     (i32.rem_u
      ;;@ assembly/buddy.ts:258:67
      (get_local $0)
      ;;@ assembly/buddy.ts:258:75
      (i32.const 8)
     )
    )
   )
  )
  (i32.store8
   (i32.add
    (get_global $assembly/buddy/SPLIT_START)
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
    ;;@ assembly/buddy.ts:283:9
    (i32.lt_u
     (get_local $0)
     ;;@ assembly/buddy.ts:283:18
     (get_global $assembly/buddy/bucket_limit)
    )
    (block
     ;;@ assembly/buddy.ts:293:4
     (if
      ;;@ assembly/buddy.ts:293:8
      (i32.eqz
       ;;@ assembly/buddy.ts:293:9
       (call $assembly/buddy/parent_is_split
        ;;@ assembly/buddy.ts:284:4
        (tee_local $1
         ;;@ assembly/buddy.ts:284:15
         (call $assembly/buddy/node_for_ptr
          ;;@ assembly/buddy.ts:284:28
          (get_global $assembly/buddy/base_ptr)
          ;;@ assembly/buddy.ts:284:38
          (get_global $assembly/buddy/bucket_limit)
         )
        )
       )
      )
      ;;@ assembly/buddy.ts:293:32
      (block
       ;;@ assembly/buddy.ts:294:6
       (call $assembly/buddy/list_remove
        ;;@ assembly/buddy.ts:294:18
        (get_global $assembly/buddy/base_ptr)
       )
       ;;@ assembly/buddy.ts:295:6
       (call $assembly/buddy/list_init
        ;;@ assembly/buddy.ts:295:16
        (call $assembly/buddy/get_bucket
         ;;@ assembly/buddy.ts:295:27
         (block (result i32)
          (set_global $assembly/buddy/bucket_limit
           (i32.sub
            ;;@ assembly/buddy.ts:295:29
            (get_global $assembly/buddy/bucket_limit)
            (i32.const 1)
           )
          )
          (get_global $assembly/buddy/bucket_limit)
         )
        )
       )
       ;;@ assembly/buddy.ts:296:6
       (call $assembly/buddy/list_push
        ;;@ assembly/buddy.ts:296:16
        (call $assembly/buddy/get_bucket
         ;;@ assembly/buddy.ts:296:27
         (get_global $assembly/buddy/bucket_limit)
        )
        ;;@ assembly/buddy.ts:296:42
        (get_global $assembly/buddy/base_ptr)
       )
       ;;@ assembly/buddy.ts:297:6
       (br $continue|0)
      )
     )
     ;;@ assembly/buddy.ts:309:4
     (if
      ;;@ assembly/buddy.ts:309:8
      (i32.eqz
       ;;@ assembly/buddy.ts:309:9
       (call $assembly/buddy/update_max_ptr
        ;;@ assembly/buddy.ts:309:24
        (i32.add
         ;;@ assembly/buddy.ts:308:4
         (tee_local $2
          ;;@ assembly/buddy.ts:308:18
          (call $assembly/buddy/ptr_for_node
           ;;@ assembly/buddy.ts:308:31
           (i32.add
            (get_local $1)
            ;;@ assembly/buddy.ts:308:38
            (i32.const 1)
           )
           ;;@ assembly/buddy.ts:308:41
           (get_global $assembly/buddy/bucket_limit)
          )
         )
         ;;@ assembly/buddy.ts:309:38
         (i32.const 8)
        )
       )
      )
      ;;@ assembly/buddy.ts:310:13
      (return
       (i32.const 0)
      )
     )
     ;;@ assembly/buddy.ts:312:4
     (call $assembly/buddy/list_push
      ;;@ assembly/buddy.ts:312:14
      (call $assembly/buddy/get_bucket
       ;;@ assembly/buddy.ts:312:25
       (get_global $assembly/buddy/bucket_limit)
      )
      ;;@ assembly/buddy.ts:312:40
      (get_local $2)
     )
     ;;@ assembly/buddy.ts:313:4
     (call $assembly/buddy/list_init
      ;;@ assembly/buddy.ts:313:14
      (call $assembly/buddy/get_bucket
       ;;@ assembly/buddy.ts:313:25
       (block (result i32)
        (set_global $assembly/buddy/bucket_limit
         (i32.sub
          ;;@ assembly/buddy.ts:313:27
          (get_global $assembly/buddy/bucket_limit)
          (i32.const 1)
         )
        )
        (get_global $assembly/buddy/bucket_limit)
       )
      )
     )
     ;;@ assembly/buddy.ts:320:4
     (if
      ;;@ assembly/buddy.ts:319:4
      (tee_local $1
       ;;@ assembly/buddy.ts:319:11
       (i32.div_u
        (i32.sub
         ;;@ assembly/buddy.ts:319:12
         (get_local $1)
         ;;@ assembly/buddy.ts:319:19
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:319:24
        (i32.const 2)
       )
      )
      ;;@ assembly/buddy.ts:321:6
      (call $assembly/buddy/flip_parent_is_split
       ;;@ assembly/buddy.ts:321:27
       (get_local $1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/buddy.ts:325:9
  (i32.const 1)
 )
 (func $assembly/buddy/list_pop (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/buddy.ts:220:2
  (if
   ;;@ assembly/buddy.ts:220:6
   (i32.eq
    ;;@ assembly/buddy.ts:219:2
    (tee_local $1
     ;;@ assembly/buddy.ts:219:13
     (i32.load
      (get_local $0)
     )
    )
    ;;@ assembly/buddy.ts:220:14
    (get_local $0)
   )
   ;;@ assembly/buddy.ts:220:27
   (return
    (i32.const 0)
   )
  )
  ;;@ assembly/buddy.ts:221:2
  (call $assembly/buddy/list_remove
   ;;@ assembly/buddy.ts:221:14
   (get_local $1)
  )
  ;;@ assembly/buddy.ts:222:9
  (get_local $1)
 )
 (func $assembly/buddy/allocate_memory (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/buddy.ts:339:2
  (if
   ;;@ assembly/buddy.ts:339:6
   (i32.gt_u
    (i32.add
     (get_local $0)
     ;;@ assembly/buddy.ts:339:16
     (i32.const 8)
    )
    ;;@ assembly/buddy.ts:339:30
    (i32.const -2147483648)
   )
   ;;@ assembly/buddy.ts:340:11
   (return
    (i32.const 0)
   )
  )
  ;;@ assembly/buddy.ts:348:2
  (if
   (i32.eqz
    ;;@ assembly/buddy.ts:348:6
    (get_global $assembly/buddy/base_ptr)
   )
   ;;@ assembly/buddy.ts:348:21
   (block
    ;;@ assembly/buddy.ts:349:4
    (set_global $assembly/buddy/base_ptr
     ;;@ assembly/buddy.ts:349:15
     (get_global $assembly/buddy/SPLIT_END)
    )
    ;;@ assembly/buddy.ts:350:4
    (set_global $assembly/buddy/max_ptr
     ;;@ assembly/buddy.ts:350:14
     (i32.shl
      (current_memory)
      ;;@ assembly/buddy.ts:350:41
      (i32.const 16)
     )
    )
    ;;@ assembly/buddy.ts:351:4
    (set_global $assembly/buddy/bucket_limit
     ;;@ assembly/buddy.ts:351:19
     (i32.const 27)
    )
    ;;@ assembly/buddy.ts:352:4
    (drop
     (call $assembly/buddy/update_max_ptr
      ;;@ assembly/buddy.ts:352:19
      (i32.add
       (get_global $assembly/buddy/base_ptr)
       ;;@ assembly/buddy.ts:352:30
       (i32.const 8)
      )
     )
    )
    ;;@ assembly/buddy.ts:353:4
    (call $assembly/buddy/list_init
     ;;@ assembly/buddy.ts:353:14
     (call $assembly/buddy/get_bucket
      ;;@ assembly/buddy.ts:353:25
      (i32.const 27)
     )
    )
    ;;@ assembly/buddy.ts:354:4
    (call $assembly/buddy/list_push
     ;;@ assembly/buddy.ts:354:14
     (call $assembly/buddy/get_bucket
      ;;@ assembly/buddy.ts:354:25
      (i32.const 27)
     )
     ;;@ assembly/buddy.ts:354:44
     (get_global $assembly/buddy/base_ptr)
    )
   )
  )
  ;;@ assembly/buddy.ts:362:2
  (set_local $4
   ;;@ assembly/buddy.ts:361:2
   (tee_local $1
    ;;@ assembly/buddy.ts:361:11
    (call $assembly/buddy/bucket_for_request
     ;;@ assembly/buddy.ts:361:30
     (i32.add
      (get_local $0)
      ;;@ assembly/buddy.ts:361:40
      (i32.const 8)
     )
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/buddy.ts:369:9
    (i32.add
     (get_local $1)
     ;;@ assembly/buddy.ts:369:18
     (i32.const 1)
    )
    ;;@ assembly/buddy.ts:369:26
    (block
     ;;@ assembly/buddy.ts:377:4
     (if
      ;;@ assembly/buddy.ts:377:8
      (i32.eqz
       ;;@ assembly/buddy.ts:377:9
       (call $assembly/buddy/lower_bucket_limit
        ;;@ assembly/buddy.ts:377:28
        (get_local $1)
       )
      )
      ;;@ assembly/buddy.ts:378:13
      (return
       (i32.const 0)
      )
     )
     ;;@ assembly/buddy.ts:386:4
     (if
      ;;@ assembly/buddy.ts:386:8
      (i32.eqz
       ;;@ assembly/buddy.ts:385:4
       (tee_local $2
        ;;@ assembly/buddy.ts:385:10
        (call $assembly/buddy/list_pop
         ;;@ assembly/buddy.ts:385:37
         (call $assembly/buddy/get_bucket
          ;;@ assembly/buddy.ts:385:48
          (get_local $1)
         )
        )
       )
      )
      ;;@ assembly/buddy.ts:386:14
      (block
       ;;@ assembly/buddy.ts:391:6
       (if
        ;;@ assembly/buddy.ts:391:10
        (i32.and
         (if (result i32)
          (tee_local $2
           (i32.ne
            (get_local $1)
            ;;@ assembly/buddy.ts:391:20
            (get_global $assembly/buddy/bucket_limit)
           )
          )
          (get_local $2)
          (i32.eqz
           ;;@ assembly/buddy.ts:391:36
           (get_local $1)
          )
         )
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:391:49
        (block
         ;;@ assembly/buddy.ts:392:8
         (set_local $1
          (i32.sub
           (get_local $1)
           (i32.const 1)
          )
         )
         ;;@ assembly/buddy.ts:393:8
         (br $continue|0)
        )
       )
       ;;@ assembly/buddy.ts:403:6
       (if
        ;;@ assembly/buddy.ts:403:10
        (i32.eqz
         ;;@ assembly/buddy.ts:403:11
         (call $assembly/buddy/lower_bucket_limit
          ;;@ assembly/buddy.ts:403:30
          (i32.sub
           (get_local $1)
           ;;@ assembly/buddy.ts:403:39
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/buddy.ts:404:15
        (return
         (i32.const 0)
        )
       )
       ;;@ assembly/buddy.ts:406:6
       (set_local $2
        ;;@ assembly/buddy.ts:406:12
        (call $assembly/buddy/list_pop
         ;;@ assembly/buddy.ts:406:39
         (call $assembly/buddy/get_bucket
          ;;@ assembly/buddy.ts:406:50
          (get_local $1)
         )
        )
       )
      )
     )
     ;;@ assembly/buddy.ts:413:4
     (set_local $3
      ;;@ assembly/buddy.ts:413:11
      (i32.shl
       (i32.const 1)
       ;;@ assembly/buddy.ts:413:16
       (i32.sub
        ;;@ assembly/buddy.ts:413:17
        (i32.const 31)
        ;;@ assembly/buddy.ts:413:34
        (get_local $1)
       )
      )
     )
     ;;@ assembly/buddy.ts:415:4
     (if
      ;;@ assembly/buddy.ts:415:8
      (i32.eqz
       ;;@ assembly/buddy.ts:415:9
       (call $assembly/buddy/update_max_ptr
        ;;@ assembly/buddy.ts:415:24
        (i32.add
         (get_local $2)
         ;;@ assembly/buddy.ts:414:19
         (if (result i32)
          (i32.lt_u
           (get_local $1)
           ;;@ assembly/buddy.ts:414:28
           (get_local $4)
          )
          ;;@ assembly/buddy.ts:414:46
          (i32.add
           (i32.div_u
            (get_local $3)
            ;;@ assembly/buddy.ts:414:53
            (i32.const 2)
           )
           ;;@ assembly/buddy.ts:414:57
           (i32.const 8)
          )
          ;;@ assembly/buddy.ts:414:69
          (get_local $3)
         )
        )
       )
      )
      ;;@ assembly/buddy.ts:415:45
      (block
       ;;@ assembly/buddy.ts:416:6
       (call $assembly/buddy/list_push
        ;;@ assembly/buddy.ts:416:16
        (call $assembly/buddy/get_bucket
         ;;@ assembly/buddy.ts:416:27
         (get_local $1)
        )
        ;;@ assembly/buddy.ts:416:36
        (get_local $2)
       )
       ;;@ assembly/buddy.ts:417:13
       (return
        (i32.const 0)
       )
      )
     )
     ;;@ assembly/buddy.ts:432:4
     (if
      ;;@ assembly/buddy.ts:431:4
      (tee_local $3
       ;;@ assembly/buddy.ts:431:8
       (call $assembly/buddy/node_for_ptr
        ;;@ assembly/buddy.ts:431:21
        (get_local $2)
        ;;@ assembly/buddy.ts:431:26
        (get_local $1)
       )
      )
      ;;@ assembly/buddy.ts:433:6
      (call $assembly/buddy/flip_parent_is_split
       ;;@ assembly/buddy.ts:433:27
       (get_local $3)
      )
     )
     (loop $continue|1
      (if
       ;;@ assembly/buddy.ts:443:11
       (i32.lt_u
        (get_local $1)
        ;;@ assembly/buddy.ts:443:20
        (get_local $4)
       )
       (block
        ;;@ assembly/buddy.ts:446:6
        (call $assembly/buddy/flip_parent_is_split
         ;;@ assembly/buddy.ts:444:6
         (tee_local $3
          ;;@ assembly/buddy.ts:444:10
          (i32.add
           (i32.mul
            (get_local $3)
            ;;@ assembly/buddy.ts:444:14
            (i32.const 2)
           )
           ;;@ assembly/buddy.ts:444:18
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/buddy.ts:447:6
        (call $assembly/buddy/list_push
         ;;@ assembly/buddy.ts:447:16
         (call $assembly/buddy/get_bucket
          ;;@ assembly/buddy.ts:445:6
          (tee_local $1
           (i32.add
            (get_local $1)
            (i32.const 1)
           )
          )
         )
         ;;@ assembly/buddy.ts:447:36
         (call $assembly/buddy/ptr_for_node
          ;;@ assembly/buddy.ts:447:66
          (i32.add
           (get_local $3)
           ;;@ assembly/buddy.ts:447:70
           (i32.const 1)
          )
          ;;@ assembly/buddy.ts:447:73
          (get_local $1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/buddy.ts:454:4
     (i32.store
      ;;@ assembly/buddy.ts:454:17
      (get_local $2)
      ;;@ assembly/buddy.ts:454:22
      (get_local $0)
     )
     ;;@ assembly/buddy.ts:455:17
     (return
      ;;@ assembly/buddy.ts:455:11
      (i32.add
       (get_local $2)
       ;;@ assembly/buddy.ts:455:17
       (i32.const 8)
      )
     )
    )
   )
  )
  ;;@ assembly/buddy.ts:458:9
  (i32.const 0)
 )
 (func $assembly/buddy/free_memory (; 14 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:468:2
  (if
   ;;@ assembly/buddy.ts:468:6
   (i32.eqz
    ;;@ assembly/buddy.ts:468:7
    (get_local $0)
   )
   ;;@ assembly/buddy.ts:469:4
   (return)
  )
  ;;@ assembly/buddy.ts:478:2
  (set_local $1
   ;;@ assembly/buddy.ts:478:11
   (call $assembly/buddy/bucket_for_request
    ;;@ assembly/buddy.ts:478:30
    (i32.add
     (i32.load
      ;;@ assembly/buddy.ts:477:2
      (tee_local $0
       ;;@ assembly/buddy.ts:477:8
       (i32.sub
        (get_local $0)
        ;;@ assembly/buddy.ts:477:14
        (i32.const 8)
       )
      )
     )
     ;;@ assembly/buddy.ts:478:49
     (i32.const 8)
    )
   )
  )
  ;;@ assembly/buddy.ts:479:2
  (set_local $0
   ;;@ assembly/buddy.ts:479:6
   (call $assembly/buddy/node_for_ptr
    ;;@ assembly/buddy.ts:479:19
    (get_local $0)
    ;;@ assembly/buddy.ts:479:24
    (get_local $1)
   )
  )
  ;;@ assembly/buddy.ts:485:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/buddy.ts:485:9
     (get_local $0)
     (block
      ;;@ assembly/buddy.ts:492:4
      (call $assembly/buddy/flip_parent_is_split
       ;;@ assembly/buddy.ts:492:25
       (get_local $0)
      )
      ;;@ assembly/buddy.ts:503:6
      (br_if $break|0
       ;;@ assembly/buddy.ts:502:8
       (if (result i32)
        (tee_local $2
         (call $assembly/buddy/parent_is_split
          ;;@ assembly/buddy.ts:502:24
          (get_local $0)
         )
        )
        (get_local $2)
        ;;@ assembly/buddy.ts:502:30
        (i32.eq
         (get_local $1)
         ;;@ assembly/buddy.ts:502:40
         (get_global $assembly/buddy/bucket_limit)
        )
       )
      )
      ;;@ assembly/buddy.ts:513:4
      (call $assembly/buddy/list_remove
       ;;@ assembly/buddy.ts:513:16
       (call $assembly/buddy/ptr_for_node
        ;;@ assembly/buddy.ts:513:46
        (i32.add
         (i32.xor
          ;;@ assembly/buddy.ts:513:47
          (i32.sub
           ;;@ assembly/buddy.ts:513:48
           (get_local $0)
           ;;@ assembly/buddy.ts:513:52
           (i32.const 1)
          )
          ;;@ assembly/buddy.ts:513:57
          (i32.const 1)
         )
         ;;@ assembly/buddy.ts:513:62
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:513:65
        (get_local $1)
       )
      )
      ;;@ assembly/buddy.ts:514:4
      (set_local $0
       ;;@ assembly/buddy.ts:514:8
       (i32.div_u
        (i32.sub
         ;;@ assembly/buddy.ts:514:9
         (get_local $0)
         ;;@ assembly/buddy.ts:514:13
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:514:18
        (i32.const 2)
       )
      )
      ;;@ assembly/buddy.ts:515:4
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
  ;;@ assembly/buddy.ts:524:2
  (call $assembly/buddy/list_push
   ;;@ assembly/buddy.ts:524:12
   (call $assembly/buddy/get_bucket
    ;;@ assembly/buddy.ts:524:23
    (get_local $1)
   )
   ;;@ assembly/buddy.ts:524:32
   (call $assembly/buddy/ptr_for_node
    ;;@ assembly/buddy.ts:524:62
    (get_local $0)
    ;;@ assembly/buddy.ts:524:65
    (get_local $1)
   )
  )
 )
 (func $start (; 15 ;) (type $v)
  (set_global $assembly/buddy/BUCKET_START
   ;;@ assembly/buddy.ts:92:26
   (get_global $HEAP_BASE)
  )
  (set_global $assembly/buddy/BUCKET_END
   ;;@ assembly/buddy.ts:93:24
   (i32.add
    (get_global $assembly/buddy/BUCKET_START)
    (i32.const 224)
   )
  )
  (set_global $assembly/buddy/SPLIT_START
   ;;@ assembly/buddy.ts:138:25
   (get_global $assembly/buddy/BUCKET_END)
  )
  (set_global $assembly/buddy/SPLIT_END
   ;;@ assembly/buddy.ts:139:23
   (i32.add
    (get_global $assembly/buddy/SPLIT_START)
    (i32.const 16777216)
   )
  )
 )
)
