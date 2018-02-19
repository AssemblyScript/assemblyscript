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
  ;;@ assembly/buddy.ts:175:2
  (if
   ;;@ assembly/buddy.ts:175:6
   (i32.gt_u
    (get_local $0)
    ;;@ assembly/buddy.ts:175:18
    (get_global $assembly/buddy/max_ptr)
   )
   ;;@ assembly/buddy.ts:175:27
   (block
    ;;@ assembly/buddy.ts:177:4
    (if
     ;;@ assembly/buddy.ts:177:8
     (i32.lt_s
      (grow_memory
       ;;@ assembly/buddy.ts:176:16
       (i32.shr_u
        (i32.and
         ;;@ assembly/buddy.ts:176:17
         (i32.add
          ;;@ assembly/buddy.ts:176:18
          (i32.sub
           ;;@ assembly/buddy.ts:176:19
           (get_local $0)
           ;;@ assembly/buddy.ts:176:31
           (get_global $assembly/buddy/max_ptr)
          )
          ;;@ assembly/buddy.ts:176:42
          (i32.const 65535)
         )
         (i32.const -65536)
        )
        ;;@ assembly/buddy.ts:176:65
        (i32.const 16)
       )
      )
      ;;@ assembly/buddy.ts:177:29
      (i32.const 0)
     )
     ;;@ assembly/buddy.ts:178:13
     (return
      (i32.const 0)
     )
    )
    ;;@ assembly/buddy.ts:180:4
    (set_global $assembly/buddy/max_ptr
     ;;@ assembly/buddy.ts:180:14
     (get_local $0)
    )
   )
  )
  ;;@ assembly/buddy.ts:182:9
  (i32.const 1)
 )
 (func $assembly/buddy/get_bucket (; 1 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:97:9
  (i32.load
   ;;@ assembly/buddy.ts:97:20
   (i32.add
    (get_global $assembly/buddy/BUCKET_START)
    ;;@ assembly/buddy.ts:97:35
    (i32.mul
     (get_local $0)
     ;;@ assembly/buddy.ts:97:43
     (i32.const 4)
    )
   )
  )
 )
 (func $assembly/buddy/list_init (; 2 ;) (type $iv) (param $0 i32)
  ;;@ assembly/buddy.ts:191:2
  (i32.store
   (get_local $0)
   ;;@ assembly/buddy.ts:191:14
   (get_local $0)
  )
  ;;@ assembly/buddy.ts:192:2
  (i32.store offset=4
   (get_local $0)
   ;;@ assembly/buddy.ts:192:14
   (get_local $0)
  )
 )
 (func $assembly/buddy/list_push (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:201:2
  (i32.store
   (get_local $1)
   ;;@ assembly/buddy.ts:200:2
   (tee_local $2
    ;;@ assembly/buddy.ts:200:13
    (i32.load
     (get_local $0)
    )
   )
  )
  ;;@ assembly/buddy.ts:202:2
  (i32.store offset=4
   (get_local $1)
   ;;@ assembly/buddy.ts:202:15
   (get_local $0)
  )
  ;;@ assembly/buddy.ts:203:2
  (i32.store offset=4
   (get_local $2)
   ;;@ assembly/buddy.ts:203:14
   (get_local $1)
  )
  ;;@ assembly/buddy.ts:204:2
  (i32.store
   (get_local $0)
   ;;@ assembly/buddy.ts:204:14
   (get_local $1)
  )
 )
 (func $assembly/buddy/bucket_for_request (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:271:2
  (set_local $1
   ;;@ assembly/buddy.ts:271:15
   (i32.const 27)
  )
  ;;@ assembly/buddy.ts:272:2
  (set_local $2
   ;;@ assembly/buddy.ts:272:13
   (i32.const 16)
  )
  (loop $continue|0
   (if
    ;;@ assembly/buddy.ts:274:9
    (i32.lt_u
     (get_local $2)
     ;;@ assembly/buddy.ts:274:16
     (get_local $0)
    )
    (block
     ;;@ assembly/buddy.ts:275:4
     (set_local $1
      (i32.sub
       (get_local $1)
       (i32.const 1)
      )
     )
     ;;@ assembly/buddy.ts:276:4
     (set_local $2
      (i32.mul
       (get_local $2)
       ;;@ assembly/buddy.ts:276:12
       (i32.const 2)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/buddy.ts:279:9
  (get_local $1)
 )
 (func $assembly/buddy/node_for_ptr (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/buddy.ts:246:9
  (i32.sub
   (i32.add
    (i32.shr_u
     ;;@ assembly/buddy.ts:246:10
     (i32.sub
      ;;@ assembly/buddy.ts:246:11
      (get_local $0)
      ;;@ assembly/buddy.ts:246:17
      (get_global $assembly/buddy/base_ptr)
     )
     ;;@ assembly/buddy.ts:246:30
     (i32.sub
      ;;@ assembly/buddy.ts:246:31
      (i32.const 31)
      ;;@ assembly/buddy.ts:246:48
      (get_local $1)
     )
    )
    ;;@ assembly/buddy.ts:246:59
    (i32.shl
     ;;@ assembly/buddy.ts:246:60
     (i32.const 1)
     ;;@ assembly/buddy.ts:246:65
     (get_local $1)
    )
   )
   ;;@ assembly/buddy.ts:246:75
   (i32.const 1)
  )
 )
 (func $assembly/buddy/node_is_split (; 6 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:148:9
  (i32.load8_u
   ;;@ assembly/buddy.ts:148:18
   (i32.add
    (get_global $assembly/buddy/SPLIT_START)
    ;;@ assembly/buddy.ts:148:32
    (get_local $0)
   )
  )
 )
 (func $assembly/buddy/parent_is_split (; 7 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:254:9
  (i32.and
   (i32.shr_s
    ;;@ assembly/buddy.ts:254:10
    (call $assembly/buddy/node_is_split
     ;;@ assembly/buddy.ts:254:24
     (i32.div_u
      ;;@ assembly/buddy.ts:253:2
      (tee_local $0
       ;;@ assembly/buddy.ts:253:10
       (i32.div_u
        (i32.sub
         ;;@ assembly/buddy.ts:253:11
         (get_local $0)
         ;;@ assembly/buddy.ts:253:19
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:253:24
        (i32.const 2)
       )
      )
      ;;@ assembly/buddy.ts:254:32
      (i32.const 8)
     )
    )
    ;;@ assembly/buddy.ts:254:38
    (i32.rem_u
     ;;@ assembly/buddy.ts:254:44
     (get_local $0)
     ;;@ assembly/buddy.ts:254:52
     (i32.const 8)
    )
   )
   ;;@ assembly/buddy.ts:254:58
   (i32.const 1)
  )
 )
 (func $assembly/buddy/list_remove (; 8 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  ;;@ assembly/buddy.ts:216:2
  (i32.store offset=4
   ;;@ assembly/buddy.ts:214:2
   (tee_local $1
    ;;@ assembly/buddy.ts:214:13
    (i32.load
     (get_local $0)
    )
   )
   ;;@ assembly/buddy.ts:215:2
   (tee_local $0
    ;;@ assembly/buddy.ts:215:13
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  ;;@ assembly/buddy.ts:217:2
  (i32.store
   (get_local $0)
   ;;@ assembly/buddy.ts:217:14
   (get_local $1)
  )
 )
 (func $assembly/buddy/ptr_for_node (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/buddy.ts:237:9
  (i32.add
   (get_global $assembly/buddy/base_ptr)
   ;;@ assembly/buddy.ts:237:20
   (i32.shl
    ;;@ assembly/buddy.ts:237:21
    (i32.add
     ;;@ assembly/buddy.ts:237:22
     (i32.sub
      (get_local $0)
      ;;@ assembly/buddy.ts:237:30
      (i32.shl
       ;;@ assembly/buddy.ts:237:31
       (i32.const 1)
       ;;@ assembly/buddy.ts:237:36
       (get_local $1)
      )
     )
     ;;@ assembly/buddy.ts:237:46
     (i32.const 1)
    )
    ;;@ assembly/buddy.ts:237:52
    (i32.sub
     ;;@ assembly/buddy.ts:237:53
     (i32.const 31)
     ;;@ assembly/buddy.ts:237:70
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/buddy/flip_parent_is_split (; 10 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   ;;@ assembly/buddy.ts:262:2
   (tee_local $1
    ;;@ assembly/buddy.ts:262:18
    (i32.div_u
     ;;@ assembly/buddy.ts:261:2
     (tee_local $0
      ;;@ assembly/buddy.ts:261:10
      (i32.div_u
       (i32.sub
        ;;@ assembly/buddy.ts:261:11
        (get_local $0)
        ;;@ assembly/buddy.ts:261:19
        (i32.const 1)
       )
       ;;@ assembly/buddy.ts:261:24
       (i32.const 2)
      )
     )
     ;;@ assembly/buddy.ts:262:26
     (i32.const 8)
    )
   )
  )
  (set_local $0
   ;;@ assembly/buddy.ts:263:28
   (i32.xor
    (call $assembly/buddy/node_is_split
     ;;@ assembly/buddy.ts:263:42
     (get_local $1)
    )
    ;;@ assembly/buddy.ts:263:55
    (i32.shl
     ;;@ assembly/buddy.ts:263:61
     (i32.const 1)
     ;;@ assembly/buddy.ts:263:66
     (i32.rem_u
      ;;@ assembly/buddy.ts:263:67
      (get_local $0)
      ;;@ assembly/buddy.ts:263:75
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
    ;;@ assembly/buddy.ts:288:9
    (i32.lt_u
     (get_local $0)
     ;;@ assembly/buddy.ts:288:18
     (get_global $assembly/buddy/bucket_limit)
    )
    (block
     ;;@ assembly/buddy.ts:298:4
     (if
      ;;@ assembly/buddy.ts:298:8
      (i32.eqz
       ;;@ assembly/buddy.ts:298:9
       (call $assembly/buddy/parent_is_split
        ;;@ assembly/buddy.ts:289:4
        (tee_local $1
         ;;@ assembly/buddy.ts:289:15
         (call $assembly/buddy/node_for_ptr
          ;;@ assembly/buddy.ts:289:28
          (get_global $assembly/buddy/base_ptr)
          ;;@ assembly/buddy.ts:289:38
          (get_global $assembly/buddy/bucket_limit)
         )
        )
       )
      )
      ;;@ assembly/buddy.ts:298:32
      (block
       ;;@ assembly/buddy.ts:299:6
       (call $assembly/buddy/list_remove
        ;;@ assembly/buddy.ts:299:18
        (get_global $assembly/buddy/base_ptr)
       )
       ;;@ assembly/buddy.ts:300:6
       (call $assembly/buddy/list_init
        ;;@ assembly/buddy.ts:300:16
        (call $assembly/buddy/get_bucket
         ;;@ assembly/buddy.ts:300:27
         (block (result i32)
          (set_global $assembly/buddy/bucket_limit
           (i32.sub
            ;;@ assembly/buddy.ts:300:29
            (get_global $assembly/buddy/bucket_limit)
            (i32.const 1)
           )
          )
          (get_global $assembly/buddy/bucket_limit)
         )
        )
       )
       ;;@ assembly/buddy.ts:301:6
       (call $assembly/buddy/list_push
        ;;@ assembly/buddy.ts:301:16
        (call $assembly/buddy/get_bucket
         ;;@ assembly/buddy.ts:301:27
         (get_global $assembly/buddy/bucket_limit)
        )
        ;;@ assembly/buddy.ts:301:42
        (get_global $assembly/buddy/base_ptr)
       )
       ;;@ assembly/buddy.ts:302:6
       (br $continue|0)
      )
     )
     ;;@ assembly/buddy.ts:314:4
     (if
      ;;@ assembly/buddy.ts:314:8
      (i32.eqz
       ;;@ assembly/buddy.ts:314:9
       (call $assembly/buddy/update_max_ptr
        ;;@ assembly/buddy.ts:314:24
        (i32.add
         ;;@ assembly/buddy.ts:313:4
         (tee_local $2
          ;;@ assembly/buddy.ts:313:18
          (call $assembly/buddy/ptr_for_node
           ;;@ assembly/buddy.ts:313:31
           (i32.add
            (get_local $1)
            ;;@ assembly/buddy.ts:313:38
            (i32.const 1)
           )
           ;;@ assembly/buddy.ts:313:41
           (get_global $assembly/buddy/bucket_limit)
          )
         )
         ;;@ assembly/buddy.ts:314:38
         (i32.const 8)
        )
       )
      )
      ;;@ assembly/buddy.ts:315:13
      (return
       (i32.const 0)
      )
     )
     ;;@ assembly/buddy.ts:317:4
     (call $assembly/buddy/list_push
      ;;@ assembly/buddy.ts:317:14
      (call $assembly/buddy/get_bucket
       ;;@ assembly/buddy.ts:317:25
       (get_global $assembly/buddy/bucket_limit)
      )
      ;;@ assembly/buddy.ts:317:40
      (get_local $2)
     )
     ;;@ assembly/buddy.ts:318:4
     (call $assembly/buddy/list_init
      ;;@ assembly/buddy.ts:318:14
      (call $assembly/buddy/get_bucket
       ;;@ assembly/buddy.ts:318:25
       (block (result i32)
        (set_global $assembly/buddy/bucket_limit
         (i32.sub
          ;;@ assembly/buddy.ts:318:27
          (get_global $assembly/buddy/bucket_limit)
          (i32.const 1)
         )
        )
        (get_global $assembly/buddy/bucket_limit)
       )
      )
     )
     ;;@ assembly/buddy.ts:325:4
     (if
      ;;@ assembly/buddy.ts:324:4
      (tee_local $1
       ;;@ assembly/buddy.ts:324:11
       (i32.div_u
        (i32.sub
         ;;@ assembly/buddy.ts:324:12
         (get_local $1)
         ;;@ assembly/buddy.ts:324:19
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:324:24
        (i32.const 2)
       )
      )
      ;;@ assembly/buddy.ts:326:6
      (call $assembly/buddy/flip_parent_is_split
       ;;@ assembly/buddy.ts:326:27
       (get_local $1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/buddy.ts:330:9
  (i32.const 1)
 )
 (func $assembly/buddy/list_pop (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/buddy.ts:225:2
  (if
   ;;@ assembly/buddy.ts:225:6
   (i32.eq
    ;;@ assembly/buddy.ts:224:2
    (tee_local $1
     ;;@ assembly/buddy.ts:224:13
     (i32.load
      (get_local $0)
     )
    )
    ;;@ assembly/buddy.ts:225:14
    (get_local $0)
   )
   ;;@ assembly/buddy.ts:225:27
   (return
    (i32.const 0)
   )
  )
  ;;@ assembly/buddy.ts:226:2
  (call $assembly/buddy/list_remove
   ;;@ assembly/buddy.ts:226:14
   (get_local $1)
  )
  ;;@ assembly/buddy.ts:227:9
  (get_local $1)
 )
 (func $assembly/buddy/allocate_memory (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/buddy.ts:342:2
  (if
   ;;@ assembly/buddy.ts:342:6
   (i32.gt_u
    (i32.add
     (get_local $0)
     ;;@ assembly/buddy.ts:342:16
     (i32.const 8)
    )
    ;;@ assembly/buddy.ts:342:30
    (i32.const -2147483648)
   )
   ;;@ assembly/buddy.ts:343:11
   (return
    (i32.const 0)
   )
  )
  ;;@ assembly/buddy.ts:351:2
  (if
   (i32.eqz
    ;;@ assembly/buddy.ts:351:6
    (get_global $assembly/buddy/base_ptr)
   )
   ;;@ assembly/buddy.ts:351:21
   (block
    ;;@ assembly/buddy.ts:352:4
    (set_global $assembly/buddy/base_ptr
     ;;@ assembly/buddy.ts:352:15
     (block (result i32)
      (set_global $assembly/buddy/max_ptr
       ;;@ assembly/buddy.ts:352:25
       (get_global $assembly/buddy/SPLIT_END)
      )
      (get_global $assembly/buddy/max_ptr)
     )
    )
    ;;@ assembly/buddy.ts:353:4
    (set_global $assembly/buddy/bucket_limit
     ;;@ assembly/buddy.ts:353:19
     (i32.const 27)
    )
    ;;@ assembly/buddy.ts:354:4
    (drop
     (call $assembly/buddy/update_max_ptr
      ;;@ assembly/buddy.ts:354:19
      (i32.add
       (get_global $assembly/buddy/base_ptr)
       ;;@ assembly/buddy.ts:354:30
       (i32.const 8)
      )
     )
    )
    ;;@ assembly/buddy.ts:355:4
    (call $assembly/buddy/list_init
     ;;@ assembly/buddy.ts:355:14
     (call $assembly/buddy/get_bucket
      ;;@ assembly/buddy.ts:355:25
      (i32.const 27)
     )
    )
    ;;@ assembly/buddy.ts:356:4
    (call $assembly/buddy/list_push
     ;;@ assembly/buddy.ts:356:14
     (call $assembly/buddy/get_bucket
      ;;@ assembly/buddy.ts:356:25
      (i32.const 27)
     )
     ;;@ assembly/buddy.ts:356:44
     (get_global $assembly/buddy/base_ptr)
    )
   )
  )
  ;;@ assembly/buddy.ts:364:2
  (set_local $4
   ;;@ assembly/buddy.ts:363:2
   (tee_local $1
    ;;@ assembly/buddy.ts:363:11
    (call $assembly/buddy/bucket_for_request
     ;;@ assembly/buddy.ts:363:30
     (i32.add
      (get_local $0)
      ;;@ assembly/buddy.ts:363:40
      (i32.const 8)
     )
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/buddy.ts:371:9
    (i32.add
     (get_local $1)
     ;;@ assembly/buddy.ts:371:18
     (i32.const 1)
    )
    ;;@ assembly/buddy.ts:371:26
    (block
     ;;@ assembly/buddy.ts:379:4
     (if
      ;;@ assembly/buddy.ts:379:8
      (i32.eqz
       ;;@ assembly/buddy.ts:379:9
       (call $assembly/buddy/lower_bucket_limit
        ;;@ assembly/buddy.ts:379:28
        (get_local $1)
       )
      )
      ;;@ assembly/buddy.ts:380:13
      (return
       (i32.const 0)
      )
     )
     ;;@ assembly/buddy.ts:388:4
     (if
      ;;@ assembly/buddy.ts:388:8
      (i32.eqz
       ;;@ assembly/buddy.ts:387:4
       (tee_local $2
        ;;@ assembly/buddy.ts:387:10
        (call $assembly/buddy/list_pop
         ;;@ assembly/buddy.ts:387:37
         (call $assembly/buddy/get_bucket
          ;;@ assembly/buddy.ts:387:48
          (get_local $1)
         )
        )
       )
      )
      ;;@ assembly/buddy.ts:388:14
      (block
       ;;@ assembly/buddy.ts:393:6
       (if
        ;;@ assembly/buddy.ts:393:10
        (i32.and
         (if (result i32)
          (tee_local $2
           (i32.ne
            (get_local $1)
            ;;@ assembly/buddy.ts:393:20
            (get_global $assembly/buddy/bucket_limit)
           )
          )
          (get_local $2)
          (i32.eqz
           ;;@ assembly/buddy.ts:393:36
           (get_local $1)
          )
         )
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:393:49
        (block
         ;;@ assembly/buddy.ts:394:8
         (set_local $1
          (i32.sub
           (get_local $1)
           (i32.const 1)
          )
         )
         ;;@ assembly/buddy.ts:395:8
         (br $continue|0)
        )
       )
       ;;@ assembly/buddy.ts:405:6
       (if
        ;;@ assembly/buddy.ts:405:10
        (i32.eqz
         ;;@ assembly/buddy.ts:405:11
         (call $assembly/buddy/lower_bucket_limit
          ;;@ assembly/buddy.ts:405:30
          (i32.sub
           (get_local $1)
           ;;@ assembly/buddy.ts:405:39
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/buddy.ts:406:15
        (return
         (i32.const 0)
        )
       )
       ;;@ assembly/buddy.ts:408:6
       (set_local $2
        ;;@ assembly/buddy.ts:408:12
        (call $assembly/buddy/list_pop
         ;;@ assembly/buddy.ts:408:39
         (call $assembly/buddy/get_bucket
          ;;@ assembly/buddy.ts:408:50
          (get_local $1)
         )
        )
       )
      )
     )
     ;;@ assembly/buddy.ts:415:4
     (set_local $3
      ;;@ assembly/buddy.ts:415:11
      (i32.shl
       (i32.const 1)
       ;;@ assembly/buddy.ts:415:16
       (i32.sub
        ;;@ assembly/buddy.ts:415:17
        (i32.const 31)
        ;;@ assembly/buddy.ts:415:34
        (get_local $1)
       )
      )
     )
     ;;@ assembly/buddy.ts:417:4
     (if
      ;;@ assembly/buddy.ts:417:8
      (i32.eqz
       ;;@ assembly/buddy.ts:417:9
       (call $assembly/buddy/update_max_ptr
        ;;@ assembly/buddy.ts:417:24
        (i32.add
         (get_local $2)
         ;;@ assembly/buddy.ts:416:19
         (if (result i32)
          (i32.lt_u
           (get_local $1)
           ;;@ assembly/buddy.ts:416:28
           (get_local $4)
          )
          ;;@ assembly/buddy.ts:416:46
          (i32.add
           (i32.div_u
            (get_local $3)
            ;;@ assembly/buddy.ts:416:53
            (i32.const 2)
           )
           ;;@ assembly/buddy.ts:416:57
           (i32.const 8)
          )
          ;;@ assembly/buddy.ts:416:69
          (get_local $3)
         )
        )
       )
      )
      ;;@ assembly/buddy.ts:417:45
      (block
       ;;@ assembly/buddy.ts:418:6
       (call $assembly/buddy/list_push
        ;;@ assembly/buddy.ts:418:16
        (call $assembly/buddy/get_bucket
         ;;@ assembly/buddy.ts:418:27
         (get_local $1)
        )
        ;;@ assembly/buddy.ts:418:36
        (get_local $2)
       )
       ;;@ assembly/buddy.ts:419:13
       (return
        (i32.const 0)
       )
      )
     )
     ;;@ assembly/buddy.ts:434:4
     (if
      ;;@ assembly/buddy.ts:433:4
      (tee_local $3
       ;;@ assembly/buddy.ts:433:8
       (call $assembly/buddy/node_for_ptr
        ;;@ assembly/buddy.ts:433:21
        (get_local $2)
        ;;@ assembly/buddy.ts:433:26
        (get_local $1)
       )
      )
      ;;@ assembly/buddy.ts:435:6
      (call $assembly/buddy/flip_parent_is_split
       ;;@ assembly/buddy.ts:435:27
       (get_local $3)
      )
     )
     (loop $continue|1
      (if
       ;;@ assembly/buddy.ts:445:11
       (i32.lt_u
        (get_local $1)
        ;;@ assembly/buddy.ts:445:20
        (get_local $4)
       )
       (block
        ;;@ assembly/buddy.ts:448:6
        (call $assembly/buddy/flip_parent_is_split
         ;;@ assembly/buddy.ts:446:6
         (tee_local $3
          ;;@ assembly/buddy.ts:446:10
          (i32.add
           (i32.mul
            (get_local $3)
            ;;@ assembly/buddy.ts:446:14
            (i32.const 2)
           )
           ;;@ assembly/buddy.ts:446:18
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/buddy.ts:449:6
        (call $assembly/buddy/list_push
         ;;@ assembly/buddy.ts:449:16
         (call $assembly/buddy/get_bucket
          ;;@ assembly/buddy.ts:447:6
          (tee_local $1
           (i32.add
            (get_local $1)
            (i32.const 1)
           )
          )
         )
         ;;@ assembly/buddy.ts:449:36
         (call $assembly/buddy/ptr_for_node
          ;;@ assembly/buddy.ts:449:66
          (i32.add
           (get_local $3)
           ;;@ assembly/buddy.ts:449:70
           (i32.const 1)
          )
          ;;@ assembly/buddy.ts:449:73
          (get_local $1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/buddy.ts:456:4
     (i32.store
      ;;@ assembly/buddy.ts:456:17
      (get_local $2)
      ;;@ assembly/buddy.ts:456:22
      (get_local $0)
     )
     ;;@ assembly/buddy.ts:457:17
     (return
      ;;@ assembly/buddy.ts:457:11
      (i32.add
       (get_local $2)
       ;;@ assembly/buddy.ts:457:17
       (i32.const 8)
      )
     )
    )
   )
  )
  ;;@ assembly/buddy.ts:460:9
  (i32.const 0)
 )
 (func $assembly/buddy/free_memory (; 14 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:470:2
  (if
   ;;@ assembly/buddy.ts:470:6
   (i32.eqz
    ;;@ assembly/buddy.ts:470:7
    (get_local $0)
   )
   ;;@ assembly/buddy.ts:471:4
   (return)
  )
  ;;@ assembly/buddy.ts:480:2
  (set_local $1
   ;;@ assembly/buddy.ts:480:11
   (call $assembly/buddy/bucket_for_request
    ;;@ assembly/buddy.ts:480:30
    (i32.add
     (i32.load
      ;;@ assembly/buddy.ts:479:2
      (tee_local $0
       ;;@ assembly/buddy.ts:479:8
       (i32.sub
        (get_local $0)
        ;;@ assembly/buddy.ts:479:14
        (i32.const 8)
       )
      )
     )
     ;;@ assembly/buddy.ts:480:49
     (i32.const 8)
    )
   )
  )
  ;;@ assembly/buddy.ts:481:2
  (set_local $0
   ;;@ assembly/buddy.ts:481:6
   (call $assembly/buddy/node_for_ptr
    ;;@ assembly/buddy.ts:481:19
    (get_local $0)
    ;;@ assembly/buddy.ts:481:24
    (get_local $1)
   )
  )
  ;;@ assembly/buddy.ts:487:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/buddy.ts:487:9
     (get_local $0)
     (block
      ;;@ assembly/buddy.ts:494:4
      (call $assembly/buddy/flip_parent_is_split
       ;;@ assembly/buddy.ts:494:25
       (get_local $0)
      )
      ;;@ assembly/buddy.ts:505:6
      (br_if $break|0
       ;;@ assembly/buddy.ts:504:8
       (if (result i32)
        (tee_local $2
         (call $assembly/buddy/parent_is_split
          ;;@ assembly/buddy.ts:504:24
          (get_local $0)
         )
        )
        (get_local $2)
        ;;@ assembly/buddy.ts:504:30
        (i32.eq
         (get_local $1)
         ;;@ assembly/buddy.ts:504:40
         (get_global $assembly/buddy/bucket_limit)
        )
       )
      )
      ;;@ assembly/buddy.ts:515:4
      (call $assembly/buddy/list_remove
       ;;@ assembly/buddy.ts:515:16
       (call $assembly/buddy/ptr_for_node
        ;;@ assembly/buddy.ts:515:46
        (i32.add
         (i32.xor
          ;;@ assembly/buddy.ts:515:47
          (i32.sub
           ;;@ assembly/buddy.ts:515:48
           (get_local $0)
           ;;@ assembly/buddy.ts:515:52
           (i32.const 1)
          )
          ;;@ assembly/buddy.ts:515:57
          (i32.const 1)
         )
         ;;@ assembly/buddy.ts:515:62
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:515:65
        (get_local $1)
       )
      )
      ;;@ assembly/buddy.ts:516:4
      (set_local $0
       ;;@ assembly/buddy.ts:516:8
       (i32.div_u
        (i32.sub
         ;;@ assembly/buddy.ts:516:9
         (get_local $0)
         ;;@ assembly/buddy.ts:516:13
         (i32.const 1)
        )
        ;;@ assembly/buddy.ts:516:18
        (i32.const 2)
       )
      )
      ;;@ assembly/buddy.ts:517:4
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
  ;;@ assembly/buddy.ts:526:2
  (call $assembly/buddy/list_push
   ;;@ assembly/buddy.ts:526:12
   (call $assembly/buddy/get_bucket
    ;;@ assembly/buddy.ts:526:23
    (get_local $1)
   )
   ;;@ assembly/buddy.ts:526:32
   (call $assembly/buddy/ptr_for_node
    ;;@ assembly/buddy.ts:526:62
    (get_local $0)
    ;;@ assembly/buddy.ts:526:65
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
    (i32.const 112)
   )
  )
  (set_global $assembly/buddy/SPLIT_START
   ;;@ assembly/buddy.ts:143:25
   (get_global $assembly/buddy/BUCKET_END)
  )
  (set_global $assembly/buddy/SPLIT_END
   ;;@ assembly/buddy.ts:144:23
   (i32.add
    (get_global $assembly/buddy/SPLIT_START)
    (i32.const 16777216)
   )
  )
 )
)
