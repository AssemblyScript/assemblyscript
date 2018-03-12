(module
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (global "$(lib)/allocator/tlsf/ROOT" (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "allocate_memory" (func "$(lib)/allocator/tlsf/allocate_memory"))
 (export "free_memory" (func "$(lib)/allocator/tlsf/free_memory"))
 (export "memory" (memory $0))
 (func "$(lib)/allocator/tlsf/Root#set:tailRef" (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ (lib)/allocator/tlsf.ts:179:30
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:179:43
   (i32.const 2912)
   ;;@ (lib)/allocator/tlsf.ts:179:46
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setSLMap" (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:143:4
  (i32.store offset=4
   ;;@ (lib)/allocator/tlsf.ts:143:15
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:143:41
    (i32.shl
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:143:46
     (i32.const 2)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:143:49
   (get_local $2)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setHead" (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:167:4
  (i32.store offset=96
   ;;@ (lib)/allocator/tlsf.ts:168:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:168:32
    (i32.shl
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:168:33
      (i32.shl
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:168:38
       (i32.const 5)
      )
      ;;@ (lib)/allocator/tlsf.ts:168:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:168:61
     (i32.const 2)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:169:6
   (get_local $3)
  )
 )
 (func "$(lib)/allocator/tlsf/Block#get:right" (; 3 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:88:11
  (i32.add
   ;;@ (lib)/allocator/tlsf.ts:90:8
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:90:34
    (i32.const 8)
   )
   ;;@ (lib)/allocator/tlsf.ts:90:47
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:90:48
    (i32.load
     (get_local $0)
    )
    (i32.const -4)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/fls<usize>" (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:428:9
  (i32.sub
   (i32.const 31)
   ;;@ (lib)/allocator/tlsf.ts:428:15
   (i32.clz
    ;;@ (lib)/allocator/tlsf.ts:428:22
    (get_local $0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getHead" (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:158:11
  (i32.load offset=96
   ;;@ (lib)/allocator/tlsf.ts:159:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:159:32
    (i32.shl
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:159:33
      (i32.shl
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:159:38
       (i32.const 5)
      )
      ;;@ (lib)/allocator/tlsf.ts:159:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:159:61
     (i32.const 2)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getSLMap" (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:137:11
  (i32.load offset=4
   ;;@ (lib)/allocator/tlsf.ts:137:21
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:137:47
    (i32.shl
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:137:52
     (i32.const 2)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#remove" (; 7 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:262:4
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:262:8
    (i32.lt_u
     ;;@ (lib)/allocator/tlsf.ts:257:4
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:257:15
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:255:20
       (i32.load
        (get_local $1)
       )
       (i32.const -4)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:262:15
     (i32.const 256)
    )
    ;;@ (lib)/allocator/tlsf.ts:262:24
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:264:6
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:264:11
      (i32.div_u
       ;;@ (lib)/allocator/tlsf.ts:264:17
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:264:24
       (i32.const 8)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:263:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:265:11
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:267:6
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:267:11
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:267:17
       (i32.shr_u
        ;;@ (lib)/allocator/tlsf.ts:267:18
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:267:26
        (i32.sub
         ;;@ (lib)/allocator/tlsf.ts:266:6
         (tee_local $3
          ;;@ (lib)/allocator/tlsf.ts:266:11
          (call "$(lib)/allocator/tlsf/fls<usize>"
           ;;@ (lib)/allocator/tlsf.ts:266:22
           (get_local $2)
          )
         )
         ;;@ (lib)/allocator/tlsf.ts:267:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     (i32.sub
      ;;@ (lib)/allocator/tlsf.ts:268:6
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:268:12
      (i32.const 7)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:273:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:273:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:274:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:272:4
   (tee_local $5
    ;;@ (lib)/allocator/tlsf.ts:272:15
    (i32.load offset=4
     (get_local $1)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:274:14
   (i32.store offset=8
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:274:26
    (get_local $2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:275:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:275:8
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:275:14
   (i32.store offset=4
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:275:26
    (get_local $5)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:278:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:278:8
   (i32.eq
    (get_local $1)
    ;;@ (lib)/allocator/tlsf.ts:278:22
    (call "$(lib)/allocator/tlsf/Root#getHead"
     ;;@ (lib)/allocator/tlsf.ts:278:17
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:278:30
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:278:34
     (get_local $4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:278:39
   (block
    ;;@ (lib)/allocator/tlsf.ts:279:11
    (call "$(lib)/allocator/tlsf/Root#setHead"
     ;;@ (lib)/allocator/tlsf.ts:279:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:279:19
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:279:23
     (get_local $4)
     ;;@ (lib)/allocator/tlsf.ts:279:27
     (get_local $2)
    )
    ;;@ (lib)/allocator/tlsf.ts:282:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:282:10
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:282:11
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:282:17
     (block
      ;;@ (lib)/allocator/tlsf.ts:284:13
      (call "$(lib)/allocator/tlsf/Root#setSLMap"
       ;;@ (lib)/allocator/tlsf.ts:284:8
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:284:22
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:284:26
       (tee_local $1
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:283:25
         (call "$(lib)/allocator/tlsf/Root#getSLMap"
          ;;@ (lib)/allocator/tlsf.ts:283:20
          (get_local $0)
          ;;@ (lib)/allocator/tlsf.ts:283:34
          (get_local $3)
         )
         ;;@ (lib)/allocator/tlsf.ts:284:35
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:284:36
          (i32.shl
           ;;@ (lib)/allocator/tlsf.ts:284:37
           (i32.const 1)
           ;;@ (lib)/allocator/tlsf.ts:284:42
           (get_local $4)
          )
          (i32.const -1)
         )
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:287:8
      (if
       ;;@ (lib)/allocator/tlsf.ts:287:12
       (i32.eqz
        ;;@ (lib)/allocator/tlsf.ts:287:13
        (get_local $1)
       )
       ;;@ (lib)/allocator/tlsf.ts:287:20
       (i32.store
        (get_local $0)
        (i32.and
         (i32.load
          (get_local $0)
         )
         ;;@ (lib)/allocator/tlsf.ts:287:34
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:287:35
          (i32.shl
           ;;@ (lib)/allocator/tlsf.ts:287:36
           (i32.const 1)
           ;;@ (lib)/allocator/tlsf.ts:287:41
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
 (func "$(lib)/allocator/tlsf/Root#insert" (; 8 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ (lib)/allocator/tlsf.ts:188:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:188:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:199:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:199:8
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:196:4
    (tee_local $5
     ;;@ (lib)/allocator/tlsf.ts:196:20
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:195:4
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:195:23
       (call "$(lib)/allocator/tlsf/Block#get:right"
        ;;@ (lib)/allocator/tlsf.ts:195:30
        (get_local $1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:199:20
    (i32.const 1)
   )
   ;;@ (lib)/allocator/tlsf.ts:199:26
   (block
    ;;@ (lib)/allocator/tlsf.ts:200:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:200:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:200:18
     (get_local $4)
    )
    ;;@ (lib)/allocator/tlsf.ts:201:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:201:19
     (tee_local $2
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:201:20
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:201:33
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:201:46
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:201:47
         (get_local $5)
         (i32.const -4)
        )
        ;;@ (lib)/allocator/tlsf.ts:201:33
        (i32.const 8)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:203:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:203:18
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:202:6
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:202:14
       (call "$(lib)/allocator/tlsf/Block#get:right"
        (get_local $1)
       )
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:208:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:208:8
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:208:20
    (i32.const 2)
   )
   ;;@ (lib)/allocator/tlsf.ts:208:31
   (block
    ;;@ (lib)/allocator/tlsf.ts:210:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:210:21
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:209:6
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
    ;;@ (lib)/allocator/tlsf.ts:212:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:212:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:212:18
     (get_local $1)
    )
    ;;@ (lib)/allocator/tlsf.ts:213:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:213:18
     (tee_local $3
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:213:19
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:213:31
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:213:44
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:213:45
         (get_local $2)
         (i32.const -4)
        )
        ;;@ (lib)/allocator/tlsf.ts:213:31
        (i32.const 8)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:215:6
    (set_local $2
     ;;@ (lib)/allocator/tlsf.ts:215:18
     (get_local $3)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:219:4
  (i32.store
   (get_local $4)
   ;;@ (lib)/allocator/tlsf.ts:219:17
   (i32.or
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:219:29
    (i32.const 2)
   )
  )
  (i32.store
   (i32.sub
    (get_local $4)
    (i32.const 4)
   )
   (tee_local $3
    ;;@ (lib)/allocator/tlsf.ts:220:17
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:238:4
  (set_local $4
   ;;@ (lib)/allocator/tlsf.ts:238:20
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:238:15
    (get_local $0)
    (tee_local $2
     ;;@ (lib)/allocator/tlsf.ts:228:4
     (if (result i32)
      ;;@ (lib)/allocator/tlsf.ts:228:8
      (i32.lt_u
       ;;@ (lib)/allocator/tlsf.ts:223:4
       (tee_local $3
        ;;@ (lib)/allocator/tlsf.ts:223:11
        (i32.and
         (get_local $2)
         (i32.const -4)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:228:15
       (i32.const 256)
      )
      ;;@ (lib)/allocator/tlsf.ts:228:24
      (block (result i32)
       ;;@ (lib)/allocator/tlsf.ts:230:6
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:230:11
        (i32.div_u
         ;;@ (lib)/allocator/tlsf.ts:230:17
         (get_local $3)
         ;;@ (lib)/allocator/tlsf.ts:230:24
         (i32.const 8)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:229:11
       (i32.const 0)
      )
      ;;@ (lib)/allocator/tlsf.ts:231:11
      (block (result i32)
       ;;@ (lib)/allocator/tlsf.ts:233:6
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:233:11
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:233:17
         (i32.shr_u
          ;;@ (lib)/allocator/tlsf.ts:233:18
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:233:26
          (i32.sub
           ;;@ (lib)/allocator/tlsf.ts:232:6
           (tee_local $2
            ;;@ (lib)/allocator/tlsf.ts:232:11
            (call "$(lib)/allocator/tlsf/fls<usize>"
             ;;@ (lib)/allocator/tlsf.ts:232:22
             (get_local $3)
            )
           )
           ;;@ (lib)/allocator/tlsf.ts:233:32
           (i32.const 5)
          )
         )
         (i32.const 32)
        )
       )
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:234:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:234:12
        (i32.const 7)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:238:32
    (get_local $3)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:239:4
  (i32.store offset=4
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:239:17
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:240:4
  (i32.store offset=8
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:240:17
   (get_local $4)
  )
  ;;@ (lib)/allocator/tlsf.ts:241:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:241:8
   (get_local $4)
   ;;@ (lib)/allocator/tlsf.ts:241:14
   (i32.store offset=4
    (get_local $4)
    ;;@ (lib)/allocator/tlsf.ts:241:26
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:242:9
  (call "$(lib)/allocator/tlsf/Root#setHead"
   ;;@ (lib)/allocator/tlsf.ts:242:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:242:17
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:242:21
   (get_local $3)
   ;;@ (lib)/allocator/tlsf.ts:242:25
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:245:4
  (i32.store
   (get_local $0)
   (i32.or
    (i32.load
     (get_local $0)
    )
    ;;@ (lib)/allocator/tlsf.ts:245:18
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:245:19
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:245:24
     (get_local $2)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:246:9
  (call "$(lib)/allocator/tlsf/Root#setSLMap"
   ;;@ (lib)/allocator/tlsf.ts:246:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:246:18
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:246:22
   (i32.or
    ;;@ (lib)/allocator/tlsf.ts:246:27
    (call "$(lib)/allocator/tlsf/Root#getSLMap"
     ;;@ (lib)/allocator/tlsf.ts:246:22
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:246:36
     (get_local $2)
    )
    ;;@ (lib)/allocator/tlsf.ts:246:42
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:246:43
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:246:48
     (get_local $3)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#addMemory" (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/tlsf.ts:381:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:379:4
   (tee_local $3
    (i32.load
     (i32.const 2912)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:385:6
   (if
    ;;@ (lib)/allocator/tlsf.ts:385:10
    (i32.eq
     (i32.sub
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:385:18
      (i32.const 8)
     )
     ;;@ (lib)/allocator/tlsf.ts:385:32
     (get_local $3)
    )
    ;;@ (lib)/allocator/tlsf.ts:385:41
    (block
     ;;@ (lib)/allocator/tlsf.ts:386:8
     (set_local $1
      (i32.sub
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:386:17
       (i32.const 8)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:387:8
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:387:19
      (i32.load
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:396:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:396:8
   (i32.lt_u
    ;;@ (lib)/allocator/tlsf.ts:395:4
    (tee_local $3
     ;;@ (lib)/allocator/tlsf.ts:395:15
     (i32.sub
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:395:21
      (get_local $1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:396:45
    (i32.const 32)
   )
   ;;@ (lib)/allocator/tlsf.ts:397:13
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:403:4
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:402:4
   (tee_local $2
    ;;@ (lib)/allocator/tlsf.ts:402:15
    (get_local $1)
   )
   ;;@ (lib)/allocator/tlsf.ts:403:16
   (i32.or
    (i32.or
     ;;@ (lib)/allocator/tlsf.ts:401:19
     (i32.sub
      (get_local $3)
      (i32.const 16)
     )
     ;;@ (lib)/allocator/tlsf.ts:403:27
     (i32.const 1)
    )
    ;;@ (lib)/allocator/tlsf.ts:403:34
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:403:35
     (get_local $4)
     ;;@ (lib)/allocator/tlsf.ts:403:46
     (i32.const 2)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:404:4
  (i32.store offset=4
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:404:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:405:4
  (i32.store offset=8
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:405:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:409:4
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:408:4
   (tee_local $1
    ;;@ (lib)/allocator/tlsf.ts:408:15
    (i32.sub
     ;;@ (lib)/allocator/tlsf.ts:408:33
     (i32.add
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:408:41
      (get_local $3)
     )
     ;;@ (lib)/allocator/tlsf.ts:408:48
     (i32.const 8)
    )
   )
   (i32.const 2)
  )
  ;;@ (lib)/allocator/tlsf.ts:410:4
  (call "$(lib)/allocator/tlsf/Root#set:tailRef"
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:410:19
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:412:9
  (call "$(lib)/allocator/tlsf/Root#insert"
   ;;@ (lib)/allocator/tlsf.ts:412:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:412:16
   (get_local $2)
  )
  ;;@ (lib)/allocator/tlsf.ts:414:11
  (i32.const 1)
 )
 (func "$(lib)/allocator/tlsf/Root#search" (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:298:4
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:298:8
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:298:15
     (i32.const 256)
    )
    ;;@ (lib)/allocator/tlsf.ts:300:11
    (i32.div_u
     ;;@ (lib)/allocator/tlsf.ts:300:17
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:300:24
     (i32.const 8)
    )
    ;;@ (lib)/allocator/tlsf.ts:301:11
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:304:6
     (set_local $1
      ;;@ (lib)/allocator/tlsf.ts:304:11
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:304:17
       (i32.shr_u
        ;;@ (lib)/allocator/tlsf.ts:304:18
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:304:26
        (i32.sub
         ;;@ (lib)/allocator/tlsf.ts:303:6
         (tee_local $2
          ;;@ (lib)/allocator/tlsf.ts:303:11
          (call "$(lib)/allocator/tlsf/fls<usize>"
           ;;@ (lib)/allocator/tlsf.ts:303:22
           (get_local $1)
          )
         )
         ;;@ (lib)/allocator/tlsf.ts:304:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:305:6
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:305:12
       (i32.const 7)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:307:6
     (if (result i32)
      ;;@ (lib)/allocator/tlsf.ts:307:10
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:307:15
       (i32.const 31)
      )
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:307:30
       (get_local $1)
       (i32.const 1)
      )
      ;;@ (lib)/allocator/tlsf.ts:308:11
      (block (result i32)
       (set_local $2
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:308:13
         (get_local $2)
         (i32.const 1)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:308:22
       (i32.const 0)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:314:4
  (if (result i32)
   ;;@ (lib)/allocator/tlsf.ts:312:4
   (tee_local $1
    ;;@ (lib)/allocator/tlsf.ts:312:16
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:312:21
     (call "$(lib)/allocator/tlsf/Root#getSLMap"
      ;;@ (lib)/allocator/tlsf.ts:312:16
      (get_local $0)
      ;;@ (lib)/allocator/tlsf.ts:312:30
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:312:36
     (i32.shl
      (i32.const -1)
      ;;@ (lib)/allocator/tlsf.ts:312:43
      (get_local $1)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:325:18
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:325:13
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:325:26
    (get_local $2)
    (i32.ctz
     (get_local $1)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:317:6
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:316:6
    (tee_local $1
     ;;@ (lib)/allocator/tlsf.ts:316:18
     (i32.and
      (i32.load
       (get_local $0)
      )
      ;;@ (lib)/allocator/tlsf.ts:316:31
      (i32.shl
       (i32.const -1)
       ;;@ (lib)/allocator/tlsf.ts:316:38
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:316:39
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:316:44
        (i32.const 1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:319:13
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:321:8
     (set_local $1
      ;;@ (lib)/allocator/tlsf.ts:321:16
      (call "$(lib)/allocator/tlsf/Root#getSLMap"
       ;;@ (lib)/allocator/tlsf.ts:321:23
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:320:8
       (tee_local $2
        (i32.ctz
         (get_local $1)
        )
       )
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:322:20
     (call "$(lib)/allocator/tlsf/Root#getHead"
      ;;@ (lib)/allocator/tlsf.ts:322:15
      (get_local $0)
      ;;@ (lib)/allocator/tlsf.ts:322:28
      (get_local $2)
      (i32.ctz
       (get_local $1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:318:15
    (i32.const 0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#use" (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/tlsf.ts:345:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:345:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:350:9
  (call "$(lib)/allocator/tlsf/Root#remove"
   ;;@ (lib)/allocator/tlsf.ts:350:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:350:16
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:354:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:354:8
   (i32.ge_u
    ;;@ (lib)/allocator/tlsf.ts:353:4
    (tee_local $4
     ;;@ (lib)/allocator/tlsf.ts:353:20
     (i32.sub
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:353:21
       (get_local $3)
       (i32.const -4)
      )
      ;;@ (lib)/allocator/tlsf.ts:353:42
      (get_local $2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:354:34
    (i32.const 24)
   )
   ;;@ (lib)/allocator/tlsf.ts:354:50
   (block
    ;;@ (lib)/allocator/tlsf.ts:355:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:355:19
     (i32.or
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:355:26
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:355:27
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:355:39
       (i32.const 2)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:360:6
    (i32.store
     ;;@ (lib)/allocator/tlsf.ts:357:6
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:357:18
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:358:8
       (i32.add
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:358:35
        (i32.const 8)
       )
       ;;@ (lib)/allocator/tlsf.ts:358:48
       (get_local $2)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:360:19
     (i32.or
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:360:20
       (get_local $4)
       ;;@ (lib)/allocator/tlsf.ts:360:32
       (i32.const 8)
      )
      ;;@ (lib)/allocator/tlsf.ts:360:46
      (i32.const 1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:361:11
    (call "$(lib)/allocator/tlsf/Root#insert"
     ;;@ (lib)/allocator/tlsf.ts:361:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:361:18
     (get_local $2)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:364:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:365:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:365:19
     (i32.and
      (get_local $3)
      (i32.const -2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:367:6
    (i32.store
     ;;@ (lib)/allocator/tlsf.ts:366:6
     (tee_local $0
      ;;@ (lib)/allocator/tlsf.ts:366:25
      (call "$(lib)/allocator/tlsf/Block#get:right"
       ;;@ (lib)/allocator/tlsf.ts:366:32
       (get_local $1)
      )
     )
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:367:6
      (i32.load
       (get_local $0)
      )
      (i32.const -3)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:370:11
  (i32.add
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:370:38
   (i32.const 8)
  )
 )
 (func "$(lib)/allocator/tlsf/allocate_memory" (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ (lib)/allocator/tlsf.ts:442:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:442:6
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:441:2
    (tee_local $2
     ;;@ (lib)/allocator/tlsf.ts:441:13
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:442:13
   (block
    ;;@ (lib)/allocator/tlsf.ts:444:4
    (set_global "$(lib)/allocator/tlsf/ROOT"
     ;;@ (lib)/allocator/tlsf.ts:444:11
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:443:4
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:443:21
       (i32.and
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:443:22
         (get_global $HEAP_BASE)
         ;;@ (lib)/allocator/tlsf.ts:443:34
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:445:4
    (call "$(lib)/allocator/tlsf/Root#set:tailRef"
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:445:19
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:446:4
    (i32.store
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:446:17
     (i32.const 0)
    )
    (loop $continue|0
     (if
      ;;@ (lib)/allocator/tlsf.ts:447:28
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:447:33
       (i32.const 22)
      )
      (block
       ;;@ (lib)/allocator/tlsf.ts:448:11
       (call "$(lib)/allocator/tlsf/Root#setSLMap"
        ;;@ (lib)/allocator/tlsf.ts:448:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:448:20
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:448:24
        (i32.const 0)
       )
       ;;@ (lib)/allocator/tlsf.ts:449:11
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:449:25
        (i32.const 0)
       )
       (loop $continue|1
        (if
         ;;@ (lib)/allocator/tlsf.ts:449:28
         (i32.lt_u
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:449:33
          (i32.const 32)
         )
         (block
          ;;@ (lib)/allocator/tlsf.ts:450:13
          (call "$(lib)/allocator/tlsf/Root#setHead"
           ;;@ (lib)/allocator/tlsf.ts:450:8
           (get_local $2)
           ;;@ (lib)/allocator/tlsf.ts:450:21
           (get_local $1)
           ;;@ (lib)/allocator/tlsf.ts:450:25
           (get_local $3)
           ;;@ (lib)/allocator/tlsf.ts:450:29
           (i32.const 0)
          )
          ;;@ (lib)/allocator/tlsf.ts:449:42
          (set_local $3
           (i32.add
            ;;@ (lib)/allocator/tlsf.ts:449:44
            (get_local $3)
            (i32.const 1)
           )
          )
          (br $continue|1)
         )
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:447:42
       (set_local $1
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:447:44
         (get_local $1)
         (i32.const 1)
        )
       )
       (br $continue|0)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:453:9
    (drop
     (call "$(lib)/allocator/tlsf/Root#addMemory"
      ;;@ (lib)/allocator/tlsf.ts:453:4
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:453:19
      (i32.and
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:453:20
        (get_local $4)
        (i32.const 2923)
       )
       (i32.const -8)
      )
      ;;@ (lib)/allocator/tlsf.ts:453:66
      (i32.shl
       (current_memory)
       ;;@ (lib)/allocator/tlsf.ts:453:86
       (i32.const 16)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:457:2
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:457:20
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:458:2
  (if
   (select
    ;;@ (lib)/allocator/tlsf.ts:458:14
    (i32.lt_u
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:458:21
     (i32.const 1073741824)
    )
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:458:6
    (get_local $0)
   )
   ;;@ (lib)/allocator/tlsf.ts:458:37
   (block
    ;;@ (lib)/allocator/tlsf.ts:462:4
    (if
     ;;@ (lib)/allocator/tlsf.ts:462:8
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:461:4
      (tee_local $1
       ;;@ (lib)/allocator/tlsf.ts:461:21
       (call "$(lib)/allocator/tlsf/Root#search"
        ;;@ (lib)/allocator/tlsf.ts:461:16
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:459:4
        (tee_local $0
         ;;@ (lib)/allocator/tlsf.ts:459:11
         (select
          (tee_local $1
           ;;@ (lib)/allocator/tlsf.ts:459:22
           (i32.and
            (i32.add
             ;;@ (lib)/allocator/tlsf.ts:459:23
             (get_local $0)
             ;;@ (lib)/allocator/tlsf.ts:459:30
             (i32.const 7)
            )
            (i32.const -8)
           )
          )
          (tee_local $3
           ;;@ (lib)/allocator/tlsf.ts:459:51
           (i32.const 16)
          )
          (i32.gt_u
           (get_local $1)
           (get_local $3)
          )
         )
        )
       )
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:462:16
     (block
      ;;@ (lib)/allocator/tlsf.ts:468:6
      (if
       ;;@ (lib)/allocator/tlsf.ts:468:10
       (i32.lt_s
        (grow_memory
         ;;@ (lib)/allocator/tlsf.ts:467:24
         (select
          (tee_local $1
           ;;@ (lib)/allocator/tlsf.ts:465:6
           (tee_local $4
            ;;@ (lib)/allocator/tlsf.ts:465:24
            (current_memory)
           )
          )
          (tee_local $3
           ;;@ (lib)/allocator/tlsf.ts:466:6
           (tee_local $5
            ;;@ (lib)/allocator/tlsf.ts:466:24
            (i32.shr_u
             (i32.and
              ;;@ (lib)/allocator/tlsf.ts:466:25
              (i32.add
               ;;@ (lib)/allocator/tlsf.ts:466:26
               (get_local $0)
               ;;@ (lib)/allocator/tlsf.ts:466:33
               (i32.const 65535)
              )
              (i32.const -65536)
             )
             ;;@ (lib)/allocator/tlsf.ts:466:56
             (i32.const 16)
            )
           )
          )
          (i32.gt_s
           (get_local $1)
           (get_local $3)
          )
         )
        )
        ;;@ (lib)/allocator/tlsf.ts:468:37
        (i32.const 0)
       )
       ;;@ (lib)/allocator/tlsf.ts:469:8
       (if
        ;;@ (lib)/allocator/tlsf.ts:469:12
        (i32.lt_s
         (grow_memory
          ;;@ (lib)/allocator/tlsf.ts:469:24
          (get_local $5)
         )
         ;;@ (lib)/allocator/tlsf.ts:469:39
         (i32.const 0)
        )
        ;;@ (lib)/allocator/tlsf.ts:470:10
        (unreachable)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:474:11
      (drop
       (call "$(lib)/allocator/tlsf/Root#addMemory"
        ;;@ (lib)/allocator/tlsf.ts:474:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:474:21
        (i32.shl
         (get_local $4)
         ;;@ (lib)/allocator/tlsf.ts:474:43
         (i32.const 16)
        )
        ;;@ (lib)/allocator/tlsf.ts:474:47
        (i32.shl
         ;;@ (lib)/allocator/tlsf.ts:473:23
         (current_memory)
         ;;@ (lib)/allocator/tlsf.ts:474:68
         (i32.const 16)
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:475:6
      (set_local $1
       ;;@ (lib)/allocator/tlsf.ts:475:14
       (call "$(lib)/allocator/tlsf/Root#search"
        ;;@ (lib)/allocator/tlsf.ts:475:21
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:475:33
        (get_local $0)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:479:4
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:479:16
     (call "$(lib)/allocator/tlsf/Root#use"
      ;;@ (lib)/allocator/tlsf.ts:479:11
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:479:20
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:479:27
      (get_local $0)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:482:9
  (get_local $1)
 )
 (func "$(lib)/allocator/tlsf/free_memory" (; 13 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:488:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:488:6
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:490:4
   (if
    ;;@ (lib)/allocator/tlsf.ts:489:4
    (tee_local $1
     ;;@ (lib)/allocator/tlsf.ts:489:15
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
    ;;@ (lib)/allocator/tlsf.ts:490:14
    (block
     ;;@ (lib)/allocator/tlsf.ts:494:6
     (i32.store
      ;;@ (lib)/allocator/tlsf.ts:491:6
      (tee_local $2
       ;;@ (lib)/allocator/tlsf.ts:491:18
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:491:36
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:491:43
        (i32.const 8)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:494:19
      (i32.or
       ;;@ (lib)/allocator/tlsf.ts:492:22
       (i32.load
        (get_local $2)
       )
       ;;@ (lib)/allocator/tlsf.ts:494:31
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:495:11
     (call "$(lib)/allocator/tlsf/Root#insert"
      ;;@ (lib)/allocator/tlsf.ts:495:6
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:495:18
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:495:36
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:495:43
       (i32.const 8)
      )
     )
    )
   )
  )
 )
)
