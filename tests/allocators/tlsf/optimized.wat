(module
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "allocate_memory" (func $~lib/allocator/tlsf/allocate_memory))
 (export "free_memory" (func $~lib/allocator/tlsf/free_memory))
 (export "memory" (memory $0))
 (func $~lib/allocator/tlsf/Root#set:tailRef (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ ~lib/allocator/tlsf.ts:184:30
  (i32.store
   ;;@ ~lib/allocator/tlsf.ts:184:43
   (i32.const 2912)
   ;;@ ~lib/allocator/tlsf.ts:184:46
   (get_local $1)
  )
 )
 (func $~lib/allocator/tlsf/Root#setSLMap (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/allocator/tlsf.ts:148:4
  (i32.store offset=4
   ;;@ ~lib/allocator/tlsf.ts:148:15
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:148:41
    (i32.shl
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:148:46
     (i32.const 2)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:148:49
   (get_local $2)
  )
 )
 (func $~lib/allocator/tlsf/Root#setHead (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ ~lib/allocator/tlsf.ts:172:4
  (i32.store offset=96
   ;;@ ~lib/allocator/tlsf.ts:173:6
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:173:32
    (i32.shl
     (i32.add
      ;;@ ~lib/allocator/tlsf.ts:173:33
      (i32.shl
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:173:38
       (i32.const 5)
      )
      ;;@ ~lib/allocator/tlsf.ts:173:48
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:173:61
     (i32.const 2)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:174:6
   (get_local $3)
  )
 )
 (func $~lib/allocator/tlsf/Block#get:right (; 3 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:93:11
  (i32.add
   ;;@ ~lib/allocator/tlsf.ts:95:8
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:95:34
    (i32.const 8)
   )
   ;;@ ~lib/allocator/tlsf.ts:95:47
   (i32.and
    ;;@ ~lib/allocator/tlsf.ts:95:48
    (i32.load
     (get_local $0)
    )
    (i32.const -4)
   )
  )
 )
 (func $~lib/allocator/tlsf/fls<usize> (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:433:9
  (i32.sub
   (i32.const 31)
   ;;@ ~lib/allocator/tlsf.ts:433:15
   (i32.clz
    ;;@ ~lib/allocator/tlsf.ts:433:22
    (get_local $0)
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#getHead (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:163:11
  (i32.load offset=96
   ;;@ ~lib/allocator/tlsf.ts:164:6
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:164:32
    (i32.shl
     (i32.add
      ;;@ ~lib/allocator/tlsf.ts:164:33
      (i32.shl
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:164:38
       (i32.const 5)
      )
      ;;@ ~lib/allocator/tlsf.ts:164:48
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:164:61
     (i32.const 2)
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#getSLMap (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:142:11
  (i32.load offset=4
   ;;@ ~lib/allocator/tlsf.ts:142:21
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:142:47
    (i32.shl
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:142:52
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
   ;;@ ~lib/allocator/tlsf.ts:267:4
   (if (result i32)
    ;;@ ~lib/allocator/tlsf.ts:267:8
    (i32.lt_u
     ;;@ ~lib/allocator/tlsf.ts:262:4
     (tee_local $2
      ;;@ ~lib/allocator/tlsf.ts:262:15
      (i32.and
       ;;@ ~lib/allocator/tlsf.ts:260:20
       (i32.load
        (get_local $1)
       )
       (i32.const -4)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:267:15
     (i32.const 256)
    )
    ;;@ ~lib/allocator/tlsf.ts:267:24
    (block (result i32)
     ;;@ ~lib/allocator/tlsf.ts:269:6
     (set_local $4
      ;;@ ~lib/allocator/tlsf.ts:269:11
      (i32.div_u
       ;;@ ~lib/allocator/tlsf.ts:269:17
       (get_local $2)
       ;;@ ~lib/allocator/tlsf.ts:269:24
       (i32.const 8)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:268:11
     (i32.const 0)
    )
    ;;@ ~lib/allocator/tlsf.ts:270:11
    (block (result i32)
     ;;@ ~lib/allocator/tlsf.ts:272:6
     (set_local $4
      ;;@ ~lib/allocator/tlsf.ts:272:11
      (i32.xor
       ;;@ ~lib/allocator/tlsf.ts:272:17
       (i32.shr_u
        ;;@ ~lib/allocator/tlsf.ts:272:18
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:272:26
        (i32.sub
         ;;@ ~lib/allocator/tlsf.ts:271:6
         (tee_local $3
          ;;@ ~lib/allocator/tlsf.ts:271:11
          (call $~lib/allocator/tlsf/fls<usize>
           ;;@ ~lib/allocator/tlsf.ts:271:22
           (get_local $2)
          )
         )
         ;;@ ~lib/allocator/tlsf.ts:272:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     (i32.sub
      ;;@ ~lib/allocator/tlsf.ts:273:6
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:273:12
      (i32.const 7)
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:278:4
  (set_local $2
   ;;@ ~lib/allocator/tlsf.ts:278:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:279:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:277:4
   (tee_local $5
    ;;@ ~lib/allocator/tlsf.ts:277:15
    (i32.load offset=4
     (get_local $1)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:279:14
   (i32.store offset=8
    (get_local $5)
    ;;@ ~lib/allocator/tlsf.ts:279:26
    (get_local $2)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:280:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:280:8
   (get_local $2)
   ;;@ ~lib/allocator/tlsf.ts:280:14
   (i32.store offset=4
    (get_local $2)
    ;;@ ~lib/allocator/tlsf.ts:280:26
    (get_local $5)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:283:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:283:8
   (i32.eq
    (get_local $1)
    ;;@ ~lib/allocator/tlsf.ts:283:22
    (call $~lib/allocator/tlsf/Root#getHead
     ;;@ ~lib/allocator/tlsf.ts:283:17
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:283:30
     (get_local $3)
     ;;@ ~lib/allocator/tlsf.ts:283:34
     (get_local $4)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:283:39
   (block
    ;;@ ~lib/allocator/tlsf.ts:284:11
    (call $~lib/allocator/tlsf/Root#setHead
     ;;@ ~lib/allocator/tlsf.ts:284:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:284:19
     (get_local $3)
     ;;@ ~lib/allocator/tlsf.ts:284:23
     (get_local $4)
     ;;@ ~lib/allocator/tlsf.ts:284:27
     (get_local $2)
    )
    ;;@ ~lib/allocator/tlsf.ts:287:6
    (if
     ;;@ ~lib/allocator/tlsf.ts:287:10
     (i32.eqz
      ;;@ ~lib/allocator/tlsf.ts:287:11
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:287:17
     (block
      ;;@ ~lib/allocator/tlsf.ts:289:13
      (call $~lib/allocator/tlsf/Root#setSLMap
       ;;@ ~lib/allocator/tlsf.ts:289:8
       (get_local $0)
       ;;@ ~lib/allocator/tlsf.ts:289:22
       (get_local $3)
       ;;@ ~lib/allocator/tlsf.ts:289:26
       (tee_local $1
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:288:25
         (call $~lib/allocator/tlsf/Root#getSLMap
          ;;@ ~lib/allocator/tlsf.ts:288:20
          (get_local $0)
          ;;@ ~lib/allocator/tlsf.ts:288:34
          (get_local $3)
         )
         ;;@ ~lib/allocator/tlsf.ts:289:35
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:289:36
          (i32.shl
           ;;@ ~lib/allocator/tlsf.ts:289:37
           (i32.const 1)
           ;;@ ~lib/allocator/tlsf.ts:289:42
           (get_local $4)
          )
          (i32.const -1)
         )
        )
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:292:8
      (if
       ;;@ ~lib/allocator/tlsf.ts:292:12
       (i32.eqz
        ;;@ ~lib/allocator/tlsf.ts:292:13
        (get_local $1)
       )
       ;;@ ~lib/allocator/tlsf.ts:292:20
       (i32.store
        (get_local $0)
        (i32.and
         (i32.load
          (get_local $0)
         )
         ;;@ ~lib/allocator/tlsf.ts:292:34
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:292:35
          (i32.shl
           ;;@ ~lib/allocator/tlsf.ts:292:36
           (i32.const 1)
           ;;@ ~lib/allocator/tlsf.ts:292:41
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
  ;;@ ~lib/allocator/tlsf.ts:193:4
  (set_local $2
   ;;@ ~lib/allocator/tlsf.ts:193:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:204:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:204:8
   (i32.and
    ;;@ ~lib/allocator/tlsf.ts:201:4
    (tee_local $5
     ;;@ ~lib/allocator/tlsf.ts:201:20
     (i32.load
      ;;@ ~lib/allocator/tlsf.ts:200:4
      (tee_local $4
       ;;@ ~lib/allocator/tlsf.ts:200:23
       (call $~lib/allocator/tlsf/Block#get:right
        ;;@ ~lib/allocator/tlsf.ts:200:30
        (get_local $1)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:204:20
    (i32.const 1)
   )
   ;;@ ~lib/allocator/tlsf.ts:204:26
   (block
    ;;@ ~lib/allocator/tlsf.ts:205:11
    (call $~lib/allocator/tlsf/Root#remove
     ;;@ ~lib/allocator/tlsf.ts:205:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:205:18
     (get_local $4)
    )
    ;;@ ~lib/allocator/tlsf.ts:206:6
    (i32.store
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:206:19
     (tee_local $2
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:206:20
       (get_local $2)
       ;;@ ~lib/allocator/tlsf.ts:206:33
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:206:46
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:206:47
         (get_local $5)
         (i32.const -4)
        )
        ;;@ ~lib/allocator/tlsf.ts:206:33
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:208:6
    (set_local $5
     ;;@ ~lib/allocator/tlsf.ts:208:18
     (i32.load
      ;;@ ~lib/allocator/tlsf.ts:207:6
      (tee_local $4
       ;;@ ~lib/allocator/tlsf.ts:207:14
       (call $~lib/allocator/tlsf/Block#get:right
        (get_local $1)
       )
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:213:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:213:8
   (i32.and
    (get_local $2)
    ;;@ ~lib/allocator/tlsf.ts:213:20
    (i32.const 2)
   )
   ;;@ ~lib/allocator/tlsf.ts:213:31
   (block
    ;;@ ~lib/allocator/tlsf.ts:215:6
    (set_local $3
     ;;@ ~lib/allocator/tlsf.ts:215:21
     (i32.load
      ;;@ ~lib/allocator/tlsf.ts:214:6
      (tee_local $1
       (i32.load
        (i32.sub
         (get_local $1)
         (i32.const 4)
        )
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:217:11
    (call $~lib/allocator/tlsf/Root#remove
     ;;@ ~lib/allocator/tlsf.ts:217:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:217:18
     (get_local $1)
    )
    ;;@ ~lib/allocator/tlsf.ts:218:6
    (i32.store
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:218:18
     (tee_local $3
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:218:19
       (get_local $3)
       ;;@ ~lib/allocator/tlsf.ts:218:31
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:218:44
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:218:45
         (get_local $2)
         (i32.const -4)
        )
        ;;@ ~lib/allocator/tlsf.ts:218:31
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:220:6
    (set_local $2
     ;;@ ~lib/allocator/tlsf.ts:220:18
     (get_local $3)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:224:4
  (i32.store
   (get_local $4)
   ;;@ ~lib/allocator/tlsf.ts:224:17
   (i32.or
    (get_local $5)
    ;;@ ~lib/allocator/tlsf.ts:224:29
    (i32.const 2)
   )
  )
  (i32.store
   (i32.sub
    (get_local $4)
    (i32.const 4)
   )
   (tee_local $3
    ;;@ ~lib/allocator/tlsf.ts:225:17
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:243:4
  (set_local $4
   ;;@ ~lib/allocator/tlsf.ts:243:20
   (call $~lib/allocator/tlsf/Root#getHead
    ;;@ ~lib/allocator/tlsf.ts:243:15
    (get_local $0)
    (tee_local $2
     ;;@ ~lib/allocator/tlsf.ts:233:4
     (if (result i32)
      ;;@ ~lib/allocator/tlsf.ts:233:8
      (i32.lt_u
       ;;@ ~lib/allocator/tlsf.ts:228:4
       (tee_local $3
        ;;@ ~lib/allocator/tlsf.ts:228:11
        (i32.and
         (get_local $2)
         (i32.const -4)
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:233:15
       (i32.const 256)
      )
      ;;@ ~lib/allocator/tlsf.ts:233:24
      (block (result i32)
       ;;@ ~lib/allocator/tlsf.ts:235:6
       (set_local $3
        ;;@ ~lib/allocator/tlsf.ts:235:11
        (i32.div_u
         ;;@ ~lib/allocator/tlsf.ts:235:17
         (get_local $3)
         ;;@ ~lib/allocator/tlsf.ts:235:24
         (i32.const 8)
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:234:11
       (i32.const 0)
      )
      ;;@ ~lib/allocator/tlsf.ts:236:11
      (block (result i32)
       ;;@ ~lib/allocator/tlsf.ts:238:6
       (set_local $3
        ;;@ ~lib/allocator/tlsf.ts:238:11
        (i32.xor
         ;;@ ~lib/allocator/tlsf.ts:238:17
         (i32.shr_u
          ;;@ ~lib/allocator/tlsf.ts:238:18
          (get_local $3)
          ;;@ ~lib/allocator/tlsf.ts:238:26
          (i32.sub
           ;;@ ~lib/allocator/tlsf.ts:237:6
           (tee_local $2
            ;;@ ~lib/allocator/tlsf.ts:237:11
            (call $~lib/allocator/tlsf/fls<usize>
             ;;@ ~lib/allocator/tlsf.ts:237:22
             (get_local $3)
            )
           )
           ;;@ ~lib/allocator/tlsf.ts:238:32
           (i32.const 5)
          )
         )
         (i32.const 32)
        )
       )
       (i32.sub
        ;;@ ~lib/allocator/tlsf.ts:239:6
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:239:12
        (i32.const 7)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:243:32
    (get_local $3)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:244:4
  (i32.store offset=4
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:244:17
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:245:4
  (i32.store offset=8
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:245:17
   (get_local $4)
  )
  ;;@ ~lib/allocator/tlsf.ts:246:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:246:8
   (get_local $4)
   ;;@ ~lib/allocator/tlsf.ts:246:14
   (i32.store offset=4
    (get_local $4)
    ;;@ ~lib/allocator/tlsf.ts:246:26
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:247:9
  (call $~lib/allocator/tlsf/Root#setHead
   ;;@ ~lib/allocator/tlsf.ts:247:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:247:17
   (get_local $2)
   ;;@ ~lib/allocator/tlsf.ts:247:21
   (get_local $3)
   ;;@ ~lib/allocator/tlsf.ts:247:25
   (get_local $1)
  )
  ;;@ ~lib/allocator/tlsf.ts:250:4
  (i32.store
   (get_local $0)
   (i32.or
    (i32.load
     (get_local $0)
    )
    ;;@ ~lib/allocator/tlsf.ts:250:18
    (i32.shl
     ;;@ ~lib/allocator/tlsf.ts:250:19
     (i32.const 1)
     ;;@ ~lib/allocator/tlsf.ts:250:24
     (get_local $2)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:251:9
  (call $~lib/allocator/tlsf/Root#setSLMap
   ;;@ ~lib/allocator/tlsf.ts:251:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:251:18
   (get_local $2)
   ;;@ ~lib/allocator/tlsf.ts:251:22
   (i32.or
    ;;@ ~lib/allocator/tlsf.ts:251:27
    (call $~lib/allocator/tlsf/Root#getSLMap
     ;;@ ~lib/allocator/tlsf.ts:251:22
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:251:36
     (get_local $2)
    )
    ;;@ ~lib/allocator/tlsf.ts:251:42
    (i32.shl
     ;;@ ~lib/allocator/tlsf.ts:251:43
     (i32.const 1)
     ;;@ ~lib/allocator/tlsf.ts:251:48
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/allocator/tlsf.ts:386:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:384:4
   (tee_local $3
    (i32.load
     (i32.const 2912)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:390:6
   (if
    ;;@ ~lib/allocator/tlsf.ts:390:10
    (i32.eq
     (i32.sub
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:390:18
      (i32.const 8)
     )
     ;;@ ~lib/allocator/tlsf.ts:390:32
     (get_local $3)
    )
    ;;@ ~lib/allocator/tlsf.ts:390:41
    (block
     ;;@ ~lib/allocator/tlsf.ts:391:8
     (set_local $1
      (i32.sub
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:391:17
       (i32.const 8)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:392:8
     (set_local $4
      ;;@ ~lib/allocator/tlsf.ts:392:19
      (i32.load
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:401:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:401:8
   (i32.lt_u
    ;;@ ~lib/allocator/tlsf.ts:400:4
    (tee_local $3
     ;;@ ~lib/allocator/tlsf.ts:400:15
     (i32.sub
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:400:21
      (get_local $1)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:401:45
    (i32.const 32)
   )
   ;;@ ~lib/allocator/tlsf.ts:402:13
   (return
    (i32.const 0)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:408:4
  (i32.store
   ;;@ ~lib/allocator/tlsf.ts:407:4
   (tee_local $2
    ;;@ ~lib/allocator/tlsf.ts:407:15
    (get_local $1)
   )
   ;;@ ~lib/allocator/tlsf.ts:408:16
   (i32.or
    (i32.or
     ;;@ ~lib/allocator/tlsf.ts:406:19
     (i32.sub
      (get_local $3)
      (i32.const 16)
     )
     ;;@ ~lib/allocator/tlsf.ts:408:27
     (i32.const 1)
    )
    ;;@ ~lib/allocator/tlsf.ts:408:34
    (i32.and
     ;;@ ~lib/allocator/tlsf.ts:408:35
     (get_local $4)
     ;;@ ~lib/allocator/tlsf.ts:408:46
     (i32.const 2)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:409:4
  (i32.store offset=4
   (get_local $2)
   ;;@ ~lib/allocator/tlsf.ts:409:16
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:410:4
  (i32.store offset=8
   (get_local $2)
   ;;@ ~lib/allocator/tlsf.ts:410:16
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:414:4
  (i32.store
   ;;@ ~lib/allocator/tlsf.ts:413:4
   (tee_local $1
    ;;@ ~lib/allocator/tlsf.ts:413:15
    (i32.sub
     ;;@ ~lib/allocator/tlsf.ts:413:33
     (i32.add
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:413:41
      (get_local $3)
     )
     ;;@ ~lib/allocator/tlsf.ts:413:48
     (i32.const 8)
    )
   )
   (i32.const 2)
  )
  ;;@ ~lib/allocator/tlsf.ts:415:4
  (call $~lib/allocator/tlsf/Root#set:tailRef
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:415:19
   (get_local $1)
  )
  ;;@ ~lib/allocator/tlsf.ts:417:9
  (call $~lib/allocator/tlsf/Root#insert
   ;;@ ~lib/allocator/tlsf.ts:417:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:417:16
   (get_local $2)
  )
  ;;@ ~lib/allocator/tlsf.ts:419:11
  (i32.const 1)
 )
 (func $~lib/allocator/tlsf/Root#search (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $1
   ;;@ ~lib/allocator/tlsf.ts:303:4
   (if (result i32)
    ;;@ ~lib/allocator/tlsf.ts:303:8
    (i32.lt_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:303:15
     (i32.const 256)
    )
    ;;@ ~lib/allocator/tlsf.ts:305:11
    (i32.div_u
     ;;@ ~lib/allocator/tlsf.ts:305:17
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:305:24
     (i32.const 8)
    )
    ;;@ ~lib/allocator/tlsf.ts:306:11
    (block (result i32)
     ;;@ ~lib/allocator/tlsf.ts:309:6
     (set_local $1
      ;;@ ~lib/allocator/tlsf.ts:309:11
      (i32.xor
       ;;@ ~lib/allocator/tlsf.ts:309:17
       (i32.shr_u
        ;;@ ~lib/allocator/tlsf.ts:309:18
        (get_local $1)
        ;;@ ~lib/allocator/tlsf.ts:309:26
        (i32.sub
         ;;@ ~lib/allocator/tlsf.ts:308:6
         (tee_local $2
          ;;@ ~lib/allocator/tlsf.ts:308:11
          (call $~lib/allocator/tlsf/fls<usize>
           ;;@ ~lib/allocator/tlsf.ts:308:22
           (get_local $1)
          )
         )
         ;;@ ~lib/allocator/tlsf.ts:309:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:310:6
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/allocator/tlsf.ts:310:12
       (i32.const 7)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:312:6
     (if (result i32)
      ;;@ ~lib/allocator/tlsf.ts:312:10
      (i32.lt_u
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:312:15
       (i32.const 31)
      )
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:312:30
       (get_local $1)
       (i32.const 1)
      )
      ;;@ ~lib/allocator/tlsf.ts:313:11
      (block (result i32)
       (set_local $2
        (i32.add
         ;;@ ~lib/allocator/tlsf.ts:313:13
         (get_local $2)
         (i32.const 1)
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:313:22
       (i32.const 0)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:319:4
  (if (result i32)
   ;;@ ~lib/allocator/tlsf.ts:317:4
   (tee_local $1
    ;;@ ~lib/allocator/tlsf.ts:317:16
    (i32.and
     ;;@ ~lib/allocator/tlsf.ts:317:21
     (call $~lib/allocator/tlsf/Root#getSLMap
      ;;@ ~lib/allocator/tlsf.ts:317:16
      (get_local $0)
      ;;@ ~lib/allocator/tlsf.ts:317:30
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:317:36
     (i32.shl
      (i32.const -1)
      ;;@ ~lib/allocator/tlsf.ts:317:43
      (get_local $1)
     )
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:330:18
   (call $~lib/allocator/tlsf/Root#getHead
    ;;@ ~lib/allocator/tlsf.ts:330:13
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:330:26
    (get_local $2)
    (i32.ctz
     (get_local $1)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:322:6
   (if (result i32)
    ;;@ ~lib/allocator/tlsf.ts:321:6
    (tee_local $1
     ;;@ ~lib/allocator/tlsf.ts:321:18
     (i32.and
      (i32.load
       (get_local $0)
      )
      ;;@ ~lib/allocator/tlsf.ts:321:31
      (i32.shl
       (i32.const -1)
       ;;@ ~lib/allocator/tlsf.ts:321:38
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:321:39
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:321:44
        (i32.const 1)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:324:13
    (block (result i32)
     ;;@ ~lib/allocator/tlsf.ts:326:8
     (set_local $1
      ;;@ ~lib/allocator/tlsf.ts:326:16
      (call $~lib/allocator/tlsf/Root#getSLMap
       ;;@ ~lib/allocator/tlsf.ts:326:23
       (get_local $0)
       ;;@ ~lib/allocator/tlsf.ts:325:8
       (tee_local $2
        (i32.ctz
         (get_local $1)
        )
       )
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:327:20
     (call $~lib/allocator/tlsf/Root#getHead
      ;;@ ~lib/allocator/tlsf.ts:327:15
      (get_local $0)
      ;;@ ~lib/allocator/tlsf.ts:327:28
      (get_local $2)
      (i32.ctz
       (get_local $1)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:323:15
    (i32.const 0)
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#use (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/allocator/tlsf.ts:350:4
  (set_local $3
   ;;@ ~lib/allocator/tlsf.ts:350:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:355:9
  (call $~lib/allocator/tlsf/Root#remove
   ;;@ ~lib/allocator/tlsf.ts:355:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:355:16
   (get_local $1)
  )
  ;;@ ~lib/allocator/tlsf.ts:359:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:359:8
   (i32.ge_u
    ;;@ ~lib/allocator/tlsf.ts:358:4
    (tee_local $4
     ;;@ ~lib/allocator/tlsf.ts:358:20
     (i32.sub
      (i32.and
       ;;@ ~lib/allocator/tlsf.ts:358:21
       (get_local $3)
       (i32.const -4)
      )
      ;;@ ~lib/allocator/tlsf.ts:358:42
      (get_local $2)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:359:34
    (i32.const 24)
   )
   ;;@ ~lib/allocator/tlsf.ts:359:50
   (block
    ;;@ ~lib/allocator/tlsf.ts:360:6
    (i32.store
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:360:19
     (i32.or
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:360:26
      (i32.and
       ;;@ ~lib/allocator/tlsf.ts:360:27
       (get_local $3)
       ;;@ ~lib/allocator/tlsf.ts:360:39
       (i32.const 2)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:365:6
    (i32.store
     ;;@ ~lib/allocator/tlsf.ts:362:6
     (tee_local $2
      ;;@ ~lib/allocator/tlsf.ts:362:18
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:363:8
       (i32.add
        (get_local $1)
        ;;@ ~lib/allocator/tlsf.ts:363:35
        (i32.const 8)
       )
       ;;@ ~lib/allocator/tlsf.ts:363:48
       (get_local $2)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:365:19
     (i32.or
      (i32.sub
       ;;@ ~lib/allocator/tlsf.ts:365:20
       (get_local $4)
       ;;@ ~lib/allocator/tlsf.ts:365:32
       (i32.const 8)
      )
      ;;@ ~lib/allocator/tlsf.ts:365:46
      (i32.const 1)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:366:11
    (call $~lib/allocator/tlsf/Root#insert
     ;;@ ~lib/allocator/tlsf.ts:366:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:366:18
     (get_local $2)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:369:11
   (block
    ;;@ ~lib/allocator/tlsf.ts:370:6
    (i32.store
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:370:19
     (i32.and
      (get_local $3)
      (i32.const -2)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:372:6
    (i32.store
     ;;@ ~lib/allocator/tlsf.ts:371:6
     (tee_local $2
      ;;@ ~lib/allocator/tlsf.ts:371:25
      (call $~lib/allocator/tlsf/Block#get:right
       ;;@ ~lib/allocator/tlsf.ts:371:32
       (get_local $1)
      )
     )
     (i32.and
      ;;@ ~lib/allocator/tlsf.ts:372:6
      (i32.load
       (get_local $2)
      )
      (i32.const -3)
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:375:11
  (i32.add
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:375:38
   (i32.const 8)
  )
 )
 (func $~lib/allocator/tlsf/allocate_memory (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/allocator/tlsf.ts:447:2
  (if
   ;;@ ~lib/allocator/tlsf.ts:447:6
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:446:2
    (tee_local $2
     ;;@ ~lib/allocator/tlsf.ts:446:13
     (get_global $~lib/allocator/tlsf/ROOT)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:447:13
   (block
    ;;@ ~lib/allocator/tlsf.ts:449:4
    (set_global $~lib/allocator/tlsf/ROOT
     ;;@ ~lib/allocator/tlsf.ts:449:11
     (tee_local $2
      ;;@ ~lib/allocator/tlsf.ts:448:4
      (tee_local $3
       ;;@ ~lib/allocator/tlsf.ts:448:21
       (i32.and
        (i32.add
         ;;@ ~lib/allocator/tlsf.ts:448:22
         (get_global $HEAP_BASE)
         ;;@ ~lib/allocator/tlsf.ts:448:34
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:450:4
    (call $~lib/allocator/tlsf/Root#set:tailRef
     (get_local $2)
     ;;@ ~lib/allocator/tlsf.ts:450:19
     (i32.const 0)
    )
    ;;@ ~lib/allocator/tlsf.ts:451:4
    (i32.store
     (get_local $2)
     ;;@ ~lib/allocator/tlsf.ts:451:17
     (i32.const 0)
    )
    (loop $continue|0
     (if
      ;;@ ~lib/allocator/tlsf.ts:452:28
      (i32.lt_u
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:452:33
       (i32.const 22)
      )
      (block
       ;;@ ~lib/allocator/tlsf.ts:453:11
       (call $~lib/allocator/tlsf/Root#setSLMap
        ;;@ ~lib/allocator/tlsf.ts:453:6
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:453:20
        (get_local $1)
        ;;@ ~lib/allocator/tlsf.ts:453:24
        (i32.const 0)
       )
       ;;@ ~lib/allocator/tlsf.ts:454:11
       (set_local $4
        ;;@ ~lib/allocator/tlsf.ts:454:25
        (i32.const 0)
       )
       (loop $continue|1
        (if
         ;;@ ~lib/allocator/tlsf.ts:454:28
         (i32.lt_u
          (get_local $4)
          ;;@ ~lib/allocator/tlsf.ts:454:33
          (i32.const 32)
         )
         (block
          ;;@ ~lib/allocator/tlsf.ts:455:13
          (call $~lib/allocator/tlsf/Root#setHead
           ;;@ ~lib/allocator/tlsf.ts:455:8
           (get_local $2)
           ;;@ ~lib/allocator/tlsf.ts:455:21
           (get_local $1)
           ;;@ ~lib/allocator/tlsf.ts:455:25
           (get_local $4)
           ;;@ ~lib/allocator/tlsf.ts:455:29
           (i32.const 0)
          )
          ;;@ ~lib/allocator/tlsf.ts:454:42
          (set_local $4
           (i32.add
            ;;@ ~lib/allocator/tlsf.ts:454:44
            (get_local $4)
            (i32.const 1)
           )
          )
          (br $continue|1)
         )
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:452:42
       (set_local $1
        (i32.add
         ;;@ ~lib/allocator/tlsf.ts:452:44
         (get_local $1)
         (i32.const 1)
        )
       )
       (br $continue|0)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:458:9
    (drop
     (call $~lib/allocator/tlsf/Root#addMemory
      ;;@ ~lib/allocator/tlsf.ts:458:4
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:458:19
      (i32.and
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:458:20
        (get_local $3)
        (i32.const 2923)
       )
       (i32.const -8)
      )
      ;;@ ~lib/allocator/tlsf.ts:458:66
      (i32.shl
       (current_memory)
       ;;@ ~lib/allocator/tlsf.ts:458:86
       (i32.const 16)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:462:2
  (set_local $1
   ;;@ ~lib/allocator/tlsf.ts:462:20
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:463:2
  (if
   (select
    ;;@ ~lib/allocator/tlsf.ts:463:14
    (i32.le_u
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:463:22
     (i32.const 1073741824)
    )
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:463:6
    (get_local $0)
   )
   ;;@ ~lib/allocator/tlsf.ts:463:38
   (block
    ;;@ ~lib/allocator/tlsf.ts:468:4
    (if
     ;;@ ~lib/allocator/tlsf.ts:468:8
     (i32.eqz
      ;;@ ~lib/allocator/tlsf.ts:467:4
      (tee_local $3
       ;;@ ~lib/allocator/tlsf.ts:467:21
       (call $~lib/allocator/tlsf/Root#search
        ;;@ ~lib/allocator/tlsf.ts:467:16
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:465:4
        (tee_local $0
         ;;@ ~lib/allocator/tlsf.ts:465:11
         (select
          (tee_local $3
           ;;@ ~lib/allocator/tlsf.ts:465:22
           (i32.and
            (i32.add
             ;;@ ~lib/allocator/tlsf.ts:465:23
             (get_local $0)
             ;;@ ~lib/allocator/tlsf.ts:465:30
             (i32.const 7)
            )
            (i32.const -8)
           )
          )
          (tee_local $1
           ;;@ ~lib/allocator/tlsf.ts:465:51
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
     ;;@ ~lib/allocator/tlsf.ts:468:16
     (block
      ;;@ ~lib/allocator/tlsf.ts:474:6
      (if
       ;;@ ~lib/allocator/tlsf.ts:474:10
       (i32.lt_s
        (grow_memory
         ;;@ ~lib/allocator/tlsf.ts:473:24
         (select
          (tee_local $3
           ;;@ ~lib/allocator/tlsf.ts:471:6
           (tee_local $1
            ;;@ ~lib/allocator/tlsf.ts:471:24
            (current_memory)
           )
          )
          (tee_local $5
           ;;@ ~lib/allocator/tlsf.ts:472:6
           (tee_local $4
            ;;@ ~lib/allocator/tlsf.ts:472:24
            (i32.shr_u
             (i32.and
              ;;@ ~lib/allocator/tlsf.ts:472:25
              (i32.add
               ;;@ ~lib/allocator/tlsf.ts:472:26
               (get_local $0)
               ;;@ ~lib/allocator/tlsf.ts:472:33
               (i32.const 65535)
              )
              (i32.const -65536)
             )
             ;;@ ~lib/allocator/tlsf.ts:472:56
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
        ;;@ ~lib/allocator/tlsf.ts:474:37
        (i32.const 0)
       )
       ;;@ ~lib/allocator/tlsf.ts:475:8
       (if
        ;;@ ~lib/allocator/tlsf.ts:475:12
        (i32.lt_s
         (grow_memory
          ;;@ ~lib/allocator/tlsf.ts:475:24
          (get_local $4)
         )
         ;;@ ~lib/allocator/tlsf.ts:475:39
         (i32.const 0)
        )
        ;;@ ~lib/allocator/tlsf.ts:476:10
        (unreachable)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:480:11
      (drop
       (call $~lib/allocator/tlsf/Root#addMemory
        ;;@ ~lib/allocator/tlsf.ts:480:6
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:480:21
        (i32.shl
         (get_local $1)
         ;;@ ~lib/allocator/tlsf.ts:480:43
         (i32.const 16)
        )
        ;;@ ~lib/allocator/tlsf.ts:480:47
        (i32.shl
         ;;@ ~lib/allocator/tlsf.ts:479:23
         (current_memory)
         ;;@ ~lib/allocator/tlsf.ts:480:68
         (i32.const 16)
        )
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:481:6
      (set_local $3
       ;;@ ~lib/allocator/tlsf.ts:481:14
       (call $~lib/allocator/tlsf/Root#search
        ;;@ ~lib/allocator/tlsf.ts:481:21
        (get_local $2)
        ;;@ ~lib/allocator/tlsf.ts:481:33
        (get_local $0)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:485:4
    (set_local $1
     ;;@ ~lib/allocator/tlsf.ts:485:16
     (call $~lib/allocator/tlsf/Root#use
      ;;@ ~lib/allocator/tlsf.ts:485:11
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:485:20
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:485:27
      (get_local $0)
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:488:9
  (get_local $1)
 )
 (func $~lib/allocator/tlsf/free_memory (; 13 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/allocator/tlsf.ts:494:2
  (if
   ;;@ ~lib/allocator/tlsf.ts:494:6
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:496:4
   (if
    ;;@ ~lib/allocator/tlsf.ts:495:4
    (tee_local $1
     ;;@ ~lib/allocator/tlsf.ts:495:15
     (get_global $~lib/allocator/tlsf/ROOT)
    )
    ;;@ ~lib/allocator/tlsf.ts:496:14
    (block
     ;;@ ~lib/allocator/tlsf.ts:500:6
     (i32.store
      ;;@ ~lib/allocator/tlsf.ts:497:6
      (tee_local $2
       ;;@ ~lib/allocator/tlsf.ts:497:18
       (i32.sub
        ;;@ ~lib/allocator/tlsf.ts:497:36
        (get_local $0)
        ;;@ ~lib/allocator/tlsf.ts:497:43
        (i32.const 8)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:500:19
      (i32.or
       ;;@ ~lib/allocator/tlsf.ts:498:22
       (i32.load
        (get_local $2)
       )
       ;;@ ~lib/allocator/tlsf.ts:500:31
       (i32.const 1)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:501:11
     (call $~lib/allocator/tlsf/Root#insert
      ;;@ ~lib/allocator/tlsf.ts:501:6
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:501:18
      (i32.sub
       ;;@ ~lib/allocator/tlsf.ts:501:36
       (get_local $0)
       ;;@ ~lib/allocator/tlsf.ts:501:43
       (i32.const 8)
      )
     )
    )
   )
  )
 )
)
