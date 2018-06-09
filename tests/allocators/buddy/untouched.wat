(module
 (type $ii (func (param i32) (result i32)))
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
 (export "allocate_memory" (func $~lib/allocator/buddy/allocate_memory))
 (export "free_memory" (func $~lib/allocator/buddy/free_memory))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/buddy/update_max_ptr (; 1 ;) (type $ii) (param $0 i32) (result i32)
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
     (current_memory)
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
      ;;@ ~lib/allocator/buddy.ts:180:61
      (i32.const 16)
     )
    )
    ;;@ ~lib/allocator/buddy.ts:181:4
    (if
     (i32.eqz
      ;;@ ~lib/allocator/buddy.ts:181:11
      (i32.gt_u
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
      (grow_memory
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
  (return
   (i32.const 1)
  )
 )
 (func $~lib/allocator/buddy/buckets$get (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
  (return
   ;;@ ~lib/allocator/buddy.ts:102:9
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
 )
 (func $~lib/allocator/buddy/list_init (; 3 ;) (type $iv) (param $0 i32)
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
 (func $~lib/allocator/buddy/list_push (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/allocator/buddy/bucket_for_request (; 5 ;) (type $ii) (param $0 i32) (result i32)
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
  (return
   (get_local $1)
  )
 )
 (func $~lib/allocator/buddy/node_for_ptr (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:251:56
  (return
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
 )
 (func $~lib/allocator/buddy/node_is_split$get (; 7 ;) (type $ii) (param $0 i32) (result i32)
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
  (return
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
 )
 (func $~lib/allocator/buddy/parent_is_split (; 8 ;) (type $ii) (param $0 i32) (result i32)
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
  (return
   ;;@ ~lib/allocator/buddy.ts:260:9
   (i32.eq
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
 )
 (func $~lib/allocator/buddy/list_remove (; 9 ;) (type $iv) (param $0 i32)
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
 (func $~lib/allocator/buddy/ptr_for_node (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/buddy.ts:242:58
  (return
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
 )
 (func $~lib/allocator/buddy/node_is_split$set (; 11 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/allocator/buddy/flip_parent_is_split (; 12 ;) (type $iv) (param $0 i32)
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
 (func $~lib/allocator/buddy/lower_bucket_limit (; 13 ;) (type $ii) (param $0 i32) (result i32)
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
  (return
   (i32.const 1)
  )
 )
 (func $~lib/allocator/buddy/list_pop (; 14 ;) (type $ii) (param $0 i32) (result i32)
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
  (return
   (get_local $1)
  )
 )
 (func $~lib/allocator/buddy/allocate_memory (; 15 ;) (type $ii) (param $0 i32) (result i32)
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
      (current_memory)
      ;;@ ~lib/allocator/buddy.ts:360:41
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
  (return
   (i32.const 0)
  )
 )
 (func $~lib/allocator/buddy/free_memory (; 16 ;) (type $iv) (param $0 i32)
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
 (func $start (; 17 ;) (type $v)
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
