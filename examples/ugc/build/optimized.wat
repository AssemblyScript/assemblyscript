(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
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
  (i32.store
   ;;@ assembly/ugc.ts:112:15
   (get_local $0)
   (i32.or
    (get_local $0)
    (i32.and
     (i32.load
      (get_local $0)
     )
     (i32.const 3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.or
    (get_local $0)
    (i32.and
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 3)
    )
   )
  )
  (i32.store
   (tee_local $1
    ;;@ assembly/ugc.ts:113:4
    (tee_local $2
     ;;@ assembly/ugc.ts:113:15
     (i32.add
      ;;@ assembly/ugc.ts:113:40
      (get_local $0)
      (i32.const 8)
     )
    )
   )
   (i32.or
    (get_local $1)
    (i32.and
     (i32.load
      (get_local $1)
     )
     (i32.const 3)
    )
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.or
    (get_local $1)
    (i32.and
     (i32.load offset=4
      (get_local $1)
     )
     (i32.const 3)
    )
   )
  )
  ;;@ assembly/ugc.ts:116:4
  (i32.store8 offset=28
   ;;@ assembly/ugc.ts:111:18
   (get_local $0)
   ;;@ assembly/ugc.ts:116:20
   (i32.const 0)
  )
  ;;@ assembly/ugc.ts:117:4
  (i32.store8 offset=29
   (get_local $0)
   ;;@ assembly/ugc.ts:117:20
   (i32.const 0)
  )
  ;;@ assembly/ugc.ts:118:4
  (i32.store offset=16
   (get_local $0)
   ;;@ assembly/ugc.ts:118:19
   (get_local $0)
  )
  ;;@ assembly/ugc.ts:119:4
  (i32.store offset=20
   (get_local $0)
   ;;@ assembly/ugc.ts:119:17
   (get_local $2)
  )
  ;;@ assembly/ugc.ts:120:4
  (i32.store offset=24
   (get_local $0)
   ;;@ assembly/ugc.ts:120:23
   (i32.load offset=20
    (get_local $0)
   )
  )
  ;;@ assembly/ugc.ts:121:11
  (get_local $0)
 )
 (func $assembly/ugc/Control#set:paused (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/ugc.ts:102:17
  (if
   (i32.and
    (get_local $1)
    (i32.const 1)
   )
   (i32.store8 offset=28
    ;;@ assembly/ugc.ts:103:8
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
   (i32.store8 offset=28
    ;;@ assembly/ugc.ts:104:8
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
  )
  ;;@ assembly/ugc.ts:101:27
  (i32.store8 offset=28
   ;;@ assembly/ugc.ts:102:4
   (get_local $0)
   (get_local $2)
  )
 )
 (func $~lib/allocator/tlsf/Root#remove (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
          (i32.sub
           (i32.const 31)
           (i32.clz
            ;;@ ~lib/allocator/tlsf.ts:268:22
            (get_local $2)
           )
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
    (i32.load offset=96
     (i32.add
      ;;@ ~lib/allocator/tlsf.ts:280:17
      (get_local $0)
      (i32.shl
       (i32.add
        (i32.shl
         ;;@ ~lib/allocator/tlsf.ts:280:30
         (get_local $3)
         (i32.const 5)
        )
        ;;@ ~lib/allocator/tlsf.ts:280:34
        (get_local $4)
       )
       (i32.const 2)
      )
     )
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:280:39
   (block
    (i32.store offset=96
     (i32.add
      ;;@ ~lib/allocator/tlsf.ts:281:6
      (get_local $0)
      (i32.shl
       (i32.add
        (i32.shl
         ;;@ ~lib/allocator/tlsf.ts:281:19
         (get_local $3)
         (i32.const 5)
        )
        ;;@ ~lib/allocator/tlsf.ts:281:23
        (get_local $4)
       )
       (i32.const 2)
      )
     )
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
      (i32.store offset=4
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:286:8
        (get_local $0)
        (i32.shl
         ;;@ ~lib/allocator/tlsf.ts:286:22
         (get_local $3)
         (i32.const 2)
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:286:26
       (tee_local $1
        (i32.and
         (i32.load offset=4
          (i32.add
           ;;@ ~lib/allocator/tlsf.ts:285:20
           (get_local $0)
           (i32.shl
            ;;@ ~lib/allocator/tlsf.ts:285:34
            (get_local $3)
            (i32.const 2)
           )
          )
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
 (func $~lib/allocator/tlsf/Root#insert (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
       (i32.add
        (i32.add
         ;;@ ~lib/allocator/tlsf.ts:197:30
         (get_local $1)
         (i32.const 8)
        )
        (i32.and
         (i32.load
          (get_local $1)
         )
         (i32.const -4)
        )
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
       (i32.add
        (i32.add
         ;;@ ~lib/allocator/tlsf.ts:204:14
         (get_local $1)
         (i32.const 8)
        )
        (i32.and
         (i32.load
          (get_local $1)
         )
         (i32.const -4)
        )
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
   (i32.load offset=96
    (i32.add
     ;;@ ~lib/allocator/tlsf.ts:240:15
     (get_local $0)
     (i32.shl
      (i32.add
       (i32.shl
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
                (i32.sub
                 (i32.const 31)
                 (i32.clz
                  ;;@ ~lib/allocator/tlsf.ts:234:22
                  (get_local $3)
                 )
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
        (i32.const 5)
       )
       ;;@ ~lib/allocator/tlsf.ts:240:32
       (get_local $3)
      )
      (i32.const 2)
     )
    )
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
  (i32.store offset=96
   (i32.add
    ;;@ ~lib/allocator/tlsf.ts:244:4
    (get_local $0)
    (i32.shl
     (i32.add
      (i32.shl
       ;;@ ~lib/allocator/tlsf.ts:244:17
       (get_local $2)
       (i32.const 5)
      )
      ;;@ ~lib/allocator/tlsf.ts:244:21
      (get_local $3)
     )
     (i32.const 2)
    )
   )
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
  (i32.store offset=4
   (i32.add
    ;;@ ~lib/allocator/tlsf.ts:248:4
    (get_local $0)
    (i32.shl
     ;;@ ~lib/allocator/tlsf.ts:248:18
     (get_local $2)
     (i32.const 2)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:248:22
   (i32.or
    (i32.load offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       ;;@ ~lib/allocator/tlsf.ts:248:36
       (get_local $2)
       (i32.const 2)
      )
     )
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
 (func $~lib/allocator/tlsf/free_memory (; 4 ;) (type $iv) (param $0 i32)
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
 (func $assembly/ugc/Control#step (; 5 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/ugc.ts:163:15
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
       ;;@ assembly/ugc.ts:178:10
       (get_local $1)
       (i32.or
        (i32.load
         (get_local $1)
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
       ;;@ assembly/ugc.ts:179:27
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
        ;;@ assembly/ugc.ts:187:25
        (i32.xor
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
        ;;@ assembly/ugc.ts:198:27
        (get_local $1)
        (i32.const 8)
       )
      )
     )
     (call $~lib/allocator/tlsf/free_memory
      (get_local $1)
     )
    )
    ;;@ assembly/ugc.ts:199:15
    (block
     (i32.store
      (tee_local $1
       ;;@ assembly/ugc.ts:200:10
       (i32.load offset=20
        (get_local $0)
       )
      )
      (i32.or
       (get_local $1)
       (i32.and
        (i32.load
         (get_local $1)
        )
        (i32.const 3)
       )
      )
     )
     (i32.store offset=4
      (get_local $1)
      (i32.or
       (get_local $1)
       (i32.and
        (i32.load offset=4
         (get_local $1)
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
  ;;@ assembly/ugc.ts:265:2
  (set_local $1
   (i32.ne
    (i32.and
     (i32.load8_u offset=28
      ;;@ assembly/ugc.ts:265:15
      (get_global $assembly/ugc/GC)
     )
     (i32.const 128)
    )
    (i32.const 0)
   )
  )
  ;;@ assembly/ugc.ts:266:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:266:14
   (i32.const 0)
  )
  (if
   (i32.eqz
    (i32.load8_u offset=28
     (tee_local $0
      ;;@ assembly/ugc.ts:267:2
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
  ;;@ assembly/ugc.ts:268:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:268:14
   (get_local $1)
  )
 )
 (func $assembly/ugc/gc_pause (; 7 ;) (type $v)
  ;;@ assembly/ugc.ts:254:33
  (call $assembly/ugc/Control#set:paused
   ;;@ assembly/ugc.ts:255:2
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:255:14
   (i32.const 1)
  )
 )
 (func $assembly/ugc/gc_resume (; 8 ;) (type $v)
  ;;@ assembly/ugc.ts:259:34
  (call $assembly/ugc/Control#set:paused
   ;;@ assembly/ugc.ts:260:2
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:260:14
   (i32.const 0)
  )
 )
 (func $start (; 9 ;) (type $v)
  (set_global $assembly/ugc/GC
   ;;@ assembly/ugc.ts:247:17
   (call $assembly/ugc/Control.create
    ;;@ assembly/ugc.ts:247:24
    (get_global $HEAP_BASE)
   )
  )
 )
)
