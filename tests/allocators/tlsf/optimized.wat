(module
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 1)
 (export "allocate_memory" (func $~lib/allocator/tlsf/allocate_memory))
 (export "free_memory" (func $~lib/allocator/tlsf/free_memory))
 (export "memory" (memory $0))
 (func $~lib/allocator/tlsf/Root#set:tailRef (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ ~lib/allocator/tlsf.ts:181:28
  (i32.store
   ;;@ ~lib/allocator/tlsf.ts:181:43
   (i32.const 2912)
   ;;@ ~lib/allocator/tlsf.ts:181:46
   (get_local $1)
  )
 )
 (func $~lib/allocator/tlsf/Root#setSLMap (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/allocator/tlsf.ts:143:40
  (i32.store offset=4
   ;;@ ~lib/allocator/tlsf.ts:145:15
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:145:41
    (i32.shl
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:145:46
     (i32.const 2)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:145:49
   (get_local $2)
  )
 )
 (func $~lib/allocator/tlsf/Root#setHead (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ ~lib/allocator/tlsf.ts:166:57
  (i32.store offset=96
   ;;@ ~lib/allocator/tlsf.ts:170:6
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:170:32
    (i32.shl
     (i32.add
      ;;@ ~lib/allocator/tlsf.ts:170:33
      (i32.shl
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:170:38
       (i32.const 5)
      )
      ;;@ ~lib/allocator/tlsf.ts:170:48
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:170:61
     (i32.const 2)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:171:6
   (get_local $3)
  )
 )
 (func $~lib/allocator/tlsf/Block#get:right (; 3 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:90:11
  (i32.add
   ;;@ ~lib/allocator/tlsf.ts:92:8
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:92:34
    (i32.const 8)
   )
   ;;@ ~lib/allocator/tlsf.ts:92:47
   (i32.and
    ;;@ ~lib/allocator/tlsf.ts:92:48
    (i32.load
     (get_local $0)
    )
    (i32.const -4)
   )
  )
 )
 (func $~lib/allocator/tlsf/fls<usize> (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:430:9
  (i32.sub
   (i32.const 31)
   ;;@ ~lib/allocator/tlsf.ts:430:15
   (i32.clz
    ;;@ ~lib/allocator/tlsf.ts:430:22
    (get_local $0)
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#getHead (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:160:11
  (i32.load offset=96
   ;;@ ~lib/allocator/tlsf.ts:161:6
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:161:32
    (i32.shl
     (i32.add
      ;;@ ~lib/allocator/tlsf.ts:161:33
      (i32.shl
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:161:38
       (i32.const 5)
      )
      ;;@ ~lib/allocator/tlsf.ts:161:48
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:161:61
     (i32.const 2)
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#getSLMap (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:139:11
  (i32.load offset=4
   ;;@ ~lib/allocator/tlsf.ts:139:21
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:139:47
    (i32.shl
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:139:52
     (i32.const 2)
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#remove (; 7 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   ;;@ ~lib/allocator/tlsf.ts:264:4
   (if (result i32)
    ;;@ ~lib/allocator/tlsf.ts:264:8
    (i32.lt_u
     ;;@ ~lib/allocator/tlsf.ts:259:4
     (tee_local $2
      ;;@ ~lib/allocator/tlsf.ts:259:15
      (i32.and
       ;;@ ~lib/allocator/tlsf.ts:257:20
       (i32.load
        (get_local $1)
       )
       (i32.const -4)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:264:15
     (i32.const 256)
    )
    ;;@ ~lib/allocator/tlsf.ts:264:24
    (block (result i32)
     ;;@ ~lib/allocator/tlsf.ts:266:6
     (set_local $4
      ;;@ ~lib/allocator/tlsf.ts:266:11
      (i32.div_u
       ;;@ ~lib/allocator/tlsf.ts:266:17
       (get_local $2)
       ;;@ ~lib/allocator/tlsf.ts:266:24
       (i32.const 8)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:265:11
     (i32.const 0)
    )
    ;;@ ~lib/allocator/tlsf.ts:267:11
    (block (result i32)
     ;;@ ~lib/allocator/tlsf.ts:269:6
     (set_local $4
      ;;@ ~lib/allocator/tlsf.ts:269:11
      (i32.xor
       ;;@ ~lib/allocator/tlsf.ts:269:17
       (i32.shr_u
        ;;@ ~lib/allocator/tlsf.ts:269:18
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:269:26
        (i32.sub
         ;;@ ~lib/allocator/tlsf.ts:268:6
         (tee_local $3
          ;;@ ~lib/allocator/tlsf.ts:268:11
          (call $~lib/allocator/tlsf/fls<usize>
           ;;@ ~lib/allocator/tlsf.ts:268:22
           (get_local $2)
          )
         )
         ;;@ ~lib/allocator/tlsf.ts:269:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     (i32.sub
      ;;@ ~lib/allocator/tlsf.ts:270:6
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:270:12
      (i32.const 7)
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:275:4
  (set_local $2
   ;;@ ~lib/allocator/tlsf.ts:275:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:276:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:274:4
   (tee_local $5
    ;;@ ~lib/allocator/tlsf.ts:274:15
    (i32.load offset=4
     (get_local $1)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:276:14
   (i32.store offset=8
    (get_local $5)
    ;;@ ~lib/allocator/tlsf.ts:276:26
    (get_local $2)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:277:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:277:8
   (get_local $2)
   ;;@ ~lib/allocator/tlsf.ts:277:14
   (i32.store offset=4
    (get_local $2)
    ;;@ ~lib/allocator/tlsf.ts:277:26
    (get_local $5)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:280:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:280:8
   (i32.eq
    (get_local $1)
    ;;@ ~lib/allocator/tlsf.ts:280:22
    (call $~lib/allocator/tlsf/Root#getHead
     ;;@ ~lib/allocator/tlsf.ts:280:17
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:280:30
     (get_local $3)
     ;;@ ~lib/allocator/tlsf.ts:280:34
     (get_local $4)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:280:39
   (block
    ;;@ ~lib/allocator/tlsf.ts:281:11
    (call $~lib/allocator/tlsf/Root#setHead
     ;;@ ~lib/allocator/tlsf.ts:281:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:281:19
     (get_local $3)
     ;;@ ~lib/allocator/tlsf.ts:281:23
     (get_local $4)
     ;;@ ~lib/allocator/tlsf.ts:281:27
     (get_local $2)
    )
    ;;@ ~lib/allocator/tlsf.ts:284:6
    (if
     ;;@ ~lib/allocator/tlsf.ts:284:10
     (i32.eqz
      ;;@ ~lib/allocator/tlsf.ts:284:11
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:284:17
     (block
      ;;@ ~lib/allocator/tlsf.ts:286:13
      (call $~lib/allocator/tlsf/Root#setSLMap
       ;;@ ~lib/allocator/tlsf.ts:286:8
       (get_local $0)
       ;;@ ~lib/allocator/tlsf.ts:286:22
       (get_local $3)
       ;;@ ~lib/allocator/tlsf.ts:286:26
       (tee_local $1
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:285:25
         (call $~lib/allocator/tlsf/Root#getSLMap
          ;;@ ~lib/allocator/tlsf.ts:285:20
          (get_local $0)
          ;;@ ~lib/allocator/tlsf.ts:285:34
          (get_local $3)
         )
         ;;@ ~lib/allocator/tlsf.ts:286:35
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:286:36
          (i32.shl
           ;;@ ~lib/allocator/tlsf.ts:286:37
           (i32.const 1)
           ;;@ ~lib/allocator/tlsf.ts:286:42
           (get_local $4)
          )
          (i32.const -1)
         )
        )
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:289:8
      (if
       ;;@ ~lib/allocator/tlsf.ts:289:12
       (i32.eqz
        ;;@ ~lib/allocator/tlsf.ts:289:13
        (get_local $1)
       )
       ;;@ ~lib/allocator/tlsf.ts:289:20
       (i32.store
        (get_local $0)
        (i32.and
         (i32.load
          (get_local $0)
         )
         ;;@ ~lib/allocator/tlsf.ts:289:34
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:289:35
          (i32.shl
           ;;@ ~lib/allocator/tlsf.ts:289:36
           (i32.const 1)
           ;;@ ~lib/allocator/tlsf.ts:289:41
           (get_local $3)
          )
          (i32.const -1)
         )
        )
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#insert (; 8 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/allocator/tlsf.ts:190:4
  (set_local $2
   ;;@ ~lib/allocator/tlsf.ts:190:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:201:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:201:8
   (i32.and
    ;;@ ~lib/allocator/tlsf.ts:198:4
    (tee_local $5
     ;;@ ~lib/allocator/tlsf.ts:198:20
     (i32.load
      ;;@ ~lib/allocator/tlsf.ts:197:4
      (tee_local $4
       ;;@ ~lib/allocator/tlsf.ts:197:23
       (call $~lib/allocator/tlsf/Block#get:right
        ;;@ ~lib/allocator/tlsf.ts:197:30
        (get_local $1)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:201:20
    (i32.const 1)
   )
   ;;@ ~lib/allocator/tlsf.ts:201:26
   (block
    ;;@ ~lib/allocator/tlsf.ts:202:11
    (call $~lib/allocator/tlsf/Root#remove
     ;;@ ~lib/allocator/tlsf.ts:202:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:202:18
     (get_local $4)
    )
    ;;@ ~lib/allocator/tlsf.ts:203:6
    (i32.store
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:203:19
     (tee_local $2
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:203:20
       (get_local $2)
       ;;@ ~lib/allocator/tlsf.ts:203:33
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:203:46
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:203:47
         (get_local $5)
         (i32.const -4)
        )
        ;;@ ~lib/allocator/tlsf.ts:203:33
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:205:6
    (set_local $5
     ;;@ ~lib/allocator/tlsf.ts:205:18
     (i32.load
      ;;@ ~lib/allocator/tlsf.ts:204:6
      (tee_local $4
       ;;@ ~lib/allocator/tlsf.ts:204:14
       (call $~lib/allocator/tlsf/Block#get:right
        (get_local $1)
       )
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:210:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:210:8
   (i32.and
    (get_local $2)
    ;;@ ~lib/allocator/tlsf.ts:210:20
    (i32.const 2)
   )
   ;;@ ~lib/allocator/tlsf.ts:210:31
   (block
    ;;@ ~lib/allocator/tlsf.ts:212:6
    (set_local $3
     ;;@ ~lib/allocator/tlsf.ts:212:21
     (i32.load
      ;;@ ~lib/allocator/tlsf.ts:211:6
      (tee_local $1
       (i32.load
        (i32.sub
         ;;@ ~lib/allocator/tlsf.ts:211:31
         (get_local $1)
         (i32.const 4)
        )
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:214:11
    (call $~lib/allocator/tlsf/Root#remove
     ;;@ ~lib/allocator/tlsf.ts:214:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:214:18
     (get_local $1)
    )
    ;;@ ~lib/allocator/tlsf.ts:215:6
    (i32.store
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:215:18
     (tee_local $3
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:215:19
       (get_local $3)
       ;;@ ~lib/allocator/tlsf.ts:215:31
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:215:44
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:215:45
         (get_local $2)
         (i32.const -4)
        )
        ;;@ ~lib/allocator/tlsf.ts:215:31
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:217:6
    (set_local $2
     ;;@ ~lib/allocator/tlsf.ts:217:18
     (get_local $3)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:221:4
  (i32.store
   (get_local $4)
   ;;@ ~lib/allocator/tlsf.ts:221:17
   (i32.or
    (get_local $5)
    ;;@ ~lib/allocator/tlsf.ts:221:29
    (i32.const 2)
   )
  )
  (i32.store
   (i32.sub
    ;;@ ~lib/allocator/tlsf.ts:222:24
    (get_local $4)
    (i32.const 4)
   )
   ;;@ ~lib/allocator/tlsf.ts:222:17
   (get_local $1)
  )
  ;;@ ~lib/allocator/tlsf.ts:240:4
  (set_local $4
   ;;@ ~lib/allocator/tlsf.ts:240:20
   (call $~lib/allocator/tlsf/Root#getHead
    ;;@ ~lib/allocator/tlsf.ts:240:15
    (get_local $0)
    (tee_local $2
     ;;@ ~lib/allocator/tlsf.ts:230:4
     (if (result i32)
      ;;@ ~lib/allocator/tlsf.ts:230:8
      (i32.lt_u
       ;;@ ~lib/allocator/tlsf.ts:225:4
       (tee_local $3
        ;;@ ~lib/allocator/tlsf.ts:225:11
        (i32.and
         (get_local $2)
         (i32.const -4)
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:230:15
       (i32.const 256)
      )
      ;;@ ~lib/allocator/tlsf.ts:230:24
      (block (result i32)
       ;;@ ~lib/allocator/tlsf.ts:232:6
       (set_local $3
        ;;@ ~lib/allocator/tlsf.ts:232:11
        (i32.div_u
         ;;@ ~lib/allocator/tlsf.ts:232:17
         (get_local $3)
         ;;@ ~lib/allocator/tlsf.ts:232:24
         (i32.const 8)
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:231:11
       (i32.const 0)
      )
      ;;@ ~lib/allocator/tlsf.ts:233:11
      (block (result i32)
       ;;@ ~lib/allocator/tlsf.ts:235:6
       (set_local $3
        ;;@ ~lib/allocator/tlsf.ts:235:11
        (i32.xor
         ;;@ ~lib/allocator/tlsf.ts:235:17
         (i32.shr_u
          ;;@ ~lib/allocator/tlsf.ts:235:18
          (get_local $3)
          ;;@ ~lib/allocator/tlsf.ts:235:26
          (i32.sub
           ;;@ ~lib/allocator/tlsf.ts:234:6
           (tee_local $2
            ;;@ ~lib/allocator/tlsf.ts:234:11
            (call $~lib/allocator/tlsf/fls<usize>
             ;;@ ~lib/allocator/tlsf.ts:234:22
             (get_local $3)
            )
           )
           ;;@ ~lib/allocator/tlsf.ts:235:32
           (i32.const 5)
          )
         )
         (i32.const 32)
        )
       )
       (i32.sub
        ;;@ ~lib/allocator/tlsf.ts:236:6
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:236:12
        (i32.const 7)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:240:32
    (get_local $3)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:241:4
  (i32.store offset=4
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:241:17
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:242:4
  (i32.store offset=8
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:242:17
   (get_local $4)
  )
  ;;@ ~lib/allocator/tlsf.ts:243:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:243:8
   (get_local $4)
   ;;@ ~lib/allocator/tlsf.ts:243:14
   (i32.store offset=4
    (get_local $4)
    ;;@ ~lib/allocator/tlsf.ts:243:26
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:244:9
  (call $~lib/allocator/tlsf/Root#setHead
   ;;@ ~lib/allocator/tlsf.ts:244:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:244:17
   (get_local $2)
   ;;@ ~lib/allocator/tlsf.ts:244:21
   (get_local $3)
   ;;@ ~lib/allocator/tlsf.ts:244:25
   (get_local $1)
  )
  ;;@ ~lib/allocator/tlsf.ts:247:4
  (i32.store
   (get_local $0)
   (i32.or
    (i32.load
     (get_local $0)
    )
    ;;@ ~lib/allocator/tlsf.ts:247:18
    (i32.shl
     ;;@ ~lib/allocator/tlsf.ts:247:19
     (i32.const 1)
     ;;@ ~lib/allocator/tlsf.ts:247:24
     (get_local $2)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:248:9
  (call $~lib/allocator/tlsf/Root#setSLMap
   ;;@ ~lib/allocator/tlsf.ts:248:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:248:18
   (get_local $2)
   ;;@ ~lib/allocator/tlsf.ts:248:22
   (i32.or
    ;;@ ~lib/allocator/tlsf.ts:248:27
    (call $~lib/allocator/tlsf/Root#getSLMap
     ;;@ ~lib/allocator/tlsf.ts:248:22
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:248:36
     (get_local $2)
    )
    ;;@ ~lib/allocator/tlsf.ts:248:42
    (i32.shl
     ;;@ ~lib/allocator/tlsf.ts:248:43
     (i32.const 1)
     ;;@ ~lib/allocator/tlsf.ts:248:48
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/allocator/tlsf.ts:383:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:381:4
   (tee_local $3
    (i32.load
     (i32.const 2912)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:383:17
   (if
    ;;@ ~lib/allocator/tlsf.ts:387:10
    (i32.eq
     (i32.sub
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:387:18
      (i32.const 8)
     )
     ;;@ ~lib/allocator/tlsf.ts:387:32
     (get_local $3)
    )
    ;;@ ~lib/allocator/tlsf.ts:387:41
    (block
     ;;@ ~lib/allocator/tlsf.ts:388:8
     (set_local $1
      (i32.sub
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:388:17
       (i32.const 8)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:389:8
     (set_local $4
      ;;@ ~lib/allocator/tlsf.ts:389:19
      (i32.load
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:398:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:398:8
   (i32.lt_u
    ;;@ ~lib/allocator/tlsf.ts:397:4
    (tee_local $2
     ;;@ ~lib/allocator/tlsf.ts:397:15
     (i32.sub
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:397:21
      (get_local $1)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:398:45
    (i32.const 32)
   )
   ;;@ ~lib/allocator/tlsf.ts:398:57
   (return
    ;;@ ~lib/allocator/tlsf.ts:399:13
    (i32.const 0)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:405:4
  (i32.store
   ;;@ ~lib/allocator/tlsf.ts:404:15
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:405:16
   (i32.or
    (i32.or
     ;;@ ~lib/allocator/tlsf.ts:403:19
     (i32.sub
      (get_local $2)
      (i32.const 16)
     )
     ;;@ ~lib/allocator/tlsf.ts:405:27
     (i32.const 1)
    )
    ;;@ ~lib/allocator/tlsf.ts:405:34
    (i32.and
     ;;@ ~lib/allocator/tlsf.ts:405:35
     (get_local $4)
     ;;@ ~lib/allocator/tlsf.ts:405:46
     (i32.const 2)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:406:4
  (i32.store offset=4
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:406:16
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:407:4
  (i32.store offset=8
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:407:16
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:411:4
  (i32.store
   ;;@ ~lib/allocator/tlsf.ts:410:4
   (tee_local $2
    ;;@ ~lib/allocator/tlsf.ts:410:15
    (i32.sub
     ;;@ ~lib/allocator/tlsf.ts:410:33
     (i32.add
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:410:41
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:410:48
     (i32.const 8)
    )
   )
   (i32.const 2)
  )
  ;;@ ~lib/allocator/tlsf.ts:412:4
  (call $~lib/allocator/tlsf/Root#set:tailRef
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:412:19
   (get_local $2)
  )
  ;;@ ~lib/allocator/tlsf.ts:414:9
  (call $~lib/allocator/tlsf/Root#insert
   ;;@ ~lib/allocator/tlsf.ts:414:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:414:16
   (get_local $1)
  )
  ;;@ ~lib/allocator/tlsf.ts:416:11
  (i32.const 1)
 )
 (func $~lib/allocator/tlsf/Root#search (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $1
   ;;@ ~lib/allocator/tlsf.ts:300:4
   (if (result i32)
    ;;@ ~lib/allocator/tlsf.ts:300:8
    (i32.lt_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:300:15
     (i32.const 256)
    )
    ;;@ ~lib/allocator/tlsf.ts:302:11
    (i32.div_u
     ;;@ ~lib/allocator/tlsf.ts:302:17
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:302:24
     (i32.const 8)
    )
    ;;@ ~lib/allocator/tlsf.ts:303:11
    (block (result i32)
     ;;@ ~lib/allocator/tlsf.ts:306:6
     (set_local $1
      ;;@ ~lib/allocator/tlsf.ts:306:11
      (i32.xor
       ;;@ ~lib/allocator/tlsf.ts:306:17
       (i32.shr_u
        ;;@ ~lib/allocator/tlsf.ts:306:18
        (get_local $1)
        ;;@ ~lib/allocator/tlsf.ts:306:26
        (i32.sub
         ;;@ ~lib/allocator/tlsf.ts:305:6
         (tee_local $2
          ;;@ ~lib/allocator/tlsf.ts:305:11
          (call $~lib/allocator/tlsf/fls<usize>
           ;;@ ~lib/allocator/tlsf.ts:305:22
           (get_local $1)
          )
         )
         ;;@ ~lib/allocator/tlsf.ts:306:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:307:6
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/allocator/tlsf.ts:307:12
       (i32.const 7)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:309:6
     (if (result i32)
      ;;@ ~lib/allocator/tlsf.ts:309:10
      (i32.lt_u
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:309:15
       (i32.const 31)
      )
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:309:30
       (get_local $1)
       (i32.const 1)
      )
      ;;@ ~lib/allocator/tlsf.ts:310:11
      (block (result i32)
       (set_local $2
        (i32.add
         ;;@ ~lib/allocator/tlsf.ts:310:13
         (get_local $2)
         (i32.const 1)
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:310:22
       (i32.const 0)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:316:4
  (if (result i32)
   ;;@ ~lib/allocator/tlsf.ts:314:4
   (tee_local $1
    ;;@ ~lib/allocator/tlsf.ts:314:16
    (i32.and
     ;;@ ~lib/allocator/tlsf.ts:314:21
     (call $~lib/allocator/tlsf/Root#getSLMap
      ;;@ ~lib/allocator/tlsf.ts:314:16
      (get_local $0)
      ;;@ ~lib/allocator/tlsf.ts:314:30
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:314:36
     (i32.shl
      (i32.const -1)
      ;;@ ~lib/allocator/tlsf.ts:314:43
      (get_local $1)
     )
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:327:18
   (call $~lib/allocator/tlsf/Root#getHead
    ;;@ ~lib/allocator/tlsf.ts:327:13
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:327:26
    (get_local $2)
    (i32.ctz
     ;;@ ~lib/allocator/tlsf.ts:327:39
     (get_local $1)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:319:6
   (if (result i32)
    ;;@ ~lib/allocator/tlsf.ts:318:6
    (tee_local $1
     ;;@ ~lib/allocator/tlsf.ts:318:18
     (i32.and
      (i32.load
       (get_local $0)
      )
      ;;@ ~lib/allocator/tlsf.ts:318:31
      (i32.shl
       (i32.const -1)
       ;;@ ~lib/allocator/tlsf.ts:318:38
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:318:39
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:318:44
        (i32.const 1)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:321:13
    (block (result i32)
     ;;@ ~lib/allocator/tlsf.ts:323:8
     (set_local $1
      ;;@ ~lib/allocator/tlsf.ts:323:16
      (call $~lib/allocator/tlsf/Root#getSLMap
       ;;@ ~lib/allocator/tlsf.ts:323:23
       (get_local $0)
       ;;@ ~lib/allocator/tlsf.ts:322:8
       (tee_local $2
        (i32.ctz
         ;;@ ~lib/allocator/tlsf.ts:322:24
         (get_local $1)
        )
       )
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:324:20
     (call $~lib/allocator/tlsf/Root#getHead
      ;;@ ~lib/allocator/tlsf.ts:324:15
      (get_local $0)
      ;;@ ~lib/allocator/tlsf.ts:324:28
      (get_local $2)
      (i32.ctz
       ;;@ ~lib/allocator/tlsf.ts:324:41
       (get_local $1)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:320:15
    (i32.const 0)
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#use (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/allocator/tlsf.ts:347:4
  (set_local $3
   ;;@ ~lib/allocator/tlsf.ts:347:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:352:9
  (call $~lib/allocator/tlsf/Root#remove
   ;;@ ~lib/allocator/tlsf.ts:352:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:352:16
   (get_local $1)
  )
  ;;@ ~lib/allocator/tlsf.ts:356:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:356:8
   (i32.ge_u
    ;;@ ~lib/allocator/tlsf.ts:355:4
    (tee_local $4
     ;;@ ~lib/allocator/tlsf.ts:355:20
     (i32.sub
      (i32.and
       ;;@ ~lib/allocator/tlsf.ts:355:21
       (get_local $3)
       (i32.const -4)
      )
      ;;@ ~lib/allocator/tlsf.ts:355:42
      (get_local $2)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:356:34
    (i32.const 24)
   )
   ;;@ ~lib/allocator/tlsf.ts:356:50
   (block
    ;;@ ~lib/allocator/tlsf.ts:357:6
    (i32.store
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:357:19
     (i32.or
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:357:26
      (i32.and
       ;;@ ~lib/allocator/tlsf.ts:357:27
       (get_local $3)
       ;;@ ~lib/allocator/tlsf.ts:357:39
       (i32.const 2)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:362:6
    (i32.store
     ;;@ ~lib/allocator/tlsf.ts:359:6
     (tee_local $2
      ;;@ ~lib/allocator/tlsf.ts:359:18
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:360:8
       (i32.add
        (get_local $1)
        ;;@ ~lib/allocator/tlsf.ts:360:35
        (i32.const 8)
       )
       ;;@ ~lib/allocator/tlsf.ts:360:48
       (get_local $2)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:362:19
     (i32.or
      (i32.sub
       ;;@ ~lib/allocator/tlsf.ts:362:20
       (get_local $4)
       ;;@ ~lib/allocator/tlsf.ts:362:32
       (i32.const 8)
      )
      ;;@ ~lib/allocator/tlsf.ts:362:46
      (i32.const 1)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:363:11
    (call $~lib/allocator/tlsf/Root#insert
     ;;@ ~lib/allocator/tlsf.ts:363:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:363:18
     (get_local $2)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:366:11
   (block
    ;;@ ~lib/allocator/tlsf.ts:367:6
    (i32.store
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:367:19
     (i32.and
      (get_local $3)
      (i32.const -2)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:369:6
    (i32.store
     ;;@ ~lib/allocator/tlsf.ts:368:6
     (tee_local $2
      ;;@ ~lib/allocator/tlsf.ts:368:25
      (call $~lib/allocator/tlsf/Block#get:right
       ;;@ ~lib/allocator/tlsf.ts:368:32
       (get_local $1)
      )
     )
     (i32.and
      ;;@ ~lib/allocator/tlsf.ts:369:6
      (i32.load
       (get_local $2)
      )
      (i32.const -3)
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:372:11
  (i32.add
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:372:38
   (i32.const 8)
  )
 )
 (func $~lib/allocator/tlsf/allocate_memory (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/allocator/tlsf.ts:444:2
  (if
   ;;@ ~lib/allocator/tlsf.ts:444:6
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:443:2
    (tee_local $2
     ;;@ ~lib/allocator/tlsf.ts:443:13
     (get_global $~lib/allocator/tlsf/ROOT)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:444:13
   (block
    ;;@ ~lib/allocator/tlsf.ts:446:4
    (set_global $~lib/allocator/tlsf/ROOT
     ;;@ ~lib/allocator/tlsf.ts:446:11
     (tee_local $2
      ;;@ ~lib/allocator/tlsf.ts:445:4
      (tee_local $3
       ;;@ ~lib/allocator/tlsf.ts:445:21
       (i32.and
        (i32.add
         ;;@ ~lib/allocator/tlsf.ts:445:22
         (get_global $HEAP_BASE)
         ;;@ ~lib/allocator/tlsf.ts:445:34
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:447:4
    (call $~lib/allocator/tlsf/Root#set:tailRef
     (get_local $2)
     ;;@ ~lib/allocator/tlsf.ts:447:19
     (i32.const 0)
    )
    ;;@ ~lib/allocator/tlsf.ts:448:4
    (i32.store
     (get_local $2)
     ;;@ ~lib/allocator/tlsf.ts:448:17
     (i32.const 0)
    )
    ;;@ ~lib/allocator/tlsf.ts:449:4
    (block $break|0
     (loop $repeat|0
      (br_if $break|0
       ;;@ ~lib/allocator/tlsf.ts:449:28
       (i32.ge_u
        (get_local $1)
        ;;@ ~lib/allocator/tlsf.ts:449:33
        (i32.const 22)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:450:11
      (call $~lib/allocator/tlsf/Root#setSLMap
       ;;@ ~lib/allocator/tlsf.ts:450:6
       (get_local $2)
       ;;@ ~lib/allocator/tlsf.ts:450:20
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:450:24
       (i32.const 0)
      )
      ;;@ ~lib/allocator/tlsf.ts:451:6
      (block $break|1
       ;;@ ~lib/allocator/tlsf.ts:451:11
       (set_local $4
        ;;@ ~lib/allocator/tlsf.ts:451:25
        (i32.const 0)
       )
       (loop $repeat|1
        (br_if $break|1
         ;;@ ~lib/allocator/tlsf.ts:451:28
         (i32.ge_u
          (get_local $4)
          ;;@ ~lib/allocator/tlsf.ts:451:33
          (i32.const 32)
         )
        )
        ;;@ ~lib/allocator/tlsf.ts:451:48
        (call $~lib/allocator/tlsf/Root#setHead
         ;;@ ~lib/allocator/tlsf.ts:452:8
         (get_local $2)
         ;;@ ~lib/allocator/tlsf.ts:452:21
         (get_local $1)
         ;;@ ~lib/allocator/tlsf.ts:452:25
         (get_local $4)
         ;;@ ~lib/allocator/tlsf.ts:452:29
         (i32.const 0)
        )
        ;;@ ~lib/allocator/tlsf.ts:451:42
        (set_local $4
         (i32.add
          ;;@ ~lib/allocator/tlsf.ts:451:44
          (get_local $4)
          (i32.const 1)
         )
        )
        (br $repeat|1)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:449:42
      (set_local $1
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:449:44
        (get_local $1)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:455:9
    (drop
     (call $~lib/allocator/tlsf/Root#addMemory
      ;;@ ~lib/allocator/tlsf.ts:455:4
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:455:19
      (i32.and
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:455:20
        (get_local $3)
        (i32.const 2923)
       )
       (i32.const -8)
      )
      ;;@ ~lib/allocator/tlsf.ts:455:66
      (i32.shl
       (current_memory)
       ;;@ ~lib/allocator/tlsf.ts:455:86
       (i32.const 16)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:459:2
  (set_local $1
   ;;@ ~lib/allocator/tlsf.ts:459:20
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:460:2
  (if
   ;;@ ~lib/allocator/tlsf.ts:460:6
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:460:12
   (block
    ;;@ ~lib/allocator/tlsf.ts:461:4
    (if
     ;;@ ~lib/allocator/tlsf.ts:461:8
     (i32.gt_u
      (get_local $0)
      ;;@ ~lib/allocator/tlsf.ts:461:15
      (i32.const 1073741824)
     )
     ;;@ ~lib/allocator/tlsf.ts:461:31
     (unreachable)
    )
    ;;@ ~lib/allocator/tlsf.ts:466:4
    (if
     ;;@ ~lib/allocator/tlsf.ts:466:8
     (i32.eqz
      ;;@ ~lib/allocator/tlsf.ts:465:4
      (tee_local $3
       ;;@ ~lib/allocator/tlsf.ts:465:21
       (call $~lib/allocator/tlsf/Root#search
        ;;@ ~lib/allocator/tlsf.ts:465:16
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:463:4
        (tee_local $0
         ;;@ ~lib/allocator/tlsf.ts:463:11
         (select
          (tee_local $3
           ;;@ ~lib/allocator/tlsf.ts:463:22
           (i32.and
            (i32.add
             ;;@ ~lib/allocator/tlsf.ts:463:23
             (get_local $0)
             ;;@ ~lib/allocator/tlsf.ts:463:30
             (i32.const 7)
            )
            (i32.const -8)
           )
          )
          (tee_local $1
           ;;@ ~lib/allocator/tlsf.ts:463:51
           (i32.const 16)
          )
          (i32.gt_u
           (get_local $3)
           (get_local $1)
          )
         )
        )
       )
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:466:16
     (block
      ;;@ ~lib/allocator/tlsf.ts:472:6
      (if
       ;;@ ~lib/allocator/tlsf.ts:472:10
       (i32.lt_s
        (grow_memory
         ;;@ ~lib/allocator/tlsf.ts:471:24
         (select
          (tee_local $3
           ;;@ ~lib/allocator/tlsf.ts:469:6
           (tee_local $1
            ;;@ ~lib/allocator/tlsf.ts:469:24
            (current_memory)
           )
          )
          (tee_local $5
           ;;@ ~lib/allocator/tlsf.ts:470:6
           (tee_local $4
            ;;@ ~lib/allocator/tlsf.ts:470:24
            (i32.shr_u
             (i32.and
              ;;@ ~lib/allocator/tlsf.ts:470:25
              (i32.add
               ;;@ ~lib/allocator/tlsf.ts:470:26
               (get_local $0)
               ;;@ ~lib/allocator/tlsf.ts:470:33
               (i32.const 65535)
              )
              (i32.const -65536)
             )
             ;;@ ~lib/allocator/tlsf.ts:470:56
             (i32.const 16)
            )
           )
          )
          (i32.gt_s
           (get_local $3)
           (get_local $5)
          )
         )
        )
        ;;@ ~lib/allocator/tlsf.ts:472:37
        (i32.const 0)
       )
       ;;@ ~lib/allocator/tlsf.ts:472:40
       (if
        ;;@ ~lib/allocator/tlsf.ts:473:12
        (i32.lt_s
         (grow_memory
          ;;@ ~lib/allocator/tlsf.ts:473:24
          (get_local $4)
         )
         ;;@ ~lib/allocator/tlsf.ts:473:39
         (i32.const 0)
        )
        ;;@ ~lib/allocator/tlsf.ts:473:42
        (unreachable)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:478:11
      (drop
       (call $~lib/allocator/tlsf/Root#addMemory
        ;;@ ~lib/allocator/tlsf.ts:478:6
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:478:21
        (i32.shl
         (get_local $1)
         ;;@ ~lib/allocator/tlsf.ts:478:43
         (i32.const 16)
        )
        ;;@ ~lib/allocator/tlsf.ts:478:47
        (i32.shl
         ;;@ ~lib/allocator/tlsf.ts:477:23
         (current_memory)
         ;;@ ~lib/allocator/tlsf.ts:478:68
         (i32.const 16)
        )
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:479:6
      (set_local $3
       ;;@ ~lib/allocator/tlsf.ts:479:14
       (call $~lib/allocator/tlsf/Root#search
        ;;@ ~lib/allocator/tlsf.ts:479:21
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:479:33
        (get_local $0)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:483:4
    (set_local $1
     ;;@ ~lib/allocator/tlsf.ts:483:16
     (call $~lib/allocator/tlsf/Root#use
      ;;@ ~lib/allocator/tlsf.ts:483:11
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:483:20
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:483:34
      (get_local $0)
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:486:9
  (get_local $1)
 )
 (func $~lib/allocator/tlsf/free_memory (; 13 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/allocator/tlsf.ts:491:47
  (if
   ;;@ ~lib/allocator/tlsf.ts:492:6
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:494:4
   (if
    ;;@ ~lib/allocator/tlsf.ts:493:4
    (tee_local $1
     ;;@ ~lib/allocator/tlsf.ts:493:15
     (get_global $~lib/allocator/tlsf/ROOT)
    )
    ;;@ ~lib/allocator/tlsf.ts:494:14
    (block
     ;;@ ~lib/allocator/tlsf.ts:498:6
     (i32.store
      ;;@ ~lib/allocator/tlsf.ts:495:6
      (tee_local $2
       ;;@ ~lib/allocator/tlsf.ts:495:18
       (i32.sub
        ;;@ ~lib/allocator/tlsf.ts:495:36
        (get_local $0)
        ;;@ ~lib/allocator/tlsf.ts:495:43
        (i32.const 8)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:498:19
      (i32.or
       ;;@ ~lib/allocator/tlsf.ts:496:22
       (i32.load
        (get_local $2)
       )
       ;;@ ~lib/allocator/tlsf.ts:498:31
       (i32.const 1)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:499:11
     (call $~lib/allocator/tlsf/Root#insert
      ;;@ ~lib/allocator/tlsf.ts:499:6
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:499:18
      (i32.sub
       ;;@ ~lib/allocator/tlsf.ts:499:36
       (get_local $0)
       ;;@ ~lib/allocator/tlsf.ts:499:43
       (i32.const 8)
      )
     )
    )
   )
  )
 )
)
