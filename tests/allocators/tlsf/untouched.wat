(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/tlsf/SL_BITS i32 (i32.const 5))
 (global $~lib/allocator/tlsf/SL_SIZE i32 (i32.const 32))
 (global $~lib/allocator/tlsf/SB_BITS i32 (i32.const 8))
 (global $~lib/allocator/tlsf/SB_SIZE i32 (i32.const 256))
 (global $~lib/allocator/tlsf/FL_BITS i32 (i32.const 22))
 (global $~lib/allocator/tlsf/FREE i32 (i32.const 1))
 (global $~lib/allocator/tlsf/LEFT_FREE i32 (i32.const 2))
 (global $~lib/allocator/tlsf/TAGS i32 (i32.const 3))
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/allocator/tlsf/Root.SL_START i32 (i32.const 4))
 (global $~lib/allocator/tlsf/Root.SL_END i32 (i32.const 92))
 (global $~lib/allocator/tlsf/Root.HL_START i32 (i32.const 96))
 (global $~lib/allocator/tlsf/Root.HL_END i32 (i32.const 2912))
 (global $~lib/allocator/tlsf/Root.SIZE i32 (i32.const 2916))
 (global $~lib/allocator/tlsf/Block.INFO i32 (i32.const 8))
 (global $~lib/allocator/tlsf/Block.MIN_SIZE i32 (i32.const 16))
 (global $~lib/allocator/tlsf/Block.MAX_SIZE i32 (i32.const 1073741824))
 (global $HEAP_BASE i32 (i32.const 56))
 (memory $0 1)
 (data (i32.const 8) "\16\00\00\00~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (export "memory" (memory $0))
 (export "memory.fill" (func $~lib/memory/memory.fill))
 (export "memory.copy" (func $~lib/memory/memory.copy))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (start $start)
 (func $~lib/memory/memset (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  ;;@ ~lib/memory.ts:244:2
  (if
   ;;@ ~lib/memory.ts:244:6
   (i32.eqz
    ;;@ ~lib/memory.ts:244:7
    (get_local $2)
   )
   ;;@ ~lib/memory.ts:244:10
   (return)
  )
  ;;@ ~lib/memory.ts:245:2
  (i32.store8
   ;;@ ~lib/memory.ts:245:12
   (get_local $0)
   ;;@ ~lib/memory.ts:245:18
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:246:2
  (i32.store8
   ;;@ ~lib/memory.ts:246:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:246:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:246:23
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:246:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:247:2
  (if
   ;;@ ~lib/memory.ts:247:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:247:11
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:247:14
   (return)
  )
  ;;@ ~lib/memory.ts:249:2
  (i32.store8
   ;;@ ~lib/memory.ts:249:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:249:19
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:249:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:250:2
  (i32.store8
   ;;@ ~lib/memory.ts:250:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:250:19
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:250:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:251:2
  (i32.store8
   ;;@ ~lib/memory.ts:251:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:251:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:251:23
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:251:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:252:2
  (i32.store8
   ;;@ ~lib/memory.ts:252:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:252:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:252:23
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:252:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:253:2
  (if
   ;;@ ~lib/memory.ts:253:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:253:11
    (i32.const 6)
   )
   ;;@ ~lib/memory.ts:253:14
   (return)
  )
  ;;@ ~lib/memory.ts:254:2
  (i32.store8
   ;;@ ~lib/memory.ts:254:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:254:19
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:254:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:255:2
  (i32.store8
   ;;@ ~lib/memory.ts:255:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:255:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:255:23
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:255:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:256:2
  (if
   ;;@ ~lib/memory.ts:256:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:256:11
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:256:14
   (return)
  )
  ;;@ ~lib/memory.ts:259:2
  (set_local $3
   ;;@ ~lib/memory.ts:259:17
   (i32.and
    (i32.sub
     (i32.const 0)
     ;;@ ~lib/memory.ts:259:18
     (get_local $0)
    )
    ;;@ ~lib/memory.ts:259:25
    (i32.const 3)
   )
  )
  ;;@ ~lib/memory.ts:260:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:260:10
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:261:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:261:7
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:262:2
  (set_local $2
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:262:7
    (i32.const -4)
   )
  )
  ;;@ ~lib/memory.ts:264:2
  (set_local $4
   ;;@ ~lib/memory.ts:264:17
   (i32.mul
    (i32.div_u
     (i32.const -1)
     ;;@ ~lib/memory.ts:264:27
     (i32.const 255)
    )
    (i32.and
     ;;@ ~lib/memory.ts:264:33
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  ;;@ ~lib/memory.ts:267:2
  (i32.store
   ;;@ ~lib/memory.ts:267:13
   (get_local $0)
   ;;@ ~lib/memory.ts:267:19
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:268:2
  (i32.store
   ;;@ ~lib/memory.ts:268:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:268:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:268:24
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:268:27
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:269:2
  (if
   ;;@ ~lib/memory.ts:269:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:269:11
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:269:14
   (return)
  )
  ;;@ ~lib/memory.ts:270:2
  (i32.store
   ;;@ ~lib/memory.ts:270:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:270:20
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:270:23
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:271:2
  (i32.store
   ;;@ ~lib/memory.ts:271:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:271:20
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:271:23
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:272:2
  (i32.store
   ;;@ ~lib/memory.ts:272:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:272:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:272:24
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:272:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:273:2
  (i32.store
   ;;@ ~lib/memory.ts:273:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:273:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:273:24
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:273:27
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:274:2
  (if
   ;;@ ~lib/memory.ts:274:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:274:11
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:274:15
   (return)
  )
  ;;@ ~lib/memory.ts:275:2
  (i32.store
   ;;@ ~lib/memory.ts:275:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:275:20
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:275:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:276:2
  (i32.store
   ;;@ ~lib/memory.ts:276:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:276:20
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:276:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:277:2
  (i32.store
   ;;@ ~lib/memory.ts:277:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:277:20
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:277:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:278:2
  (i32.store
   ;;@ ~lib/memory.ts:278:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:278:20
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:278:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:279:2
  (i32.store
   ;;@ ~lib/memory.ts:279:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:279:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:279:24
    (i32.const 28)
   )
   ;;@ ~lib/memory.ts:279:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:280:2
  (i32.store
   ;;@ ~lib/memory.ts:280:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:280:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:280:24
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:280:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:281:2
  (i32.store
   ;;@ ~lib/memory.ts:281:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:281:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:281:24
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:281:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:282:2
  (i32.store
   ;;@ ~lib/memory.ts:282:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:282:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:282:24
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:282:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:285:2
  (set_local $3
   ;;@ ~lib/memory.ts:285:6
   (i32.add
    (i32.const 24)
    ;;@ ~lib/memory.ts:285:11
    (i32.and
     ;;@ ~lib/memory.ts:285:12
     (get_local $0)
     ;;@ ~lib/memory.ts:285:19
     (i32.const 4)
    )
   )
  )
  ;;@ ~lib/memory.ts:286:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:286:10
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:287:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:287:7
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:290:2
  (set_local $5
   ;;@ ~lib/memory.ts:290:17
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    ;;@ ~lib/memory.ts:290:28
    (i64.shl
     ;;@ ~lib/memory.ts:290:29
     (i64.extend_u/i32
      (get_local $4)
     )
     ;;@ ~lib/memory.ts:290:41
     (i64.const 32)
    )
   )
  )
  ;;@ ~lib/memory.ts:291:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/memory.ts:291:9
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/memory.ts:291:14
      (i32.const 32)
     )
     (block
      (block
       ;;@ ~lib/memory.ts:292:4
       (i64.store
        ;;@ ~lib/memory.ts:292:15
        (get_local $0)
        ;;@ ~lib/memory.ts:292:21
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:293:4
       (i64.store
        ;;@ ~lib/memory.ts:293:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:293:22
         (i32.const 8)
        )
        ;;@ ~lib/memory.ts:293:25
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:294:4
       (i64.store
        ;;@ ~lib/memory.ts:294:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:294:22
         (i32.const 16)
        )
        ;;@ ~lib/memory.ts:294:26
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:295:4
       (i64.store
        ;;@ ~lib/memory.ts:295:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:295:22
         (i32.const 24)
        )
        ;;@ ~lib/memory.ts:295:26
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:296:4
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:296:9
         (i32.const 32)
        )
       )
       ;;@ ~lib/memory.ts:297:4
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:297:12
         (i32.const 32)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/memory/memory.fill (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/memory.ts:11:4
  (call $~lib/memory/memset
   ;;@ ~lib/memory.ts:11:11
   (get_local $0)
   ;;@ ~lib/memory.ts:11:17
   (get_local $1)
   ;;@ ~lib/memory.ts:11:20
   (get_local $2)
  )
 )
 (func $~lib/memory/memcpy (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/memory.ts:59:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/memory.ts:59:9
     (if (result i32)
      (get_local $2)
      ;;@ ~lib/memory.ts:59:14
      (i32.and
       ;;@ ~lib/memory.ts:59:15
       (get_local $1)
       ;;@ ~lib/memory.ts:59:21
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       ;;@ ~lib/memory.ts:60:4
       (i32.store8
        ;;@ ~lib/memory.ts:60:14
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:60:22
        (i32.load8_u
         ;;@ ~lib/memory.ts:60:31
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:61:4
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:65:2
  (if
   ;;@ ~lib/memory.ts:65:6
   (i32.eq
    (i32.and
     ;;@ ~lib/memory.ts:65:7
     (get_local $0)
     ;;@ ~lib/memory.ts:65:14
     (i32.const 3)
    )
    ;;@ ~lib/memory.ts:65:20
    (i32.const 0)
   )
   ;;@ ~lib/memory.ts:65:23
   (block
    (block $break|1
     (loop $continue|1
      (if
       ;;@ ~lib/memory.ts:66:11
       (i32.ge_u
        (get_local $2)
        ;;@ ~lib/memory.ts:66:16
        (i32.const 16)
       )
       (block
        (block
         ;;@ ~lib/memory.ts:67:6
         (i32.store
          ;;@ ~lib/memory.ts:67:17
          (get_local $0)
          ;;@ ~lib/memory.ts:67:28
          (i32.load
           ;;@ ~lib/memory.ts:67:38
           (get_local $1)
          )
         )
         ;;@ ~lib/memory.ts:68:6
         (i32.store
          ;;@ ~lib/memory.ts:68:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:68:25
           (i32.const 4)
          )
          ;;@ ~lib/memory.ts:68:28
          (i32.load
           ;;@ ~lib/memory.ts:68:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:68:45
            (i32.const 4)
           )
          )
         )
         ;;@ ~lib/memory.ts:69:6
         (i32.store
          ;;@ ~lib/memory.ts:69:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:69:25
           (i32.const 8)
          )
          ;;@ ~lib/memory.ts:69:28
          (i32.load
           ;;@ ~lib/memory.ts:69:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:69:45
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:70:6
         (i32.store
          ;;@ ~lib/memory.ts:70:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:70:24
           (i32.const 12)
          )
          ;;@ ~lib/memory.ts:70:28
          (i32.load
           ;;@ ~lib/memory.ts:70:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:70:44
            (i32.const 12)
           )
          )
         )
         ;;@ ~lib/memory.ts:71:6
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:71:13
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:71:17
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:71:25
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:71:29
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/memory.ts:71:34
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:73:4
    (if
     ;;@ ~lib/memory.ts:73:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:73:12
      (i32.const 8)
     )
     ;;@ ~lib/memory.ts:73:15
     (block
      ;;@ ~lib/memory.ts:74:6
      (i32.store
       ;;@ ~lib/memory.ts:74:17
       (get_local $0)
       ;;@ ~lib/memory.ts:74:27
       (i32.load
        ;;@ ~lib/memory.ts:74:37
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:75:6
      (i32.store
       ;;@ ~lib/memory.ts:75:17
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:75:24
        (i32.const 4)
       )
       ;;@ ~lib/memory.ts:75:27
       (i32.load
        ;;@ ~lib/memory.ts:75:37
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:75:43
         (i32.const 4)
        )
       )
      )
      ;;@ ~lib/memory.ts:76:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:76:14
        (i32.const 8)
       )
      )
      ;;@ ~lib/memory.ts:76:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:76:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:78:4
    (if
     ;;@ ~lib/memory.ts:78:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:78:12
      (i32.const 4)
     )
     ;;@ ~lib/memory.ts:78:15
     (block
      ;;@ ~lib/memory.ts:79:6
      (i32.store
       ;;@ ~lib/memory.ts:79:17
       (get_local $0)
       ;;@ ~lib/memory.ts:79:23
       (i32.load
        ;;@ ~lib/memory.ts:79:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:80:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:80:14
        (i32.const 4)
       )
      )
      ;;@ ~lib/memory.ts:80:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:80:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:82:4
    (if
     ;;@ ~lib/memory.ts:82:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:82:12
      (i32.const 2)
     )
     ;;@ ~lib/memory.ts:82:15
     (block
      ;;@ ~lib/memory.ts:83:6
      (i32.store16
       ;;@ ~lib/memory.ts:83:17
       (get_local $0)
       ;;@ ~lib/memory.ts:83:23
       (i32.load16_u
        ;;@ ~lib/memory.ts:83:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:84:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:84:14
        (i32.const 2)
       )
      )
      ;;@ ~lib/memory.ts:84:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:84:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:86:4
    (if
     ;;@ ~lib/memory.ts:86:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:86:12
      (i32.const 1)
     )
     ;;@ ~lib/memory.ts:86:15
     (i32.store8
      ;;@ ~lib/memory.ts:87:16
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      ;;@ ~lib/memory.ts:87:24
      (i32.load8_u
       ;;@ ~lib/memory.ts:87:33
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:89:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:94:2
  (if
   ;;@ ~lib/memory.ts:94:6
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/memory.ts:94:11
    (i32.const 32)
   )
   ;;@ ~lib/memory.ts:94:15
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        ;;@ ~lib/memory.ts:95:12
        (i32.and
         (get_local $0)
         ;;@ ~lib/memory.ts:95:19
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:97:11
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:116:11
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:134:11
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      ;;@ ~lib/memory.ts:97:14
      (block
       ;;@ ~lib/memory.ts:98:8
       (set_local $3
        ;;@ ~lib/memory.ts:98:12
        (i32.load
         ;;@ ~lib/memory.ts:98:22
         (get_local $1)
        )
       )
       ;;@ ~lib/memory.ts:99:8
       (i32.store8
        ;;@ ~lib/memory.ts:99:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:99:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:99:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:100:8
       (i32.store8
        ;;@ ~lib/memory.ts:100:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:100:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:100:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:101:8
       (i32.store8
        ;;@ ~lib/memory.ts:101:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:101:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:101:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:102:8
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:102:13
         (i32.const 3)
        )
       )
       ;;@ ~lib/memory.ts:103:8
       (block $break|3
        (loop $continue|3
         (if
          ;;@ ~lib/memory.ts:103:15
          (i32.ge_u
           (get_local $2)
           ;;@ ~lib/memory.ts:103:20
           (i32.const 17)
          )
          (block
           (block
            ;;@ ~lib/memory.ts:104:10
            (set_local $4
             ;;@ ~lib/memory.ts:104:14
             (i32.load
              ;;@ ~lib/memory.ts:104:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:104:30
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/memory.ts:105:10
            (i32.store
             ;;@ ~lib/memory.ts:105:21
             (get_local $0)
             ;;@ ~lib/memory.ts:105:27
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/memory.ts:105:32
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:105:37
              (i32.shl
               (get_local $4)
               ;;@ ~lib/memory.ts:105:42
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:106:10
            (set_local $3
             ;;@ ~lib/memory.ts:106:14
             (i32.load
              ;;@ ~lib/memory.ts:106:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:106:30
               (i32.const 5)
              )
             )
            )
            ;;@ ~lib/memory.ts:107:10
            (i32.store
             ;;@ ~lib/memory.ts:107:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:107:28
              (i32.const 4)
             )
             ;;@ ~lib/memory.ts:107:31
             (i32.or
              (i32.shr_u
               (get_local $4)
               ;;@ ~lib/memory.ts:107:36
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:107:41
              (i32.shl
               (get_local $3)
               ;;@ ~lib/memory.ts:107:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:108:10
            (set_local $4
             ;;@ ~lib/memory.ts:108:14
             (i32.load
              ;;@ ~lib/memory.ts:108:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:108:30
               (i32.const 9)
              )
             )
            )
            ;;@ ~lib/memory.ts:109:10
            (i32.store
             ;;@ ~lib/memory.ts:109:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:109:28
              (i32.const 8)
             )
             ;;@ ~lib/memory.ts:109:31
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/memory.ts:109:36
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:109:41
              (i32.shl
               (get_local $4)
               ;;@ ~lib/memory.ts:109:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:110:10
            (set_local $3
             ;;@ ~lib/memory.ts:110:14
             (i32.load
              ;;@ ~lib/memory.ts:110:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:110:30
               (i32.const 13)
              )
             )
            )
            ;;@ ~lib/memory.ts:111:10
            (i32.store
             ;;@ ~lib/memory.ts:111:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:111:28
              (i32.const 12)
             )
             ;;@ ~lib/memory.ts:111:32
             (i32.or
              (i32.shr_u
               (get_local $4)
               ;;@ ~lib/memory.ts:111:37
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:111:42
              (i32.shl
               (get_local $3)
               ;;@ ~lib/memory.ts:111:47
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:112:10
            (set_local $1
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:112:17
              (i32.const 16)
             )
            )
            ;;@ ~lib/memory.ts:112:21
            (set_local $0
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:112:29
              (i32.const 16)
             )
            )
            ;;@ ~lib/memory.ts:112:33
            (set_local $2
             (i32.sub
              (get_local $2)
              ;;@ ~lib/memory.ts:112:38
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       ;;@ ~lib/memory.ts:114:8
       (br $break|2)
      )
     )
     ;;@ ~lib/memory.ts:116:14
     (block
      ;;@ ~lib/memory.ts:117:8
      (set_local $3
       ;;@ ~lib/memory.ts:117:12
       (i32.load
        ;;@ ~lib/memory.ts:117:22
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:118:8
      (i32.store8
       ;;@ ~lib/memory.ts:118:18
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:118:26
       (i32.load8_u
        ;;@ ~lib/memory.ts:118:35
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      ;;@ ~lib/memory.ts:119:8
      (i32.store8
       ;;@ ~lib/memory.ts:119:18
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:119:26
       (i32.load8_u
        ;;@ ~lib/memory.ts:119:35
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      ;;@ ~lib/memory.ts:120:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ ~lib/memory.ts:120:13
        (i32.const 2)
       )
      )
      ;;@ ~lib/memory.ts:121:8
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/memory.ts:121:15
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:121:20
          (i32.const 18)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:122:10
           (set_local $4
            ;;@ ~lib/memory.ts:122:14
            (i32.load
             ;;@ ~lib/memory.ts:122:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:122:30
              (i32.const 2)
             )
            )
           )
           ;;@ ~lib/memory.ts:123:10
           (i32.store
            ;;@ ~lib/memory.ts:123:21
            (get_local $0)
            ;;@ ~lib/memory.ts:123:27
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/memory.ts:123:32
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:123:37
             (i32.shl
              (get_local $4)
              ;;@ ~lib/memory.ts:123:42
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:124:10
           (set_local $3
            ;;@ ~lib/memory.ts:124:14
            (i32.load
             ;;@ ~lib/memory.ts:124:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:124:30
              (i32.const 6)
             )
            )
           )
           ;;@ ~lib/memory.ts:125:10
           (i32.store
            ;;@ ~lib/memory.ts:125:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:125:28
             (i32.const 4)
            )
            ;;@ ~lib/memory.ts:125:31
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ ~lib/memory.ts:125:36
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:125:41
             (i32.shl
              (get_local $3)
              ;;@ ~lib/memory.ts:125:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:126:10
           (set_local $4
            ;;@ ~lib/memory.ts:126:14
            (i32.load
             ;;@ ~lib/memory.ts:126:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:126:30
              (i32.const 10)
             )
            )
           )
           ;;@ ~lib/memory.ts:127:10
           (i32.store
            ;;@ ~lib/memory.ts:127:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:127:28
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:127:31
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/memory.ts:127:36
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:127:41
             (i32.shl
              (get_local $4)
              ;;@ ~lib/memory.ts:127:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:128:10
           (set_local $3
            ;;@ ~lib/memory.ts:128:14
            (i32.load
             ;;@ ~lib/memory.ts:128:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:128:30
              (i32.const 14)
             )
            )
           )
           ;;@ ~lib/memory.ts:129:10
           (i32.store
            ;;@ ~lib/memory.ts:129:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:129:28
             (i32.const 12)
            )
            ;;@ ~lib/memory.ts:129:32
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ ~lib/memory.ts:129:37
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:129:42
             (i32.shl
              (get_local $3)
              ;;@ ~lib/memory.ts:129:47
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:130:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:130:17
             (i32.const 16)
            )
           )
           ;;@ ~lib/memory.ts:130:21
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:130:29
             (i32.const 16)
            )
           )
           ;;@ ~lib/memory.ts:130:33
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:130:38
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      ;;@ ~lib/memory.ts:132:8
      (br $break|2)
     )
    )
    ;;@ ~lib/memory.ts:134:14
    (block
     ;;@ ~lib/memory.ts:135:8
     (set_local $3
      ;;@ ~lib/memory.ts:135:12
      (i32.load
       ;;@ ~lib/memory.ts:135:22
       (get_local $1)
      )
     )
     ;;@ ~lib/memory.ts:136:8
     (i32.store8
      ;;@ ~lib/memory.ts:136:18
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      ;;@ ~lib/memory.ts:136:26
      (i32.load8_u
       ;;@ ~lib/memory.ts:136:35
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     ;;@ ~lib/memory.ts:137:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/memory.ts:137:13
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:138:8
     (block $break|5
      (loop $continue|5
       (if
        ;;@ ~lib/memory.ts:138:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:138:20
         (i32.const 19)
        )
        (block
         (block
          ;;@ ~lib/memory.ts:139:10
          (set_local $4
           ;;@ ~lib/memory.ts:139:14
           (i32.load
            ;;@ ~lib/memory.ts:139:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:139:30
             (i32.const 3)
            )
           )
          )
          ;;@ ~lib/memory.ts:140:10
          (i32.store
           ;;@ ~lib/memory.ts:140:21
           (get_local $0)
           ;;@ ~lib/memory.ts:140:27
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/memory.ts:140:32
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:140:36
            (i32.shl
             (get_local $4)
             ;;@ ~lib/memory.ts:140:41
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:141:10
          (set_local $3
           ;;@ ~lib/memory.ts:141:14
           (i32.load
            ;;@ ~lib/memory.ts:141:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:141:30
             (i32.const 7)
            )
           )
          )
          ;;@ ~lib/memory.ts:142:10
          (i32.store
           ;;@ ~lib/memory.ts:142:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:142:28
            (i32.const 4)
           )
           ;;@ ~lib/memory.ts:142:31
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ ~lib/memory.ts:142:36
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:142:40
            (i32.shl
             (get_local $3)
             ;;@ ~lib/memory.ts:142:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:143:10
          (set_local $4
           ;;@ ~lib/memory.ts:143:14
           (i32.load
            ;;@ ~lib/memory.ts:143:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:143:30
             (i32.const 11)
            )
           )
          )
          ;;@ ~lib/memory.ts:144:10
          (i32.store
           ;;@ ~lib/memory.ts:144:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:144:28
            (i32.const 8)
           )
           ;;@ ~lib/memory.ts:144:31
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/memory.ts:144:36
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:144:40
            (i32.shl
             (get_local $4)
             ;;@ ~lib/memory.ts:144:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:145:10
          (set_local $3
           ;;@ ~lib/memory.ts:145:14
           (i32.load
            ;;@ ~lib/memory.ts:145:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:145:30
             (i32.const 15)
            )
           )
          )
          ;;@ ~lib/memory.ts:146:10
          (i32.store
           ;;@ ~lib/memory.ts:146:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:146:28
            (i32.const 12)
           )
           ;;@ ~lib/memory.ts:146:32
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ ~lib/memory.ts:146:37
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:146:41
            (i32.shl
             (get_local $3)
             ;;@ ~lib/memory.ts:146:46
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:147:10
          (set_local $1
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:147:17
            (i32.const 16)
           )
          )
          ;;@ ~lib/memory.ts:147:21
          (set_local $0
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:147:29
            (i32.const 16)
           )
          )
          ;;@ ~lib/memory.ts:147:33
          (set_local $2
           (i32.sub
            (get_local $2)
            ;;@ ~lib/memory.ts:147:38
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     ;;@ ~lib/memory.ts:149:8
     (br $break|2)
    )
   )
  )
  ;;@ ~lib/memory.ts:155:2
  (if
   ;;@ ~lib/memory.ts:155:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:155:10
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:155:14
   (block
    ;;@ ~lib/memory.ts:156:4
    (i32.store8
     ;;@ ~lib/memory.ts:156:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:156:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:156:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:157:4
    (i32.store8
     ;;@ ~lib/memory.ts:157:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:157:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:157:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:158:4
    (i32.store8
     ;;@ ~lib/memory.ts:158:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:158:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:158:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:159:4
    (i32.store8
     ;;@ ~lib/memory.ts:159:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:159:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:159:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:160:4
    (i32.store8
     ;;@ ~lib/memory.ts:160:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:160:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:160:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:161:4
    (i32.store8
     ;;@ ~lib/memory.ts:161:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:161:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:161:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:162:4
    (i32.store8
     ;;@ ~lib/memory.ts:162:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:162:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:162:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:163:4
    (i32.store8
     ;;@ ~lib/memory.ts:163:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:163:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:163:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:164:4
    (i32.store8
     ;;@ ~lib/memory.ts:164:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:164:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:164:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:165:4
    (i32.store8
     ;;@ ~lib/memory.ts:165:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:165:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:165:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:166:4
    (i32.store8
     ;;@ ~lib/memory.ts:166:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:166:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:166:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:167:4
    (i32.store8
     ;;@ ~lib/memory.ts:167:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:167:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:167:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:168:4
    (i32.store8
     ;;@ ~lib/memory.ts:168:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:168:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:168:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:169:4
    (i32.store8
     ;;@ ~lib/memory.ts:169:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:169:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:169:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:170:4
    (i32.store8
     ;;@ ~lib/memory.ts:170:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:170:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:170:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:171:4
    (i32.store8
     ;;@ ~lib/memory.ts:171:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:171:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:171:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:173:2
  (if
   ;;@ ~lib/memory.ts:173:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:173:10
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:173:13
   (block
    ;;@ ~lib/memory.ts:174:4
    (i32.store8
     ;;@ ~lib/memory.ts:174:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:174:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:174:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:175:4
    (i32.store8
     ;;@ ~lib/memory.ts:175:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:175:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:175:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:176:4
    (i32.store8
     ;;@ ~lib/memory.ts:176:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:176:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:176:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:177:4
    (i32.store8
     ;;@ ~lib/memory.ts:177:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:177:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:177:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:178:4
    (i32.store8
     ;;@ ~lib/memory.ts:178:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:178:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:178:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:179:4
    (i32.store8
     ;;@ ~lib/memory.ts:179:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:179:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:179:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:180:4
    (i32.store8
     ;;@ ~lib/memory.ts:180:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:180:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:180:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:181:4
    (i32.store8
     ;;@ ~lib/memory.ts:181:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:181:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:181:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:183:2
  (if
   ;;@ ~lib/memory.ts:183:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:183:10
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:183:13
   (block
    ;;@ ~lib/memory.ts:184:4
    (i32.store8
     ;;@ ~lib/memory.ts:184:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:184:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:184:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:185:4
    (i32.store8
     ;;@ ~lib/memory.ts:185:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:185:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:185:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:186:4
    (i32.store8
     ;;@ ~lib/memory.ts:186:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:186:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:186:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:187:4
    (i32.store8
     ;;@ ~lib/memory.ts:187:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:187:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:187:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:189:2
  (if
   ;;@ ~lib/memory.ts:189:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:189:10
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:189:13
   (block
    ;;@ ~lib/memory.ts:190:4
    (i32.store8
     ;;@ ~lib/memory.ts:190:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:190:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:190:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:191:4
    (i32.store8
     ;;@ ~lib/memory.ts:191:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:191:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:191:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:193:2
  (if
   ;;@ ~lib/memory.ts:193:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:193:10
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:193:13
   (i32.store8
    ;;@ ~lib/memory.ts:194:14
    (block (result i32)
     (set_local $5
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    ;;@ ~lib/memory.ts:194:22
    (i32.load8_u
     ;;@ ~lib/memory.ts:194:31
     (block (result i32)
      (set_local $5
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/memory/memmove (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/memory.ts:200:2
  (if
   ;;@ ~lib/memory.ts:200:6
   (i32.eq
    (get_local $0)
    ;;@ ~lib/memory.ts:200:14
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:200:19
   (return)
  )
  ;;@ ~lib/memory.ts:201:2
  (if
   ;;@ ~lib/memory.ts:201:6
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       ;;@ ~lib/memory.ts:201:12
       (get_local $2)
      )
      ;;@ ~lib/memory.ts:201:17
      (get_local $0)
     )
    )
    (get_local $3)
    ;;@ ~lib/memory.ts:201:25
    (i32.le_u
     (i32.add
      (get_local $0)
      ;;@ ~lib/memory.ts:201:32
      (get_local $2)
     )
     ;;@ ~lib/memory.ts:201:37
     (get_local $1)
    )
   )
   ;;@ ~lib/memory.ts:201:42
   (block
    ;;@ ~lib/memory.ts:202:4
    (call $~lib/memory/memcpy
     ;;@ ~lib/memory.ts:202:11
     (get_local $0)
     ;;@ ~lib/memory.ts:202:17
     (get_local $1)
     ;;@ ~lib/memory.ts:202:22
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:203:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:205:2
  (if
   ;;@ ~lib/memory.ts:205:6
   (i32.lt_u
    (get_local $0)
    ;;@ ~lib/memory.ts:205:13
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:205:18
   (block
    ;;@ ~lib/memory.ts:206:4
    (if
     ;;@ ~lib/memory.ts:206:8
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:206:9
       (get_local $1)
       ;;@ ~lib/memory.ts:206:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:206:21
      (i32.and
       ;;@ ~lib/memory.ts:206:22
       (get_local $0)
       ;;@ ~lib/memory.ts:206:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:206:33
     (block
      (block $break|0
       (loop $continue|0
        (if
         ;;@ ~lib/memory.ts:207:13
         (i32.and
          (get_local $0)
          ;;@ ~lib/memory.ts:207:20
          (i32.const 7)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:208:8
           (if
            ;;@ ~lib/memory.ts:208:12
            (i32.eqz
             ;;@ ~lib/memory.ts:208:13
             (get_local $2)
            )
            ;;@ ~lib/memory.ts:208:16
            (return)
           )
           ;;@ ~lib/memory.ts:209:8
           (set_local $2
            (i32.sub
             ;;@ ~lib/memory.ts:209:10
             (get_local $2)
             (i32.const 1)
            )
           )
           ;;@ ~lib/memory.ts:210:8
           (i32.store8
            ;;@ ~lib/memory.ts:210:18
            (block (result i32)
             (set_local $3
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            ;;@ ~lib/memory.ts:210:26
            (i32.load8_u
             ;;@ ~lib/memory.ts:210:35
             (block (result i32)
              (set_local $3
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      ;;@ ~lib/memory.ts:212:6
      (block $break|1
       (loop $continue|1
        (if
         ;;@ ~lib/memory.ts:212:13
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:212:18
          (i32.const 8)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:213:8
           (i64.store
            ;;@ ~lib/memory.ts:213:19
            (get_local $0)
            ;;@ ~lib/memory.ts:213:25
            (i64.load
             ;;@ ~lib/memory.ts:213:35
             (get_local $1)
            )
           )
           ;;@ ~lib/memory.ts:214:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:214:16
             (i32.const 8)
            )
           )
           ;;@ ~lib/memory.ts:215:8
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:215:16
             (i32.const 8)
            )
           )
           ;;@ ~lib/memory.ts:216:8
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:216:16
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:219:4
    (block $break|2
     (loop $continue|2
      (if
       ;;@ ~lib/memory.ts:219:11
       (get_local $2)
       (block
        (block
         ;;@ ~lib/memory.ts:220:6
         (i32.store8
          ;;@ ~lib/memory.ts:220:16
          (block (result i32)
           (set_local $3
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          ;;@ ~lib/memory.ts:220:24
          (i32.load8_u
           ;;@ ~lib/memory.ts:220:33
           (block (result i32)
            (set_local $3
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         ;;@ ~lib/memory.ts:221:6
         (set_local $2
          (i32.sub
           ;;@ ~lib/memory.ts:221:8
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   ;;@ ~lib/memory.ts:223:9
   (block
    ;;@ ~lib/memory.ts:224:4
    (if
     ;;@ ~lib/memory.ts:224:8
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:224:9
       (get_local $1)
       ;;@ ~lib/memory.ts:224:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:224:21
      (i32.and
       ;;@ ~lib/memory.ts:224:22
       (get_local $0)
       ;;@ ~lib/memory.ts:224:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:224:33
     (block
      (block $break|3
       (loop $continue|3
        (if
         ;;@ ~lib/memory.ts:225:13
         (i32.and
          (i32.add
           ;;@ ~lib/memory.ts:225:14
           (get_local $0)
           ;;@ ~lib/memory.ts:225:21
           (get_local $2)
          )
          ;;@ ~lib/memory.ts:225:26
          (i32.const 7)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:226:8
           (if
            ;;@ ~lib/memory.ts:226:12
            (i32.eqz
             ;;@ ~lib/memory.ts:226:13
             (get_local $2)
            )
            ;;@ ~lib/memory.ts:226:16
            (return)
           )
           ;;@ ~lib/memory.ts:227:8
           (i32.store8
            ;;@ ~lib/memory.ts:227:18
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:227:25
             (tee_local $2
              (i32.sub
               ;;@ ~lib/memory.ts:227:27
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/memory.ts:227:30
            (i32.load8_u
             ;;@ ~lib/memory.ts:227:39
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:227:45
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      ;;@ ~lib/memory.ts:229:6
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/memory.ts:229:13
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:229:18
          (i32.const 8)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:230:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:230:13
             (i32.const 8)
            )
           )
           ;;@ ~lib/memory.ts:231:8
           (i64.store
            ;;@ ~lib/memory.ts:231:19
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:231:26
             (get_local $2)
            )
            ;;@ ~lib/memory.ts:231:29
            (i64.load
             ;;@ ~lib/memory.ts:231:39
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:231:45
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:234:4
    (block $break|5
     (loop $continue|5
      (if
       ;;@ ~lib/memory.ts:234:11
       (get_local $2)
       (block
        ;;@ ~lib/memory.ts:234:14
        (i32.store8
         ;;@ ~lib/memory.ts:235:16
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:235:23
          (tee_local $2
           (i32.sub
            ;;@ ~lib/memory.ts:235:25
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         ;;@ ~lib/memory.ts:235:28
         (i32.load8_u
          ;;@ ~lib/memory.ts:235:37
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:235:43
           (get_local $2)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/memory/memory.copy (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/memory.ts:16:4
  (call $~lib/memory/memmove
   ;;@ ~lib/memory.ts:16:12
   (get_local $0)
   ;;@ ~lib/memory.ts:16:18
   (get_local $1)
   ;;@ ~lib/memory.ts:16:23
   (get_local $2)
  )
 )
 (func $~lib/memory/memcmp (; 6 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  ;;@ ~lib/memory.ts:302:2
  (if
   ;;@ ~lib/memory.ts:302:6
   (i32.eq
    (get_local $0)
    ;;@ ~lib/memory.ts:302:12
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:302:23
   (return
    (i32.const 0)
   )
  )
  ;;@ ~lib/memory.ts:303:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/memory.ts:303:9
     (if (result i32)
      (tee_local $3
       (i32.ne
        (get_local $2)
        ;;@ ~lib/memory.ts:303:14
        (i32.const 0)
       )
      )
      ;;@ ~lib/memory.ts:303:19
      (i32.eq
       (i32.load8_u
        ;;@ ~lib/memory.ts:303:28
        (get_local $0)
       )
       ;;@ ~lib/memory.ts:303:35
       (i32.load8_u
        ;;@ ~lib/memory.ts:303:44
        (get_local $1)
       )
      )
      (get_local $3)
     )
     (block
      (block
       ;;@ ~lib/memory.ts:304:4
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:304:9
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:304:15
       (set_local $1
        (i32.add
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
  ;;@ ~lib/memory.ts:306:53
  (if (result i32)
   ;;@ ~lib/memory.ts:306:9
   (get_local $2)
   ;;@ ~lib/memory.ts:306:13
   (i32.sub
    (i32.load8_u
     ;;@ ~lib/memory.ts:306:27
     (get_local $0)
    )
    ;;@ ~lib/memory.ts:306:33
    (i32.load8_u
     ;;@ ~lib/memory.ts:306:47
     (get_local $1)
    )
   )
   ;;@ ~lib/memory.ts:306:53
   (i32.const 0)
  )
 )
 (func $~lib/memory/memory.compare (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ ~lib/memory.ts:21:27
  (call $~lib/memory/memcmp
   ;;@ ~lib/memory.ts:21:18
   (get_local $0)
   ;;@ ~lib/memory.ts:21:22
   (get_local $1)
   ;;@ ~lib/memory.ts:21:26
   (get_local $2)
  )
 )
 (func $~lib/allocator/tlsf/Root#set:tailRef (; 8 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ ~lib/allocator/tlsf.ts:181:30
  (i32.store offset=2912
   ;;@ ~lib/allocator/tlsf.ts:181:43
   (i32.const 0)
   ;;@ ~lib/allocator/tlsf.ts:181:46
   (get_local $1)
  )
 )
 (func $~lib/allocator/tlsf/Root#setSLMap (; 9 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/allocator/tlsf.ts:144:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:144:11
    (i32.lt_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:144:16
     (get_global $~lib/allocator/tlsf/FL_BITS)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 144)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:145:4
  (i32.store offset=4
   ;;@ ~lib/allocator/tlsf.ts:145:15
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:145:41
    (i32.mul
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:145:46
     (i32.const 4)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:145:49
   (get_local $2)
  )
 )
 (func $~lib/allocator/tlsf/Root#setHead (; 10 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ ~lib/allocator/tlsf.ts:167:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:167:11
    (i32.lt_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:167:16
     (get_global $~lib/allocator/tlsf/FL_BITS)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 167)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:168:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:168:11
    (i32.lt_u
     (get_local $2)
     ;;@ ~lib/allocator/tlsf.ts:168:16
     (get_global $~lib/allocator/tlsf/SL_SIZE)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 168)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:169:4
  (i32.store offset=96
   ;;@ ~lib/allocator/tlsf.ts:170:6
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:170:32
    (i32.mul
     (i32.add
      ;;@ ~lib/allocator/tlsf.ts:170:33
      (i32.mul
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:170:38
       (get_global $~lib/allocator/tlsf/SL_SIZE)
      )
      ;;@ ~lib/allocator/tlsf.ts:170:48
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:170:61
     (i32.const 4)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:171:6
   (get_local $3)
  )
 )
 (func $~lib/allocator/tlsf/Root#get:tailRef (; 11 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:180:58
  (i32.load offset=2912
   ;;@ ~lib/allocator/tlsf.ts:180:44
   (i32.const 0)
  )
 )
 (func $~lib/allocator/tlsf/Block#get:right (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ ~lib/allocator/tlsf.ts:89:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:89:11
    (i32.and
     (i32.load
      (get_local $0)
     )
     ;;@ ~lib/allocator/tlsf.ts:89:23
     (i32.xor
      ;;@ ~lib/allocator/tlsf.ts:89:24
      (get_global $~lib/allocator/tlsf/TAGS)
      (i32.const -1)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 89)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:94:4
  (if (result i32)
   (i32.eqz
    (tee_local $1
     ;;@ ~lib/allocator/tlsf.ts:91:6
     (i32.add
      ;;@ ~lib/allocator/tlsf.ts:92:8
      (i32.add
       (get_local $0)
       ;;@ ~lib/allocator/tlsf.ts:92:34
       (get_global $~lib/allocator/tlsf/Block.INFO)
      )
      ;;@ ~lib/allocator/tlsf.ts:92:47
      (i32.and
       ;;@ ~lib/allocator/tlsf.ts:92:48
       (i32.load
        (get_local $0)
       )
       ;;@ ~lib/allocator/tlsf.ts:92:60
       (i32.xor
        ;;@ ~lib/allocator/tlsf.ts:92:61
        (get_global $~lib/allocator/tlsf/TAGS)
        (i32.const -1)
       )
      )
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 90)
     (i32.const 11)
    )
    (unreachable)
   )
   (get_local $1)
  )
 )
 (func $~lib/allocator/tlsf/fls<usize> (; 13 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:428:2
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:428:9
    (i32.ne
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:428:17
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 428)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:430:26
  (i32.sub
   ;;@ ~lib/allocator/tlsf.ts:430:9
   (i32.const 31)
   ;;@ ~lib/allocator/tlsf.ts:430:15
   (i32.clz
    ;;@ ~lib/allocator/tlsf.ts:430:22
    (get_local $0)
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#getHead (; 14 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:158:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:158:11
    (i32.lt_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:158:16
     (get_global $~lib/allocator/tlsf/FL_BITS)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 158)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:159:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:159:11
    (i32.lt_u
     (get_local $2)
     ;;@ ~lib/allocator/tlsf.ts:159:16
     (get_global $~lib/allocator/tlsf/SL_SIZE)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 159)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:162:20
  (i32.load offset=96
   ;;@ ~lib/allocator/tlsf.ts:161:6
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:161:32
    (i32.mul
     (i32.add
      ;;@ ~lib/allocator/tlsf.ts:161:33
      (i32.mul
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:161:38
       (get_global $~lib/allocator/tlsf/SL_SIZE)
      )
      ;;@ ~lib/allocator/tlsf.ts:161:48
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:161:61
     (i32.const 4)
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#getSLMap (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:138:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:138:11
    (i32.lt_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:138:16
     (get_global $~lib/allocator/tlsf/FL_BITS)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 138)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:139:68
  (i32.load offset=4
   ;;@ ~lib/allocator/tlsf.ts:139:21
   (i32.add
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:139:47
    (i32.mul
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:139:52
     (i32.const 4)
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#remove (; 16 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  ;;@ ~lib/allocator/tlsf.ts:257:4
  (set_local $2
   ;;@ ~lib/allocator/tlsf.ts:257:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:258:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:258:11
    (i32.and
     (get_local $2)
     ;;@ ~lib/allocator/tlsf.ts:258:23
     (get_global $~lib/allocator/tlsf/FREE)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 258)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:259:4
  (set_local $3
   ;;@ ~lib/allocator/tlsf.ts:259:15
   (i32.and
    (get_local $2)
    ;;@ ~lib/allocator/tlsf.ts:259:27
    (i32.xor
     ;;@ ~lib/allocator/tlsf.ts:259:28
     (get_global $~lib/allocator/tlsf/TAGS)
     (i32.const -1)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:260:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:260:11
    (if (result i32)
     (tee_local $4
      (i32.ge_u
       (get_local $3)
       ;;@ ~lib/allocator/tlsf.ts:260:19
       (get_global $~lib/allocator/tlsf/Block.MIN_SIZE)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:260:37
     (i32.lt_u
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:260:44
      (get_global $~lib/allocator/tlsf/Block.MAX_SIZE)
     )
     (get_local $4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 260)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:264:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:264:8
   (i32.lt_u
    (get_local $3)
    ;;@ ~lib/allocator/tlsf.ts:264:15
    (get_global $~lib/allocator/tlsf/SB_SIZE)
   )
   ;;@ ~lib/allocator/tlsf.ts:264:24
   (block
    ;;@ ~lib/allocator/tlsf.ts:265:6
    (set_local $5
     ;;@ ~lib/allocator/tlsf.ts:265:11
     (i32.const 0)
    )
    ;;@ ~lib/allocator/tlsf.ts:266:6
    (set_local $6
     ;;@ ~lib/allocator/tlsf.ts:266:11
     (i32.div_u
      ;;@ ~lib/allocator/tlsf.ts:266:17
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:266:24
      (get_global $~lib/internal/allocator/AL_SIZE)
     )
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:267:11
   (block
    ;;@ ~lib/allocator/tlsf.ts:268:6
    (set_local $5
     ;;@ ~lib/allocator/tlsf.ts:268:11
     (call $~lib/allocator/tlsf/fls<usize>
      ;;@ ~lib/allocator/tlsf.ts:268:22
      (get_local $3)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:269:6
    (set_local $6
     ;;@ ~lib/allocator/tlsf.ts:269:11
     (i32.xor
      ;;@ ~lib/allocator/tlsf.ts:269:17
      (i32.shr_u
       ;;@ ~lib/allocator/tlsf.ts:269:18
       (get_local $3)
       ;;@ ~lib/allocator/tlsf.ts:269:26
       (i32.sub
        ;;@ ~lib/allocator/tlsf.ts:269:27
        (get_local $5)
        ;;@ ~lib/allocator/tlsf.ts:269:32
        (get_global $~lib/allocator/tlsf/SL_BITS)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:269:44
      (i32.shl
       ;;@ ~lib/allocator/tlsf.ts:269:45
       (i32.const 1)
       ;;@ ~lib/allocator/tlsf.ts:269:50
       (get_global $~lib/allocator/tlsf/SL_BITS)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:270:6
    (set_local $5
     (i32.sub
      (get_local $5)
      ;;@ ~lib/allocator/tlsf.ts:270:12
      (i32.sub
       (get_global $~lib/allocator/tlsf/SB_BITS)
       ;;@ ~lib/allocator/tlsf.ts:270:22
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:274:4
  (set_local $7
   ;;@ ~lib/allocator/tlsf.ts:274:15
   (i32.load offset=4
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:275:4
  (set_local $8
   ;;@ ~lib/allocator/tlsf.ts:275:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:276:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:276:8
   (get_local $7)
   ;;@ ~lib/allocator/tlsf.ts:276:14
   (i32.store offset=8
    (get_local $7)
    ;;@ ~lib/allocator/tlsf.ts:276:26
    (get_local $8)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:277:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:277:8
   (get_local $8)
   ;;@ ~lib/allocator/tlsf.ts:277:14
   (i32.store offset=4
    (get_local $8)
    ;;@ ~lib/allocator/tlsf.ts:277:26
    (get_local $7)
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
     (get_local $5)
     ;;@ ~lib/allocator/tlsf.ts:280:34
     (get_local $6)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:280:39
   (block
    ;;@ ~lib/allocator/tlsf.ts:281:11
    (call $~lib/allocator/tlsf/Root#setHead
     ;;@ ~lib/allocator/tlsf.ts:281:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:281:19
     (get_local $5)
     ;;@ ~lib/allocator/tlsf.ts:281:23
     (get_local $6)
     ;;@ ~lib/allocator/tlsf.ts:281:27
     (get_local $8)
    )
    ;;@ ~lib/allocator/tlsf.ts:284:6
    (if
     ;;@ ~lib/allocator/tlsf.ts:284:10
     (i32.eqz
      ;;@ ~lib/allocator/tlsf.ts:284:11
      (get_local $8)
     )
     ;;@ ~lib/allocator/tlsf.ts:284:17
     (block
      ;;@ ~lib/allocator/tlsf.ts:285:8
      (set_local $4
       ;;@ ~lib/allocator/tlsf.ts:285:25
       (call $~lib/allocator/tlsf/Root#getSLMap
        ;;@ ~lib/allocator/tlsf.ts:285:20
        (get_local $0)
        ;;@ ~lib/allocator/tlsf.ts:285:34
        (get_local $5)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:286:13
      (call $~lib/allocator/tlsf/Root#setSLMap
       ;;@ ~lib/allocator/tlsf.ts:286:8
       (get_local $0)
       ;;@ ~lib/allocator/tlsf.ts:286:22
       (get_local $5)
       ;;@ ~lib/allocator/tlsf.ts:286:26
       (tee_local $4
        (i32.and
         (get_local $4)
         ;;@ ~lib/allocator/tlsf.ts:286:35
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:286:36
          (i32.shl
           ;;@ ~lib/allocator/tlsf.ts:286:37
           (i32.const 1)
           ;;@ ~lib/allocator/tlsf.ts:286:42
           (get_local $6)
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
        (get_local $4)
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
           (get_local $5)
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
 (func $~lib/allocator/tlsf/Block#get:left (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ ~lib/allocator/tlsf.ts:81:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:81:11
    (i32.and
     (i32.load
      (get_local $0)
     )
     ;;@ ~lib/allocator/tlsf.ts:81:23
     (get_global $~lib/allocator/tlsf/LEFT_FREE)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 81)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:84:4
  (if (result i32)
   (i32.eqz
    (tee_local $1
     ;;@ ~lib/allocator/tlsf.ts:83:6
     (i32.load
      ;;@ ~lib/allocator/tlsf.ts:83:18
      (i32.sub
       (get_local $0)
       ;;@ ~lib/allocator/tlsf.ts:83:44
       (i32.const 4)
      )
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 82)
     (i32.const 11)
    )
    (unreachable)
   )
   (get_local $1)
  )
 )
 (func $~lib/allocator/tlsf/Root#setJump (; 18 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/allocator/tlsf.ts:334:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:334:11
    (i32.and
     (i32.load
      (get_local $1)
     )
     ;;@ ~lib/allocator/tlsf.ts:334:23
     (get_global $~lib/allocator/tlsf/FREE)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 334)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:335:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:335:11
    (i32.eq
     (call $~lib/allocator/tlsf/Block#get:right
      (get_local $1)
     )
     ;;@ ~lib/allocator/tlsf.ts:335:25
     (get_local $2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 335)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:336:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:336:11
    (i32.and
     (i32.load
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:336:24
     (get_global $~lib/allocator/tlsf/LEFT_FREE)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 336)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:337:4
  (i32.store
   ;;@ ~lib/allocator/tlsf.ts:338:6
   (i32.sub
    (get_local $2)
    ;;@ ~lib/allocator/tlsf.ts:338:33
    (i32.const 4)
   )
   ;;@ ~lib/allocator/tlsf.ts:339:6
   (get_local $1)
  )
 )
 (func $~lib/allocator/tlsf/Root#insert (; 19 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  ;;@ ~lib/allocator/tlsf.ts:189:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:189:11
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 189)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:190:4
  (set_local $2
   ;;@ ~lib/allocator/tlsf.ts:190:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:191:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:191:11
    (i32.and
     (get_local $2)
     ;;@ ~lib/allocator/tlsf.ts:191:23
     (get_global $~lib/allocator/tlsf/FREE)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 191)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:193:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:194:6
    (if (result i32)
     (tee_local $4
      (i32.ge_u
       (tee_local $3
        ;;@ ~lib/allocator/tlsf.ts:194:14
        (i32.and
         (i32.load
          (get_local $1)
         )
         ;;@ ~lib/allocator/tlsf.ts:194:27
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:194:28
          (get_global $~lib/allocator/tlsf/TAGS)
          (i32.const -1)
         )
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:194:37
       (get_global $~lib/allocator/tlsf/Block.MIN_SIZE)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:194:55
     (i32.lt_u
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:194:62
      (get_global $~lib/allocator/tlsf/Block.MAX_SIZE)
     )
     (get_local $4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 193)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:197:4
  (set_local $5
   ;;@ ~lib/allocator/tlsf.ts:197:23
   (if (result i32)
    (i32.eqz
     (tee_local $4
      ;;@ ~lib/allocator/tlsf.ts:197:30
      (call $~lib/allocator/tlsf/Block#get:right
       (get_local $1)
      )
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 197)
      (i32.const 23)
     )
     (unreachable)
    )
    (get_local $4)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:198:4
  (set_local $6
   ;;@ ~lib/allocator/tlsf.ts:198:20
   (i32.load
    (get_local $5)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:201:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:201:8
   (i32.and
    (get_local $6)
    ;;@ ~lib/allocator/tlsf.ts:201:20
    (get_global $~lib/allocator/tlsf/FREE)
   )
   ;;@ ~lib/allocator/tlsf.ts:201:26
   (block
    ;;@ ~lib/allocator/tlsf.ts:202:11
    (call $~lib/allocator/tlsf/Root#remove
     ;;@ ~lib/allocator/tlsf.ts:202:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:202:18
     (get_local $5)
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
        (get_global $~lib/allocator/tlsf/Block.INFO)
        ;;@ ~lib/allocator/tlsf.ts:203:46
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:203:47
         (get_local $6)
         ;;@ ~lib/allocator/tlsf.ts:203:59
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:203:60
          (get_global $~lib/allocator/tlsf/TAGS)
          (i32.const -1)
         )
        )
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:204:6
    (set_local $5
     ;;@ ~lib/allocator/tlsf.ts:204:14
     (call $~lib/allocator/tlsf/Block#get:right
      (get_local $1)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:205:6
    (set_local $6
     ;;@ ~lib/allocator/tlsf.ts:205:18
     (i32.load
      (get_local $5)
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
    (get_global $~lib/allocator/tlsf/LEFT_FREE)
   )
   ;;@ ~lib/allocator/tlsf.ts:210:31
   (block
    ;;@ ~lib/allocator/tlsf.ts:211:6
    (set_local $4
     ;;@ ~lib/allocator/tlsf.ts:211:24
     (if (result i32)
      (i32.eqz
       (tee_local $4
        ;;@ ~lib/allocator/tlsf.ts:211:31
        (call $~lib/allocator/tlsf/Block#get:left
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 8)
        (i32.const 211)
        (i32.const 24)
       )
       (unreachable)
      )
      (get_local $4)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:212:6
    (set_local $7
     ;;@ ~lib/allocator/tlsf.ts:212:21
     (i32.load
      (get_local $4)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:213:6
    (if
     (i32.eqz
      ;;@ ~lib/allocator/tlsf.ts:213:13
      (i32.and
       (get_local $7)
       ;;@ ~lib/allocator/tlsf.ts:213:24
       (get_global $~lib/allocator/tlsf/FREE)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 213)
       (i32.const 6)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:214:11
    (call $~lib/allocator/tlsf/Root#remove
     ;;@ ~lib/allocator/tlsf.ts:214:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:214:18
     (get_local $4)
    )
    ;;@ ~lib/allocator/tlsf.ts:215:6
    (i32.store
     (get_local $4)
     ;;@ ~lib/allocator/tlsf.ts:215:18
     (tee_local $7
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:215:19
       (get_local $7)
       ;;@ ~lib/allocator/tlsf.ts:215:31
       (i32.add
        (get_global $~lib/allocator/tlsf/Block.INFO)
        ;;@ ~lib/allocator/tlsf.ts:215:44
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:215:45
         (get_local $2)
         ;;@ ~lib/allocator/tlsf.ts:215:57
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:215:58
          (get_global $~lib/allocator/tlsf/TAGS)
          (i32.const -1)
         )
        )
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:216:6
    (set_local $1
     ;;@ ~lib/allocator/tlsf.ts:216:14
     (get_local $4)
    )
    ;;@ ~lib/allocator/tlsf.ts:217:6
    (set_local $2
     ;;@ ~lib/allocator/tlsf.ts:217:18
     (get_local $7)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:221:4
  (i32.store
   (get_local $5)
   ;;@ ~lib/allocator/tlsf.ts:221:17
   (i32.or
    (get_local $6)
    ;;@ ~lib/allocator/tlsf.ts:221:29
    (get_global $~lib/allocator/tlsf/LEFT_FREE)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:222:9
  (call $~lib/allocator/tlsf/Root#setJump
   ;;@ ~lib/allocator/tlsf.ts:222:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:222:17
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:222:24
   (get_local $5)
  )
  ;;@ ~lib/allocator/tlsf.ts:225:4
  (set_local $3
   ;;@ ~lib/allocator/tlsf.ts:225:11
   (i32.and
    (get_local $2)
    ;;@ ~lib/allocator/tlsf.ts:225:23
    (i32.xor
     ;;@ ~lib/allocator/tlsf.ts:225:24
     (get_global $~lib/allocator/tlsf/TAGS)
     (i32.const -1)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:226:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:226:11
    (if (result i32)
     (tee_local $7
      (i32.ge_u
       (get_local $3)
       ;;@ ~lib/allocator/tlsf.ts:226:19
       (get_global $~lib/allocator/tlsf/Block.MIN_SIZE)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:226:37
     (i32.lt_u
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:226:44
      (get_global $~lib/allocator/tlsf/Block.MAX_SIZE)
     )
     (get_local $7)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 226)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:230:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:230:8
   (i32.lt_u
    (get_local $3)
    ;;@ ~lib/allocator/tlsf.ts:230:15
    (get_global $~lib/allocator/tlsf/SB_SIZE)
   )
   ;;@ ~lib/allocator/tlsf.ts:230:24
   (block
    ;;@ ~lib/allocator/tlsf.ts:231:6
    (set_local $8
     ;;@ ~lib/allocator/tlsf.ts:231:11
     (i32.const 0)
    )
    ;;@ ~lib/allocator/tlsf.ts:232:6
    (set_local $9
     ;;@ ~lib/allocator/tlsf.ts:232:11
     (i32.div_u
      ;;@ ~lib/allocator/tlsf.ts:232:17
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:232:24
      (get_global $~lib/internal/allocator/AL_SIZE)
     )
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:233:11
   (block
    ;;@ ~lib/allocator/tlsf.ts:234:6
    (set_local $8
     ;;@ ~lib/allocator/tlsf.ts:234:11
     (call $~lib/allocator/tlsf/fls<usize>
      ;;@ ~lib/allocator/tlsf.ts:234:22
      (get_local $3)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:235:6
    (set_local $9
     ;;@ ~lib/allocator/tlsf.ts:235:11
     (i32.xor
      ;;@ ~lib/allocator/tlsf.ts:235:17
      (i32.shr_u
       ;;@ ~lib/allocator/tlsf.ts:235:18
       (get_local $3)
       ;;@ ~lib/allocator/tlsf.ts:235:26
       (i32.sub
        ;;@ ~lib/allocator/tlsf.ts:235:27
        (get_local $8)
        ;;@ ~lib/allocator/tlsf.ts:235:32
        (get_global $~lib/allocator/tlsf/SL_BITS)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:235:44
      (i32.shl
       ;;@ ~lib/allocator/tlsf.ts:235:45
       (i32.const 1)
       ;;@ ~lib/allocator/tlsf.ts:235:50
       (get_global $~lib/allocator/tlsf/SL_BITS)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:236:6
    (set_local $8
     (i32.sub
      (get_local $8)
      ;;@ ~lib/allocator/tlsf.ts:236:12
      (i32.sub
       (get_global $~lib/allocator/tlsf/SB_BITS)
       ;;@ ~lib/allocator/tlsf.ts:236:22
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:240:4
  (set_local $10
   ;;@ ~lib/allocator/tlsf.ts:240:20
   (call $~lib/allocator/tlsf/Root#getHead
    ;;@ ~lib/allocator/tlsf.ts:240:15
    (get_local $0)
    ;;@ ~lib/allocator/tlsf.ts:240:28
    (get_local $8)
    ;;@ ~lib/allocator/tlsf.ts:240:32
    (get_local $9)
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
   (get_local $10)
  )
  ;;@ ~lib/allocator/tlsf.ts:243:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:243:8
   (get_local $10)
   ;;@ ~lib/allocator/tlsf.ts:243:14
   (i32.store offset=4
    (get_local $10)
    ;;@ ~lib/allocator/tlsf.ts:243:26
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:244:9
  (call $~lib/allocator/tlsf/Root#setHead
   ;;@ ~lib/allocator/tlsf.ts:244:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:244:17
   (get_local $8)
   ;;@ ~lib/allocator/tlsf.ts:244:21
   (get_local $9)
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
     (get_local $8)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:248:9
  (call $~lib/allocator/tlsf/Root#setSLMap
   ;;@ ~lib/allocator/tlsf.ts:248:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:248:18
   (get_local $8)
   ;;@ ~lib/allocator/tlsf.ts:248:22
   (i32.or
    ;;@ ~lib/allocator/tlsf.ts:248:27
    (call $~lib/allocator/tlsf/Root#getSLMap
     ;;@ ~lib/allocator/tlsf.ts:248:22
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:248:36
     (get_local $8)
    )
    ;;@ ~lib/allocator/tlsf.ts:248:42
    (i32.shl
     ;;@ ~lib/allocator/tlsf.ts:248:43
     (i32.const 1)
     ;;@ ~lib/allocator/tlsf.ts:248:48
     (get_local $9)
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  ;;@ ~lib/allocator/tlsf.ts:377:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:377:11
    (i32.le_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:377:20
     (get_local $2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 377)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:378:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:378:11
    (i32.eqz
     ;;@ ~lib/allocator/tlsf.ts:378:12
     (i32.and
      ;;@ ~lib/allocator/tlsf.ts:378:13
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:378:21
      (get_global $~lib/internal/allocator/AL_MASK)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 378)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:379:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:379:11
    (i32.eqz
     ;;@ ~lib/allocator/tlsf.ts:379:12
     (i32.and
      ;;@ ~lib/allocator/tlsf.ts:379:13
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:379:19
      (get_global $~lib/internal/allocator/AL_MASK)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 379)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:381:4
  (set_local $3
   ;;@ ~lib/allocator/tlsf.ts:381:18
   (call $~lib/allocator/tlsf/Root#get:tailRef
    (get_local $0)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:382:4
  (set_local $4
   ;;@ ~lib/allocator/tlsf.ts:382:26
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:383:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:383:8
   (get_local $3)
   ;;@ ~lib/allocator/tlsf.ts:383:17
   (block
    ;;@ ~lib/allocator/tlsf.ts:384:6
    (if
     (i32.eqz
      ;;@ ~lib/allocator/tlsf.ts:384:13
      (i32.ge_u
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:384:22
       (i32.add
        (get_local $3)
        ;;@ ~lib/allocator/tlsf.ts:384:32
        (i32.const 4)
       )
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 384)
       (i32.const 6)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:387:6
    (if
     ;;@ ~lib/allocator/tlsf.ts:387:10
     (i32.eq
      (i32.sub
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:387:18
       (get_global $~lib/allocator/tlsf/Block.INFO)
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
        (get_global $~lib/allocator/tlsf/Block.INFO)
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
   ;;@ ~lib/allocator/tlsf.ts:392:11
   (if
    (i32.eqz
     ;;@ ~lib/allocator/tlsf.ts:393:13
     (i32.ge_u
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:393:22
      (i32.add
       (get_local $0)
       ;;@ ~lib/allocator/tlsf.ts:393:48
       (get_global $~lib/allocator/tlsf/Root.SIZE)
      )
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 393)
      (i32.const 6)
     )
     (unreachable)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:397:4
  (set_local $5
   ;;@ ~lib/allocator/tlsf.ts:397:15
   (i32.sub
    (get_local $2)
    ;;@ ~lib/allocator/tlsf.ts:397:21
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:398:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:398:8
   (i32.lt_u
    (get_local $5)
    ;;@ ~lib/allocator/tlsf.ts:398:15
    (i32.add
     (i32.add
      (get_global $~lib/allocator/tlsf/Block.INFO)
      ;;@ ~lib/allocator/tlsf.ts:398:28
      (get_global $~lib/allocator/tlsf/Block.MIN_SIZE)
     )
     ;;@ ~lib/allocator/tlsf.ts:398:45
     (get_global $~lib/allocator/tlsf/Block.INFO)
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:398:57
   (return
    ;;@ ~lib/allocator/tlsf.ts:399:13
    (i32.const 0)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:403:4
  (set_local $6
   ;;@ ~lib/allocator/tlsf.ts:403:19
   (i32.sub
    (get_local $5)
    ;;@ ~lib/allocator/tlsf.ts:403:26
    (i32.mul
     (i32.const 2)
     ;;@ ~lib/allocator/tlsf.ts:403:30
     (get_global $~lib/allocator/tlsf/Block.INFO)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:404:4
  (set_local $7
   ;;@ ~lib/allocator/tlsf.ts:404:15
   (get_local $1)
  )
  ;;@ ~lib/allocator/tlsf.ts:405:4
  (i32.store
   (get_local $7)
   ;;@ ~lib/allocator/tlsf.ts:405:16
   (i32.or
    (i32.or
     (get_local $6)
     ;;@ ~lib/allocator/tlsf.ts:405:27
     (get_global $~lib/allocator/tlsf/FREE)
    )
    ;;@ ~lib/allocator/tlsf.ts:405:34
    (i32.and
     ;;@ ~lib/allocator/tlsf.ts:405:35
     (get_local $4)
     ;;@ ~lib/allocator/tlsf.ts:405:46
     (get_global $~lib/allocator/tlsf/LEFT_FREE)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:406:4
  (i32.store offset=4
   (get_local $7)
   ;;@ ~lib/allocator/tlsf.ts:406:16
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:407:4
  (i32.store offset=8
   (get_local $7)
   ;;@ ~lib/allocator/tlsf.ts:407:16
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:410:4
  (set_local $8
   ;;@ ~lib/allocator/tlsf.ts:410:15
   (i32.sub
    ;;@ ~lib/allocator/tlsf.ts:410:33
    (i32.add
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:410:41
     (get_local $5)
    )
    ;;@ ~lib/allocator/tlsf.ts:410:48
    (get_global $~lib/allocator/tlsf/Block.INFO)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:411:4
  (i32.store
   (get_local $8)
   ;;@ ~lib/allocator/tlsf.ts:411:16
   (i32.or
    (i32.const 0)
    ;;@ ~lib/allocator/tlsf.ts:411:20
    (get_global $~lib/allocator/tlsf/LEFT_FREE)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:412:4
  (call $~lib/allocator/tlsf/Root#set:tailRef
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:412:19
   (get_local $8)
  )
  ;;@ ~lib/allocator/tlsf.ts:414:9
  (call $~lib/allocator/tlsf/Root#insert
   ;;@ ~lib/allocator/tlsf.ts:414:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:414:16
   (get_local $7)
  )
  ;;@ ~lib/allocator/tlsf.ts:416:11
  (i32.const 1)
 )
 (func $~lib/allocator/tlsf/ffs<usize> (; 21 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:422:2
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:422:9
    (i32.ne
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:422:17
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 422)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:423:20
  (i32.ctz
   ;;@ ~lib/allocator/tlsf.ts:423:16
   (get_local $0)
  )
 )
 (func $~lib/allocator/tlsf/ffs<u32> (; 22 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:422:2
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:422:9
    (i32.ne
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:422:17
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 422)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:423:20
  (i32.ctz
   ;;@ ~lib/allocator/tlsf.ts:423:16
   (get_local $0)
  )
 )
 (func $~lib/allocator/tlsf/Root#search (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  ;;@ ~lib/allocator/tlsf.ts:296:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:296:11
    (if (result i32)
     (tee_local $2
      (i32.ge_u
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:296:19
       (get_global $~lib/allocator/tlsf/Block.MIN_SIZE)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:296:37
     (i32.lt_u
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:296:44
      (get_global $~lib/allocator/tlsf/Block.MAX_SIZE)
     )
     (get_local $2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 296)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:300:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:300:8
   (i32.lt_u
    (get_local $1)
    ;;@ ~lib/allocator/tlsf.ts:300:15
    (get_global $~lib/allocator/tlsf/SB_SIZE)
   )
   ;;@ ~lib/allocator/tlsf.ts:300:24
   (block
    ;;@ ~lib/allocator/tlsf.ts:301:6
    (set_local $3
     ;;@ ~lib/allocator/tlsf.ts:301:11
     (i32.const 0)
    )
    ;;@ ~lib/allocator/tlsf.ts:302:6
    (set_local $4
     ;;@ ~lib/allocator/tlsf.ts:302:11
     (i32.div_u
      ;;@ ~lib/allocator/tlsf.ts:302:17
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:302:24
      (get_global $~lib/internal/allocator/AL_SIZE)
     )
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:303:11
   (block
    ;;@ ~lib/allocator/tlsf.ts:305:6
    (set_local $3
     ;;@ ~lib/allocator/tlsf.ts:305:11
     (call $~lib/allocator/tlsf/fls<usize>
      ;;@ ~lib/allocator/tlsf.ts:305:22
      (get_local $1)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:306:6
    (set_local $4
     ;;@ ~lib/allocator/tlsf.ts:306:11
     (i32.xor
      ;;@ ~lib/allocator/tlsf.ts:306:17
      (i32.shr_u
       ;;@ ~lib/allocator/tlsf.ts:306:18
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:306:26
       (i32.sub
        ;;@ ~lib/allocator/tlsf.ts:306:27
        (get_local $3)
        ;;@ ~lib/allocator/tlsf.ts:306:32
        (get_global $~lib/allocator/tlsf/SL_BITS)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:306:44
      (i32.shl
       ;;@ ~lib/allocator/tlsf.ts:306:45
       (i32.const 1)
       ;;@ ~lib/allocator/tlsf.ts:306:50
       (get_global $~lib/allocator/tlsf/SL_BITS)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:307:6
    (set_local $3
     (i32.sub
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:307:12
      (i32.sub
       (get_global $~lib/allocator/tlsf/SB_BITS)
       ;;@ ~lib/allocator/tlsf.ts:307:22
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:309:6
    (if
     ;;@ ~lib/allocator/tlsf.ts:309:10
     (i32.lt_u
      (get_local $4)
      ;;@ ~lib/allocator/tlsf.ts:309:15
      (i32.sub
       (get_global $~lib/allocator/tlsf/SL_SIZE)
       ;;@ ~lib/allocator/tlsf.ts:309:25
       (i32.const 1)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:309:28
     (set_local $4
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:309:30
       (get_local $4)
       (i32.const 1)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:310:11
     (block
      (set_local $3
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:310:13
        (get_local $3)
        (i32.const 1)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:310:17
      (set_local $4
       ;;@ ~lib/allocator/tlsf.ts:310:22
       (i32.const 0)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:314:4
  (set_local $5
   ;;@ ~lib/allocator/tlsf.ts:314:16
   (i32.and
    ;;@ ~lib/allocator/tlsf.ts:314:21
    (call $~lib/allocator/tlsf/Root#getSLMap
     ;;@ ~lib/allocator/tlsf.ts:314:16
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:314:30
     (get_local $3)
    )
    ;;@ ~lib/allocator/tlsf.ts:314:36
    (i32.shl
     ;;@ ~lib/allocator/tlsf.ts:314:37
     (i32.xor
      ;;@ ~lib/allocator/tlsf.ts:314:38
      (i32.const 0)
      (i32.const -1)
     )
     ;;@ ~lib/allocator/tlsf.ts:314:43
     (get_local $4)
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:316:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:316:8
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:316:9
    (get_local $5)
   )
   ;;@ ~lib/allocator/tlsf.ts:316:16
   (block
    ;;@ ~lib/allocator/tlsf.ts:318:6
    (set_local $2
     ;;@ ~lib/allocator/tlsf.ts:318:18
     (i32.and
      (i32.load
       (get_local $0)
      )
      ;;@ ~lib/allocator/tlsf.ts:318:31
      (i32.shl
       ;;@ ~lib/allocator/tlsf.ts:318:32
       (i32.xor
        ;;@ ~lib/allocator/tlsf.ts:318:33
        (i32.const 0)
        (i32.const -1)
       )
       ;;@ ~lib/allocator/tlsf.ts:318:38
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:318:39
        (get_local $3)
        ;;@ ~lib/allocator/tlsf.ts:318:44
        (i32.const 1)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:319:6
    (if
     ;;@ ~lib/allocator/tlsf.ts:319:10
     (i32.eqz
      ;;@ ~lib/allocator/tlsf.ts:319:11
      (get_local $2)
     )
     ;;@ ~lib/allocator/tlsf.ts:319:18
     (set_local $6
      ;;@ ~lib/allocator/tlsf.ts:320:15
      (i32.const 0)
     )
     ;;@ ~lib/allocator/tlsf.ts:321:13
     (block
      ;;@ ~lib/allocator/tlsf.ts:322:8
      (set_local $3
       ;;@ ~lib/allocator/tlsf.ts:322:13
       (call $~lib/allocator/tlsf/ffs<usize>
        ;;@ ~lib/allocator/tlsf.ts:322:24
        (get_local $2)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:323:8
      (set_local $5
       ;;@ ~lib/allocator/tlsf.ts:323:16
       (if (result i32)
        (tee_local $7
         ;;@ ~lib/allocator/tlsf.ts:323:28
         (call $~lib/allocator/tlsf/Root#getSLMap
          ;;@ ~lib/allocator/tlsf.ts:323:23
          (get_local $0)
          ;;@ ~lib/allocator/tlsf.ts:323:37
          (get_local $3)
         )
        )
        (get_local $7)
        (block
         (call $~lib/env/abort
          (i32.const 0)
          (i32.const 8)
          (i32.const 323)
          (i32.const 16)
         )
         (unreachable)
        )
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:324:8
      (set_local $6
       ;;@ ~lib/allocator/tlsf.ts:324:20
       (call $~lib/allocator/tlsf/Root#getHead
        ;;@ ~lib/allocator/tlsf.ts:324:15
        (get_local $0)
        ;;@ ~lib/allocator/tlsf.ts:324:28
        (get_local $3)
        ;;@ ~lib/allocator/tlsf.ts:324:32
        (call $~lib/allocator/tlsf/ffs<u32>
         ;;@ ~lib/allocator/tlsf.ts:324:41
         (get_local $5)
        )
       )
      )
     )
    )
   )
   ;;@ ~lib/allocator/tlsf.ts:326:11
   (set_local $6
    ;;@ ~lib/allocator/tlsf.ts:327:18
    (call $~lib/allocator/tlsf/Root#getHead
     ;;@ ~lib/allocator/tlsf.ts:327:13
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:327:26
     (get_local $3)
     ;;@ ~lib/allocator/tlsf.ts:327:30
     (call $~lib/allocator/tlsf/ffs<u32>
      ;;@ ~lib/allocator/tlsf.ts:327:39
      (get_local $5)
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:329:11
  (get_local $6)
 )
 (func $~lib/allocator/tlsf/Root#use (; 24 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/allocator/tlsf.ts:347:4
  (set_local $3
   ;;@ ~lib/allocator/tlsf.ts:347:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:348:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:348:11
    (i32.and
     (get_local $3)
     ;;@ ~lib/allocator/tlsf.ts:348:23
     (get_global $~lib/allocator/tlsf/FREE)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 348)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:349:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:349:11
    (if (result i32)
     (tee_local $4
      (i32.ge_u
       (get_local $2)
       ;;@ ~lib/allocator/tlsf.ts:349:19
       (get_global $~lib/allocator/tlsf/Block.MIN_SIZE)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:349:37
     (i32.lt_u
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:349:44
      (get_global $~lib/allocator/tlsf/Block.MAX_SIZE)
     )
     (get_local $4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 349)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:350:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:350:11
    (i32.eqz
     ;;@ ~lib/allocator/tlsf.ts:350:12
     (i32.and
      ;;@ ~lib/allocator/tlsf.ts:350:13
      (get_local $2)
      ;;@ ~lib/allocator/tlsf.ts:350:20
      (get_global $~lib/internal/allocator/AL_MASK)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 350)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:352:9
  (call $~lib/allocator/tlsf/Root#remove
   ;;@ ~lib/allocator/tlsf.ts:352:4
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:352:16
   (get_local $1)
  )
  ;;@ ~lib/allocator/tlsf.ts:355:4
  (set_local $5
   ;;@ ~lib/allocator/tlsf.ts:355:20
   (i32.sub
    (i32.and
     ;;@ ~lib/allocator/tlsf.ts:355:21
     (get_local $3)
     ;;@ ~lib/allocator/tlsf.ts:355:33
     (i32.xor
      ;;@ ~lib/allocator/tlsf.ts:355:34
      (get_global $~lib/allocator/tlsf/TAGS)
      (i32.const -1)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:355:42
    (get_local $2)
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:356:4
  (if
   ;;@ ~lib/allocator/tlsf.ts:356:8
   (i32.ge_u
    (get_local $5)
    ;;@ ~lib/allocator/tlsf.ts:356:21
    (i32.add
     (get_global $~lib/allocator/tlsf/Block.INFO)
     ;;@ ~lib/allocator/tlsf.ts:356:34
     (get_global $~lib/allocator/tlsf/Block.MIN_SIZE)
    )
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
       (get_global $~lib/allocator/tlsf/LEFT_FREE)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:359:6
    (set_local $4
     ;;@ ~lib/allocator/tlsf.ts:359:18
     (i32.add
      ;;@ ~lib/allocator/tlsf.ts:360:8
      (i32.add
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:360:35
       (get_global $~lib/allocator/tlsf/Block.INFO)
      )
      ;;@ ~lib/allocator/tlsf.ts:360:48
      (get_local $2)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:362:6
    (i32.store
     (get_local $4)
     ;;@ ~lib/allocator/tlsf.ts:362:19
     (i32.or
      (i32.sub
       ;;@ ~lib/allocator/tlsf.ts:362:20
       (get_local $5)
       ;;@ ~lib/allocator/tlsf.ts:362:32
       (get_global $~lib/allocator/tlsf/Block.INFO)
      )
      ;;@ ~lib/allocator/tlsf.ts:362:46
      (get_global $~lib/allocator/tlsf/FREE)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:363:11
    (call $~lib/allocator/tlsf/Root#insert
     ;;@ ~lib/allocator/tlsf.ts:363:6
     (get_local $0)
     ;;@ ~lib/allocator/tlsf.ts:363:18
     (get_local $4)
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
      ;;@ ~lib/allocator/tlsf.ts:367:31
      (i32.xor
       ;;@ ~lib/allocator/tlsf.ts:367:32
       (get_global $~lib/allocator/tlsf/FREE)
       (i32.const -1)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:368:6
    (set_local $4
     ;;@ ~lib/allocator/tlsf.ts:368:25
     (if (result i32)
      (i32.eqz
       (tee_local $4
        ;;@ ~lib/allocator/tlsf.ts:368:32
        (call $~lib/allocator/tlsf/Block#get:right
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 8)
        (i32.const 368)
        (i32.const 25)
       )
       (unreachable)
      )
      (get_local $4)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:369:6
    (i32.store
     (get_local $4)
     (i32.and
      (i32.load
       (get_local $4)
      )
      ;;@ ~lib/allocator/tlsf.ts:369:20
      (i32.xor
       ;;@ ~lib/allocator/tlsf.ts:369:21
       (get_global $~lib/allocator/tlsf/LEFT_FREE)
       (i32.const -1)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:372:44
  (i32.add
   ;;@ ~lib/allocator/tlsf.ts:372:11
   (get_local $1)
   ;;@ ~lib/allocator/tlsf.ts:372:38
   (get_global $~lib/allocator/tlsf/Block.INFO)
  )
 )
 (func $~lib/allocator/tlsf/__memory_allocate (; 25 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  ;;@ ~lib/allocator/tlsf.ts:443:2
  (set_local $1
   ;;@ ~lib/allocator/tlsf.ts:443:13
   (get_global $~lib/allocator/tlsf/ROOT)
  )
  ;;@ ~lib/allocator/tlsf.ts:444:2
  (if
   ;;@ ~lib/allocator/tlsf.ts:444:6
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:444:7
    (get_local $1)
   )
   ;;@ ~lib/allocator/tlsf.ts:444:13
   (block
    ;;@ ~lib/allocator/tlsf.ts:445:4
    (set_local $2
     ;;@ ~lib/allocator/tlsf.ts:445:21
     (i32.and
      (i32.add
       ;;@ ~lib/allocator/tlsf.ts:445:22
       (get_global $HEAP_BASE)
       ;;@ ~lib/allocator/tlsf.ts:445:34
       (get_global $~lib/internal/allocator/AL_MASK)
      )
      ;;@ ~lib/allocator/tlsf.ts:445:45
      (i32.xor
       ;;@ ~lib/allocator/tlsf.ts:445:46
       (get_global $~lib/internal/allocator/AL_MASK)
       (i32.const -1)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:446:4
    (set_local $3
     ;;@ ~lib/allocator/tlsf.ts:446:29
     (current_memory)
    )
    ;;@ ~lib/allocator/tlsf.ts:447:4
    (set_local $4
     ;;@ ~lib/allocator/tlsf.ts:447:22
     (i32.shr_u
      ;;@ ~lib/allocator/tlsf.ts:447:28
      (i32.and
       ;;@ ~lib/allocator/tlsf.ts:447:29
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:447:30
        (i32.add
         ;;@ ~lib/allocator/tlsf.ts:447:31
         (get_local $2)
         ;;@ ~lib/allocator/tlsf.ts:447:44
         (get_global $~lib/allocator/tlsf/Root.SIZE)
        )
        ;;@ ~lib/allocator/tlsf.ts:447:57
        (i32.const 65535)
       )
       ;;@ ~lib/allocator/tlsf.ts:447:67
       (i32.xor
        ;;@ ~lib/allocator/tlsf.ts:447:68
        (i32.const 65535)
        (i32.const -1)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:447:80
      (i32.const 16)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:448:4
    (if
     ;;@ ~lib/allocator/tlsf.ts:448:8
     (if (result i32)
      (tee_local $5
       (i32.gt_s
        (get_local $4)
        ;;@ ~lib/allocator/tlsf.ts:448:22
        (get_local $3)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:448:37
      (i32.lt_s
       ;;@ ~lib/allocator/tlsf.ts:448:44
       (grow_memory
        ;;@ ~lib/allocator/tlsf.ts:448:49
        (i32.sub
         (get_local $4)
         ;;@ ~lib/allocator/tlsf.ts:448:63
         (get_local $3)
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:448:78
       (i32.const 0)
      )
      (get_local $5)
     )
     ;;@ ~lib/allocator/tlsf.ts:448:81
     (unreachable)
    )
    ;;@ ~lib/allocator/tlsf.ts:449:4
    (set_global $~lib/allocator/tlsf/ROOT
     ;;@ ~lib/allocator/tlsf.ts:449:11
     (tee_local $1
      ;;@ ~lib/allocator/tlsf.ts:449:18
      (get_local $2)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:450:4
    (call $~lib/allocator/tlsf/Root#set:tailRef
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:450:19
     (i32.const 0)
    )
    ;;@ ~lib/allocator/tlsf.ts:451:4
    (i32.store
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:451:17
     (i32.const 0)
    )
    ;;@ ~lib/allocator/tlsf.ts:452:4
    (block $break|0
     ;;@ ~lib/allocator/tlsf.ts:452:9
     (set_local $5
      ;;@ ~lib/allocator/tlsf.ts:452:25
      (i32.const 0)
     )
     (loop $repeat|0
      (br_if $break|0
       (i32.eqz
        ;;@ ~lib/allocator/tlsf.ts:452:28
        (i32.lt_u
         (get_local $5)
         ;;@ ~lib/allocator/tlsf.ts:452:33
         (get_global $~lib/allocator/tlsf/FL_BITS)
        )
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:452:48
      (block
       ;;@ ~lib/allocator/tlsf.ts:453:11
       (call $~lib/allocator/tlsf/Root#setSLMap
        ;;@ ~lib/allocator/tlsf.ts:453:6
        (get_local $1)
        ;;@ ~lib/allocator/tlsf.ts:453:20
        (get_local $5)
        ;;@ ~lib/allocator/tlsf.ts:453:24
        (i32.const 0)
       )
       ;;@ ~lib/allocator/tlsf.ts:454:6
       (block $break|1
        ;;@ ~lib/allocator/tlsf.ts:454:11
        (set_local $6
         ;;@ ~lib/allocator/tlsf.ts:454:25
         (i32.const 0)
        )
        (loop $repeat|1
         (br_if $break|1
          (i32.eqz
           ;;@ ~lib/allocator/tlsf.ts:454:28
           (i32.lt_u
            (get_local $6)
            ;;@ ~lib/allocator/tlsf.ts:454:33
            (get_global $~lib/allocator/tlsf/SL_SIZE)
           )
          )
         )
         ;;@ ~lib/allocator/tlsf.ts:454:48
         (call $~lib/allocator/tlsf/Root#setHead
          ;;@ ~lib/allocator/tlsf.ts:455:8
          (get_local $1)
          ;;@ ~lib/allocator/tlsf.ts:455:21
          (get_local $5)
          ;;@ ~lib/allocator/tlsf.ts:455:25
          (get_local $6)
          ;;@ ~lib/allocator/tlsf.ts:455:29
          (i32.const 0)
         )
         ;;@ ~lib/allocator/tlsf.ts:454:42
         (set_local $6
          (i32.add
           ;;@ ~lib/allocator/tlsf.ts:454:44
           (get_local $6)
           (i32.const 1)
          )
         )
         (br $repeat|1)
        )
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:452:42
      (set_local $5
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:452:44
        (get_local $5)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:458:9
    (drop
     (call $~lib/allocator/tlsf/Root#addMemory
      ;;@ ~lib/allocator/tlsf.ts:458:4
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:458:19
      (i32.and
       (i32.add
        ;;@ ~lib/allocator/tlsf.ts:458:20
        (i32.add
         (get_local $2)
         ;;@ ~lib/allocator/tlsf.ts:458:33
         (get_global $~lib/allocator/tlsf/Root.SIZE)
        )
        ;;@ ~lib/allocator/tlsf.ts:458:45
        (get_global $~lib/internal/allocator/AL_MASK)
       )
       ;;@ ~lib/allocator/tlsf.ts:458:56
       (i32.xor
        ;;@ ~lib/allocator/tlsf.ts:458:57
        (get_global $~lib/internal/allocator/AL_MASK)
        (i32.const -1)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:458:66
      (i32.shl
       ;;@ ~lib/allocator/tlsf.ts:458:73
       (current_memory)
       ;;@ ~lib/allocator/tlsf.ts:458:83
       (i32.const 16)
      )
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:462:2
  (set_local $7
   ;;@ ~lib/allocator/tlsf.ts:462:20
   (i32.const 0)
  )
  ;;@ ~lib/allocator/tlsf.ts:463:2
  (if
   ;;@ ~lib/allocator/tlsf.ts:463:6
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:463:12
   (block
    ;;@ ~lib/allocator/tlsf.ts:464:4
    (if
     ;;@ ~lib/allocator/tlsf.ts:464:8
     (i32.gt_u
      (get_local $0)
      ;;@ ~lib/allocator/tlsf.ts:464:15
      (get_global $~lib/allocator/tlsf/Block.MAX_SIZE)
     )
     ;;@ ~lib/allocator/tlsf.ts:464:31
     (unreachable)
    )
    ;;@ ~lib/allocator/tlsf.ts:466:4
    (set_local $0
     ;;@ ~lib/allocator/tlsf.ts:466:11
     (select
      (tee_local $4
       ;;@ ~lib/allocator/tlsf.ts:466:22
       (i32.and
        (i32.add
         ;;@ ~lib/allocator/tlsf.ts:466:23
         (get_local $0)
         ;;@ ~lib/allocator/tlsf.ts:466:30
         (get_global $~lib/internal/allocator/AL_MASK)
        )
        ;;@ ~lib/allocator/tlsf.ts:466:41
        (i32.xor
         ;;@ ~lib/allocator/tlsf.ts:466:42
         (get_global $~lib/internal/allocator/AL_MASK)
         (i32.const -1)
        )
       )
      )
      (tee_local $3
       ;;@ ~lib/allocator/tlsf.ts:466:51
       (get_global $~lib/allocator/tlsf/Block.MIN_SIZE)
      )
      (i32.gt_u
       (get_local $4)
       (get_local $3)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:468:4
    (set_local $4
     ;;@ ~lib/allocator/tlsf.ts:468:21
     (call $~lib/allocator/tlsf/Root#search
      ;;@ ~lib/allocator/tlsf.ts:468:16
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:468:28
      (get_local $0)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:469:4
    (if
     ;;@ ~lib/allocator/tlsf.ts:469:8
     (i32.eqz
      ;;@ ~lib/allocator/tlsf.ts:469:9
      (get_local $4)
     )
     ;;@ ~lib/allocator/tlsf.ts:469:16
     (block
      ;;@ ~lib/allocator/tlsf.ts:472:6
      (set_local $3
       ;;@ ~lib/allocator/tlsf.ts:472:31
       (current_memory)
      )
      ;;@ ~lib/allocator/tlsf.ts:473:6
      (set_local $2
       ;;@ ~lib/allocator/tlsf.ts:473:24
       (i32.shr_u
        ;;@ ~lib/allocator/tlsf.ts:473:30
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:473:31
         (i32.add
          ;;@ ~lib/allocator/tlsf.ts:473:32
          (get_local $0)
          ;;@ ~lib/allocator/tlsf.ts:473:39
          (i32.const 65535)
         )
         ;;@ ~lib/allocator/tlsf.ts:473:49
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:473:50
          (i32.const 65535)
          (i32.const -1)
         )
        )
        ;;@ ~lib/allocator/tlsf.ts:473:62
        (i32.const 16)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:474:6
      (set_local $5
       ;;@ ~lib/allocator/tlsf.ts:474:24
       (select
        (tee_local $5
         ;;@ ~lib/allocator/tlsf.ts:474:28
         (get_local $3)
        )
        (tee_local $6
         ;;@ ~lib/allocator/tlsf.ts:474:41
         (get_local $2)
        )
        (i32.gt_s
         (get_local $5)
         (get_local $6)
        )
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:475:6
      (if
       ;;@ ~lib/allocator/tlsf.ts:475:10
       (i32.lt_s
        ;;@ ~lib/allocator/tlsf.ts:475:17
        (grow_memory
         ;;@ ~lib/allocator/tlsf.ts:475:22
         (get_local $5)
        )
        ;;@ ~lib/allocator/tlsf.ts:475:37
        (i32.const 0)
       )
       ;;@ ~lib/allocator/tlsf.ts:475:40
       (if
        ;;@ ~lib/allocator/tlsf.ts:476:12
        (i32.lt_s
         ;;@ ~lib/allocator/tlsf.ts:476:19
         (grow_memory
          ;;@ ~lib/allocator/tlsf.ts:476:24
          (get_local $2)
         )
         ;;@ ~lib/allocator/tlsf.ts:476:39
         (i32.const 0)
        )
        ;;@ ~lib/allocator/tlsf.ts:476:42
        (unreachable)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:480:6
      (set_local $6
       ;;@ ~lib/allocator/tlsf.ts:480:30
       (current_memory)
      )
      ;;@ ~lib/allocator/tlsf.ts:481:11
      (drop
       (call $~lib/allocator/tlsf/Root#addMemory
        ;;@ ~lib/allocator/tlsf.ts:481:6
        (get_local $1)
        ;;@ ~lib/allocator/tlsf.ts:481:21
        (i32.shl
         (get_local $3)
         ;;@ ~lib/allocator/tlsf.ts:481:43
         (i32.const 16)
        )
        ;;@ ~lib/allocator/tlsf.ts:481:47
        (i32.shl
         (get_local $6)
         ;;@ ~lib/allocator/tlsf.ts:481:68
         (i32.const 16)
        )
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:482:6
      (set_local $4
       ;;@ ~lib/allocator/tlsf.ts:482:14
       (if (result i32)
        (i32.eqz
         (tee_local $8
          ;;@ ~lib/allocator/tlsf.ts:482:26
          (call $~lib/allocator/tlsf/Root#search
           ;;@ ~lib/allocator/tlsf.ts:482:21
           (get_local $1)
           ;;@ ~lib/allocator/tlsf.ts:482:33
           (get_local $0)
          )
         )
        )
        (block
         (call $~lib/env/abort
          (i32.const 0)
          (i32.const 8)
          (i32.const 482)
          (i32.const 14)
         )
         (unreachable)
        )
        (get_local $8)
       )
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:485:4
    (if
     (i32.eqz
      ;;@ ~lib/allocator/tlsf.ts:485:11
      (i32.ge_u
       (i32.and
        ;;@ ~lib/allocator/tlsf.ts:485:12
        (i32.load
         (get_local $4)
        )
        ;;@ ~lib/allocator/tlsf.ts:485:25
        (i32.xor
         ;;@ ~lib/allocator/tlsf.ts:485:26
         (get_global $~lib/allocator/tlsf/TAGS)
         (i32.const -1)
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:485:35
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 485)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:486:4
    (set_local $7
     ;;@ ~lib/allocator/tlsf.ts:486:16
     (call $~lib/allocator/tlsf/Root#use
      ;;@ ~lib/allocator/tlsf.ts:486:11
      (get_local $1)
      ;;@ ~lib/allocator/tlsf.ts:486:20
      (get_local $4)
      ;;@ ~lib/allocator/tlsf.ts:486:34
      (get_local $0)
     )
    )
   )
  )
  ;;@ ~lib/allocator/tlsf.ts:489:9
  (get_local $7)
 )
 (func $~lib/memory/memory.allocate (; 26 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/memory.ts:37:4
  (return
   ;;@ ~lib/memory.ts:37:45
   (call $~lib/allocator/tlsf/__memory_allocate
    ;;@ ~lib/memory.ts:37:63
    (get_local $0)
   )
  )
 )
 (func $~lib/allocator/tlsf/__memory_free (; 27 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ ~lib/allocator/tlsf.ts:495:2
  (if
   ;;@ ~lib/allocator/tlsf.ts:495:6
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:495:12
   (block
    ;;@ ~lib/allocator/tlsf.ts:496:4
    (set_local $1
     ;;@ ~lib/allocator/tlsf.ts:496:15
     (get_global $~lib/allocator/tlsf/ROOT)
    )
    ;;@ ~lib/allocator/tlsf.ts:497:4
    (if
     ;;@ ~lib/allocator/tlsf.ts:497:8
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:497:14
     (block
      ;;@ ~lib/allocator/tlsf.ts:498:6
      (set_local $2
       ;;@ ~lib/allocator/tlsf.ts:498:18
       (i32.sub
        ;;@ ~lib/allocator/tlsf.ts:498:36
        (get_local $0)
        ;;@ ~lib/allocator/tlsf.ts:498:43
        (get_global $~lib/allocator/tlsf/Block.INFO)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:499:6
      (set_local $3
       ;;@ ~lib/allocator/tlsf.ts:499:22
       (i32.load
        (get_local $2)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:500:6
      (if
       (i32.eqz
        ;;@ ~lib/allocator/tlsf.ts:500:13
        (i32.eqz
         ;;@ ~lib/allocator/tlsf.ts:500:14
         (i32.and
          ;;@ ~lib/allocator/tlsf.ts:500:15
          (get_local $3)
          ;;@ ~lib/allocator/tlsf.ts:500:27
          (get_global $~lib/allocator/tlsf/FREE)
         )
        )
       )
       (block
        (call $~lib/env/abort
         (i32.const 0)
         (i32.const 8)
         (i32.const 500)
         (i32.const 6)
        )
        (unreachable)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:501:6
      (i32.store
       (get_local $2)
       ;;@ ~lib/allocator/tlsf.ts:501:19
       (i32.or
        (get_local $3)
        ;;@ ~lib/allocator/tlsf.ts:501:31
        (get_global $~lib/allocator/tlsf/FREE)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:502:11
      (call $~lib/allocator/tlsf/Root#insert
       ;;@ ~lib/allocator/tlsf.ts:502:6
       (get_local $1)
       ;;@ ~lib/allocator/tlsf.ts:502:18
       (i32.sub
        ;;@ ~lib/allocator/tlsf.ts:502:36
        (get_local $0)
        ;;@ ~lib/allocator/tlsf.ts:502:43
        (get_global $~lib/allocator/tlsf/Block.INFO)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/memory/memory.free (; 28 ;) (type $iv) (param $0 i32)
  ;;@ ~lib/memory.ts:43:36
  (call $~lib/allocator/tlsf/__memory_free
   ;;@ ~lib/memory.ts:43:50
   (get_local $0)
  )
  ;;@ ~lib/memory.ts:43:56
  (return)
 )
 (func $~lib/allocator/tlsf/__memory_reset (; 29 ;) (type $v)
  ;;@ ~lib/allocator/tlsf.ts:509:2
  (unreachable)
 )
 (func $~lib/memory/memory.reset (; 30 ;) (type $v)
  ;;@ ~lib/memory.ts:49:37
  (call $~lib/allocator/tlsf/__memory_reset)
  ;;@ ~lib/memory.ts:49:55
  (return)
 )
 (func $start (; 31 ;) (type $v)
  ;;@ ~lib/allocator/tlsf.ts:122:0
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:122:7
    (i32.le_s
     (i32.shl
      ;;@ ~lib/allocator/tlsf.ts:122:8
      (i32.const 1)
      ;;@ ~lib/allocator/tlsf.ts:122:13
      (get_global $~lib/allocator/tlsf/SL_BITS)
     )
     ;;@ ~lib/allocator/tlsf.ts:122:25
     (i32.const 32)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 122)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
