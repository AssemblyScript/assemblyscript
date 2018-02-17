(module
 (type $iiv (func (param i32 i32)))
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global "$(lib)/allocator/tlsf/ROOT" (mut i32) (i32.const 0))
 (global $assembly/ugc/GC (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "gc_collect" (func $assembly/ugc/gc_collect))
 (export "gc_pause" (func $assembly/ugc/gc_pause))
 (export "gc_resume" (func $assembly/ugc/gc_resume))
 (export "memory" (memory $0))
 (start $start)
 (func $assembly/ugc/Control.create (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store
   (tee_local $2
    (tee_local $1
     ;;@ assembly/ugc.ts:112:15
     (get_local $0)
    )
   )
   (i32.or
    (get_local $1)
    (i32.and
     (i32.load
      (get_local $2)
     )
     (i32.const 3)
    )
   )
  )
  (i32.store offset=4
   (tee_local $2
    (get_local $1)
   )
   (i32.or
    (get_local $1)
    (i32.and
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 3)
    )
   )
  )
  (i32.store
   (tee_local $2
    (tee_local $1
     ;;@ assembly/ugc.ts:113:4
     (tee_local $3
      ;;@ assembly/ugc.ts:113:15
      (i32.add
       ;;@ assembly/ugc.ts:113:40
       (get_local $0)
       (i32.const 8)
      )
     )
    )
   )
   (i32.or
    (get_local $1)
    (i32.and
     (i32.load
      (get_local $2)
     )
     (i32.const 3)
    )
   )
  )
  (i32.store offset=4
   (tee_local $2
    (get_local $1)
   )
   (i32.or
    (get_local $1)
    (i32.and
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 3)
    )
   )
  )
  ;;@ assembly/ugc.ts:116:4
  (i32.store8 offset=28
   ;;@ assembly/ugc.ts:111:4
   (tee_local $1
    ;;@ assembly/ugc.ts:111:18
    (get_local $0)
   )
   ;;@ assembly/ugc.ts:116:20
   (i32.const 0)
  )
  ;;@ assembly/ugc.ts:117:4
  (i32.store8 offset=29
   (get_local $1)
   ;;@ assembly/ugc.ts:117:20
   (i32.const 0)
  )
  ;;@ assembly/ugc.ts:118:4
  (i32.store offset=16
   (get_local $1)
   ;;@ assembly/ugc.ts:118:19
   (get_local $0)
  )
  ;;@ assembly/ugc.ts:119:4
  (i32.store offset=20
   (get_local $1)
   ;;@ assembly/ugc.ts:119:17
   (get_local $3)
  )
  ;;@ assembly/ugc.ts:120:4
  (i32.store offset=24
   (get_local $1)
   ;;@ assembly/ugc.ts:120:23
   (i32.load offset=20
    (get_local $1)
   )
  )
  ;;@ assembly/ugc.ts:121:11
  (get_local $1)
 )
 (func $assembly/ugc/Control#set:paused (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/ugc.ts:102:4
  (i32.store8 offset=28
   (get_local $0)
   ;;@ assembly/ugc.ts:102:17
   (if (result i32)
    (get_local $1)
    ;;@ assembly/ugc.ts:103:8
    (block (result i32)
     (i32.store8 offset=28
      (get_local $0)
      (tee_local $2
       (i32.or
        (i32.load8_u offset=28
         (get_local $0)
        )
        ;;@ assembly/ugc.ts:103:22
        (i32.const 128)
       )
      )
     )
     (get_local $2)
    )
    ;;@ assembly/ugc.ts:104:8
    (block (result i32)
     (i32.store8 offset=28
      (get_local $0)
      (tee_local $2
       (i32.and
        (i32.load8_u offset=28
         (get_local $0)
        )
        (i32.const -129)
       )
      )
     )
     (get_local $2)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#remove" (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (set_local $5
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
     (set_local $5
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
          (i32.sub
           (i32.const 31)
           (i32.clz
            (get_local $2)
           )
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
   (tee_local $4
    ;;@ (lib)/allocator/tlsf.ts:268:15
    (i32.load offset=4
     (get_local $1)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:271:6
   (i32.store offset=8
    (get_local $4)
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
    (get_local $4)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:276:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:276:8
   (i32.eq
    (get_local $1)
    (i32.load offset=96
     (i32.add
      (tee_local $1
       ;;@ (lib)/allocator/tlsf.ts:276:17
       (get_local $0)
      )
      (i32.mul
       (i32.add
        (i32.mul
         (tee_local $4
          ;;@ (lib)/allocator/tlsf.ts:276:30
          (get_local $3)
         )
         (i32.const 32)
        )
        ;;@ (lib)/allocator/tlsf.ts:276:34
        (get_local $5)
       )
       (i32.const 4)
      )
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:276:39
   (block
    (i32.store offset=96
     (i32.add
      (tee_local $1
       ;;@ (lib)/allocator/tlsf.ts:277:6
       (get_local $0)
      )
      (i32.mul
       (i32.add
        (i32.mul
         (tee_local $4
          ;;@ (lib)/allocator/tlsf.ts:277:19
          (get_local $3)
         )
         (i32.const 32)
        )
        ;;@ (lib)/allocator/tlsf.ts:277:23
        (get_local $5)
       )
       (i32.const 4)
      )
     )
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
      (i32.store offset=4
       (i32.add
        (tee_local $4
         ;;@ (lib)/allocator/tlsf.ts:282:8
         (get_local $0)
        )
        (i32.mul
         ;;@ (lib)/allocator/tlsf.ts:282:22
         (get_local $3)
         (i32.const 4)
        )
       )
       (tee_local $2
        ;;@ (lib)/allocator/tlsf.ts:282:26
        (tee_local $1
         (i32.and
          (i32.load offset=4
           (i32.add
            (tee_local $1
             ;;@ (lib)/allocator/tlsf.ts:281:20
             (get_local $0)
            )
            (i32.mul
             (tee_local $2
              ;;@ (lib)/allocator/tlsf.ts:281:34
              (get_local $3)
             )
             (i32.const 4)
            )
           )
          )
          ;;@ (lib)/allocator/tlsf.ts:282:35
          (i32.xor
           ;;@ (lib)/allocator/tlsf.ts:282:36
           (i32.shl
            ;;@ (lib)/allocator/tlsf.ts:282:37
            (i32.const 1)
            ;;@ (lib)/allocator/tlsf.ts:282:42
            (get_local $5)
           )
           (i32.const -1)
          )
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
 (func "$(lib)/allocator/tlsf/Root#insert" (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ (lib)/allocator/tlsf.ts:184:4
  (set_local $3
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
       (i32.add
        (i32.add
         (tee_local $2
          ;;@ (lib)/allocator/tlsf.ts:191:30
          (get_local $1)
         )
         (i32.const 4)
        )
        (i32.and
         (i32.load
          (get_local $2)
         )
         (i32.const -4)
        )
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
     (tee_local $3
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:197:20
       (get_local $3)
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
       (i32.add
        (i32.add
         (tee_local $2
          ;;@ (lib)/allocator/tlsf.ts:198:14
          (get_local $1)
         )
         (i32.const 4)
        )
        (i32.and
         (i32.load
          (get_local $2)
         )
         (i32.const -4)
        )
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
    (get_local $3)
    ;;@ (lib)/allocator/tlsf.ts:204:20
    (i32.const 2)
   )
   ;;@ (lib)/allocator/tlsf.ts:204:31
   (block
    ;;@ (lib)/allocator/tlsf.ts:206:6
    (set_local $2
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
     (tee_local $2
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:209:19
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:209:31
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:209:44
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:209:45
         (get_local $3)
         (i32.const -4)
        )
        ;;@ (lib)/allocator/tlsf.ts:209:31
        (i32.const 4)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:211:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:211:18
     (get_local $2)
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
    (tee_local $2
     ;;@ (lib)/allocator/tlsf.ts:216:24
     (get_local $4)
    )
    (i32.const 4)
   )
   (tee_local $5
    ;;@ (lib)/allocator/tlsf.ts:216:17
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:234:4
  (set_local $4
   (i32.load offset=96
    (i32.add
     (tee_local $4
      ;;@ (lib)/allocator/tlsf.ts:234:15
      (get_local $0)
     )
     (i32.mul
      (i32.add
       (i32.mul
        (tee_local $3
         ;;@ (lib)/allocator/tlsf.ts:224:4
         (if (result i32)
          ;;@ (lib)/allocator/tlsf.ts:224:8
          (i32.lt_u
           ;;@ (lib)/allocator/tlsf.ts:219:4
           (tee_local $2
            ;;@ (lib)/allocator/tlsf.ts:219:11
            (i32.and
             (get_local $3)
             (i32.const -4)
            )
           )
           ;;@ (lib)/allocator/tlsf.ts:224:15
           (i32.const 128)
          )
          ;;@ (lib)/allocator/tlsf.ts:224:24
          (block (result i32)
           ;;@ (lib)/allocator/tlsf.ts:226:6
           (set_local $2
            ;;@ (lib)/allocator/tlsf.ts:226:11
            (i32.div_u
             ;;@ (lib)/allocator/tlsf.ts:226:17
             (get_local $2)
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
           (set_local $2
            ;;@ (lib)/allocator/tlsf.ts:229:11
            (i32.xor
             ;;@ (lib)/allocator/tlsf.ts:229:17
             (i32.shr_u
              ;;@ (lib)/allocator/tlsf.ts:229:18
              (get_local $2)
              ;;@ (lib)/allocator/tlsf.ts:229:26
              (i32.sub
               ;;@ (lib)/allocator/tlsf.ts:228:6
               (tee_local $3
                (i32.sub
                 (i32.const 31)
                 (i32.clz
                  (get_local $2)
                 )
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
            (get_local $3)
            ;;@ (lib)/allocator/tlsf.ts:230:12
            (i32.const 6)
           )
          )
         )
        )
        (i32.const 32)
       )
       (tee_local $5
        ;;@ (lib)/allocator/tlsf.ts:234:32
        (get_local $2)
       )
      )
      (i32.const 4)
     )
    )
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
  (i32.store offset=96
   (i32.add
    ;;@ (lib)/allocator/tlsf.ts:238:4
    (get_local $0)
    (i32.mul
     (i32.add
      (i32.mul
       (tee_local $4
        ;;@ (lib)/allocator/tlsf.ts:238:17
        (get_local $3)
       )
       (i32.const 32)
      )
      (tee_local $5
       ;;@ (lib)/allocator/tlsf.ts:238:21
       (get_local $2)
      )
     )
     (i32.const 4)
    )
   )
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
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (i32.add
    (tee_local $5
     ;;@ (lib)/allocator/tlsf.ts:242:4
     (get_local $0)
    )
    (i32.mul
     (tee_local $1
      ;;@ (lib)/allocator/tlsf.ts:242:18
      (get_local $3)
     )
     (i32.const 4)
    )
   )
   (tee_local $0
    ;;@ (lib)/allocator/tlsf.ts:242:22
    (i32.or
     (i32.load offset=4
      (i32.add
       (get_local $0)
       (i32.mul
        (get_local $3)
        (i32.const 4)
       )
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:242:42
     (i32.shl
      ;;@ (lib)/allocator/tlsf.ts:242:43
      (i32.const 1)
      ;;@ (lib)/allocator/tlsf.ts:242:48
      (get_local $2)
     )
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/free_memory" (; 4 ;) (type $iv) (param $0 i32)
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
 (func $assembly/ugc/Control#step (; 5 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/ugc.ts:165:4
  (block $break|0
   (block $case2|0
    (block $case1|0
     (block $case0|0
      (block $tablify|0
       (br_table $case0|0 $case1|0 $case2|0 $tablify|0
        ;;@ assembly/ugc.ts:165:12
        (i32.load8_u offset=28
         (get_local $0)
        )
       )
      )
      (br $break|0)
     )
     ;;@ assembly/ugc.ts:169:8
     (i32.store8 offset=28
      (get_local $0)
      ;;@ assembly/ugc.ts:169:21
      (i32.const 1)
     )
     ;;@ assembly/ugc.ts:170:8
     (br $break|0)
    )
    ;;@ assembly/ugc.ts:174:8
    (set_local $2
     ;;@ assembly/ugc.ts:174:20
     (i32.load8_u offset=29
      (get_local $0)
     )
    )
    ;;@ assembly/ugc.ts:176:8
    (if
     ;;@ assembly/ugc.ts:176:12
     (i32.ne
      ;;@ assembly/ugc.ts:173:8
      (tee_local $1
       (i32.and
        (i32.load
         ;;@ assembly/ugc.ts:173:14
         (i32.load offset=24
          (get_local $0)
         )
        )
        (i32.const -4)
       )
      )
      ;;@ assembly/ugc.ts:176:19
      (i32.load offset=20
       (get_local $0)
      )
     )
     ;;@ assembly/ugc.ts:176:28
     (block
      ;;@ assembly/ugc.ts:177:10
      (i32.store offset=24
       (get_local $0)
       ;;@ assembly/ugc.ts:177:26
       (get_local $1)
      )
      (i32.store
       (tee_local $0
        ;;@ assembly/ugc.ts:178:10
        (get_local $1)
       )
       (i32.or
        (i32.load
         (get_local $0)
        )
        (i32.xor
         ;;@ assembly/ugc.ts:178:22
         (get_local $2)
         ;;@ assembly/ugc.ts:178:30
         (i32.const 1)
        )
       )
      )
      (if
       (get_local $1)
       (drop
        (i32.load offset=8
         (get_local $1)
        )
       )
      )
     )
     ;;@ assembly/ugc.ts:183:10
     (if
      ;;@ assembly/ugc.ts:183:14
      (i32.eq
       (i32.and
        (i32.load
         ;;@ assembly/ugc.ts:182:16
         (i32.load offset=24
          (get_local $0)
         )
        )
        (i32.const -4)
       )
       ;;@ assembly/ugc.ts:183:21
       (i32.load offset=20
        (get_local $0)
       )
      )
      ;;@ assembly/ugc.ts:183:30
      (block
       ;;@ assembly/ugc.ts:184:12
       (set_local $1
        ;;@ assembly/ugc.ts:184:23
        (i32.load offset=16
         (get_local $0)
        )
       )
       ;;@ assembly/ugc.ts:185:12
       (i32.store offset=16
        (get_local $0)
        ;;@ assembly/ugc.ts:185:24
        (i32.load offset=20
         (get_local $0)
        )
       )
       ;;@ assembly/ugc.ts:186:12
       (i32.store offset=20
        (get_local $0)
        ;;@ assembly/ugc.ts:186:22
        (get_local $1)
       )
       ;;@ assembly/ugc.ts:187:12
       (i32.store8 offset=29
        (get_local $0)
        (i32.xor
         ;;@ assembly/ugc.ts:187:25
         (get_local $2)
         ;;@ assembly/ugc.ts:187:33
         (i32.const 1)
        )
       )
       ;;@ assembly/ugc.ts:188:12
       (i32.store offset=24
        (get_local $0)
        ;;@ assembly/ugc.ts:188:28
        (i32.load
         ;;@ assembly/ugc.ts:188:53
         (get_local $1)
        )
       )
       ;;@ assembly/ugc.ts:189:12
       (i32.store8 offset=28
        (get_local $0)
        ;;@ assembly/ugc.ts:189:25
        (i32.const 2)
       )
      )
     )
    )
    ;;@ assembly/ugc.ts:192:8
    (br $break|0)
   )
   ;;@ assembly/ugc.ts:196:8
   (if
    ;;@ assembly/ugc.ts:196:12
    (i32.ne
     ;;@ assembly/ugc.ts:195:8
     (tee_local $1
      ;;@ assembly/ugc.ts:195:14
      (i32.load offset=24
       (get_local $0)
      )
     )
     ;;@ assembly/ugc.ts:196:19
     (i32.load offset=20
      (get_local $0)
     )
    )
    ;;@ assembly/ugc.ts:196:28
    (block
     ;;@ assembly/ugc.ts:197:10
     (i32.store offset=24
      (get_local $0)
      (i32.and
       (i32.load
        ;;@ assembly/ugc.ts:197:26
        (get_local $1)
       )
       (i32.const -4)
      )
     )
     (drop
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
     (call "$(lib)/allocator/tlsf/free_memory"
      (get_local $1)
     )
    )
    ;;@ assembly/ugc.ts:199:15
    (block
     (i32.store
      (tee_local $2
       (tee_local $1
        ;;@ assembly/ugc.ts:200:10
        (i32.load offset=20
         (get_local $0)
        )
       )
      )
      (i32.or
       (get_local $1)
       (i32.and
        (i32.load
         (get_local $2)
        )
        (i32.const 3)
       )
      )
     )
     (i32.store offset=4
      (tee_local $2
       (get_local $1)
      )
      (i32.or
       (get_local $1)
       (i32.and
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 3)
       )
      )
     )
     ;;@ assembly/ugc.ts:201:10
     (i32.store8 offset=28
      (get_local $0)
      ;;@ assembly/ugc.ts:201:23
      (i32.const 0)
     )
    )
   )
  )
 )
 (func $assembly/ugc/gc_collect (; 6 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  ;;@ assembly/ugc.ts:261:2
  (set_local $1
   (i32.ne
    (i32.and
     (i32.load8_u offset=28
      (tee_local $1
       ;;@ assembly/ugc.ts:261:15
       (get_global $assembly/ugc/GC)
      )
     )
     (i32.const 128)
    )
    (i32.const 0)
   )
  )
  ;;@ assembly/ugc.ts:262:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:262:14
   (i32.const 0)
  )
  (if
   (i32.eqz
    (i32.load8_u offset=28
     (tee_local $0
      ;;@ assembly/ugc.ts:263:2
      (get_global $assembly/ugc/GC)
     )
    )
   )
   (call $assembly/ugc/Control#step
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.load8_u offset=28
     (get_local $0)
    )
    (block
     (call $assembly/ugc/Control#step
      (get_local $0)
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/ugc.ts:264:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:264:14
   (get_local $1)
  )
 )
 (func $assembly/ugc/gc_pause (; 7 ;) (type $v)
  ;;@ assembly/ugc.ts:251:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:251:14
   (i32.const 1)
  )
 )
 (func $assembly/ugc/gc_resume (; 8 ;) (type $v)
  ;;@ assembly/ugc.ts:256:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:256:14
   (i32.const 0)
  )
 )
 (func $start (; 9 ;) (type $v)
  (set_global $assembly/ugc/GC
   ;;@ assembly/ugc.ts:243:17
   (call $assembly/ugc/Control.create
    ;;@ assembly/ugc.ts:243:24
    (get_global $HEAP_BASE)
   )
  )
 )
)
