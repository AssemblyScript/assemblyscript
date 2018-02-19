(module
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global "$(lib)/allocator/tlsf/ROOT" (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "allocate_memory" (func "$(lib)/allocator/tlsf/allocate_memory"))
 (export "free_memory" (func "$(lib)/allocator/tlsf/free_memory"))
 (export "set_memory" (func "$(lib)/memory/set_memory"))
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/allocator/tlsf/Root#set:tailRef" (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ (lib)/allocator/tlsf.ts:175:30
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:175:43
   (i32.const 3040)
   ;;@ (lib)/allocator/tlsf.ts:175:46
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setSLMap" (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:139:4
  (i32.store offset=4
   ;;@ (lib)/allocator/tlsf.ts:139:15
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:139:41
    (i32.mul
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:139:46
     (i32.const 4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:139:49
   (get_local $2)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setHead" (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:163:4
  (i32.store offset=96
   ;;@ (lib)/allocator/tlsf.ts:164:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:164:32
    (i32.mul
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:164:33
      (i32.mul
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:164:38
       (i32.const 32)
      )
      ;;@ (lib)/allocator/tlsf.ts:164:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:164:61
     (i32.const 4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:165:6
   (get_local $3)
  )
 )
 (func "$(lib)/allocator/tlsf/Block#get:right" (; 3 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:84:11
  (i32.add
   ;;@ (lib)/allocator/tlsf.ts:86:8
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:86:34
    (i32.const 4)
   )
   ;;@ (lib)/allocator/tlsf.ts:86:47
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:86:48
    (i32.load
     (get_local $0)
    )
    (i32.const -4)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/fls<usize>" (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:425:9
  (i32.sub
   (i32.const 31)
   ;;@ (lib)/allocator/tlsf.ts:425:15
   (i32.clz
    ;;@ (lib)/allocator/tlsf.ts:425:22
    (get_local $0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getHead" (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:154:11
  (i32.load offset=96
   ;;@ (lib)/allocator/tlsf.ts:155:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:155:32
    (i32.mul
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:155:33
      (i32.mul
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:155:38
       (i32.const 32)
      )
      ;;@ (lib)/allocator/tlsf.ts:155:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:155:61
     (i32.const 4)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getSLMap" (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:133:11
  (i32.load offset=4
   ;;@ (lib)/allocator/tlsf.ts:133:21
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:133:47
    (i32.mul
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:133:52
     (i32.const 4)
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
   ;;@ (lib)/allocator/tlsf.ts:258:4
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:258:8
    (i32.lt_u
     ;;@ (lib)/allocator/tlsf.ts:253:4
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:253:15
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:251:20
       (i32.load
        (get_local $1)
       )
       (i32.const -4)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:258:15
     (i32.const 128)
    )
    ;;@ (lib)/allocator/tlsf.ts:258:24
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:260:6
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:260:11
      (i32.div_u
       ;;@ (lib)/allocator/tlsf.ts:260:17
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:260:24
       (i32.const 4)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:259:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:261:11
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:263:6
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:263:11
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:263:17
       (i32.shr_u
        ;;@ (lib)/allocator/tlsf.ts:263:18
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:263:26
        (i32.sub
         ;;@ (lib)/allocator/tlsf.ts:262:6
         (tee_local $3
          ;;@ (lib)/allocator/tlsf.ts:262:11
          (call "$(lib)/allocator/tlsf/fls<usize>"
           ;;@ (lib)/allocator/tlsf.ts:262:22
           (get_local $2)
          )
         )
         ;;@ (lib)/allocator/tlsf.ts:263:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     (i32.sub
      ;;@ (lib)/allocator/tlsf.ts:264:6
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:264:12
      (i32.const 6)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:269:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:269:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:270:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:268:4
   (tee_local $5
    ;;@ (lib)/allocator/tlsf.ts:268:15
    (i32.load offset=4
     (get_local $1)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:271:6
   (i32.store offset=8
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:271:18
    (get_local $2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:272:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:272:8
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:273:6
   (i32.store offset=4
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:273:18
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
       ;;@ (lib)/allocator/tlsf.ts:286:10
       (i32.store
        (get_local $0)
        (i32.and
         (i32.load
          (get_local $0)
         )
         ;;@ (lib)/allocator/tlsf.ts:286:24
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:286:25
          (i32.shl
           ;;@ (lib)/allocator/tlsf.ts:286:26
           (i32.const 1)
           ;;@ (lib)/allocator/tlsf.ts:286:31
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
  ;;@ (lib)/allocator/tlsf.ts:184:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:184:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:195:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:195:8
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:192:4
    (tee_local $5
     ;;@ (lib)/allocator/tlsf.ts:192:20
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:191:4
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:191:23
       (call "$(lib)/allocator/tlsf/Block#get:right"
        ;;@ (lib)/allocator/tlsf.ts:191:30
        (get_local $1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:195:20
    (i32.const 1)
   )
   ;;@ (lib)/allocator/tlsf.ts:195:26
   (block
    ;;@ (lib)/allocator/tlsf.ts:196:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:196:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:196:18
     (get_local $4)
    )
    ;;@ (lib)/allocator/tlsf.ts:197:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:197:19
     (tee_local $2
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:197:20
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:197:33
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:197:46
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:197:47
         (get_local $5)
         (i32.const -4)
        )
        ;;@ (lib)/allocator/tlsf.ts:197:33
        (i32.const 4)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:199:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:199:18
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:198:6
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:198:14
       (call "$(lib)/allocator/tlsf/Block#get:right"
        (get_local $1)
       )
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:204:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:204:8
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:204:20
    (i32.const 2)
   )
   ;;@ (lib)/allocator/tlsf.ts:204:31
   (block
    ;;@ (lib)/allocator/tlsf.ts:206:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:206:21
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:205:6
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
    ;;@ (lib)/allocator/tlsf.ts:208:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:208:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:208:18
     (get_local $1)
    )
    ;;@ (lib)/allocator/tlsf.ts:209:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:209:18
     (tee_local $3
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:209:19
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:209:31
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:209:44
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:209:45
         (get_local $2)
         (i32.const -4)
        )
        ;;@ (lib)/allocator/tlsf.ts:209:31
        (i32.const 4)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:211:6
    (set_local $2
     ;;@ (lib)/allocator/tlsf.ts:211:18
     (get_local $3)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:215:4
  (i32.store
   (get_local $4)
   ;;@ (lib)/allocator/tlsf.ts:215:17
   (i32.or
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:215:29
    (i32.const 2)
   )
  )
  (i32.store
   (i32.sub
    (get_local $4)
    (i32.const 4)
   )
   (tee_local $3
    ;;@ (lib)/allocator/tlsf.ts:216:17
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:234:4
  (set_local $4
   ;;@ (lib)/allocator/tlsf.ts:234:20
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:234:15
    (get_local $0)
    (tee_local $2
     ;;@ (lib)/allocator/tlsf.ts:224:4
     (if (result i32)
      ;;@ (lib)/allocator/tlsf.ts:224:8
      (i32.lt_u
       ;;@ (lib)/allocator/tlsf.ts:219:4
       (tee_local $3
        ;;@ (lib)/allocator/tlsf.ts:219:11
        (i32.and
         (get_local $2)
         (i32.const -4)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:224:15
       (i32.const 128)
      )
      ;;@ (lib)/allocator/tlsf.ts:224:24
      (block (result i32)
       ;;@ (lib)/allocator/tlsf.ts:226:6
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:226:11
        (i32.div_u
         ;;@ (lib)/allocator/tlsf.ts:226:17
         (get_local $3)
         ;;@ (lib)/allocator/tlsf.ts:226:24
         (i32.const 4)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:225:11
       (i32.const 0)
      )
      ;;@ (lib)/allocator/tlsf.ts:227:11
      (block (result i32)
       ;;@ (lib)/allocator/tlsf.ts:229:6
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:229:11
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:229:17
         (i32.shr_u
          ;;@ (lib)/allocator/tlsf.ts:229:18
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:229:26
          (i32.sub
           ;;@ (lib)/allocator/tlsf.ts:228:6
           (tee_local $2
            ;;@ (lib)/allocator/tlsf.ts:228:11
            (call "$(lib)/allocator/tlsf/fls<usize>"
             ;;@ (lib)/allocator/tlsf.ts:228:22
             (get_local $3)
            )
           )
           ;;@ (lib)/allocator/tlsf.ts:229:32
           (i32.const 5)
          )
         )
         (i32.const 32)
        )
       )
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:230:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:230:12
        (i32.const 6)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:234:32
    (get_local $3)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:235:4
  (i32.store offset=4
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:235:17
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:236:4
  (i32.store offset=8
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:236:17
   (get_local $4)
  )
  ;;@ (lib)/allocator/tlsf.ts:237:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:237:8
   (get_local $4)
   ;;@ (lib)/allocator/tlsf.ts:237:14
   (i32.store offset=4
    (get_local $4)
    ;;@ (lib)/allocator/tlsf.ts:237:26
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:238:9
  (call "$(lib)/allocator/tlsf/Root#setHead"
   ;;@ (lib)/allocator/tlsf.ts:238:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:238:17
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:238:21
   (get_local $3)
   ;;@ (lib)/allocator/tlsf.ts:238:25
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:241:4
  (i32.store
   (get_local $0)
   (i32.or
    (i32.load
     (get_local $0)
    )
    ;;@ (lib)/allocator/tlsf.ts:241:18
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:241:19
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:241:24
     (get_local $2)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:242:9
  (call "$(lib)/allocator/tlsf/Root#setSLMap"
   ;;@ (lib)/allocator/tlsf.ts:242:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:242:18
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:242:22
   (i32.or
    ;;@ (lib)/allocator/tlsf.ts:242:27
    (call "$(lib)/allocator/tlsf/Root#getSLMap"
     ;;@ (lib)/allocator/tlsf.ts:242:22
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:242:36
     (get_local $2)
    )
    ;;@ (lib)/allocator/tlsf.ts:242:42
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:242:43
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:242:48
     (get_local $3)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#addMemory" (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/tlsf.ts:380:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:378:4
   (tee_local $3
    (i32.load
     (i32.const 3040)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:384:6
   (if
    ;;@ (lib)/allocator/tlsf.ts:384:10
    (i32.eq
     (i32.sub
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:384:18
      (i32.const 4)
     )
     ;;@ (lib)/allocator/tlsf.ts:384:32
     (get_local $3)
    )
    ;;@ (lib)/allocator/tlsf.ts:384:41
    (block
     ;;@ (lib)/allocator/tlsf.ts:385:8
     (set_local $1
      (i32.sub
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:385:17
       (i32.const 4)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:386:8
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:386:19
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
    (i32.const 20)
   )
   ;;@ (lib)/allocator/tlsf.ts:395:13
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:400:4
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:399:4
   (tee_local $2
    ;;@ (lib)/allocator/tlsf.ts:399:15
    (get_local $1)
   )
   ;;@ (lib)/allocator/tlsf.ts:400:16
   (i32.or
    (i32.or
     ;;@ (lib)/allocator/tlsf.ts:398:19
     (i32.sub
      (get_local $3)
      (i32.const 8)
     )
     ;;@ (lib)/allocator/tlsf.ts:400:27
     (i32.const 1)
    )
    ;;@ (lib)/allocator/tlsf.ts:400:34
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:400:35
     (get_local $4)
     ;;@ (lib)/allocator/tlsf.ts:400:46
     (i32.const 2)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:401:4
  (i32.store offset=4
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:401:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:402:4
  (i32.store offset=8
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:402:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:406:4
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:405:4
   (tee_local $1
    ;;@ (lib)/allocator/tlsf.ts:405:15
    (i32.sub
     ;;@ (lib)/allocator/tlsf.ts:405:33
     (i32.add
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:405:41
      (get_local $3)
     )
     ;;@ (lib)/allocator/tlsf.ts:405:48
     (i32.const 4)
    )
   )
   (i32.const 2)
  )
  ;;@ (lib)/allocator/tlsf.ts:407:4
  (call "$(lib)/allocator/tlsf/Root#set:tailRef"
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:407:19
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:409:9
  (call "$(lib)/allocator/tlsf/Root#insert"
   ;;@ (lib)/allocator/tlsf.ts:409:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:409:16
   (get_local $2)
  )
  ;;@ (lib)/allocator/tlsf.ts:411:11
  (i32.const 1)
 )
 (func "$(lib)/allocator/tlsf/Root#search" (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:297:4
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:297:8
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:297:15
     (i32.const 128)
    )
    ;;@ (lib)/allocator/tlsf.ts:299:11
    (i32.div_u
     ;;@ (lib)/allocator/tlsf.ts:299:17
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:299:24
     (i32.const 4)
    )
    ;;@ (lib)/allocator/tlsf.ts:300:11
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:303:6
     (set_local $1
      ;;@ (lib)/allocator/tlsf.ts:303:11
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:303:17
       (i32.shr_u
        ;;@ (lib)/allocator/tlsf.ts:303:18
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:303:26
        (i32.sub
         ;;@ (lib)/allocator/tlsf.ts:302:6
         (tee_local $2
          ;;@ (lib)/allocator/tlsf.ts:302:11
          (call "$(lib)/allocator/tlsf/fls<usize>"
           ;;@ (lib)/allocator/tlsf.ts:302:22
           (get_local $1)
          )
         )
         ;;@ (lib)/allocator/tlsf.ts:303:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:304:6
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:304:12
       (i32.const 6)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:306:6
     (if (result i32)
      ;;@ (lib)/allocator/tlsf.ts:306:10
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:306:15
       (i32.const 31)
      )
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:306:30
       (get_local $1)
       (i32.const 1)
      )
      ;;@ (lib)/allocator/tlsf.ts:307:11
      (block (result i32)
       (set_local $2
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:307:13
         (get_local $2)
         (i32.const 1)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:307:22
       (i32.const 0)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:313:4
  (if (result i32)
   ;;@ (lib)/allocator/tlsf.ts:311:4
   (tee_local $1
    ;;@ (lib)/allocator/tlsf.ts:311:16
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:311:21
     (call "$(lib)/allocator/tlsf/Root#getSLMap"
      ;;@ (lib)/allocator/tlsf.ts:311:16
      (get_local $0)
      ;;@ (lib)/allocator/tlsf.ts:311:30
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:311:36
     (i32.shl
      (i32.const -1)
      ;;@ (lib)/allocator/tlsf.ts:311:43
      (get_local $1)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:324:18
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:324:13
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:324:26
    (get_local $2)
    (i32.ctz
     (get_local $1)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:316:6
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:315:6
    (tee_local $1
     ;;@ (lib)/allocator/tlsf.ts:315:18
     (i32.and
      (i32.load
       (get_local $0)
      )
      ;;@ (lib)/allocator/tlsf.ts:315:31
      (i32.shl
       (i32.const -1)
       ;;@ (lib)/allocator/tlsf.ts:315:38
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:315:39
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:315:44
        (i32.const 1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:318:13
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:320:8
     (set_local $1
      ;;@ (lib)/allocator/tlsf.ts:320:16
      (call "$(lib)/allocator/tlsf/Root#getSLMap"
       ;;@ (lib)/allocator/tlsf.ts:320:23
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:319:8
       (tee_local $2
        (i32.ctz
         (get_local $1)
        )
       )
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:321:20
     (call "$(lib)/allocator/tlsf/Root#getHead"
      ;;@ (lib)/allocator/tlsf.ts:321:15
      (get_local $0)
      ;;@ (lib)/allocator/tlsf.ts:321:28
      (get_local $2)
      (i32.ctz
       (get_local $1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:317:15
    (i32.const 0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#use" (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/tlsf.ts:344:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:344:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:349:9
  (call "$(lib)/allocator/tlsf/Root#remove"
   ;;@ (lib)/allocator/tlsf.ts:349:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:349:16
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:353:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:353:8
   (i32.ge_u
    ;;@ (lib)/allocator/tlsf.ts:352:4
    (tee_local $4
     ;;@ (lib)/allocator/tlsf.ts:352:20
     (i32.sub
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:352:21
       (get_local $3)
       (i32.const -4)
      )
      ;;@ (lib)/allocator/tlsf.ts:352:42
      (get_local $2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:353:34
    (i32.const 16)
   )
   ;;@ (lib)/allocator/tlsf.ts:353:50
   (block
    ;;@ (lib)/allocator/tlsf.ts:354:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:354:19
     (i32.or
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:354:26
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:354:27
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:354:39
       (i32.const 2)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:359:6
    (i32.store
     ;;@ (lib)/allocator/tlsf.ts:356:6
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:356:18
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:357:8
       (i32.add
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:357:35
        (i32.const 4)
       )
       ;;@ (lib)/allocator/tlsf.ts:357:48
       (get_local $2)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:359:19
     (i32.or
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:359:20
       (get_local $4)
       ;;@ (lib)/allocator/tlsf.ts:359:32
       (i32.const 4)
      )
      ;;@ (lib)/allocator/tlsf.ts:359:46
      (i32.const 1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:360:11
    (call "$(lib)/allocator/tlsf/Root#insert"
     ;;@ (lib)/allocator/tlsf.ts:360:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:360:18
     (get_local $2)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:363:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:364:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:364:19
     (i32.and
      (get_local $3)
      (i32.const -2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:366:6
    (i32.store
     ;;@ (lib)/allocator/tlsf.ts:365:6
     (tee_local $0
      ;;@ (lib)/allocator/tlsf.ts:365:25
      (call "$(lib)/allocator/tlsf/Block#get:right"
       ;;@ (lib)/allocator/tlsf.ts:365:32
       (get_local $1)
      )
     )
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:366:6
      (i32.load
       (get_local $0)
      )
      (i32.const -3)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:369:11
  (i32.add
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:369:38
   (i32.const 4)
  )
 )
 (func "$(lib)/allocator/tlsf/allocate_memory" (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/tlsf.ts:439:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:439:6
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:438:2
    (tee_local $2
     ;;@ (lib)/allocator/tlsf.ts:438:13
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:439:13
   (block
    ;;@ (lib)/allocator/tlsf.ts:441:4
    (set_global "$(lib)/allocator/tlsf/ROOT"
     ;;@ (lib)/allocator/tlsf.ts:441:11
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:440:4
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:440:21
       (i32.and
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:440:22
         (get_global $HEAP_BASE)
         ;;@ (lib)/allocator/tlsf.ts:440:34
         (i32.const 3)
        )
        (i32.const -4)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:442:4
    (call "$(lib)/allocator/tlsf/Root#set:tailRef"
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:442:19
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:443:4
    (i32.store
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:443:17
     (i32.const 0)
    )
    (loop $continue|0
     (if
      ;;@ (lib)/allocator/tlsf.ts:444:28
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:444:33
       (i32.const 23)
      )
      (block
       ;;@ (lib)/allocator/tlsf.ts:445:11
       (call "$(lib)/allocator/tlsf/Root#setSLMap"
        ;;@ (lib)/allocator/tlsf.ts:445:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:445:20
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:445:24
        (i32.const 0)
       )
       ;;@ (lib)/allocator/tlsf.ts:446:11
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:446:25
        (i32.const 0)
       )
       (loop $continue|1
        (if
         ;;@ (lib)/allocator/tlsf.ts:446:28
         (i32.lt_u
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:446:33
          (i32.const 32)
         )
         (block
          ;;@ (lib)/allocator/tlsf.ts:447:13
          (call "$(lib)/allocator/tlsf/Root#setHead"
           ;;@ (lib)/allocator/tlsf.ts:447:8
           (get_local $2)
           ;;@ (lib)/allocator/tlsf.ts:447:21
           (get_local $1)
           ;;@ (lib)/allocator/tlsf.ts:447:25
           (get_local $3)
           ;;@ (lib)/allocator/tlsf.ts:447:29
           (i32.const 0)
          )
          ;;@ (lib)/allocator/tlsf.ts:446:42
          (set_local $3
           (i32.add
            ;;@ (lib)/allocator/tlsf.ts:446:44
            (get_local $3)
            (i32.const 1)
           )
          )
          (br $continue|1)
         )
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:444:42
       (set_local $1
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:444:44
         (get_local $1)
         (i32.const 1)
        )
       )
       (br $continue|0)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:449:9
    (drop
     (call "$(lib)/allocator/tlsf/Root#addMemory"
      ;;@ (lib)/allocator/tlsf.ts:449:4
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:449:19
      (i32.add
       (get_local $4)
       ;;@ (lib)/allocator/tlsf.ts:449:32
       (i32.const 3044)
      )
      ;;@ (lib)/allocator/tlsf.ts:449:43
      (i32.shl
       (current_memory)
       ;;@ (lib)/allocator/tlsf.ts:449:63
       (i32.const 16)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:453:2
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:453:20
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:454:2
  (if
   (select
    ;;@ (lib)/allocator/tlsf.ts:454:14
    (i32.lt_u
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:454:21
     (i32.const 1073741824)
    )
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:454:6
    (get_local $0)
   )
   ;;@ (lib)/allocator/tlsf.ts:454:37
   (block
    ;;@ (lib)/allocator/tlsf.ts:458:4
    (if
     ;;@ (lib)/allocator/tlsf.ts:458:8
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:457:4
      (tee_local $1
       ;;@ (lib)/allocator/tlsf.ts:457:21
       (call "$(lib)/allocator/tlsf/Root#search"
        ;;@ (lib)/allocator/tlsf.ts:457:16
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:455:4
        (tee_local $0
         ;;@ (lib)/allocator/tlsf.ts:455:11
         (select
          (tee_local $1
           ;;@ (lib)/allocator/tlsf.ts:455:22
           (i32.and
            (i32.add
             ;;@ (lib)/allocator/tlsf.ts:455:23
             (get_local $0)
             ;;@ (lib)/allocator/tlsf.ts:455:30
             (i32.const 3)
            )
            (i32.const -4)
           )
          )
          (tee_local $3
           ;;@ (lib)/allocator/tlsf.ts:455:51
           (i32.const 12)
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
     ;;@ (lib)/allocator/tlsf.ts:458:16
     (block
      ;;@ (lib)/allocator/tlsf.ts:463:6
      (if
       ;;@ (lib)/allocator/tlsf.ts:463:10
       (i32.lt_s
        (grow_memory
         ;;@ (lib)/allocator/tlsf.ts:462:24
         (select
          (tee_local $1
           ;;@ (lib)/allocator/tlsf.ts:461:6
           (tee_local $4
            ;;@ (lib)/allocator/tlsf.ts:461:24
            (current_memory)
           )
          )
          (tee_local $3
           ;;@ (lib)/allocator/tlsf.ts:462:41
           (i32.shr_u
            (i32.and
             ;;@ (lib)/allocator/tlsf.ts:462:42
             (i32.add
              ;;@ (lib)/allocator/tlsf.ts:462:43
              (get_local $0)
              ;;@ (lib)/allocator/tlsf.ts:462:50
              (i32.const 65535)
             )
             (i32.const -65536)
            )
            ;;@ (lib)/allocator/tlsf.ts:462:73
            (i32.const 16)
           )
          )
          (i32.gt_s
           (get_local $1)
           (get_local $3)
          )
         )
        )
        ;;@ (lib)/allocator/tlsf.ts:463:37
        (i32.const 0)
       )
       ;;@ (lib)/allocator/tlsf.ts:464:8
       (unreachable)
      )
      ;;@ (lib)/allocator/tlsf.ts:466:11
      (drop
       (call "$(lib)/allocator/tlsf/Root#addMemory"
        ;;@ (lib)/allocator/tlsf.ts:466:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:466:21
        (i32.shl
         (get_local $4)
         ;;@ (lib)/allocator/tlsf.ts:466:43
         (i32.const 16)
        )
        ;;@ (lib)/allocator/tlsf.ts:466:47
        (i32.shl
         ;;@ (lib)/allocator/tlsf.ts:465:23
         (current_memory)
         ;;@ (lib)/allocator/tlsf.ts:466:68
         (i32.const 16)
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:467:6
      (set_local $1
       ;;@ (lib)/allocator/tlsf.ts:467:14
       (call "$(lib)/allocator/tlsf/Root#search"
        ;;@ (lib)/allocator/tlsf.ts:467:21
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:467:33
        (get_local $0)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:471:4
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:471:16
     (call "$(lib)/allocator/tlsf/Root#use"
      ;;@ (lib)/allocator/tlsf.ts:471:11
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:471:20
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:471:27
      (get_local $0)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:474:9
  (get_local $1)
 )
 (func "$(lib)/allocator/tlsf/free_memory" (; 13 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:480:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:480:6
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:482:4
   (if
    ;;@ (lib)/allocator/tlsf.ts:481:4
    (tee_local $1
     ;;@ (lib)/allocator/tlsf.ts:481:15
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
    ;;@ (lib)/allocator/tlsf.ts:482:14
    (block
     ;;@ (lib)/allocator/tlsf.ts:486:6
     (i32.store
      ;;@ (lib)/allocator/tlsf.ts:483:6
      (tee_local $2
       ;;@ (lib)/allocator/tlsf.ts:483:18
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:483:36
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:483:43
        (i32.const 4)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:486:19
      (i32.or
       ;;@ (lib)/allocator/tlsf.ts:484:22
       (i32.load
        (get_local $2)
       )
       ;;@ (lib)/allocator/tlsf.ts:486:31
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:487:11
     (call "$(lib)/allocator/tlsf/Root#insert"
      ;;@ (lib)/allocator/tlsf.ts:487:6
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:487:18
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:487:36
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:487:43
       (i32.const 4)
      )
     )
    )
   )
  )
 )
 (func "$(lib)/memory/set_memory" (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $start (; 15 ;) (type $v)
  (nop)
 )
)
