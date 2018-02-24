(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $assembly/buddy/HEADER_SIZE i32 (i32.const 8))
 (global $assembly/buddy/MIN_ALLOC_LOG2 i32 (i32.const 4))
 (global $assembly/buddy/MIN_ALLOC i32 (i32.const 16))
 (global $assembly/buddy/MAX_ALLOC_LOG2 i32 (i32.const 31))
 (global $assembly/buddy/MAX_ALLOC i32 (i32.const -2147483648))
 (global $assembly/buddy/BUCKET_COUNT i32 (i32.const 28))
 (global $assembly/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $assembly/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $assembly/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $assembly/buddy/SPLIT_COUNT i32 (i32.const 16777216))
 (global $assembly/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $assembly/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (global $assembly/buddy/base_ptr (mut i32) (i32.const 0))
 (global $assembly/buddy/max_ptr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 44))
 (memory $0 1)
 (data (i32.const 4) "\11\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00b\00u\00d\00d\00y\00.\00t\00s\00")
 (export "allocate_memory" (func $assembly/buddy/allocate_memory))
 (export "free_memory" (func $assembly/buddy/free_memory))
 (export "memory" (memory $0))
 (start $start)
 (func $assembly/buddy/update_max_ptr (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
    ;;@ assembly/buddy.ts:174:4
    (set_local $1
     ;;@ assembly/buddy.ts:174:19
     (current_memory)
    )
    ;;@ assembly/buddy.ts:175:4
    (set_local $2
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
       ;;@ assembly/buddy.ts:175:49
       (i32.xor
        ;;@ assembly/buddy.ts:175:50
        (i32.const 65535)
        (i32.const -1)
       )
      )
      ;;@ assembly/buddy.ts:175:61
      (i32.const 16)
     )
    )
    ;;@ assembly/buddy.ts:176:4
    (if
     (i32.eqz
      ;;@ assembly/buddy.ts:176:11
      (i32.gt_u
       (get_local $2)
       ;;@ assembly/buddy.ts:176:22
       (get_local $1)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 176)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/buddy.ts:177:4
    (if
     ;;@ assembly/buddy.ts:177:8
     (i32.lt_s
      (grow_memory
       ;;@ assembly/buddy.ts:177:20
       (i32.sub
        (get_local $2)
        ;;@ assembly/buddy.ts:177:31
        (get_local $1)
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
      (get_local $2)
      ;;@ assembly/buddy.ts:181:33
      (i32.const 16)
     )
    )
   )
  )
  ;;@ assembly/buddy.ts:183:9
  (return
   (i32.const 1)
  )
 )
 (func $assembly/buddy/buckets$get (; 2 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:96:2
  (if
   (i32.eqz
    ;;@ assembly/buddy.ts:96:9
    (i32.lt_u
     (get_local $0)
     ;;@ assembly/buddy.ts:96:17
     (i32.const 28)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 96)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ assembly/buddy.ts:97:59
  (return
   ;;@ assembly/buddy.ts:97:9
   (i32.add
    ;;@ assembly/buddy.ts:97:26
    (get_global $assembly/buddy/BUCKETS_START)
    ;;@ assembly/buddy.ts:97:42
    (i32.mul
     (get_local $0)
     ;;@ assembly/buddy.ts:97:50
     (i32.const 8)
    )
   )
  )
 )
 (func $assembly/buddy/list_init (; 3 ;) (type $iv) (param $0 i32)
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
 (func $assembly/buddy/list_push (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:201:2
  (set_local $2
   ;;@ assembly/buddy.ts:201:13
   (i32.load
    (get_local $0)
   )
  )
  ;;@ assembly/buddy.ts:202:2
  (i32.store
   (get_local $1)
   ;;@ assembly/buddy.ts:202:15
   (get_local $2)
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
 (func $assembly/buddy/bucket_for_request (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:274:2
  (set_local $1
   ;;@ assembly/buddy.ts:274:15
   (i32.sub
    (i32.const 28)
    ;;@ assembly/buddy.ts:274:30
    (i32.const 1)
   )
  )
  ;;@ assembly/buddy.ts:275:2
  (set_local $2
   ;;@ assembly/buddy.ts:275:13
   (i32.const 16)
  )
  ;;@ assembly/buddy.ts:277:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/buddy.ts:277:9
     (i32.lt_u
      (get_local $2)
      ;;@ assembly/buddy.ts:277:16
      (get_local $0)
     )
     (block
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
        (i32.mul
         (get_local $2)
         ;;@ assembly/buddy.ts:279:12
         (i32.const 2)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ assembly/buddy.ts:282:9
  (return
   (get_local $1)
  )
 )
 (func $assembly/buddy/node_for_ptr (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/buddy.ts:247:75
  (return
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
 )
 (func $assembly/buddy/node_is_split$get (; 7 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:142:2
  (if
   (i32.eqz
    ;;@ assembly/buddy.ts:142:9
    (i32.lt_u
     (get_local $0)
     ;;@ assembly/buddy.ts:142:17
     (i32.const 16777216)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 142)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ assembly/buddy.ts:143:45
  (return
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
 )
 (func $assembly/buddy/parent_is_split (; 8 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/buddy.ts:254:2
  (set_local $0
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
  ;;@ assembly/buddy.ts:255:63
  (return
   ;;@ assembly/buddy.ts:255:9
   (i32.and
    (i32.shr_u
     ;;@ assembly/buddy.ts:255:10
     (call $assembly/buddy/node_is_split$get
      ;;@ assembly/buddy.ts:255:28
      (i32.div_u
       (get_local $0)
       ;;@ assembly/buddy.ts:255:36
       (i32.const 8)
      )
     )
     ;;@ assembly/buddy.ts:255:43
     (i32.rem_u
      ;;@ assembly/buddy.ts:255:49
      (get_local $0)
      ;;@ assembly/buddy.ts:255:57
      (i32.const 8)
     )
    )
    ;;@ assembly/buddy.ts:255:63
    (i32.const 1)
   )
  )
 )
 (func $assembly/buddy/list_remove (; 9 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:215:2
  (set_local $1
   ;;@ assembly/buddy.ts:215:13
   (i32.load
    (get_local $0)
   )
  )
  ;;@ assembly/buddy.ts:216:2
  (set_local $2
   ;;@ assembly/buddy.ts:216:13
   (i32.load offset=4
    (get_local $0)
   )
  )
  ;;@ assembly/buddy.ts:217:2
  (i32.store offset=4
   (get_local $1)
   ;;@ assembly/buddy.ts:217:14
   (get_local $2)
  )
  ;;@ assembly/buddy.ts:218:2
  (i32.store
   (get_local $2)
   ;;@ assembly/buddy.ts:218:14
   (get_local $1)
  )
 )
 (func $assembly/buddy/ptr_for_node (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/buddy.ts:238:77
  (return
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
 )
 (func $assembly/buddy/node_is_split$set (; 11 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/buddy.ts:147:2
  (if
   (i32.eqz
    ;;@ assembly/buddy.ts:147:9
    (i32.lt_u
     (get_local $0)
     ;;@ assembly/buddy.ts:147:17
     (i32.const 16777216)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 147)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ assembly/buddy.ts:148:2
  (i32.store8
   ;;@ assembly/buddy.ts:148:12
   (i32.add
    (get_global $assembly/buddy/NODE_IS_SPLIT_START)
    ;;@ assembly/buddy.ts:148:34
    (get_local $0)
   )
   ;;@ assembly/buddy.ts:148:41
   (get_local $1)
  )
 )
 (func $assembly/buddy/flip_parent_is_split (; 12 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  ;;@ assembly/buddy.ts:262:2
  (set_local $0
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
  ;;@ assembly/buddy.ts:263:2
  (set_local $1
   ;;@ assembly/buddy.ts:263:18
   (i32.div_u
    (get_local $0)
    ;;@ assembly/buddy.ts:263:26
    (i32.const 8)
   )
  )
  ;;@ assembly/buddy.ts:264:2
  (call $assembly/buddy/node_is_split$set
   ;;@ assembly/buddy.ts:264:20
   (get_local $1)
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
     (i32.rem_u
      ;;@ assembly/buddy.ts:265:47
      (get_local $0)
      ;;@ assembly/buddy.ts:265:55
      (i32.const 8)
     )
    )
   )
  )
 )
 (func $assembly/buddy/lower_bucket_limit (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/buddy.ts:291:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/buddy.ts:291:9
     (i32.lt_u
      (get_local $0)
      ;;@ assembly/buddy.ts:291:18
      (get_global $assembly/buddy/bucket_limit)
     )
     (block
      (block
       ;;@ assembly/buddy.ts:292:4
       (set_local $1
        ;;@ assembly/buddy.ts:292:15
        (call $assembly/buddy/node_for_ptr
         ;;@ assembly/buddy.ts:292:28
         (get_global $assembly/buddy/base_ptr)
         ;;@ assembly/buddy.ts:292:38
         (get_global $assembly/buddy/bucket_limit)
        )
       )
       ;;@ assembly/buddy.ts:293:4
       (nop)
       ;;@ assembly/buddy.ts:301:4
       (if
        ;;@ assembly/buddy.ts:301:8
        (i32.eqz
         ;;@ assembly/buddy.ts:301:9
         (call $assembly/buddy/parent_is_split
          ;;@ assembly/buddy.ts:301:25
          (get_local $1)
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
       ;;@ assembly/buddy.ts:316:4
       (set_local $2
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
       ;;@ assembly/buddy.ts:317:4
       (if
        ;;@ assembly/buddy.ts:317:8
        (i32.eqz
         ;;@ assembly/buddy.ts:317:9
         (call $assembly/buddy/update_max_ptr
          ;;@ assembly/buddy.ts:317:24
          (i32.add
           (get_local $2)
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
       ;;@ assembly/buddy.ts:327:4
       (set_local $1
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
       ;;@ assembly/buddy.ts:328:4
       (if
        ;;@ assembly/buddy.ts:328:8
        (i32.ne
         (get_local $1)
         ;;@ assembly/buddy.ts:328:16
         (i32.const 0)
        )
        ;;@ assembly/buddy.ts:329:6
        (call $assembly/buddy/flip_parent_is_split
         ;;@ assembly/buddy.ts:329:27
         (get_local $1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ assembly/buddy.ts:333:9
  (return
   (i32.const 1)
  )
 )
 (func $assembly/buddy/list_pop (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/buddy.ts:225:2
  (set_local $1
   ;;@ assembly/buddy.ts:225:13
   (i32.load
    (get_local $0)
   )
  )
  ;;@ assembly/buddy.ts:226:2
  (if
   ;;@ assembly/buddy.ts:226:6
   (i32.eq
    (get_local $1)
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
  (return
   (get_local $1)
  )
 )
 (func $assembly/buddy/allocate_memory (; 15 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  ;;@ assembly/buddy.ts:338:2
  (nop)
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
   ;;@ assembly/buddy.ts:354:6
   (i32.eq
    (get_global $assembly/buddy/base_ptr)
    ;;@ assembly/buddy.ts:354:18
    (i32.const 0)
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
      ;;@ assembly/buddy.ts:356:41
      (i32.xor
       ;;@ assembly/buddy.ts:356:42
       (i32.const 7)
       (i32.const -1)
      )
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
     (i32.sub
      (i32.const 28)
      ;;@ assembly/buddy.ts:358:34
      (i32.const 1)
     )
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
      (i32.sub
       (i32.const 28)
       ;;@ assembly/buddy.ts:362:41
       (i32.const 1)
      )
     )
    )
    ;;@ assembly/buddy.ts:363:4
    (call $assembly/buddy/list_push
     ;;@ assembly/buddy.ts:363:14
     (call $assembly/buddy/buckets$get
      ;;@ assembly/buddy.ts:363:26
      (i32.sub
       (i32.const 28)
       ;;@ assembly/buddy.ts:363:41
       (i32.const 1)
      )
     )
     ;;@ assembly/buddy.ts:363:45
     (get_global $assembly/buddy/base_ptr)
    )
   )
  )
  ;;@ assembly/buddy.ts:370:2
  (set_local $2
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
  ;;@ assembly/buddy.ts:371:2
  (set_local $1
   ;;@ assembly/buddy.ts:371:20
   (get_local $2)
  )
  ;;@ assembly/buddy.ts:378:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/buddy.ts:378:9
     (i32.ne
      (i32.add
       (get_local $2)
       ;;@ assembly/buddy.ts:378:18
       (i32.const 1)
      )
      ;;@ assembly/buddy.ts:378:23
      (i32.const 0)
     )
     (block
      (block
       ;;@ assembly/buddy.ts:379:4
       (nop)
       ;;@ assembly/buddy.ts:380:4
       (nop)
       ;;@ assembly/buddy.ts:386:4
       (if
        ;;@ assembly/buddy.ts:386:8
        (i32.eqz
         ;;@ assembly/buddy.ts:386:9
         (call $assembly/buddy/lower_bucket_limit
          ;;@ assembly/buddy.ts:386:28
          (get_local $2)
         )
        )
        ;;@ assembly/buddy.ts:387:13
        (return
         (i32.const 0)
        )
       )
       ;;@ assembly/buddy.ts:394:4
       (set_local $6
        ;;@ assembly/buddy.ts:394:10
        (call $assembly/buddy/list_pop
         ;;@ assembly/buddy.ts:394:37
         (call $assembly/buddy/buckets$get
          ;;@ assembly/buddy.ts:394:49
          (get_local $2)
         )
        )
       )
       ;;@ assembly/buddy.ts:395:4
       (if
        ;;@ assembly/buddy.ts:395:8
        (i32.eqz
         ;;@ assembly/buddy.ts:395:9
         (get_local $6)
        )
        ;;@ assembly/buddy.ts:395:14
        (block
         ;;@ assembly/buddy.ts:400:6
         (if
          ;;@ assembly/buddy.ts:400:10
          (i32.and
           (if (result i32)
            (i32.ne
             (tee_local $7
              (i32.ne
               (get_local $2)
               ;;@ assembly/buddy.ts:400:20
               (get_global $assembly/buddy/bucket_limit)
              )
             )
             (i32.const 0)
            )
            (get_local $7)
            ;;@ assembly/buddy.ts:400:36
            (i32.eq
             (get_local $2)
             ;;@ assembly/buddy.ts:400:46
             (i32.const 0)
            )
           )
           (i32.const 1)
          )
          ;;@ assembly/buddy.ts:400:49
          (block
           ;;@ assembly/buddy.ts:401:8
           (set_local $2
            (i32.sub
             (get_local $2)
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
             (get_local $2)
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
         (set_local $6
          ;;@ assembly/buddy.ts:415:12
          (call $assembly/buddy/list_pop
           ;;@ assembly/buddy.ts:415:39
           (call $assembly/buddy/buckets$get
            ;;@ assembly/buddy.ts:415:51
            (get_local $2)
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
          (get_local $2)
         )
        )
       )
       ;;@ assembly/buddy.ts:423:4
       (set_local $4
        ;;@ assembly/buddy.ts:423:19
        (if (result i32)
         (i32.lt_u
          (get_local $2)
          ;;@ assembly/buddy.ts:423:28
          (get_local $1)
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
       ;;@ assembly/buddy.ts:424:4
       (if
        ;;@ assembly/buddy.ts:424:8
        (i32.eqz
         ;;@ assembly/buddy.ts:424:9
         (call $assembly/buddy/update_max_ptr
          ;;@ assembly/buddy.ts:424:24
          (i32.add
           (get_local $6)
           ;;@ assembly/buddy.ts:424:30
           (get_local $4)
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
           (get_local $2)
          )
          ;;@ assembly/buddy.ts:425:37
          (get_local $6)
         )
         ;;@ assembly/buddy.ts:426:13
         (return
          (i32.const 0)
         )
        )
       )
       ;;@ assembly/buddy.ts:440:4
       (set_local $5
        ;;@ assembly/buddy.ts:440:8
        (call $assembly/buddy/node_for_ptr
         ;;@ assembly/buddy.ts:440:21
         (get_local $6)
         ;;@ assembly/buddy.ts:440:26
         (get_local $2)
        )
       )
       ;;@ assembly/buddy.ts:441:4
       (if
        ;;@ assembly/buddy.ts:441:8
        (i32.ne
         (get_local $5)
         ;;@ assembly/buddy.ts:441:13
         (i32.const 0)
        )
        ;;@ assembly/buddy.ts:442:6
        (call $assembly/buddy/flip_parent_is_split
         ;;@ assembly/buddy.ts:442:27
         (get_local $5)
        )
       )
       ;;@ assembly/buddy.ts:452:4
       (block $break|1
        (loop $continue|1
         (if
          ;;@ assembly/buddy.ts:452:11
          (i32.lt_u
           (get_local $2)
           ;;@ assembly/buddy.ts:452:20
           (get_local $1)
          )
          (block
           (block
            ;;@ assembly/buddy.ts:453:6
            (set_local $5
             ;;@ assembly/buddy.ts:453:10
             (i32.add
              (i32.mul
               (get_local $5)
               ;;@ assembly/buddy.ts:453:14
               (i32.const 2)
              )
              ;;@ assembly/buddy.ts:453:18
              (i32.const 1)
             )
            )
            ;;@ assembly/buddy.ts:454:6
            (set_local $2
             (i32.add
              (get_local $2)
              (i32.const 1)
             )
            )
            ;;@ assembly/buddy.ts:455:6
            (call $assembly/buddy/flip_parent_is_split
             ;;@ assembly/buddy.ts:455:27
             (get_local $5)
            )
            ;;@ assembly/buddy.ts:456:6
            (call $assembly/buddy/list_push
             ;;@ assembly/buddy.ts:457:8
             (call $assembly/buddy/buckets$get
              ;;@ assembly/buddy.ts:457:20
              (get_local $2)
             )
             ;;@ assembly/buddy.ts:458:8
             (call $assembly/buddy/ptr_for_node
              ;;@ assembly/buddy.ts:458:38
              (i32.add
               (get_local $5)
               ;;@ assembly/buddy.ts:458:42
               (i32.const 1)
              )
              ;;@ assembly/buddy.ts:458:45
              (get_local $2)
             )
            )
           )
           (br $continue|1)
          )
         )
        )
       )
       ;;@ assembly/buddy.ts:466:4
       (i32.store
        ;;@ assembly/buddy.ts:466:17
        (get_local $6)
        ;;@ assembly/buddy.ts:466:22
        (get_local $0)
       )
       ;;@ assembly/buddy.ts:467:17
       (return
        ;;@ assembly/buddy.ts:467:11
        (i32.add
         (get_local $6)
         ;;@ assembly/buddy.ts:467:17
         (i32.const 8)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ assembly/buddy.ts:470:9
  (return
   (i32.const 0)
  )
 )
 (func $assembly/buddy/free_memory (; 16 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ assembly/buddy.ts:475:2
  (nop)
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
  ;;@ assembly/buddy.ts:489:2
  (set_local $0
   ;;@ assembly/buddy.ts:489:8
   (i32.sub
    (get_local $0)
    ;;@ assembly/buddy.ts:489:14
    (i32.const 8)
   )
  )
  ;;@ assembly/buddy.ts:490:2
  (set_local $1
   ;;@ assembly/buddy.ts:490:11
   (call $assembly/buddy/bucket_for_request
    ;;@ assembly/buddy.ts:490:30
    (i32.add
     (i32.load
      ;;@ assembly/buddy.ts:490:42
      (get_local $0)
     )
     ;;@ assembly/buddy.ts:490:49
     (i32.const 8)
    )
   )
  )
  ;;@ assembly/buddy.ts:491:2
  (set_local $2
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
     (i32.ne
      (get_local $2)
      ;;@ assembly/buddy.ts:497:14
      (i32.const 0)
     )
     (block
      (block
       ;;@ assembly/buddy.ts:504:4
       (call $assembly/buddy/flip_parent_is_split
        ;;@ assembly/buddy.ts:504:25
        (get_local $2)
       )
       ;;@ assembly/buddy.ts:514:4
       (if
        ;;@ assembly/buddy.ts:514:8
        (if (result i32)
         (i32.ne
          (tee_local $3
           (call $assembly/buddy/parent_is_split
            ;;@ assembly/buddy.ts:514:24
            (get_local $2)
           )
          )
          (i32.const 0)
         )
         (get_local $3)
         ;;@ assembly/buddy.ts:514:30
         (i32.eq
          (get_local $1)
          ;;@ assembly/buddy.ts:514:40
          (get_global $assembly/buddy/bucket_limit)
         )
        )
        ;;@ assembly/buddy.ts:515:6
        (br $break|0)
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
            (get_local $2)
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
       (set_local $2
        ;;@ assembly/buddy.ts:526:8
        (i32.div_u
         (i32.sub
          ;;@ assembly/buddy.ts:526:9
          (get_local $2)
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
    (get_local $2)
    ;;@ assembly/buddy.ts:536:66
    (get_local $1)
   )
  )
 )
 (func $start (; 17 ;) (type $v)
  (set_global $assembly/buddy/BUCKETS_START
   ;;@ assembly/buddy.ts:92:27
   (get_global $HEAP_BASE)
  )
  (set_global $assembly/buddy/BUCKETS_END
   ;;@ assembly/buddy.ts:93:25
   (i32.add
    (get_global $assembly/buddy/BUCKETS_START)
    ;;@ assembly/buddy.ts:93:41
    (i32.mul
     (i32.const 28)
     ;;@ assembly/buddy.ts:93:56
     (i32.const 8)
    )
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
    (i32.mul
     (i32.const 16777216)
     ;;@ assembly/buddy.ts:139:67
     (i32.const 1)
    )
   )
  )
 )
)
