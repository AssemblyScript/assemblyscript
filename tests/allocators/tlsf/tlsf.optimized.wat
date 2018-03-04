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
  ;;@ (lib)/allocator/tlsf.ts:177:30
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:177:43
   (i32.const 2912)
   ;;@ (lib)/allocator/tlsf.ts:177:46
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setSLMap" (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:141:4
  (i32.store offset=4
   ;;@ (lib)/allocator/tlsf.ts:141:15
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:141:41
    (i32.shl
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:141:46
     (i32.const 2)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:141:49
   (get_local $2)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setHead" (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:165:4
  (i32.store offset=96
   ;;@ (lib)/allocator/tlsf.ts:166:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:166:32
    (i32.shl
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:166:33
      (i32.shl
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:166:38
       (i32.const 5)
      )
      ;;@ (lib)/allocator/tlsf.ts:166:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:166:61
     (i32.const 2)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:167:6
   (get_local $3)
  )
 )
 (func "$(lib)/allocator/tlsf/Block#get:right" (; 3 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:86:11
  (i32.add
   ;;@ (lib)/allocator/tlsf.ts:88:8
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:88:34
    (i32.const 8)
   )
   ;;@ (lib)/allocator/tlsf.ts:88:47
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:88:48
    (i32.load
     (get_local $0)
    )
    (i32.const -4)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/fls<usize>" (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:426:9
  (i32.sub
   (i32.const 31)
   ;;@ (lib)/allocator/tlsf.ts:426:15
   (i32.clz
    ;;@ (lib)/allocator/tlsf.ts:426:22
    (get_local $0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getHead" (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:156:11
  (i32.load offset=96
   ;;@ (lib)/allocator/tlsf.ts:157:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:157:32
    (i32.shl
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:157:33
      (i32.shl
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:157:38
       (i32.const 5)
      )
      ;;@ (lib)/allocator/tlsf.ts:157:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:157:61
     (i32.const 2)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getSLMap" (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:135:11
  (i32.load offset=4
   ;;@ (lib)/allocator/tlsf.ts:135:21
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:135:47
    (i32.shl
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:135:52
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
   ;;@ (lib)/allocator/tlsf.ts:260:4
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:260:8
    (i32.lt_u
     ;;@ (lib)/allocator/tlsf.ts:255:4
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:255:15
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:253:20
       (i32.load
        (get_local $1)
       )
       (i32.const -4)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:260:15
     (i32.const 256)
    )
    ;;@ (lib)/allocator/tlsf.ts:260:24
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:262:6
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:262:11
      (i32.div_u
       ;;@ (lib)/allocator/tlsf.ts:262:17
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:262:24
       (i32.const 8)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:261:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:263:11
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:265:6
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:265:11
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:265:17
       (i32.shr_u
        ;;@ (lib)/allocator/tlsf.ts:265:18
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:265:26
        (i32.sub
         ;;@ (lib)/allocator/tlsf.ts:264:6
         (tee_local $3
          ;;@ (lib)/allocator/tlsf.ts:264:11
          (call "$(lib)/allocator/tlsf/fls<usize>"
           ;;@ (lib)/allocator/tlsf.ts:264:22
           (get_local $2)
          )
         )
         ;;@ (lib)/allocator/tlsf.ts:265:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     (i32.sub
      ;;@ (lib)/allocator/tlsf.ts:266:6
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:266:12
      (i32.const 7)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:271:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:271:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:272:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:270:4
   (tee_local $5
    ;;@ (lib)/allocator/tlsf.ts:270:15
    (i32.load offset=4
     (get_local $1)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:272:14
   (i32.store offset=8
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:272:26
    (get_local $2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:273:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:273:8
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:273:14
   (i32.store offset=4
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:273:26
    (get_local $5)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:276:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:276:8
   (i32.eq
    (get_local $1)
    ;;@ (lib)/allocator/tlsf.ts:276:22
    (call "$(lib)/allocator/tlsf/Root#getHead"
     ;;@ (lib)/allocator/tlsf.ts:276:17
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:276:30
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:276:34
     (get_local $4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:276:39
   (block
    ;;@ (lib)/allocator/tlsf.ts:277:11
    (call "$(lib)/allocator/tlsf/Root#setHead"
     ;;@ (lib)/allocator/tlsf.ts:277:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:277:19
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:277:23
     (get_local $4)
     ;;@ (lib)/allocator/tlsf.ts:277:27
     (get_local $2)
    )
    ;;@ (lib)/allocator/tlsf.ts:280:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:280:10
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:280:11
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:280:17
     (block
      ;;@ (lib)/allocator/tlsf.ts:282:13
      (call "$(lib)/allocator/tlsf/Root#setSLMap"
       ;;@ (lib)/allocator/tlsf.ts:282:8
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:282:22
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:282:26
       (tee_local $1
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:281:25
         (call "$(lib)/allocator/tlsf/Root#getSLMap"
          ;;@ (lib)/allocator/tlsf.ts:281:20
          (get_local $0)
          ;;@ (lib)/allocator/tlsf.ts:281:34
          (get_local $3)
         )
         ;;@ (lib)/allocator/tlsf.ts:282:35
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:282:36
          (i32.shl
           ;;@ (lib)/allocator/tlsf.ts:282:37
           (i32.const 1)
           ;;@ (lib)/allocator/tlsf.ts:282:42
           (get_local $4)
          )
          (i32.const -1)
         )
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:285:8
      (if
       ;;@ (lib)/allocator/tlsf.ts:285:12
       (i32.eqz
        ;;@ (lib)/allocator/tlsf.ts:285:13
        (get_local $1)
       )
       ;;@ (lib)/allocator/tlsf.ts:285:20
       (i32.store
        (get_local $0)
        (i32.and
         (i32.load
          (get_local $0)
         )
         ;;@ (lib)/allocator/tlsf.ts:285:34
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:285:35
          (i32.shl
           ;;@ (lib)/allocator/tlsf.ts:285:36
           (i32.const 1)
           ;;@ (lib)/allocator/tlsf.ts:285:41
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
  ;;@ (lib)/allocator/tlsf.ts:186:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:186:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:197:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:197:8
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:194:4
    (tee_local $5
     ;;@ (lib)/allocator/tlsf.ts:194:20
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:193:4
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:193:23
       (call "$(lib)/allocator/tlsf/Block#get:right"
        ;;@ (lib)/allocator/tlsf.ts:193:30
        (get_local $1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:197:20
    (i32.const 1)
   )
   ;;@ (lib)/allocator/tlsf.ts:197:26
   (block
    ;;@ (lib)/allocator/tlsf.ts:198:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:198:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:198:18
     (get_local $4)
    )
    ;;@ (lib)/allocator/tlsf.ts:199:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:199:19
     (tee_local $2
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:199:20
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:199:33
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:199:46
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:199:47
         (get_local $5)
         (i32.const -4)
        )
        ;;@ (lib)/allocator/tlsf.ts:199:33
        (i32.const 8)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:201:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:201:18
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:200:6
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:200:14
       (call "$(lib)/allocator/tlsf/Block#get:right"
        (get_local $1)
       )
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:206:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:206:8
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:206:20
    (i32.const 2)
   )
   ;;@ (lib)/allocator/tlsf.ts:206:31
   (block
    ;;@ (lib)/allocator/tlsf.ts:208:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:208:21
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:207:6
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
    ;;@ (lib)/allocator/tlsf.ts:210:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:210:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:210:18
     (get_local $1)
    )
    ;;@ (lib)/allocator/tlsf.ts:211:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:211:18
     (tee_local $3
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:211:19
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:211:31
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:211:44
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:211:45
         (get_local $2)
         (i32.const -4)
        )
        ;;@ (lib)/allocator/tlsf.ts:211:31
        (i32.const 8)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:213:6
    (set_local $2
     ;;@ (lib)/allocator/tlsf.ts:213:18
     (get_local $3)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:217:4
  (i32.store
   (get_local $4)
   ;;@ (lib)/allocator/tlsf.ts:217:17
   (i32.or
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:217:29
    (i32.const 2)
   )
  )
  (i32.store
   (i32.sub
    (get_local $4)
    (i32.const 4)
   )
   (tee_local $3
    ;;@ (lib)/allocator/tlsf.ts:218:17
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:236:4
  (set_local $4
   ;;@ (lib)/allocator/tlsf.ts:236:20
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:236:15
    (get_local $0)
    (tee_local $2
     ;;@ (lib)/allocator/tlsf.ts:226:4
     (if (result i32)
      ;;@ (lib)/allocator/tlsf.ts:226:8
      (i32.lt_u
       ;;@ (lib)/allocator/tlsf.ts:221:4
       (tee_local $3
        ;;@ (lib)/allocator/tlsf.ts:221:11
        (i32.and
         (get_local $2)
         (i32.const -4)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:226:15
       (i32.const 256)
      )
      ;;@ (lib)/allocator/tlsf.ts:226:24
      (block (result i32)
       ;;@ (lib)/allocator/tlsf.ts:228:6
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:228:11
        (i32.div_u
         ;;@ (lib)/allocator/tlsf.ts:228:17
         (get_local $3)
         ;;@ (lib)/allocator/tlsf.ts:228:24
         (i32.const 8)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:227:11
       (i32.const 0)
      )
      ;;@ (lib)/allocator/tlsf.ts:229:11
      (block (result i32)
       ;;@ (lib)/allocator/tlsf.ts:231:6
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:231:11
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:231:17
         (i32.shr_u
          ;;@ (lib)/allocator/tlsf.ts:231:18
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:231:26
          (i32.sub
           ;;@ (lib)/allocator/tlsf.ts:230:6
           (tee_local $2
            ;;@ (lib)/allocator/tlsf.ts:230:11
            (call "$(lib)/allocator/tlsf/fls<usize>"
             ;;@ (lib)/allocator/tlsf.ts:230:22
             (get_local $3)
            )
           )
           ;;@ (lib)/allocator/tlsf.ts:231:32
           (i32.const 5)
          )
         )
         (i32.const 32)
        )
       )
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:232:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:232:12
        (i32.const 7)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:236:32
    (get_local $3)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:237:4
  (i32.store offset=4
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:237:17
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:238:4
  (i32.store offset=8
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:238:17
   (get_local $4)
  )
  ;;@ (lib)/allocator/tlsf.ts:239:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:239:8
   (get_local $4)
   ;;@ (lib)/allocator/tlsf.ts:239:14
   (i32.store offset=4
    (get_local $4)
    ;;@ (lib)/allocator/tlsf.ts:239:26
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:240:9
  (call "$(lib)/allocator/tlsf/Root#setHead"
   ;;@ (lib)/allocator/tlsf.ts:240:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:240:17
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:240:21
   (get_local $3)
   ;;@ (lib)/allocator/tlsf.ts:240:25
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:243:4
  (i32.store
   (get_local $0)
   (i32.or
    (i32.load
     (get_local $0)
    )
    ;;@ (lib)/allocator/tlsf.ts:243:18
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:243:19
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:243:24
     (get_local $2)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:244:9
  (call "$(lib)/allocator/tlsf/Root#setSLMap"
   ;;@ (lib)/allocator/tlsf.ts:244:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:244:18
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:244:22
   (i32.or
    ;;@ (lib)/allocator/tlsf.ts:244:27
    (call "$(lib)/allocator/tlsf/Root#getSLMap"
     ;;@ (lib)/allocator/tlsf.ts:244:22
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:244:36
     (get_local $2)
    )
    ;;@ (lib)/allocator/tlsf.ts:244:42
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:244:43
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:244:48
     (get_local $3)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#addMemory" (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/tlsf.ts:379:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:377:4
   (tee_local $3
    (i32.load
     (i32.const 2912)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:383:6
   (if
    ;;@ (lib)/allocator/tlsf.ts:383:10
    (i32.eq
     (i32.sub
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:383:18
      (i32.const 8)
     )
     ;;@ (lib)/allocator/tlsf.ts:383:32
     (get_local $3)
    )
    ;;@ (lib)/allocator/tlsf.ts:383:41
    (block
     ;;@ (lib)/allocator/tlsf.ts:384:8
     (set_local $1
      (i32.sub
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:384:17
       (i32.const 8)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:385:8
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:385:19
      (i32.load
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:394:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:394:8
   (i32.lt_u
    ;;@ (lib)/allocator/tlsf.ts:393:4
    (tee_local $3
     ;;@ (lib)/allocator/tlsf.ts:393:15
     (i32.sub
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:393:21
      (get_local $1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:394:45
    (i32.const 32)
   )
   ;;@ (lib)/allocator/tlsf.ts:395:13
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:401:4
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:400:4
   (tee_local $2
    ;;@ (lib)/allocator/tlsf.ts:400:15
    (get_local $1)
   )
   ;;@ (lib)/allocator/tlsf.ts:401:16
   (i32.or
    (i32.or
     ;;@ (lib)/allocator/tlsf.ts:399:19
     (i32.sub
      (get_local $3)
      (i32.const 16)
     )
     ;;@ (lib)/allocator/tlsf.ts:401:27
     (i32.const 1)
    )
    ;;@ (lib)/allocator/tlsf.ts:401:34
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:401:35
     (get_local $4)
     ;;@ (lib)/allocator/tlsf.ts:401:46
     (i32.const 2)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:402:4
  (i32.store offset=4
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:402:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:403:4
  (i32.store offset=8
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:403:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:407:4
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:406:4
   (tee_local $1
    ;;@ (lib)/allocator/tlsf.ts:406:15
    (i32.sub
     ;;@ (lib)/allocator/tlsf.ts:406:33
     (i32.add
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:406:41
      (get_local $3)
     )
     ;;@ (lib)/allocator/tlsf.ts:406:48
     (i32.const 8)
    )
   )
   (i32.const 2)
  )
  ;;@ (lib)/allocator/tlsf.ts:408:4
  (call "$(lib)/allocator/tlsf/Root#set:tailRef"
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:408:19
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:410:9
  (call "$(lib)/allocator/tlsf/Root#insert"
   ;;@ (lib)/allocator/tlsf.ts:410:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:410:16
   (get_local $2)
  )
  ;;@ (lib)/allocator/tlsf.ts:412:11
  (i32.const 1)
 )
 (func "$(lib)/allocator/tlsf/Root#search" (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:296:4
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:296:8
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:296:15
     (i32.const 256)
    )
    ;;@ (lib)/allocator/tlsf.ts:298:11
    (i32.div_u
     ;;@ (lib)/allocator/tlsf.ts:298:17
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:298:24
     (i32.const 8)
    )
    ;;@ (lib)/allocator/tlsf.ts:299:11
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:302:6
     (set_local $1
      ;;@ (lib)/allocator/tlsf.ts:302:11
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:302:17
       (i32.shr_u
        ;;@ (lib)/allocator/tlsf.ts:302:18
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:302:26
        (i32.sub
         ;;@ (lib)/allocator/tlsf.ts:301:6
         (tee_local $2
          ;;@ (lib)/allocator/tlsf.ts:301:11
          (call "$(lib)/allocator/tlsf/fls<usize>"
           ;;@ (lib)/allocator/tlsf.ts:301:22
           (get_local $1)
          )
         )
         ;;@ (lib)/allocator/tlsf.ts:302:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:303:6
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:303:12
       (i32.const 7)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:305:6
     (if (result i32)
      ;;@ (lib)/allocator/tlsf.ts:305:10
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:305:15
       (i32.const 31)
      )
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:305:30
       (get_local $1)
       (i32.const 1)
      )
      ;;@ (lib)/allocator/tlsf.ts:306:11
      (block (result i32)
       (set_local $2
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:306:13
         (get_local $2)
         (i32.const 1)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:306:22
       (i32.const 0)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:312:4
  (if (result i32)
   ;;@ (lib)/allocator/tlsf.ts:310:4
   (tee_local $1
    ;;@ (lib)/allocator/tlsf.ts:310:16
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:310:21
     (call "$(lib)/allocator/tlsf/Root#getSLMap"
      ;;@ (lib)/allocator/tlsf.ts:310:16
      (get_local $0)
      ;;@ (lib)/allocator/tlsf.ts:310:30
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:310:36
     (i32.shl
      (i32.const -1)
      ;;@ (lib)/allocator/tlsf.ts:310:43
      (get_local $1)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:323:18
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:323:13
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:323:26
    (get_local $2)
    (i32.ctz
     (get_local $1)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:315:6
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:314:6
    (tee_local $1
     ;;@ (lib)/allocator/tlsf.ts:314:18
     (i32.and
      (i32.load
       (get_local $0)
      )
      ;;@ (lib)/allocator/tlsf.ts:314:31
      (i32.shl
       (i32.const -1)
       ;;@ (lib)/allocator/tlsf.ts:314:38
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:314:39
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:314:44
        (i32.const 1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:317:13
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:319:8
     (set_local $1
      ;;@ (lib)/allocator/tlsf.ts:319:16
      (call "$(lib)/allocator/tlsf/Root#getSLMap"
       ;;@ (lib)/allocator/tlsf.ts:319:23
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:318:8
       (tee_local $2
        (i32.ctz
         (get_local $1)
        )
       )
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:320:20
     (call "$(lib)/allocator/tlsf/Root#getHead"
      ;;@ (lib)/allocator/tlsf.ts:320:15
      (get_local $0)
      ;;@ (lib)/allocator/tlsf.ts:320:28
      (get_local $2)
      (i32.ctz
       (get_local $1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:316:15
    (i32.const 0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#use" (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/tlsf.ts:343:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:343:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:348:9
  (call "$(lib)/allocator/tlsf/Root#remove"
   ;;@ (lib)/allocator/tlsf.ts:348:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:348:16
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:352:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:352:8
   (i32.ge_u
    ;;@ (lib)/allocator/tlsf.ts:351:4
    (tee_local $4
     ;;@ (lib)/allocator/tlsf.ts:351:20
     (i32.sub
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:351:21
       (get_local $3)
       (i32.const -4)
      )
      ;;@ (lib)/allocator/tlsf.ts:351:42
      (get_local $2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:352:34
    (i32.const 24)
   )
   ;;@ (lib)/allocator/tlsf.ts:352:50
   (block
    ;;@ (lib)/allocator/tlsf.ts:353:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:353:19
     (i32.or
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:353:26
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:353:27
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:353:39
       (i32.const 2)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:358:6
    (i32.store
     ;;@ (lib)/allocator/tlsf.ts:355:6
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:355:18
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:356:8
       (i32.add
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:356:35
        (i32.const 8)
       )
       ;;@ (lib)/allocator/tlsf.ts:356:48
       (get_local $2)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:358:19
     (i32.or
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:358:20
       (get_local $4)
       ;;@ (lib)/allocator/tlsf.ts:358:32
       (i32.const 8)
      )
      ;;@ (lib)/allocator/tlsf.ts:358:46
      (i32.const 1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:359:11
    (call "$(lib)/allocator/tlsf/Root#insert"
     ;;@ (lib)/allocator/tlsf.ts:359:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:359:18
     (get_local $2)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:362:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:363:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:363:19
     (i32.and
      (get_local $3)
      (i32.const -2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:365:6
    (i32.store
     ;;@ (lib)/allocator/tlsf.ts:364:6
     (tee_local $0
      ;;@ (lib)/allocator/tlsf.ts:364:25
      (call "$(lib)/allocator/tlsf/Block#get:right"
       ;;@ (lib)/allocator/tlsf.ts:364:32
       (get_local $1)
      )
     )
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:365:6
      (i32.load
       (get_local $0)
      )
      (i32.const -3)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:368:11
  (i32.add
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:368:38
   (i32.const 8)
  )
 )
 (func "$(lib)/allocator/tlsf/allocate_memory" (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ (lib)/allocator/tlsf.ts:440:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:440:6
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:439:2
    (tee_local $2
     ;;@ (lib)/allocator/tlsf.ts:439:13
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:440:13
   (block
    ;;@ (lib)/allocator/tlsf.ts:442:4
    (set_global "$(lib)/allocator/tlsf/ROOT"
     ;;@ (lib)/allocator/tlsf.ts:442:11
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:441:4
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:441:21
       (i32.and
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:441:22
         (get_global $HEAP_BASE)
         ;;@ (lib)/allocator/tlsf.ts:441:34
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:443:4
    (call "$(lib)/allocator/tlsf/Root#set:tailRef"
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:443:19
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:444:4
    (i32.store
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:444:17
     (i32.const 0)
    )
    (loop $continue|0
     (if
      ;;@ (lib)/allocator/tlsf.ts:445:28
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:445:33
       (i32.const 22)
      )
      (block
       ;;@ (lib)/allocator/tlsf.ts:446:11
       (call "$(lib)/allocator/tlsf/Root#setSLMap"
        ;;@ (lib)/allocator/tlsf.ts:446:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:446:20
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:446:24
        (i32.const 0)
       )
       ;;@ (lib)/allocator/tlsf.ts:447:11
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:447:25
        (i32.const 0)
       )
       (loop $continue|1
        (if
         ;;@ (lib)/allocator/tlsf.ts:447:28
         (i32.lt_u
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:447:33
          (i32.const 32)
         )
         (block
          ;;@ (lib)/allocator/tlsf.ts:448:13
          (call "$(lib)/allocator/tlsf/Root#setHead"
           ;;@ (lib)/allocator/tlsf.ts:448:8
           (get_local $2)
           ;;@ (lib)/allocator/tlsf.ts:448:21
           (get_local $1)
           ;;@ (lib)/allocator/tlsf.ts:448:25
           (get_local $3)
           ;;@ (lib)/allocator/tlsf.ts:448:29
           (i32.const 0)
          )
          ;;@ (lib)/allocator/tlsf.ts:447:42
          (set_local $3
           (i32.add
            ;;@ (lib)/allocator/tlsf.ts:447:44
            (get_local $3)
            (i32.const 1)
           )
          )
          (br $continue|1)
         )
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:445:42
       (set_local $1
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:445:44
         (get_local $1)
         (i32.const 1)
        )
       )
       (br $continue|0)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:451:9
    (drop
     (call "$(lib)/allocator/tlsf/Root#addMemory"
      ;;@ (lib)/allocator/tlsf.ts:451:4
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:451:19
      (i32.and
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:451:20
        (get_local $4)
        (i32.const 2923)
       )
       (i32.const -8)
      )
      ;;@ (lib)/allocator/tlsf.ts:451:66
      (i32.shl
       (current_memory)
       ;;@ (lib)/allocator/tlsf.ts:451:86
       (i32.const 16)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:455:2
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:455:20
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:456:2
  (if
   (select
    ;;@ (lib)/allocator/tlsf.ts:456:14
    (i32.lt_u
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:456:21
     (i32.const 1073741824)
    )
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:456:6
    (get_local $0)
   )
   ;;@ (lib)/allocator/tlsf.ts:456:37
   (block
    ;;@ (lib)/allocator/tlsf.ts:460:4
    (if
     ;;@ (lib)/allocator/tlsf.ts:460:8
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:459:4
      (tee_local $1
       ;;@ (lib)/allocator/tlsf.ts:459:21
       (call "$(lib)/allocator/tlsf/Root#search"
        ;;@ (lib)/allocator/tlsf.ts:459:16
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:457:4
        (tee_local $0
         ;;@ (lib)/allocator/tlsf.ts:457:11
         (select
          (tee_local $1
           ;;@ (lib)/allocator/tlsf.ts:457:22
           (i32.and
            (i32.add
             ;;@ (lib)/allocator/tlsf.ts:457:23
             (get_local $0)
             ;;@ (lib)/allocator/tlsf.ts:457:30
             (i32.const 7)
            )
            (i32.const -8)
           )
          )
          (tee_local $3
           ;;@ (lib)/allocator/tlsf.ts:457:51
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
     ;;@ (lib)/allocator/tlsf.ts:460:16
     (block
      ;;@ (lib)/allocator/tlsf.ts:466:6
      (if
       ;;@ (lib)/allocator/tlsf.ts:466:10
       (i32.lt_s
        (grow_memory
         ;;@ (lib)/allocator/tlsf.ts:465:24
         (select
          (tee_local $1
           ;;@ (lib)/allocator/tlsf.ts:463:6
           (tee_local $4
            ;;@ (lib)/allocator/tlsf.ts:463:24
            (current_memory)
           )
          )
          (tee_local $3
           ;;@ (lib)/allocator/tlsf.ts:464:6
           (tee_local $5
            ;;@ (lib)/allocator/tlsf.ts:464:24
            (i32.shr_u
             (i32.and
              ;;@ (lib)/allocator/tlsf.ts:464:25
              (i32.add
               ;;@ (lib)/allocator/tlsf.ts:464:26
               (get_local $0)
               ;;@ (lib)/allocator/tlsf.ts:464:33
               (i32.const 65535)
              )
              (i32.const -65536)
             )
             ;;@ (lib)/allocator/tlsf.ts:464:56
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
        ;;@ (lib)/allocator/tlsf.ts:466:37
        (i32.const 0)
       )
       ;;@ (lib)/allocator/tlsf.ts:467:8
       (if
        ;;@ (lib)/allocator/tlsf.ts:467:12
        (i32.lt_s
         (grow_memory
          ;;@ (lib)/allocator/tlsf.ts:467:24
          (get_local $5)
         )
         ;;@ (lib)/allocator/tlsf.ts:467:39
         (i32.const 0)
        )
        ;;@ (lib)/allocator/tlsf.ts:468:10
        (unreachable)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:472:11
      (drop
       (call "$(lib)/allocator/tlsf/Root#addMemory"
        ;;@ (lib)/allocator/tlsf.ts:472:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:472:21
        (i32.shl
         (get_local $4)
         ;;@ (lib)/allocator/tlsf.ts:472:43
         (i32.const 16)
        )
        ;;@ (lib)/allocator/tlsf.ts:472:47
        (i32.shl
         ;;@ (lib)/allocator/tlsf.ts:471:23
         (current_memory)
         ;;@ (lib)/allocator/tlsf.ts:472:68
         (i32.const 16)
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:473:6
      (set_local $1
       ;;@ (lib)/allocator/tlsf.ts:473:14
       (call "$(lib)/allocator/tlsf/Root#search"
        ;;@ (lib)/allocator/tlsf.ts:473:21
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:473:33
        (get_local $0)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:477:4
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:477:16
     (call "$(lib)/allocator/tlsf/Root#use"
      ;;@ (lib)/allocator/tlsf.ts:477:11
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:477:20
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:477:27
      (get_local $0)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:480:9
  (get_local $1)
 )
 (func "$(lib)/allocator/tlsf/free_memory" (; 13 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:486:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:486:6
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:488:4
   (if
    ;;@ (lib)/allocator/tlsf.ts:487:4
    (tee_local $1
     ;;@ (lib)/allocator/tlsf.ts:487:15
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
    ;;@ (lib)/allocator/tlsf.ts:488:14
    (block
     ;;@ (lib)/allocator/tlsf.ts:492:6
     (i32.store
      ;;@ (lib)/allocator/tlsf.ts:489:6
      (tee_local $2
       ;;@ (lib)/allocator/tlsf.ts:489:18
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:489:36
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:489:43
        (i32.const 8)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:492:19
      (i32.or
       ;;@ (lib)/allocator/tlsf.ts:490:22
       (i32.load
        (get_local $2)
       )
       ;;@ (lib)/allocator/tlsf.ts:492:31
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:493:11
     (call "$(lib)/allocator/tlsf/Root#insert"
      ;;@ (lib)/allocator/tlsf.ts:493:6
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:493:18
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:493:36
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:493:43
       (i32.const 8)
      )
     )
    )
   )
  )
 )
)
