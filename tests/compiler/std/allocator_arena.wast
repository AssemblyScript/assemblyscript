(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global "$(lib)/allocator/arena/ALIGN_LOG2" i32 (i32.const 3))
 (global "$(lib)/allocator/arena/ALIGN_SIZE" i32 (i32.const 8))
 (global "$(lib)/allocator/arena/ALIGN_MASK" i32 (i32.const 7))
 (global "$(lib)/allocator/arena/HEAP_OFFSET" (mut i32) (i32.const 0))
 (global $std/allocator_arena/size i32 (i32.const 42))
 (global $std/allocator_arena/ptr1 (mut i32) (i32.const 0))
 (global $std/allocator_arena/ptr2 (mut i32) (i32.const 0))
 (global $std/allocator_arena/i (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 56))
 (memory $0 1)
 (data (i32.const 8) "\16\00\00\00s\00t\00d\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00_\00a\00r\00e\00n\00a\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/allocator/arena/allocate_memory" (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ (lib)/allocator/arena.ts:14:2
  (if
   ;;@ (lib)/allocator/arena.ts:14:6
   (i32.eqz
    ;;@ (lib)/allocator/arena.ts:14:7
    (get_local $0)
   )
   ;;@ (lib)/allocator/arena.ts:14:20
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/arena.ts:15:2
  (set_local $1
   ;;@ (lib)/allocator/arena.ts:15:12
   (get_global "$(lib)/allocator/arena/HEAP_OFFSET")
  )
  ;;@ (lib)/allocator/arena.ts:16:2
  (set_local $2
   ;;@ (lib)/allocator/arena.ts:16:12
   (i32.and
    (i32.add
     ;;@ (lib)/allocator/arena.ts:16:13
     (i32.add
      (get_local $1)
      ;;@ (lib)/allocator/arena.ts:16:19
      (get_local $0)
     )
     ;;@ (lib)/allocator/arena.ts:16:26
     (i32.const 7)
    )
    ;;@ (lib)/allocator/arena.ts:16:40
    (i32.xor
     ;;@ (lib)/allocator/arena.ts:16:41
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  ;;@ (lib)/allocator/arena.ts:17:2
  (set_local $3
   ;;@ (lib)/allocator/arena.ts:17:14
   (i32.shl
    (current_memory)
    ;;@ (lib)/allocator/arena.ts:17:41
    (i32.const 16)
   )
  )
  ;;@ (lib)/allocator/arena.ts:18:2
  (if
   ;;@ (lib)/allocator/arena.ts:18:6
   (i32.and
    (if (result i32)
     (i32.ne
      (tee_local $4
       (i32.gt_u
        (get_local $2)
        ;;@ (lib)/allocator/arena.ts:18:12
        (get_local $3)
       )
      )
      (i32.const 0)
     )
     ;;@ (lib)/allocator/arena.ts:18:21
     (i32.lt_s
      (grow_memory
       ;;@ (lib)/allocator/arena.ts:19:4
       (select
        (tee_local $4
         ;;@ (lib)/allocator/arena.ts:20:6
         (i32.shr_u
          (i32.sub
           ;;@ (lib)/allocator/arena.ts:20:7
           (i32.and
            ;;@ (lib)/allocator/arena.ts:20:8
            (i32.add
             ;;@ (lib)/allocator/arena.ts:20:9
             (get_local $2)
             ;;@ (lib)/allocator/arena.ts:20:15
             (i32.const 65535)
            )
            ;;@ (lib)/allocator/arena.ts:20:25
            (i32.xor
             ;;@ (lib)/allocator/arena.ts:20:26
             (i32.const 65535)
             (i32.const -1)
            )
           )
           ;;@ (lib)/allocator/arena.ts:20:36
           (get_local $3)
          )
          ;;@ (lib)/allocator/arena.ts:20:46
          (i32.const 16)
         )
        )
        (tee_local $5
         ;;@ (lib)/allocator/arena.ts:21:6
         (i32.shr_u
          (get_local $3)
          ;;@ (lib)/allocator/arena.ts:21:46
          (i32.const 16)
         )
        )
        (i32.gt_u
         (get_local $4)
         (get_local $5)
        )
       )
      )
      ;;@ (lib)/allocator/arena.ts:23:6
      (i32.const 0)
     )
     (get_local $4)
    )
    (i32.const 1)
   )
   ;;@ (lib)/allocator/arena.ts:23:9
   (unreachable)
  )
  ;;@ (lib)/allocator/arena.ts:24:2
  (set_global "$(lib)/allocator/arena/HEAP_OFFSET"
   ;;@ (lib)/allocator/arena.ts:24:16
   (get_local $2)
  )
  ;;@ (lib)/allocator/arena.ts:25:9
  (return
   (get_local $1)
  )
 )
 (func "$(lib)/memory/set_memory" (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
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
  ;;@ (lib)/memory.ts:215:2
  (set_local $3
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
  ;;@ (lib)/memory.ts:216:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:216:10
    (get_local $3)
   )
  )
  ;;@ (lib)/memory.ts:217:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ (lib)/memory.ts:217:7
    (get_local $3)
   )
  )
  ;;@ (lib)/memory.ts:218:2
  (set_local $2
   (i32.and
    (get_local $2)
    ;;@ (lib)/memory.ts:218:7
    (i32.sub
     (i32.const 0)
     ;;@ (lib)/memory.ts:218:8
     (i32.const 4)
    )
   )
  )
  ;;@ (lib)/memory.ts:220:2
  (set_local $4
   ;;@ (lib)/memory.ts:220:17
   (i32.mul
    (i32.div_u
     ;;@ (lib)/memory.ts:220:18
     (i32.sub
      (i32.const 0)
      ;;@ (lib)/memory.ts:220:19
      (i32.const 1)
     )
     ;;@ (lib)/memory.ts:220:23
     (i32.const 255)
    )
    ;;@ (lib)/memory.ts:220:30
    (get_local $1)
   )
  )
  ;;@ (lib)/memory.ts:223:2
  (i32.store
   ;;@ (lib)/memory.ts:223:13
   (get_local $0)
   ;;@ (lib)/memory.ts:223:19
   (get_local $4)
  )
  ;;@ (lib)/memory.ts:224:2
  (i32.store
   ;;@ (lib)/memory.ts:224:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ (lib)/memory.ts:224:20
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:224:24
    (i32.const 4)
   )
   ;;@ (lib)/memory.ts:224:27
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
  )
  ;;@ (lib)/memory.ts:243:2
  (set_local $3
   ;;@ (lib)/memory.ts:243:6
   (i32.add
    (i32.const 24)
    ;;@ (lib)/memory.ts:243:11
    (i32.and
     ;;@ (lib)/memory.ts:243:12
     (get_local $0)
     ;;@ (lib)/memory.ts:243:19
     (i32.const 4)
    )
   )
  )
  ;;@ (lib)/memory.ts:244:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ (lib)/memory.ts:244:10
    (get_local $3)
   )
  )
  ;;@ (lib)/memory.ts:245:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ (lib)/memory.ts:245:7
    (get_local $3)
   )
  )
  ;;@ (lib)/memory.ts:248:2
  (set_local $5
   ;;@ (lib)/memory.ts:248:17
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    ;;@ (lib)/memory.ts:248:28
    (i64.shl
     ;;@ (lib)/memory.ts:248:29
     (i64.extend_u/i32
      (get_local $4)
     )
     ;;@ (lib)/memory.ts:248:41
     (i64.const 32)
    )
   )
  )
  ;;@ (lib)/memory.ts:249:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ (lib)/memory.ts:249:9
     (i32.ge_u
      (get_local $2)
      ;;@ (lib)/memory.ts:249:14
      (i32.const 32)
     )
     (block
      (block
       ;;@ (lib)/memory.ts:250:4
       (i64.store
        ;;@ (lib)/memory.ts:250:15
        (get_local $0)
        ;;@ (lib)/memory.ts:250:21
        (get_local $5)
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
        (get_local $5)
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
        (get_local $5)
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
        (get_local $5)
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
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func "$(lib)/memory/copy_memory" (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ (lib)/memory.ts:5:2
  (nop)
  ;;@ (lib)/memory.ts:8:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ (lib)/memory.ts:8:9
     (if (result i32)
      (i32.ne
       (get_local $2)
       (i32.const 0)
      )
      ;;@ (lib)/memory.ts:8:14
      (i32.and
       ;;@ (lib)/memory.ts:8:15
       (get_local $1)
       ;;@ (lib)/memory.ts:8:21
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       ;;@ (lib)/memory.ts:9:4
       (i32.store8
        ;;@ (lib)/memory.ts:9:14
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
        ;;@ (lib)/memory.ts:9:22
        (i32.load8_u
         ;;@ (lib)/memory.ts:9:31
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
       ;;@ (lib)/memory.ts:10:4
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
  ;;@ (lib)/memory.ts:14:2
  (if
   ;;@ (lib)/memory.ts:14:6
   (i32.eq
    (i32.and
     ;;@ (lib)/memory.ts:14:7
     (get_local $0)
     ;;@ (lib)/memory.ts:14:14
     (i32.const 3)
    )
    ;;@ (lib)/memory.ts:14:20
    (i32.const 0)
   )
   ;;@ (lib)/memory.ts:14:23
   (block
    (block $break|1
     (loop $continue|1
      (if
       ;;@ (lib)/memory.ts:15:11
       (i32.ge_u
        (get_local $2)
        ;;@ (lib)/memory.ts:15:16
        (i32.const 16)
       )
       (block
        (block
         ;;@ (lib)/memory.ts:16:6
         (i32.store
          ;;@ (lib)/memory.ts:16:17
          (get_local $0)
          ;;@ (lib)/memory.ts:16:28
          (i32.load
           ;;@ (lib)/memory.ts:16:38
           (get_local $1)
          )
         )
         ;;@ (lib)/memory.ts:17:6
         (i32.store
          ;;@ (lib)/memory.ts:17:17
          (i32.add
           (get_local $0)
           ;;@ (lib)/memory.ts:17:25
           (i32.const 4)
          )
          ;;@ (lib)/memory.ts:17:28
          (i32.load
           ;;@ (lib)/memory.ts:17:38
           (i32.add
            (get_local $1)
            ;;@ (lib)/memory.ts:17:45
            (i32.const 4)
           )
          )
         )
         ;;@ (lib)/memory.ts:18:6
         (i32.store
          ;;@ (lib)/memory.ts:18:17
          (i32.add
           (get_local $0)
           ;;@ (lib)/memory.ts:18:25
           (i32.const 8)
          )
          ;;@ (lib)/memory.ts:18:28
          (i32.load
           ;;@ (lib)/memory.ts:18:38
           (i32.add
            (get_local $1)
            ;;@ (lib)/memory.ts:18:45
            (i32.const 8)
           )
          )
         )
         ;;@ (lib)/memory.ts:19:6
         (i32.store
          ;;@ (lib)/memory.ts:19:17
          (i32.add
           (get_local $0)
           ;;@ (lib)/memory.ts:19:24
           (i32.const 12)
          )
          ;;@ (lib)/memory.ts:19:28
          (i32.load
           ;;@ (lib)/memory.ts:19:38
           (i32.add
            (get_local $1)
            ;;@ (lib)/memory.ts:19:44
            (i32.const 12)
           )
          )
         )
         ;;@ (lib)/memory.ts:20:6
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ (lib)/memory.ts:20:13
           (i32.const 16)
          )
         )
         ;;@ (lib)/memory.ts:20:17
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ (lib)/memory.ts:20:25
           (i32.const 16)
          )
         )
         ;;@ (lib)/memory.ts:20:29
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ (lib)/memory.ts:20:34
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ (lib)/memory.ts:22:4
    (if
     ;;@ (lib)/memory.ts:22:8
     (i32.and
      (get_local $2)
      ;;@ (lib)/memory.ts:22:12
      (i32.const 8)
     )
     ;;@ (lib)/memory.ts:22:15
     (block
      ;;@ (lib)/memory.ts:23:6
      (i32.store
       ;;@ (lib)/memory.ts:23:17
       (get_local $0)
       ;;@ (lib)/memory.ts:23:27
       (i32.load
        ;;@ (lib)/memory.ts:23:37
        (get_local $1)
       )
      )
      ;;@ (lib)/memory.ts:24:6
      (i32.store
       ;;@ (lib)/memory.ts:24:17
       (i32.add
        (get_local $0)
        ;;@ (lib)/memory.ts:24:24
        (i32.const 4)
       )
       ;;@ (lib)/memory.ts:24:27
       (i32.load
        ;;@ (lib)/memory.ts:24:37
        (i32.add
         (get_local $1)
         ;;@ (lib)/memory.ts:24:43
         (i32.const 4)
        )
       )
      )
      ;;@ (lib)/memory.ts:25:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ (lib)/memory.ts:25:14
        (i32.const 8)
       )
      )
      ;;@ (lib)/memory.ts:25:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ (lib)/memory.ts:25:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ (lib)/memory.ts:27:4
    (if
     ;;@ (lib)/memory.ts:27:8
     (i32.and
      (get_local $2)
      ;;@ (lib)/memory.ts:27:12
      (i32.const 4)
     )
     ;;@ (lib)/memory.ts:27:15
     (block
      ;;@ (lib)/memory.ts:28:6
      (i32.store
       ;;@ (lib)/memory.ts:28:17
       (get_local $0)
       ;;@ (lib)/memory.ts:28:23
       (i32.load
        ;;@ (lib)/memory.ts:28:33
        (get_local $1)
       )
      )
      ;;@ (lib)/memory.ts:29:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ (lib)/memory.ts:29:14
        (i32.const 4)
       )
      )
      ;;@ (lib)/memory.ts:29:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ (lib)/memory.ts:29:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ (lib)/memory.ts:31:4
    (if
     ;;@ (lib)/memory.ts:31:8
     (i32.and
      (get_local $2)
      ;;@ (lib)/memory.ts:31:12
      (i32.const 2)
     )
     ;;@ (lib)/memory.ts:31:15
     (block
      ;;@ (lib)/memory.ts:32:6
      (i32.store16
       ;;@ (lib)/memory.ts:32:17
       (get_local $0)
       ;;@ (lib)/memory.ts:32:23
       (i32.load16_u
        ;;@ (lib)/memory.ts:32:33
        (get_local $1)
       )
      )
      ;;@ (lib)/memory.ts:33:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ (lib)/memory.ts:33:14
        (i32.const 2)
       )
      )
      ;;@ (lib)/memory.ts:33:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ (lib)/memory.ts:33:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ (lib)/memory.ts:35:4
    (if
     ;;@ (lib)/memory.ts:35:8
     (i32.and
      (get_local $2)
      ;;@ (lib)/memory.ts:35:12
      (i32.const 1)
     )
     ;;@ (lib)/memory.ts:36:6
     (i32.store8
      ;;@ (lib)/memory.ts:36:16
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
      ;;@ (lib)/memory.ts:36:24
      (i32.load8_u
       ;;@ (lib)/memory.ts:36:33
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
    ;;@ (lib)/memory.ts:38:4
    (return)
   )
  )
  ;;@ (lib)/memory.ts:43:2
  (if
   ;;@ (lib)/memory.ts:43:6
   (i32.ge_u
    (get_local $2)
    ;;@ (lib)/memory.ts:43:11
    (i32.const 32)
   )
   ;;@ (lib)/memory.ts:44:4
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        ;;@ (lib)/memory.ts:44:12
        (i32.and
         (get_local $0)
         ;;@ (lib)/memory.ts:44:19
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         ;;@ (lib)/memory.ts:46:11
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         ;;@ (lib)/memory.ts:64:11
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         ;;@ (lib)/memory.ts:81:11
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      ;;@ (lib)/memory.ts:47:8
      (set_local $3
       ;;@ (lib)/memory.ts:47:12
       (i32.load
        ;;@ (lib)/memory.ts:47:22
        (get_local $1)
       )
      )
      ;;@ (lib)/memory.ts:48:8
      (i32.store8
       ;;@ (lib)/memory.ts:48:18
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
       ;;@ (lib)/memory.ts:48:26
       (i32.load8_u
        ;;@ (lib)/memory.ts:48:35
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
      ;;@ (lib)/memory.ts:49:8
      (i32.store8
       ;;@ (lib)/memory.ts:49:18
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
       ;;@ (lib)/memory.ts:49:26
       (i32.load8_u
        ;;@ (lib)/memory.ts:49:35
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
      ;;@ (lib)/memory.ts:50:8
      (i32.store8
       ;;@ (lib)/memory.ts:50:18
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
       ;;@ (lib)/memory.ts:50:26
       (i32.load8_u
        ;;@ (lib)/memory.ts:50:35
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
      ;;@ (lib)/memory.ts:51:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ (lib)/memory.ts:51:13
        (i32.const 3)
       )
      )
      ;;@ (lib)/memory.ts:52:8
      (block $break|3
       (loop $continue|3
        (if
         ;;@ (lib)/memory.ts:52:15
         (i32.ge_u
          (get_local $2)
          ;;@ (lib)/memory.ts:52:20
          (i32.const 17)
         )
         (block
          (block
           ;;@ (lib)/memory.ts:53:10
           (set_local $4
            ;;@ (lib)/memory.ts:53:14
            (i32.load
             ;;@ (lib)/memory.ts:53:24
             (i32.add
              (get_local $1)
              ;;@ (lib)/memory.ts:53:30
              (i32.const 1)
             )
            )
           )
           ;;@ (lib)/memory.ts:54:10
           (i32.store
            ;;@ (lib)/memory.ts:54:21
            (get_local $0)
            ;;@ (lib)/memory.ts:54:27
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ (lib)/memory.ts:54:32
              (i32.const 24)
             )
             ;;@ (lib)/memory.ts:54:37
             (i32.shl
              (get_local $4)
              ;;@ (lib)/memory.ts:54:42
              (i32.const 8)
             )
            )
           )
           ;;@ (lib)/memory.ts:55:10
           (set_local $3
            ;;@ (lib)/memory.ts:55:14
            (i32.load
             ;;@ (lib)/memory.ts:55:24
             (i32.add
              (get_local $1)
              ;;@ (lib)/memory.ts:55:30
              (i32.const 5)
             )
            )
           )
           ;;@ (lib)/memory.ts:56:10
           (i32.store
            ;;@ (lib)/memory.ts:56:21
            (i32.add
             (get_local $0)
             ;;@ (lib)/memory.ts:56:28
             (i32.const 4)
            )
            ;;@ (lib)/memory.ts:56:31
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ (lib)/memory.ts:56:36
              (i32.const 24)
             )
             ;;@ (lib)/memory.ts:56:41
             (i32.shl
              (get_local $3)
              ;;@ (lib)/memory.ts:56:46
              (i32.const 8)
             )
            )
           )
           ;;@ (lib)/memory.ts:57:10
           (set_local $4
            ;;@ (lib)/memory.ts:57:14
            (i32.load
             ;;@ (lib)/memory.ts:57:24
             (i32.add
              (get_local $1)
              ;;@ (lib)/memory.ts:57:30
              (i32.const 9)
             )
            )
           )
           ;;@ (lib)/memory.ts:58:10
           (i32.store
            ;;@ (lib)/memory.ts:58:21
            (i32.add
             (get_local $0)
             ;;@ (lib)/memory.ts:58:28
             (i32.const 8)
            )
            ;;@ (lib)/memory.ts:58:31
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ (lib)/memory.ts:58:36
              (i32.const 24)
             )
             ;;@ (lib)/memory.ts:58:41
             (i32.shl
              (get_local $4)
              ;;@ (lib)/memory.ts:58:46
              (i32.const 8)
             )
            )
           )
           ;;@ (lib)/memory.ts:59:10
           (set_local $3
            ;;@ (lib)/memory.ts:59:14
            (i32.load
             ;;@ (lib)/memory.ts:59:24
             (i32.add
              (get_local $1)
              ;;@ (lib)/memory.ts:59:30
              (i32.const 13)
             )
            )
           )
           ;;@ (lib)/memory.ts:60:10
           (i32.store
            ;;@ (lib)/memory.ts:60:21
            (i32.add
             (get_local $0)
             ;;@ (lib)/memory.ts:60:28
             (i32.const 12)
            )
            ;;@ (lib)/memory.ts:60:32
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ (lib)/memory.ts:60:37
              (i32.const 24)
             )
             ;;@ (lib)/memory.ts:60:42
             (i32.shl
              (get_local $3)
              ;;@ (lib)/memory.ts:60:47
              (i32.const 8)
             )
            )
           )
           ;;@ (lib)/memory.ts:61:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ (lib)/memory.ts:61:17
             (i32.const 16)
            )
           )
           ;;@ (lib)/memory.ts:61:21
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ (lib)/memory.ts:61:29
             (i32.const 16)
            )
           )
           ;;@ (lib)/memory.ts:61:33
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ (lib)/memory.ts:61:38
             (i32.const 16)
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      ;;@ (lib)/memory.ts:63:8
      (br $break|2)
     )
     ;;@ (lib)/memory.ts:65:8
     (set_local $3
      ;;@ (lib)/memory.ts:65:12
      (i32.load
       ;;@ (lib)/memory.ts:65:22
       (get_local $1)
      )
     )
     ;;@ (lib)/memory.ts:66:8
     (i32.store8
      ;;@ (lib)/memory.ts:66:18
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
      ;;@ (lib)/memory.ts:66:26
      (i32.load8_u
       ;;@ (lib)/memory.ts:66:35
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
     ;;@ (lib)/memory.ts:67:8
     (i32.store8
      ;;@ (lib)/memory.ts:67:18
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
      ;;@ (lib)/memory.ts:67:26
      (i32.load8_u
       ;;@ (lib)/memory.ts:67:35
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
     ;;@ (lib)/memory.ts:68:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ (lib)/memory.ts:68:13
       (i32.const 2)
      )
     )
     ;;@ (lib)/memory.ts:69:8
     (block $break|4
      (loop $continue|4
       (if
        ;;@ (lib)/memory.ts:69:15
        (i32.ge_u
         (get_local $2)
         ;;@ (lib)/memory.ts:69:20
         (i32.const 18)
        )
        (block
         (block
          ;;@ (lib)/memory.ts:70:10
          (set_local $4
           ;;@ (lib)/memory.ts:70:14
           (i32.load
            ;;@ (lib)/memory.ts:70:24
            (i32.add
             (get_local $1)
             ;;@ (lib)/memory.ts:70:30
             (i32.const 2)
            )
           )
          )
          ;;@ (lib)/memory.ts:71:10
          (i32.store
           ;;@ (lib)/memory.ts:71:21
           (get_local $0)
           ;;@ (lib)/memory.ts:71:27
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ (lib)/memory.ts:71:32
             (i32.const 16)
            )
            ;;@ (lib)/memory.ts:71:37
            (i32.shl
             (get_local $4)
             ;;@ (lib)/memory.ts:71:42
             (i32.const 16)
            )
           )
          )
          ;;@ (lib)/memory.ts:72:10
          (set_local $3
           ;;@ (lib)/memory.ts:72:14
           (i32.load
            ;;@ (lib)/memory.ts:72:24
            (i32.add
             (get_local $1)
             ;;@ (lib)/memory.ts:72:30
             (i32.const 6)
            )
           )
          )
          ;;@ (lib)/memory.ts:73:10
          (i32.store
           ;;@ (lib)/memory.ts:73:21
           (i32.add
            (get_local $0)
            ;;@ (lib)/memory.ts:73:28
            (i32.const 4)
           )
           ;;@ (lib)/memory.ts:73:31
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ (lib)/memory.ts:73:36
             (i32.const 16)
            )
            ;;@ (lib)/memory.ts:73:41
            (i32.shl
             (get_local $3)
             ;;@ (lib)/memory.ts:73:46
             (i32.const 16)
            )
           )
          )
          ;;@ (lib)/memory.ts:74:10
          (set_local $4
           ;;@ (lib)/memory.ts:74:14
           (i32.load
            ;;@ (lib)/memory.ts:74:24
            (i32.add
             (get_local $1)
             ;;@ (lib)/memory.ts:74:30
             (i32.const 10)
            )
           )
          )
          ;;@ (lib)/memory.ts:75:10
          (i32.store
           ;;@ (lib)/memory.ts:75:21
           (i32.add
            (get_local $0)
            ;;@ (lib)/memory.ts:75:28
            (i32.const 8)
           )
           ;;@ (lib)/memory.ts:75:31
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ (lib)/memory.ts:75:36
             (i32.const 16)
            )
            ;;@ (lib)/memory.ts:75:41
            (i32.shl
             (get_local $4)
             ;;@ (lib)/memory.ts:75:46
             (i32.const 16)
            )
           )
          )
          ;;@ (lib)/memory.ts:76:10
          (set_local $3
           ;;@ (lib)/memory.ts:76:14
           (i32.load
            ;;@ (lib)/memory.ts:76:24
            (i32.add
             (get_local $1)
             ;;@ (lib)/memory.ts:76:30
             (i32.const 14)
            )
           )
          )
          ;;@ (lib)/memory.ts:77:10
          (i32.store
           ;;@ (lib)/memory.ts:77:21
           (i32.add
            (get_local $0)
            ;;@ (lib)/memory.ts:77:28
            (i32.const 12)
           )
           ;;@ (lib)/memory.ts:77:32
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ (lib)/memory.ts:77:37
             (i32.const 16)
            )
            ;;@ (lib)/memory.ts:77:42
            (i32.shl
             (get_local $3)
             ;;@ (lib)/memory.ts:77:47
             (i32.const 16)
            )
           )
          )
          ;;@ (lib)/memory.ts:78:10
          (set_local $1
           (i32.add
            (get_local $1)
            ;;@ (lib)/memory.ts:78:17
            (i32.const 16)
           )
          )
          ;;@ (lib)/memory.ts:78:21
          (set_local $0
           (i32.add
            (get_local $0)
            ;;@ (lib)/memory.ts:78:29
            (i32.const 16)
           )
          )
          ;;@ (lib)/memory.ts:78:33
          (set_local $2
           (i32.sub
            (get_local $2)
            ;;@ (lib)/memory.ts:78:38
            (i32.const 16)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
     ;;@ (lib)/memory.ts:80:8
     (br $break|2)
    )
    ;;@ (lib)/memory.ts:82:8
    (set_local $3
     ;;@ (lib)/memory.ts:82:12
     (i32.load
      ;;@ (lib)/memory.ts:82:22
      (get_local $1)
     )
    )
    ;;@ (lib)/memory.ts:83:8
    (i32.store8
     ;;@ (lib)/memory.ts:83:18
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
     ;;@ (lib)/memory.ts:83:26
     (i32.load8_u
      ;;@ (lib)/memory.ts:83:35
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
    ;;@ (lib)/memory.ts:84:8
    (set_local $2
     (i32.sub
      (get_local $2)
      ;;@ (lib)/memory.ts:84:13
      (i32.const 1)
     )
    )
    ;;@ (lib)/memory.ts:85:8
    (block $break|5
     (loop $continue|5
      (if
       ;;@ (lib)/memory.ts:85:15
       (i32.ge_u
        (get_local $2)
        ;;@ (lib)/memory.ts:85:20
        (i32.const 19)
       )
       (block
        (block
         ;;@ (lib)/memory.ts:86:10
         (set_local $4
          ;;@ (lib)/memory.ts:86:14
          (i32.load
           ;;@ (lib)/memory.ts:86:24
           (i32.add
            (get_local $1)
            ;;@ (lib)/memory.ts:86:30
            (i32.const 3)
           )
          )
         )
         ;;@ (lib)/memory.ts:87:10
         (i32.store
          ;;@ (lib)/memory.ts:87:21
          (get_local $0)
          ;;@ (lib)/memory.ts:87:27
          (i32.or
           (i32.shr_u
            (get_local $3)
            ;;@ (lib)/memory.ts:87:32
            (i32.const 8)
           )
           ;;@ (lib)/memory.ts:87:36
           (i32.shl
            (get_local $4)
            ;;@ (lib)/memory.ts:87:41
            (i32.const 24)
           )
          )
         )
         ;;@ (lib)/memory.ts:88:10
         (set_local $3
          ;;@ (lib)/memory.ts:88:14
          (i32.load
           ;;@ (lib)/memory.ts:88:24
           (i32.add
            (get_local $1)
            ;;@ (lib)/memory.ts:88:30
            (i32.const 7)
           )
          )
         )
         ;;@ (lib)/memory.ts:89:10
         (i32.store
          ;;@ (lib)/memory.ts:89:21
          (i32.add
           (get_local $0)
           ;;@ (lib)/memory.ts:89:28
           (i32.const 4)
          )
          ;;@ (lib)/memory.ts:89:31
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ (lib)/memory.ts:89:36
            (i32.const 8)
           )
           ;;@ (lib)/memory.ts:89:40
           (i32.shl
            (get_local $3)
            ;;@ (lib)/memory.ts:89:45
            (i32.const 24)
           )
          )
         )
         ;;@ (lib)/memory.ts:90:10
         (set_local $4
          ;;@ (lib)/memory.ts:90:14
          (i32.load
           ;;@ (lib)/memory.ts:90:24
           (i32.add
            (get_local $1)
            ;;@ (lib)/memory.ts:90:30
            (i32.const 11)
           )
          )
         )
         ;;@ (lib)/memory.ts:91:10
         (i32.store
          ;;@ (lib)/memory.ts:91:21
          (i32.add
           (get_local $0)
           ;;@ (lib)/memory.ts:91:28
           (i32.const 8)
          )
          ;;@ (lib)/memory.ts:91:31
          (i32.or
           (i32.shr_u
            (get_local $3)
            ;;@ (lib)/memory.ts:91:36
            (i32.const 8)
           )
           ;;@ (lib)/memory.ts:91:40
           (i32.shl
            (get_local $4)
            ;;@ (lib)/memory.ts:91:45
            (i32.const 24)
           )
          )
         )
         ;;@ (lib)/memory.ts:92:10
         (set_local $3
          ;;@ (lib)/memory.ts:92:14
          (i32.load
           ;;@ (lib)/memory.ts:92:24
           (i32.add
            (get_local $1)
            ;;@ (lib)/memory.ts:92:30
            (i32.const 15)
           )
          )
         )
         ;;@ (lib)/memory.ts:93:10
         (i32.store
          ;;@ (lib)/memory.ts:93:21
          (i32.add
           (get_local $0)
           ;;@ (lib)/memory.ts:93:28
           (i32.const 12)
          )
          ;;@ (lib)/memory.ts:93:32
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ (lib)/memory.ts:93:37
            (i32.const 8)
           )
           ;;@ (lib)/memory.ts:93:41
           (i32.shl
            (get_local $3)
            ;;@ (lib)/memory.ts:93:46
            (i32.const 24)
           )
          )
         )
         ;;@ (lib)/memory.ts:94:10
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ (lib)/memory.ts:94:17
           (i32.const 16)
          )
         )
         ;;@ (lib)/memory.ts:94:21
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ (lib)/memory.ts:94:29
           (i32.const 16)
          )
         )
         ;;@ (lib)/memory.ts:94:33
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ (lib)/memory.ts:94:38
           (i32.const 16)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
    ;;@ (lib)/memory.ts:96:8
    (br $break|2)
   )
  )
  ;;@ (lib)/memory.ts:101:2
  (if
   ;;@ (lib)/memory.ts:101:6
   (i32.and
    (get_local $2)
    ;;@ (lib)/memory.ts:101:10
    (i32.const 16)
   )
   ;;@ (lib)/memory.ts:101:14
   (block
    ;;@ (lib)/memory.ts:102:4
    (i32.store8
     ;;@ (lib)/memory.ts:102:14
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
     ;;@ (lib)/memory.ts:102:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:102:31
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
    ;;@ (lib)/memory.ts:103:4
    (i32.store8
     ;;@ (lib)/memory.ts:103:14
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
     ;;@ (lib)/memory.ts:103:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:103:31
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
    ;;@ (lib)/memory.ts:104:4
    (i32.store8
     ;;@ (lib)/memory.ts:104:14
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
     ;;@ (lib)/memory.ts:104:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:104:31
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
    ;;@ (lib)/memory.ts:105:4
    (i32.store8
     ;;@ (lib)/memory.ts:105:14
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
     ;;@ (lib)/memory.ts:105:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:105:31
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
    ;;@ (lib)/memory.ts:106:4
    (i32.store8
     ;;@ (lib)/memory.ts:106:14
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
     ;;@ (lib)/memory.ts:106:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:106:31
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
    ;;@ (lib)/memory.ts:107:4
    (i32.store8
     ;;@ (lib)/memory.ts:107:14
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
     ;;@ (lib)/memory.ts:107:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:107:31
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
    ;;@ (lib)/memory.ts:108:4
    (i32.store8
     ;;@ (lib)/memory.ts:108:14
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
     ;;@ (lib)/memory.ts:108:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:108:31
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
    ;;@ (lib)/memory.ts:109:4
    (i32.store8
     ;;@ (lib)/memory.ts:109:14
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
     ;;@ (lib)/memory.ts:109:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:109:31
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
    ;;@ (lib)/memory.ts:110:4
    (i32.store8
     ;;@ (lib)/memory.ts:110:14
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
     ;;@ (lib)/memory.ts:110:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:110:31
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
    ;;@ (lib)/memory.ts:111:4
    (i32.store8
     ;;@ (lib)/memory.ts:111:14
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
     ;;@ (lib)/memory.ts:111:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:111:31
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
    ;;@ (lib)/memory.ts:112:4
    (i32.store8
     ;;@ (lib)/memory.ts:112:14
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
     ;;@ (lib)/memory.ts:112:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:112:31
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
    ;;@ (lib)/memory.ts:113:4
    (i32.store8
     ;;@ (lib)/memory.ts:113:14
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
     ;;@ (lib)/memory.ts:113:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:113:31
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
    ;;@ (lib)/memory.ts:114:4
    (i32.store8
     ;;@ (lib)/memory.ts:114:14
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
     ;;@ (lib)/memory.ts:114:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:114:31
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
    ;;@ (lib)/memory.ts:115:4
    (i32.store8
     ;;@ (lib)/memory.ts:115:14
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
     ;;@ (lib)/memory.ts:115:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:115:31
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
    ;;@ (lib)/memory.ts:116:4
    (i32.store8
     ;;@ (lib)/memory.ts:116:14
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
     ;;@ (lib)/memory.ts:116:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:116:31
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
    ;;@ (lib)/memory.ts:117:4
    (i32.store8
     ;;@ (lib)/memory.ts:117:14
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
     ;;@ (lib)/memory.ts:117:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:117:31
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
  ;;@ (lib)/memory.ts:119:2
  (if
   ;;@ (lib)/memory.ts:119:6
   (i32.and
    (get_local $2)
    ;;@ (lib)/memory.ts:119:10
    (i32.const 8)
   )
   ;;@ (lib)/memory.ts:119:13
   (block
    ;;@ (lib)/memory.ts:120:4
    (i32.store8
     ;;@ (lib)/memory.ts:120:14
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
     ;;@ (lib)/memory.ts:120:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:120:31
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
    ;;@ (lib)/memory.ts:121:4
    (i32.store8
     ;;@ (lib)/memory.ts:121:14
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
     ;;@ (lib)/memory.ts:121:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:121:31
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
    ;;@ (lib)/memory.ts:122:4
    (i32.store8
     ;;@ (lib)/memory.ts:122:14
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
     ;;@ (lib)/memory.ts:122:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:122:31
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
    ;;@ (lib)/memory.ts:123:4
    (i32.store8
     ;;@ (lib)/memory.ts:123:14
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
     ;;@ (lib)/memory.ts:123:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:123:31
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
    ;;@ (lib)/memory.ts:124:4
    (i32.store8
     ;;@ (lib)/memory.ts:124:14
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
     ;;@ (lib)/memory.ts:124:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:124:31
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
    ;;@ (lib)/memory.ts:125:4
    (i32.store8
     ;;@ (lib)/memory.ts:125:14
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
     ;;@ (lib)/memory.ts:125:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:125:31
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
    ;;@ (lib)/memory.ts:126:4
    (i32.store8
     ;;@ (lib)/memory.ts:126:14
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
     ;;@ (lib)/memory.ts:126:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:126:31
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
    ;;@ (lib)/memory.ts:127:4
    (i32.store8
     ;;@ (lib)/memory.ts:127:14
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
     ;;@ (lib)/memory.ts:127:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:127:31
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
  ;;@ (lib)/memory.ts:129:2
  (if
   ;;@ (lib)/memory.ts:129:6
   (i32.and
    (get_local $2)
    ;;@ (lib)/memory.ts:129:10
    (i32.const 4)
   )
   ;;@ (lib)/memory.ts:129:13
   (block
    ;;@ (lib)/memory.ts:130:4
    (i32.store8
     ;;@ (lib)/memory.ts:130:14
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
     ;;@ (lib)/memory.ts:130:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:130:31
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
    ;;@ (lib)/memory.ts:131:4
    (i32.store8
     ;;@ (lib)/memory.ts:131:14
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
     ;;@ (lib)/memory.ts:131:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:131:31
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
    ;;@ (lib)/memory.ts:132:4
    (i32.store8
     ;;@ (lib)/memory.ts:132:14
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
     ;;@ (lib)/memory.ts:132:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:132:31
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
    ;;@ (lib)/memory.ts:133:4
    (i32.store8
     ;;@ (lib)/memory.ts:133:14
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
     ;;@ (lib)/memory.ts:133:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:133:31
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
  ;;@ (lib)/memory.ts:135:2
  (if
   ;;@ (lib)/memory.ts:135:6
   (i32.and
    (get_local $2)
    ;;@ (lib)/memory.ts:135:10
    (i32.const 2)
   )
   ;;@ (lib)/memory.ts:135:13
   (block
    ;;@ (lib)/memory.ts:136:4
    (i32.store8
     ;;@ (lib)/memory.ts:136:14
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
     ;;@ (lib)/memory.ts:136:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:136:31
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
    ;;@ (lib)/memory.ts:137:4
    (i32.store8
     ;;@ (lib)/memory.ts:137:14
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
     ;;@ (lib)/memory.ts:137:22
     (i32.load8_u
      ;;@ (lib)/memory.ts:137:31
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
  ;;@ (lib)/memory.ts:139:2
  (if
   ;;@ (lib)/memory.ts:139:6
   (i32.and
    (get_local $2)
    ;;@ (lib)/memory.ts:139:10
    (i32.const 1)
   )
   ;;@ (lib)/memory.ts:140:4
   (i32.store8
    ;;@ (lib)/memory.ts:140:14
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
    ;;@ (lib)/memory.ts:140:22
    (i32.load8_u
     ;;@ (lib)/memory.ts:140:31
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
 (func "$(lib)/memory/move_memory" (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ (lib)/memory.ts:148:2
  (if
   ;;@ (lib)/memory.ts:148:6
   (i32.eq
    (get_local $0)
    ;;@ (lib)/memory.ts:148:14
    (get_local $1)
   )
   ;;@ (lib)/memory.ts:149:4
   (return)
  )
  ;;@ (lib)/memory.ts:150:2
  (if
   ;;@ (lib)/memory.ts:150:6
   (i32.and
    (if (result i32)
     (i32.ne
      (tee_local $3
       (i32.le_u
        (i32.add
         (get_local $1)
         ;;@ (lib)/memory.ts:150:12
         (get_local $2)
        )
        ;;@ (lib)/memory.ts:150:17
        (get_local $0)
       )
      )
      (i32.const 0)
     )
     (get_local $3)
     ;;@ (lib)/memory.ts:150:25
     (i32.le_u
      (i32.add
       (get_local $0)
       ;;@ (lib)/memory.ts:150:32
       (get_local $2)
      )
      ;;@ (lib)/memory.ts:150:37
      (get_local $1)
     )
    )
    (i32.const 1)
   )
   ;;@ (lib)/memory.ts:150:42
   (block
    ;;@ (lib)/memory.ts:151:4
    (call "$(lib)/memory/copy_memory"
     ;;@ (lib)/memory.ts:151:16
     (get_local $0)
     ;;@ (lib)/memory.ts:151:22
     (get_local $1)
     ;;@ (lib)/memory.ts:151:27
     (get_local $2)
    )
    ;;@ (lib)/memory.ts:152:4
    (return)
   )
  )
  ;;@ (lib)/memory.ts:154:2
  (if
   ;;@ (lib)/memory.ts:154:6
   (i32.lt_u
    (get_local $0)
    ;;@ (lib)/memory.ts:154:13
    (get_local $1)
   )
   ;;@ (lib)/memory.ts:154:18
   (block
    ;;@ (lib)/memory.ts:155:4
    (if
     ;;@ (lib)/memory.ts:155:8
     (i32.eq
      (i32.and
       ;;@ (lib)/memory.ts:155:9
       (get_local $1)
       ;;@ (lib)/memory.ts:155:15
       (i32.const 7)
      )
      ;;@ (lib)/memory.ts:155:21
      (i32.and
       ;;@ (lib)/memory.ts:155:22
       (get_local $0)
       ;;@ (lib)/memory.ts:155:29
       (i32.const 7)
      )
     )
     ;;@ (lib)/memory.ts:155:33
     (block
      (block $break|0
       (loop $continue|0
        (if
         ;;@ (lib)/memory.ts:156:13
         (i32.and
          (get_local $0)
          ;;@ (lib)/memory.ts:156:20
          (i32.const 7)
         )
         (block
          (block
           ;;@ (lib)/memory.ts:157:8
           (if
            ;;@ (lib)/memory.ts:157:12
            (i32.eqz
             ;;@ (lib)/memory.ts:157:13
             (get_local $2)
            )
            ;;@ (lib)/memory.ts:158:10
            (return)
           )
           ;;@ (lib)/memory.ts:159:8
           (set_local $2
            (i32.sub
             ;;@ (lib)/memory.ts:159:10
             (get_local $2)
             (i32.const 1)
            )
           )
           ;;@ (lib)/memory.ts:160:8
           (i32.store8
            ;;@ (lib)/memory.ts:160:18
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
            ;;@ (lib)/memory.ts:160:26
            (i32.load8_u
             ;;@ (lib)/memory.ts:160:35
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
      ;;@ (lib)/memory.ts:162:6
      (block $break|1
       (loop $continue|1
        (if
         ;;@ (lib)/memory.ts:162:13
         (i32.ge_u
          (get_local $2)
          ;;@ (lib)/memory.ts:162:18
          (i32.const 8)
         )
         (block
          (block
           ;;@ (lib)/memory.ts:163:8
           (i64.store
            ;;@ (lib)/memory.ts:163:19
            (get_local $0)
            ;;@ (lib)/memory.ts:163:25
            (i64.load
             ;;@ (lib)/memory.ts:163:35
             (get_local $1)
            )
           )
           ;;@ (lib)/memory.ts:164:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ (lib)/memory.ts:164:16
             (i32.const 8)
            )
           )
           ;;@ (lib)/memory.ts:165:8
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ (lib)/memory.ts:165:16
             (i32.const 8)
            )
           )
           ;;@ (lib)/memory.ts:166:8
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ (lib)/memory.ts:166:16
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
    ;;@ (lib)/memory.ts:169:4
    (block $break|2
     (loop $continue|2
      (if
       ;;@ (lib)/memory.ts:169:11
       (get_local $2)
       (block
        (block
         ;;@ (lib)/memory.ts:170:6
         (i32.store8
          ;;@ (lib)/memory.ts:170:16
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
          ;;@ (lib)/memory.ts:170:24
          (i32.load8_u
           ;;@ (lib)/memory.ts:170:33
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
         ;;@ (lib)/memory.ts:171:6
         (set_local $2
          (i32.sub
           ;;@ (lib)/memory.ts:171:8
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
   ;;@ (lib)/memory.ts:173:9
   (block
    ;;@ (lib)/memory.ts:174:4
    (if
     ;;@ (lib)/memory.ts:174:8
     (i32.eq
      (i32.and
       ;;@ (lib)/memory.ts:174:9
       (get_local $1)
       ;;@ (lib)/memory.ts:174:15
       (i32.const 7)
      )
      ;;@ (lib)/memory.ts:174:21
      (i32.and
       ;;@ (lib)/memory.ts:174:22
       (get_local $0)
       ;;@ (lib)/memory.ts:174:29
       (i32.const 7)
      )
     )
     ;;@ (lib)/memory.ts:174:33
     (block
      (block $break|3
       (loop $continue|3
        (if
         ;;@ (lib)/memory.ts:175:13
         (i32.and
          (i32.add
           ;;@ (lib)/memory.ts:175:14
           (get_local $0)
           ;;@ (lib)/memory.ts:175:21
           (get_local $2)
          )
          ;;@ (lib)/memory.ts:175:26
          (i32.const 7)
         )
         (block
          (block
           ;;@ (lib)/memory.ts:176:8
           (if
            ;;@ (lib)/memory.ts:176:12
            (i32.eqz
             ;;@ (lib)/memory.ts:176:13
             (get_local $2)
            )
            ;;@ (lib)/memory.ts:177:10
            (return)
           )
           ;;@ (lib)/memory.ts:178:8
           (i32.store8
            ;;@ (lib)/memory.ts:178:18
            (i32.add
             (get_local $0)
             ;;@ (lib)/memory.ts:178:25
             (tee_local $2
              (i32.sub
               ;;@ (lib)/memory.ts:178:27
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            ;;@ (lib)/memory.ts:178:30
            (i32.load8_u
             ;;@ (lib)/memory.ts:178:39
             (i32.add
              (get_local $1)
              ;;@ (lib)/memory.ts:178:45
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
      ;;@ (lib)/memory.ts:180:6
      (block $break|4
       (loop $continue|4
        (if
         ;;@ (lib)/memory.ts:180:13
         (i32.ge_u
          (get_local $2)
          ;;@ (lib)/memory.ts:180:18
          (i32.const 8)
         )
         (block
          (block
           ;;@ (lib)/memory.ts:181:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ (lib)/memory.ts:181:13
             (i32.const 8)
            )
           )
           ;;@ (lib)/memory.ts:182:8
           (i64.store
            ;;@ (lib)/memory.ts:182:19
            (i32.add
             (get_local $0)
             ;;@ (lib)/memory.ts:182:26
             (get_local $2)
            )
            ;;@ (lib)/memory.ts:182:29
            (i64.load
             ;;@ (lib)/memory.ts:182:39
             (i32.add
              (get_local $1)
              ;;@ (lib)/memory.ts:182:45
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
    ;;@ (lib)/memory.ts:185:4
    (block $break|5
     (loop $continue|5
      (if
       ;;@ (lib)/memory.ts:185:11
       (get_local $2)
       (block
        (block
         ;;@ (lib)/memory.ts:186:6
         (i32.store8
          ;;@ (lib)/memory.ts:186:16
          (i32.add
           (get_local $0)
           ;;@ (lib)/memory.ts:186:23
           (tee_local $2
            (i32.sub
             ;;@ (lib)/memory.ts:186:25
             (get_local $2)
             (i32.const 1)
            )
           )
          )
          ;;@ (lib)/memory.ts:186:28
          (i32.load8_u
           ;;@ (lib)/memory.ts:186:37
           (i32.add
            (get_local $1)
            ;;@ (lib)/memory.ts:186:43
            (get_local $2)
           )
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
 (func "$(lib)/memory/compare_memory" (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ (lib)/memory.ts:262:2
  (if
   ;;@ (lib)/memory.ts:262:6
   (i32.eq
    (get_local $0)
    ;;@ (lib)/memory.ts:262:12
    (get_local $1)
   )
   ;;@ (lib)/memory.ts:263:11
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/memory.ts:264:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ (lib)/memory.ts:264:9
     (if (result i32)
      (i32.ne
       (get_local $2)
       (i32.const 0)
      )
      ;;@ (lib)/memory.ts:264:14
      (i32.eq
       (i32.load8_u
        ;;@ (lib)/memory.ts:264:23
        (get_local $0)
       )
       ;;@ (lib)/memory.ts:264:30
       (i32.load8_u
        ;;@ (lib)/memory.ts:264:39
        (get_local $1)
       )
      )
      (get_local $2)
     )
     (block
      (block
       ;;@ (lib)/memory.ts:265:4
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       ;;@ (lib)/memory.ts:266:4
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       ;;@ (lib)/memory.ts:267:4
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
  ;;@ (lib)/memory.ts:269:53
  (return
   ;;@ (lib)/memory.ts:269:9
   (if (result i32)
    (get_local $2)
    ;;@ (lib)/memory.ts:269:13
    (i32.sub
     (i32.load8_u
      ;;@ (lib)/memory.ts:269:27
      (get_local $0)
     )
     ;;@ (lib)/memory.ts:269:33
     (i32.load8_u
      ;;@ (lib)/memory.ts:269:47
      (get_local $1)
     )
    )
    ;;@ (lib)/memory.ts:269:53
    (i32.const 0)
   )
  )
 )
 (func "$(lib)/allocator/arena/free_memory" (; 6 ;) (type $iv) (param $0 i32)
 )
 (func "$(lib)/allocator/arena/reset_memory" (; 7 ;) (type $v)
  ;;@ (lib)/allocator/arena.ts:33:2
  (set_global "$(lib)/allocator/arena/HEAP_OFFSET"
   ;;@ (lib)/allocator/arena.ts:33:16
   (get_global $HEAP_BASE)
  )
 )
 (func $start (; 8 ;) (type $v)
  (set_global "$(lib)/allocator/arena/HEAP_OFFSET"
   ;;@ (lib)/allocator/arena.ts:11:25
   (get_global $HEAP_BASE)
  )
  (set_global $std/allocator_arena/ptr1
   ;;@ std/allocator_arena.ts:4:18
   (call "$(lib)/allocator/arena/allocate_memory"
    ;;@ std/allocator_arena.ts:4:34
    (i32.const 42)
   )
  )
  (set_global $std/allocator_arena/ptr2
   ;;@ std/allocator_arena.ts:5:18
   (call "$(lib)/allocator/arena/allocate_memory"
    ;;@ std/allocator_arena.ts:5:34
    (i32.const 42)
   )
  )
  ;;@ std/allocator_arena.ts:7:0
  (if
   (i32.eqz
    ;;@ std/allocator_arena.ts:7:7
    (i32.ne
     (get_global $std/allocator_arena/ptr1)
     ;;@ std/allocator_arena.ts:7:15
     (get_global $std/allocator_arena/ptr2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 7)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/allocator_arena.ts:9:0
  (call "$(lib)/memory/set_memory"
   ;;@ std/allocator_arena.ts:9:11
   (get_global $std/allocator_arena/ptr1)
   ;;@ std/allocator_arena.ts:9:17
   (i32.const 18)
   ;;@ std/allocator_arena.ts:9:23
   (i32.const 42)
  )
  ;;@ std/allocator_arena.ts:12:0
  (block $break|0
   ;;@ std/allocator_arena.ts:12:5
   (set_global $std/allocator_arena/i
    ;;@ std/allocator_arena.ts:12:9
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ std/allocator_arena.ts:12:12
     (i32.lt_u
      (get_global $std/allocator_arena/i)
      ;;@ std/allocator_arena.ts:12:16
      (i32.const 42)
     )
     (block
      ;;@ std/allocator_arena.ts:13:2
      (if
       (i32.eqz
        ;;@ std/allocator_arena.ts:13:9
        (i32.eq
         (i32.load8_u
          ;;@ std/allocator_arena.ts:13:18
          (i32.add
           (get_global $std/allocator_arena/ptr1)
           ;;@ std/allocator_arena.ts:13:25
           (get_global $std/allocator_arena/i)
          )
         )
         ;;@ std/allocator_arena.ts:13:31
         (i32.const 18)
        )
       )
       (block
        (call $abort
         (i32.const 0)
         (i32.const 8)
         (i32.const 13)
         (i32.const 2)
        )
        (unreachable)
       )
      )
      ;;@ std/allocator_arena.ts:12:22
      (set_global $std/allocator_arena/i
       (i32.add
        ;;@ std/allocator_arena.ts:12:24
        (get_global $std/allocator_arena/i)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ std/allocator_arena.ts:15:0
  (call "$(lib)/memory/move_memory"
   ;;@ std/allocator_arena.ts:15:12
   (get_global $std/allocator_arena/ptr2)
   ;;@ std/allocator_arena.ts:15:18
   (get_global $std/allocator_arena/ptr1)
   ;;@ std/allocator_arena.ts:15:24
   (i32.const 42)
  )
  ;;@ std/allocator_arena.ts:17:0
  (block $break|1
   ;;@ std/allocator_arena.ts:17:5
   (set_global $std/allocator_arena/i
    ;;@ std/allocator_arena.ts:17:9
    (i32.const 0)
   )
   (loop $continue|1
    (if
     ;;@ std/allocator_arena.ts:17:12
     (i32.lt_u
      (get_global $std/allocator_arena/i)
      ;;@ std/allocator_arena.ts:17:16
      (i32.const 42)
     )
     (block
      ;;@ std/allocator_arena.ts:18:2
      (if
       (i32.eqz
        ;;@ std/allocator_arena.ts:18:9
        (i32.eq
         (i32.load8_u
          ;;@ std/allocator_arena.ts:18:18
          (i32.add
           (get_global $std/allocator_arena/ptr2)
           ;;@ std/allocator_arena.ts:18:25
           (get_global $std/allocator_arena/i)
          )
         )
         ;;@ std/allocator_arena.ts:18:31
         (i32.const 18)
        )
       )
       (block
        (call $abort
         (i32.const 0)
         (i32.const 8)
         (i32.const 18)
         (i32.const 2)
        )
        (unreachable)
       )
      )
      ;;@ std/allocator_arena.ts:17:22
      (set_global $std/allocator_arena/i
       (i32.add
        ;;@ std/allocator_arena.ts:17:24
        (get_global $std/allocator_arena/i)
        (i32.const 1)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  ;;@ std/allocator_arena.ts:20:0
  (if
   (i32.eqz
    ;;@ std/allocator_arena.ts:20:7
    (i32.eq
     (call "$(lib)/memory/compare_memory"
      ;;@ std/allocator_arena.ts:20:22
      (get_global $std/allocator_arena/ptr1)
      ;;@ std/allocator_arena.ts:20:28
      (get_global $std/allocator_arena/ptr2)
      ;;@ std/allocator_arena.ts:20:34
      (i32.const 42)
     )
     ;;@ std/allocator_arena.ts:20:43
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/allocator_arena.ts:22:0
  (call "$(lib)/allocator/arena/free_memory"
   ;;@ std/allocator_arena.ts:22:12
   (get_global $std/allocator_arena/ptr1)
  )
  ;;@ std/allocator_arena.ts:23:0
  (call "$(lib)/allocator/arena/free_memory"
   ;;@ std/allocator_arena.ts:23:12
   (get_global $std/allocator_arena/ptr2)
  )
  ;;@ std/allocator_arena.ts:25:0
  (call "$(lib)/allocator/arena/reset_memory")
  ;;@ std/allocator_arena.ts:26:0
  (set_global $std/allocator_arena/ptr1
   ;;@ std/allocator_arena.ts:26:7
   (call "$(lib)/allocator/arena/allocate_memory"
    ;;@ std/allocator_arena.ts:26:23
    (i32.const 42)
   )
  )
  ;;@ std/allocator_arena.ts:27:0
  (if
   (i32.eqz
    ;;@ std/allocator_arena.ts:27:7
    (i32.eq
     (get_global $std/allocator_arena/ptr1)
     ;;@ std/allocator_arena.ts:27:15
     (get_global $HEAP_BASE)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 27)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
