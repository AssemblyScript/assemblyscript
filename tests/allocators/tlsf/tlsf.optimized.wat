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
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/allocator/tlsf/Root#set:tailRef" (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ (lib)/allocator/tlsf.ts:174:30
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:174:43
   (i32.const 3040)
   ;;@ (lib)/allocator/tlsf.ts:174:46
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setSLMap" (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:138:4
  (i32.store offset=4
   ;;@ (lib)/allocator/tlsf.ts:138:15
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:138:41
    (i32.shl
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:138:46
     (i32.const 2)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:138:49
   (get_local $2)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setHead" (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:162:4
  (i32.store offset=96
   ;;@ (lib)/allocator/tlsf.ts:163:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:163:32
    (i32.shl
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:163:33
      (i32.shl
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:163:38
       (i32.const 5)
      )
      ;;@ (lib)/allocator/tlsf.ts:163:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:163:61
     (i32.const 2)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:164:6
   (get_local $3)
  )
 )
 (func "$(lib)/allocator/tlsf/Block#get:right" (; 3 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:83:11
  (i32.add
   ;;@ (lib)/allocator/tlsf.ts:85:8
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:85:34
    (i32.const 4)
   )
   ;;@ (lib)/allocator/tlsf.ts:85:47
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:85:48
    (i32.load
     (get_local $0)
    )
    (i32.const -4)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/fls<usize>" (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:423:9
  (i32.sub
   (i32.const 31)
   ;;@ (lib)/allocator/tlsf.ts:423:15
   (i32.clz
    ;;@ (lib)/allocator/tlsf.ts:423:22
    (get_local $0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getHead" (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:153:11
  (i32.load offset=96
   ;;@ (lib)/allocator/tlsf.ts:154:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:154:32
    (i32.shl
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:154:33
      (i32.shl
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:154:38
       (i32.const 5)
      )
      ;;@ (lib)/allocator/tlsf.ts:154:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:154:61
     (i32.const 2)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getSLMap" (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:132:11
  (i32.load offset=4
   ;;@ (lib)/allocator/tlsf.ts:132:21
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:132:47
    (i32.shl
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:132:52
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
   ;;@ (lib)/allocator/tlsf.ts:257:4
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:257:8
    (i32.lt_u
     ;;@ (lib)/allocator/tlsf.ts:252:4
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:252:15
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:250:20
       (i32.load
        (get_local $1)
       )
       (i32.const -4)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:257:15
     (i32.const 128)
    )
    ;;@ (lib)/allocator/tlsf.ts:257:24
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:259:6
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:259:11
      (i32.div_u
       ;;@ (lib)/allocator/tlsf.ts:259:17
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:259:24
       (i32.const 4)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:258:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:260:11
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:262:6
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:262:11
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:262:17
       (i32.shr_u
        ;;@ (lib)/allocator/tlsf.ts:262:18
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:262:26
        (i32.sub
         ;;@ (lib)/allocator/tlsf.ts:261:6
         (tee_local $3
          ;;@ (lib)/allocator/tlsf.ts:261:11
          (call "$(lib)/allocator/tlsf/fls<usize>"
           ;;@ (lib)/allocator/tlsf.ts:261:22
           (get_local $2)
          )
         )
         ;;@ (lib)/allocator/tlsf.ts:262:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     (i32.sub
      ;;@ (lib)/allocator/tlsf.ts:263:6
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:263:12
      (i32.const 6)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:268:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:268:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:269:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:267:4
   (tee_local $5
    ;;@ (lib)/allocator/tlsf.ts:267:15
    (i32.load offset=4
     (get_local $1)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:269:14
   (i32.store offset=8
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:269:26
    (get_local $2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:270:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:270:8
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:270:14
   (i32.store offset=4
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:270:26
    (get_local $5)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:273:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:273:8
   (i32.eq
    (get_local $1)
    ;;@ (lib)/allocator/tlsf.ts:273:22
    (call "$(lib)/allocator/tlsf/Root#getHead"
     ;;@ (lib)/allocator/tlsf.ts:273:17
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:273:30
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:273:34
     (get_local $4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:273:39
   (block
    ;;@ (lib)/allocator/tlsf.ts:274:11
    (call "$(lib)/allocator/tlsf/Root#setHead"
     ;;@ (lib)/allocator/tlsf.ts:274:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:274:19
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:274:23
     (get_local $4)
     ;;@ (lib)/allocator/tlsf.ts:274:27
     (get_local $2)
    )
    ;;@ (lib)/allocator/tlsf.ts:277:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:277:10
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:277:11
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:277:17
     (block
      ;;@ (lib)/allocator/tlsf.ts:279:13
      (call "$(lib)/allocator/tlsf/Root#setSLMap"
       ;;@ (lib)/allocator/tlsf.ts:279:8
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:279:22
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:279:26
       (tee_local $1
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:278:25
         (call "$(lib)/allocator/tlsf/Root#getSLMap"
          ;;@ (lib)/allocator/tlsf.ts:278:20
          (get_local $0)
          ;;@ (lib)/allocator/tlsf.ts:278:34
          (get_local $3)
         )
         ;;@ (lib)/allocator/tlsf.ts:279:35
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:279:36
          (i32.shl
           ;;@ (lib)/allocator/tlsf.ts:279:37
           (i32.const 1)
           ;;@ (lib)/allocator/tlsf.ts:279:42
           (get_local $4)
          )
          (i32.const -1)
         )
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:282:8
      (if
       ;;@ (lib)/allocator/tlsf.ts:282:12
       (i32.eqz
        ;;@ (lib)/allocator/tlsf.ts:282:13
        (get_local $1)
       )
       ;;@ (lib)/allocator/tlsf.ts:282:20
       (i32.store
        (get_local $0)
        (i32.and
         (i32.load
          (get_local $0)
         )
         ;;@ (lib)/allocator/tlsf.ts:282:34
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:282:35
          (i32.shl
           ;;@ (lib)/allocator/tlsf.ts:282:36
           (i32.const 1)
           ;;@ (lib)/allocator/tlsf.ts:282:41
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
  ;;@ (lib)/allocator/tlsf.ts:183:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:183:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:194:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:194:8
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:191:4
    (tee_local $5
     ;;@ (lib)/allocator/tlsf.ts:191:20
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:190:4
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:190:23
       (call "$(lib)/allocator/tlsf/Block#get:right"
        ;;@ (lib)/allocator/tlsf.ts:190:30
        (get_local $1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:194:20
    (i32.const 1)
   )
   ;;@ (lib)/allocator/tlsf.ts:194:26
   (block
    ;;@ (lib)/allocator/tlsf.ts:195:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:195:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:195:18
     (get_local $4)
    )
    ;;@ (lib)/allocator/tlsf.ts:196:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:196:19
     (tee_local $2
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:196:20
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:196:33
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:196:46
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:196:47
         (get_local $5)
         (i32.const -4)
        )
        ;;@ (lib)/allocator/tlsf.ts:196:33
        (i32.const 4)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:198:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:198:18
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:197:6
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:197:14
       (call "$(lib)/allocator/tlsf/Block#get:right"
        (get_local $1)
       )
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:203:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:203:8
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:203:20
    (i32.const 2)
   )
   ;;@ (lib)/allocator/tlsf.ts:203:31
   (block
    ;;@ (lib)/allocator/tlsf.ts:205:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:205:21
     (i32.load
      ;;@ (lib)/allocator/tlsf.ts:204:6
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
    ;;@ (lib)/allocator/tlsf.ts:207:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:207:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:207:18
     (get_local $1)
    )
    ;;@ (lib)/allocator/tlsf.ts:208:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:208:18
     (tee_local $3
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:208:19
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:208:31
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:208:44
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:208:45
         (get_local $2)
         (i32.const -4)
        )
        ;;@ (lib)/allocator/tlsf.ts:208:31
        (i32.const 4)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:210:6
    (set_local $2
     ;;@ (lib)/allocator/tlsf.ts:210:18
     (get_local $3)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:214:4
  (i32.store
   (get_local $4)
   ;;@ (lib)/allocator/tlsf.ts:214:17
   (i32.or
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:214:29
    (i32.const 2)
   )
  )
  (i32.store
   (i32.sub
    (get_local $4)
    (i32.const 4)
   )
   (tee_local $3
    ;;@ (lib)/allocator/tlsf.ts:215:17
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:233:4
  (set_local $4
   ;;@ (lib)/allocator/tlsf.ts:233:20
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:233:15
    (get_local $0)
    (tee_local $2
     ;;@ (lib)/allocator/tlsf.ts:223:4
     (if (result i32)
      ;;@ (lib)/allocator/tlsf.ts:223:8
      (i32.lt_u
       ;;@ (lib)/allocator/tlsf.ts:218:4
       (tee_local $3
        ;;@ (lib)/allocator/tlsf.ts:218:11
        (i32.and
         (get_local $2)
         (i32.const -4)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:223:15
       (i32.const 128)
      )
      ;;@ (lib)/allocator/tlsf.ts:223:24
      (block (result i32)
       ;;@ (lib)/allocator/tlsf.ts:225:6
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:225:11
        (i32.div_u
         ;;@ (lib)/allocator/tlsf.ts:225:17
         (get_local $3)
         ;;@ (lib)/allocator/tlsf.ts:225:24
         (i32.const 4)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:224:11
       (i32.const 0)
      )
      ;;@ (lib)/allocator/tlsf.ts:226:11
      (block (result i32)
       ;;@ (lib)/allocator/tlsf.ts:228:6
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:228:11
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:228:17
         (i32.shr_u
          ;;@ (lib)/allocator/tlsf.ts:228:18
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:228:26
          (i32.sub
           ;;@ (lib)/allocator/tlsf.ts:227:6
           (tee_local $2
            ;;@ (lib)/allocator/tlsf.ts:227:11
            (call "$(lib)/allocator/tlsf/fls<usize>"
             ;;@ (lib)/allocator/tlsf.ts:227:22
             (get_local $3)
            )
           )
           ;;@ (lib)/allocator/tlsf.ts:228:32
           (i32.const 5)
          )
         )
         (i32.const 32)
        )
       )
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:229:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:229:12
        (i32.const 6)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:233:32
    (get_local $3)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:234:4
  (i32.store offset=4
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:234:17
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:235:4
  (i32.store offset=8
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:235:17
   (get_local $4)
  )
  ;;@ (lib)/allocator/tlsf.ts:236:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:236:8
   (get_local $4)
   ;;@ (lib)/allocator/tlsf.ts:236:14
   (i32.store offset=4
    (get_local $4)
    ;;@ (lib)/allocator/tlsf.ts:236:26
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:237:9
  (call "$(lib)/allocator/tlsf/Root#setHead"
   ;;@ (lib)/allocator/tlsf.ts:237:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:237:17
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:237:21
   (get_local $3)
   ;;@ (lib)/allocator/tlsf.ts:237:25
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:240:4
  (i32.store
   (get_local $0)
   (i32.or
    (i32.load
     (get_local $0)
    )
    ;;@ (lib)/allocator/tlsf.ts:240:18
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:240:19
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:240:24
     (get_local $2)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:241:9
  (call "$(lib)/allocator/tlsf/Root#setSLMap"
   ;;@ (lib)/allocator/tlsf.ts:241:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:241:18
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:241:22
   (i32.or
    ;;@ (lib)/allocator/tlsf.ts:241:27
    (call "$(lib)/allocator/tlsf/Root#getSLMap"
     ;;@ (lib)/allocator/tlsf.ts:241:22
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:241:36
     (get_local $2)
    )
    ;;@ (lib)/allocator/tlsf.ts:241:42
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:241:43
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:241:48
     (get_local $3)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#addMemory" (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/tlsf.ts:376:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:374:4
   (tee_local $3
    (i32.load
     (i32.const 3040)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:380:6
   (if
    ;;@ (lib)/allocator/tlsf.ts:380:10
    (i32.eq
     (i32.sub
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:380:18
      (i32.const 4)
     )
     ;;@ (lib)/allocator/tlsf.ts:380:32
     (get_local $3)
    )
    ;;@ (lib)/allocator/tlsf.ts:380:41
    (block
     ;;@ (lib)/allocator/tlsf.ts:381:8
     (set_local $1
      (i32.sub
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:381:17
       (i32.const 4)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:382:8
     (set_local $4
      ;;@ (lib)/allocator/tlsf.ts:382:19
      (i32.load
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:391:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:391:8
   (i32.lt_u
    ;;@ (lib)/allocator/tlsf.ts:390:4
    (tee_local $3
     ;;@ (lib)/allocator/tlsf.ts:390:15
     (i32.sub
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:390:21
      (get_local $1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:391:45
    (i32.const 20)
   )
   ;;@ (lib)/allocator/tlsf.ts:392:13
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:398:4
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:397:4
   (tee_local $2
    ;;@ (lib)/allocator/tlsf.ts:397:15
    (get_local $1)
   )
   ;;@ (lib)/allocator/tlsf.ts:398:16
   (i32.or
    (i32.or
     ;;@ (lib)/allocator/tlsf.ts:396:19
     (i32.sub
      (get_local $3)
      (i32.const 8)
     )
     ;;@ (lib)/allocator/tlsf.ts:398:27
     (i32.const 1)
    )
    ;;@ (lib)/allocator/tlsf.ts:398:34
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:398:35
     (get_local $4)
     ;;@ (lib)/allocator/tlsf.ts:398:46
     (i32.const 2)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:399:4
  (i32.store offset=4
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:399:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:400:4
  (i32.store offset=8
   (get_local $2)
   ;;@ (lib)/allocator/tlsf.ts:400:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:404:4
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:403:4
   (tee_local $1
    ;;@ (lib)/allocator/tlsf.ts:403:15
    (i32.sub
     ;;@ (lib)/allocator/tlsf.ts:403:33
     (i32.add
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:403:41
      (get_local $3)
     )
     ;;@ (lib)/allocator/tlsf.ts:403:48
     (i32.const 4)
    )
   )
   (i32.const 2)
  )
  ;;@ (lib)/allocator/tlsf.ts:405:4
  (call "$(lib)/allocator/tlsf/Root#set:tailRef"
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:405:19
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:407:9
  (call "$(lib)/allocator/tlsf/Root#insert"
   ;;@ (lib)/allocator/tlsf.ts:407:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:407:16
   (get_local $2)
  )
  ;;@ (lib)/allocator/tlsf.ts:409:11
  (i32.const 1)
 )
 (func "$(lib)/allocator/tlsf/Root#search" (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:293:4
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:293:8
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:293:15
     (i32.const 128)
    )
    ;;@ (lib)/allocator/tlsf.ts:295:11
    (i32.div_u
     ;;@ (lib)/allocator/tlsf.ts:295:17
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:295:24
     (i32.const 4)
    )
    ;;@ (lib)/allocator/tlsf.ts:296:11
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:299:6
     (set_local $1
      ;;@ (lib)/allocator/tlsf.ts:299:11
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:299:17
       (i32.shr_u
        ;;@ (lib)/allocator/tlsf.ts:299:18
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:299:26
        (i32.sub
         ;;@ (lib)/allocator/tlsf.ts:298:6
         (tee_local $2
          ;;@ (lib)/allocator/tlsf.ts:298:11
          (call "$(lib)/allocator/tlsf/fls<usize>"
           ;;@ (lib)/allocator/tlsf.ts:298:22
           (get_local $1)
          )
         )
         ;;@ (lib)/allocator/tlsf.ts:299:32
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:300:6
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:300:12
       (i32.const 6)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:302:6
     (if (result i32)
      ;;@ (lib)/allocator/tlsf.ts:302:10
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:302:15
       (i32.const 31)
      )
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:302:30
       (get_local $1)
       (i32.const 1)
      )
      ;;@ (lib)/allocator/tlsf.ts:303:11
      (block (result i32)
       (set_local $2
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:303:13
         (get_local $2)
         (i32.const 1)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:303:22
       (i32.const 0)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:309:4
  (if (result i32)
   ;;@ (lib)/allocator/tlsf.ts:307:4
   (tee_local $1
    ;;@ (lib)/allocator/tlsf.ts:307:16
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:307:21
     (call "$(lib)/allocator/tlsf/Root#getSLMap"
      ;;@ (lib)/allocator/tlsf.ts:307:16
      (get_local $0)
      ;;@ (lib)/allocator/tlsf.ts:307:30
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:307:36
     (i32.shl
      (i32.const -1)
      ;;@ (lib)/allocator/tlsf.ts:307:43
      (get_local $1)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:320:18
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:320:13
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:320:26
    (get_local $2)
    (i32.ctz
     (get_local $1)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:312:6
   (if (result i32)
    ;;@ (lib)/allocator/tlsf.ts:311:6
    (tee_local $1
     ;;@ (lib)/allocator/tlsf.ts:311:18
     (i32.and
      (i32.load
       (get_local $0)
      )
      ;;@ (lib)/allocator/tlsf.ts:311:31
      (i32.shl
       (i32.const -1)
       ;;@ (lib)/allocator/tlsf.ts:311:38
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:311:39
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:311:44
        (i32.const 1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:314:13
    (block (result i32)
     ;;@ (lib)/allocator/tlsf.ts:316:8
     (set_local $1
      ;;@ (lib)/allocator/tlsf.ts:316:16
      (call "$(lib)/allocator/tlsf/Root#getSLMap"
       ;;@ (lib)/allocator/tlsf.ts:316:23
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:315:8
       (tee_local $2
        (i32.ctz
         (get_local $1)
        )
       )
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:317:20
     (call "$(lib)/allocator/tlsf/Root#getHead"
      ;;@ (lib)/allocator/tlsf.ts:317:15
      (get_local $0)
      ;;@ (lib)/allocator/tlsf.ts:317:28
      (get_local $2)
      (i32.ctz
       (get_local $1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:313:15
    (i32.const 0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#use" (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/tlsf.ts:340:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:340:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:345:9
  (call "$(lib)/allocator/tlsf/Root#remove"
   ;;@ (lib)/allocator/tlsf.ts:345:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:345:16
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:349:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:349:8
   (i32.ge_u
    ;;@ (lib)/allocator/tlsf.ts:348:4
    (tee_local $4
     ;;@ (lib)/allocator/tlsf.ts:348:20
     (i32.sub
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:348:21
       (get_local $3)
       (i32.const -4)
      )
      ;;@ (lib)/allocator/tlsf.ts:348:42
      (get_local $2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:349:34
    (i32.const 16)
   )
   ;;@ (lib)/allocator/tlsf.ts:349:50
   (block
    ;;@ (lib)/allocator/tlsf.ts:350:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:350:19
     (i32.or
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:350:26
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:350:27
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:350:39
       (i32.const 2)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:355:6
    (i32.store
     ;;@ (lib)/allocator/tlsf.ts:352:6
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:352:18
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:353:8
       (i32.add
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:353:35
        (i32.const 4)
       )
       ;;@ (lib)/allocator/tlsf.ts:353:48
       (get_local $2)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:355:19
     (i32.or
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:355:20
       (get_local $4)
       ;;@ (lib)/allocator/tlsf.ts:355:32
       (i32.const 4)
      )
      ;;@ (lib)/allocator/tlsf.ts:355:46
      (i32.const 1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:356:11
    (call "$(lib)/allocator/tlsf/Root#insert"
     ;;@ (lib)/allocator/tlsf.ts:356:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:356:18
     (get_local $2)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:359:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:360:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:360:19
     (i32.and
      (get_local $3)
      (i32.const -2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:362:6
    (i32.store
     ;;@ (lib)/allocator/tlsf.ts:361:6
     (tee_local $0
      ;;@ (lib)/allocator/tlsf.ts:361:25
      (call "$(lib)/allocator/tlsf/Block#get:right"
       ;;@ (lib)/allocator/tlsf.ts:361:32
       (get_local $1)
      )
     )
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:362:6
      (i32.load
       (get_local $0)
      )
      (i32.const -3)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:365:11
  (i32.add
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:365:38
   (i32.const 4)
  )
 )
 (func "$(lib)/allocator/tlsf/allocate_memory" (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ (lib)/allocator/tlsf.ts:437:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:437:6
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:436:2
    (tee_local $2
     ;;@ (lib)/allocator/tlsf.ts:436:13
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:437:13
   (block
    ;;@ (lib)/allocator/tlsf.ts:439:4
    (set_global "$(lib)/allocator/tlsf/ROOT"
     ;;@ (lib)/allocator/tlsf.ts:439:11
     (tee_local $2
      ;;@ (lib)/allocator/tlsf.ts:438:4
      (tee_local $4
       ;;@ (lib)/allocator/tlsf.ts:438:21
       (i32.and
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:438:22
         (get_global $HEAP_BASE)
         ;;@ (lib)/allocator/tlsf.ts:438:34
         (i32.const 3)
        )
        (i32.const -4)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:440:4
    (call "$(lib)/allocator/tlsf/Root#set:tailRef"
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:440:19
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:441:4
    (i32.store
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:441:17
     (i32.const 0)
    )
    (loop $continue|0
     (if
      ;;@ (lib)/allocator/tlsf.ts:442:28
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:442:33
       (i32.const 23)
      )
      (block
       ;;@ (lib)/allocator/tlsf.ts:443:11
       (call "$(lib)/allocator/tlsf/Root#setSLMap"
        ;;@ (lib)/allocator/tlsf.ts:443:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:443:20
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:443:24
        (i32.const 0)
       )
       ;;@ (lib)/allocator/tlsf.ts:444:11
       (set_local $3
        ;;@ (lib)/allocator/tlsf.ts:444:25
        (i32.const 0)
       )
       (loop $continue|1
        (if
         ;;@ (lib)/allocator/tlsf.ts:444:28
         (i32.lt_u
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:444:33
          (i32.const 32)
         )
         (block
          ;;@ (lib)/allocator/tlsf.ts:445:13
          (call "$(lib)/allocator/tlsf/Root#setHead"
           ;;@ (lib)/allocator/tlsf.ts:445:8
           (get_local $2)
           ;;@ (lib)/allocator/tlsf.ts:445:21
           (get_local $1)
           ;;@ (lib)/allocator/tlsf.ts:445:25
           (get_local $3)
           ;;@ (lib)/allocator/tlsf.ts:445:29
           (i32.const 0)
          )
          ;;@ (lib)/allocator/tlsf.ts:444:42
          (set_local $3
           (i32.add
            ;;@ (lib)/allocator/tlsf.ts:444:44
            (get_local $3)
            (i32.const 1)
           )
          )
          (br $continue|1)
         )
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:442:42
       (set_local $1
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:442:44
         (get_local $1)
         (i32.const 1)
        )
       )
       (br $continue|0)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:448:9
    (drop
     (call "$(lib)/allocator/tlsf/Root#addMemory"
      ;;@ (lib)/allocator/tlsf.ts:448:4
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:448:19
      (i32.add
       (get_local $4)
       ;;@ (lib)/allocator/tlsf.ts:448:32
       (i32.const 3044)
      )
      ;;@ (lib)/allocator/tlsf.ts:448:43
      (i32.shl
       (current_memory)
       ;;@ (lib)/allocator/tlsf.ts:448:63
       (i32.const 16)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:452:2
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:452:20
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:453:2
  (if
   (select
    ;;@ (lib)/allocator/tlsf.ts:453:14
    (i32.lt_u
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:453:21
     (i32.const 1073741824)
    )
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:453:6
    (get_local $0)
   )
   ;;@ (lib)/allocator/tlsf.ts:453:37
   (block
    ;;@ (lib)/allocator/tlsf.ts:457:4
    (if
     ;;@ (lib)/allocator/tlsf.ts:457:8
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:456:4
      (tee_local $1
       ;;@ (lib)/allocator/tlsf.ts:456:21
       (call "$(lib)/allocator/tlsf/Root#search"
        ;;@ (lib)/allocator/tlsf.ts:456:16
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:454:4
        (tee_local $0
         ;;@ (lib)/allocator/tlsf.ts:454:11
         (select
          (tee_local $1
           ;;@ (lib)/allocator/tlsf.ts:454:22
           (i32.and
            (i32.add
             ;;@ (lib)/allocator/tlsf.ts:454:23
             (get_local $0)
             ;;@ (lib)/allocator/tlsf.ts:454:30
             (i32.const 3)
            )
            (i32.const -4)
           )
          )
          (tee_local $3
           ;;@ (lib)/allocator/tlsf.ts:454:51
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
     ;;@ (lib)/allocator/tlsf.ts:457:16
     (block
      ;;@ (lib)/allocator/tlsf.ts:463:6
      (if
       ;;@ (lib)/allocator/tlsf.ts:463:10
       (i32.lt_s
        (grow_memory
         ;;@ (lib)/allocator/tlsf.ts:462:24
         (select
          (tee_local $1
           ;;@ (lib)/allocator/tlsf.ts:460:6
           (tee_local $4
            ;;@ (lib)/allocator/tlsf.ts:460:24
            (current_memory)
           )
          )
          (tee_local $3
           ;;@ (lib)/allocator/tlsf.ts:461:6
           (tee_local $5
            ;;@ (lib)/allocator/tlsf.ts:461:24
            (i32.shr_u
             (i32.and
              ;;@ (lib)/allocator/tlsf.ts:461:25
              (i32.add
               ;;@ (lib)/allocator/tlsf.ts:461:26
               (get_local $0)
               ;;@ (lib)/allocator/tlsf.ts:461:33
               (i32.const 65535)
              )
              (i32.const -65536)
             )
             ;;@ (lib)/allocator/tlsf.ts:461:56
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
        ;;@ (lib)/allocator/tlsf.ts:463:37
        (i32.const 0)
       )
       ;;@ (lib)/allocator/tlsf.ts:464:8
       (if
        ;;@ (lib)/allocator/tlsf.ts:464:12
        (i32.lt_s
         (grow_memory
          ;;@ (lib)/allocator/tlsf.ts:464:24
          (get_local $5)
         )
         ;;@ (lib)/allocator/tlsf.ts:464:39
         (i32.const 0)
        )
        ;;@ (lib)/allocator/tlsf.ts:465:10
        (unreachable)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:469:11
      (drop
       (call "$(lib)/allocator/tlsf/Root#addMemory"
        ;;@ (lib)/allocator/tlsf.ts:469:6
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:469:21
        (i32.shl
         (get_local $4)
         ;;@ (lib)/allocator/tlsf.ts:469:43
         (i32.const 16)
        )
        ;;@ (lib)/allocator/tlsf.ts:469:47
        (i32.shl
         ;;@ (lib)/allocator/tlsf.ts:468:23
         (current_memory)
         ;;@ (lib)/allocator/tlsf.ts:469:68
         (i32.const 16)
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:470:6
      (set_local $1
       ;;@ (lib)/allocator/tlsf.ts:470:14
       (call "$(lib)/allocator/tlsf/Root#search"
        ;;@ (lib)/allocator/tlsf.ts:470:21
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:470:33
        (get_local $0)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:474:4
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:474:16
     (call "$(lib)/allocator/tlsf/Root#use"
      ;;@ (lib)/allocator/tlsf.ts:474:11
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:474:20
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:474:27
      (get_local $0)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:477:9
  (get_local $1)
 )
 (func "$(lib)/allocator/tlsf/free_memory" (; 13 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:483:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:483:6
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:485:4
   (if
    ;;@ (lib)/allocator/tlsf.ts:484:4
    (tee_local $1
     ;;@ (lib)/allocator/tlsf.ts:484:15
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
    ;;@ (lib)/allocator/tlsf.ts:485:14
    (block
     ;;@ (lib)/allocator/tlsf.ts:489:6
     (i32.store
      ;;@ (lib)/allocator/tlsf.ts:486:6
      (tee_local $2
       ;;@ (lib)/allocator/tlsf.ts:486:18
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:486:36
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:486:43
        (i32.const 4)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:489:19
      (i32.or
       ;;@ (lib)/allocator/tlsf.ts:487:22
       (i32.load
        (get_local $2)
       )
       ;;@ (lib)/allocator/tlsf.ts:489:31
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:490:11
     (call "$(lib)/allocator/tlsf/Root#insert"
      ;;@ (lib)/allocator/tlsf.ts:490:6
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:490:18
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:490:36
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:490:43
       (i32.const 4)
      )
     )
    )
   )
  )
 )
 (func $start (; 14 ;) (type $v)
  (nop)
 )
)
