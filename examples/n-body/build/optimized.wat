(module
 (type $F (func (result f64)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iFFFFFFFi (func (param i32 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iFv (func (param i32 f64)))
 (type $iF (func (param i32) (result f64)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $assembly/index/bodies (mut i32) (i32.const 0))
 (global $assembly/index/system (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 36))
 (memory $0 1)
 (data (i32.const 4) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (export "getBody" (func $assembly/index/getBody))
 (export "step" (func $assembly/index/step))
 (export "bench" (func $assembly/index/bench))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/allocator/arena.ts:17:2
  (if
   ;;@ ~lib/allocator/arena.ts:17:6
   (get_local $0)
   ;;@ ~lib/allocator/arena.ts:17:12
   (block
    ;;@ ~lib/allocator/arena.ts:18:4
    (if
     ;;@ ~lib/allocator/arena.ts:18:8
     (i32.gt_u
      (get_local $0)
      ;;@ ~lib/allocator/arena.ts:18:15
      (i32.const 1073741824)
     )
     ;;@ ~lib/allocator/arena.ts:18:28
     (unreachable)
    )
    ;;@ ~lib/allocator/arena.ts:22:4
    (if
     ;;@ ~lib/allocator/arena.ts:22:8
     (i32.gt_u
      ;;@ ~lib/allocator/arena.ts:20:4
      (tee_local $2
       ;;@ ~lib/allocator/arena.ts:20:17
       (i32.and
        (i32.add
         ;;@ ~lib/allocator/arena.ts:20:18
         (i32.add
          ;;@ ~lib/allocator/arena.ts:19:4
          (tee_local $1
           ;;@ ~lib/allocator/arena.ts:19:14
           (get_global $~lib/allocator/arena/offset)
          )
          ;;@ ~lib/allocator/arena.ts:20:24
          (get_local $0)
         )
         ;;@ ~lib/allocator/arena.ts:20:31
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      ;;@ ~lib/allocator/arena.ts:22:17
      (i32.shl
       ;;@ ~lib/allocator/arena.ts:21:4
       (tee_local $0
        ;;@ ~lib/allocator/arena.ts:21:22
        (current_memory)
       )
       ;;@ ~lib/allocator/arena.ts:22:39
       (i32.const 16)
      )
     )
     ;;@ ~lib/allocator/arena.ts:25:6
     (if
      ;;@ ~lib/allocator/arena.ts:25:10
      (i32.lt_s
       (grow_memory
        ;;@ ~lib/allocator/arena.ts:24:24
        (select
         ;;@ ~lib/allocator/arena.ts:24:28
         (get_local $0)
         (tee_local $4
          ;;@ ~lib/allocator/arena.ts:23:6
          (tee_local $3
           ;;@ ~lib/allocator/arena.ts:23:24
           (i32.shr_u
            (i32.and
             ;;@ ~lib/allocator/arena.ts:23:25
             (i32.add
              ;;@ ~lib/allocator/arena.ts:23:26
              (i32.sub
               (get_local $2)
               ;;@ ~lib/allocator/arena.ts:23:35
               (get_local $1)
              )
              ;;@ ~lib/allocator/arena.ts:23:41
              (i32.const 65535)
             )
             (i32.const -65536)
            )
            ;;@ ~lib/allocator/arena.ts:23:64
            (i32.const 16)
           )
          )
         )
         (i32.gt_s
          (get_local $0)
          (get_local $4)
         )
        )
       )
       ;;@ ~lib/allocator/arena.ts:25:37
       (i32.const 0)
      )
      ;;@ ~lib/allocator/arena.ts:26:8
      (if
       ;;@ ~lib/allocator/arena.ts:26:12
       (i32.lt_s
        (grow_memory
         ;;@ ~lib/allocator/arena.ts:26:24
         (get_local $3)
        )
        ;;@ ~lib/allocator/arena.ts:26:39
        (i32.const 0)
       )
       ;;@ ~lib/allocator/arena.ts:27:10
       (unreachable)
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:31:4
    (set_global $~lib/allocator/arena/offset
     ;;@ ~lib/allocator/arena.ts:31:13
     (get_local $2)
    )
    ;;@ ~lib/allocator/arena.ts:32:11
    (return
     (get_local $1)
    )
   )
  )
  ;;@ ~lib/allocator/arena.ts:34:9
  (i32.const 0)
 )
 (func $~lib/internal/arraybuffer/allocUnsafe (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ ~lib/internal/arraybuffer.ts:24:2
  (i32.store
   ;;@ ~lib/internal/arraybuffer.ts:23:2
   (tee_local $1
    ;;@ ~lib/internal/arraybuffer.ts:23:15
    (call $~lib/allocator/arena/allocate_memory
     (i32.shl
      (i32.const 1)
      (i32.sub
       (i32.const 32)
       (i32.clz
        (i32.add
         (tee_local $1
          ;;@ ~lib/internal/arraybuffer.ts:23:43
          (get_local $0)
         )
         (i32.const 7)
        )
       )
      )
     )
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:24:21
   (get_local $0)
  )
  ;;@ ~lib/internal/arraybuffer.ts:25:9
  (get_local $1)
 )
 (func $~lib/array/Array<Body>#constructor (; 3 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:23:4
  (if
   ;;@ ~lib/array.ts:23:8
   (i32.gt_u
    (get_local $1)
    ;;@ ~lib/array.ts:23:22
    (i32.const 268435454)
   )
   ;;@ ~lib/array.ts:23:39
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/array.ts:24:4
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $2
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 8)
       )
      )
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $2)
      (i32.const 0)
     )
     (tee_local $0
      (get_local $2)
     )
    )
   )
   ;;@ ~lib/array.ts:24:19
   (call $~lib/internal/arraybuffer/allocUnsafe
    ;;@ ~lib/array.ts:24:31
    (i32.shl
     (get_local $1)
     ;;@ ~lib/array.ts:24:41
     (i32.const 2)
    )
   )
  )
  ;;@ ~lib/array.ts:25:4
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/array.ts:25:19
   (get_local $1)
  )
  (get_local $0)
 )
 (func $assembly/index/Body#constructor (; 4 ;) (type $iFFFFFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (param $7 f64) (result i32)
  (local $8 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (f64.store
     (tee_local $8
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 56)
      )
     )
     (get_local $1)
    )
    (f64.store offset=8
     (get_local $8)
     (get_local $2)
    )
    (f64.store offset=16
     (get_local $8)
     (get_local $3)
    )
    (f64.store offset=24
     (get_local $8)
     (get_local $4)
    )
    (f64.store offset=32
     (get_local $8)
     (get_local $5)
    )
    (f64.store offset=40
     (get_local $8)
     (get_local $6)
    )
    (f64.store offset=48
     (get_local $8)
     (get_local $7)
    )
    (get_local $8)
   )
  )
 )
 (func $~lib/memory/set_memory (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  ;;@ ~lib/memory.ts:196:2
  (if
   ;;@ ~lib/memory.ts:196:6
   (i32.eqz
    ;;@ ~lib/memory.ts:196:7
    (get_local $2)
   )
   ;;@ ~lib/memory.ts:196:10
   (return)
  )
  ;;@ ~lib/memory.ts:197:2
  (i32.store8
   ;;@ ~lib/memory.ts:197:12
   (get_local $0)
   ;;@ ~lib/memory.ts:197:18
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:198:2
  (i32.store8
   ;;@ ~lib/memory.ts:198:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:198:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:198:23
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:198:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:199:2
  (if
   ;;@ ~lib/memory.ts:199:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:199:11
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:199:14
   (return)
  )
  ;;@ ~lib/memory.ts:201:2
  (i32.store8
   ;;@ ~lib/memory.ts:201:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:201:19
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:201:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:202:2
  (i32.store8
   ;;@ ~lib/memory.ts:202:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:202:19
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:202:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:203:2
  (i32.store8
   ;;@ ~lib/memory.ts:203:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:203:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:203:23
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:203:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:204:2
  (i32.store8
   ;;@ ~lib/memory.ts:204:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:204:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:204:23
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:204:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:205:2
  (if
   ;;@ ~lib/memory.ts:205:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:205:11
    (i32.const 6)
   )
   ;;@ ~lib/memory.ts:205:14
   (return)
  )
  ;;@ ~lib/memory.ts:206:2
  (i32.store8
   ;;@ ~lib/memory.ts:206:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:206:19
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:206:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:207:2
  (i32.store8
   ;;@ ~lib/memory.ts:207:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:207:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:207:23
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:207:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:208:2
  (if
   ;;@ ~lib/memory.ts:208:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:208:11
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:208:14
   (return)
  )
  ;;@ ~lib/memory.ts:219:2
  (i32.store
   ;;@ ~lib/memory.ts:212:2
   (tee_local $0
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:211:2
     (tee_local $4
      ;;@ ~lib/memory.ts:211:17
      (i32.and
       (i32.sub
        (i32.const 0)
        ;;@ ~lib/memory.ts:211:18
        (get_local $0)
       )
       ;;@ ~lib/memory.ts:211:25
       (i32.const 3)
      )
     )
    )
   )
   ;;@ ~lib/memory.ts:216:2
   (tee_local $1
    ;;@ ~lib/memory.ts:216:17
    (i32.mul
     ;;@ ~lib/memory.ts:216:33
     (get_local $1)
     (i32.const 16843009)
    )
   )
  )
  ;;@ ~lib/memory.ts:220:2
  (i32.store
   ;;@ ~lib/memory.ts:220:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:214:2
     (tee_local $2
      (i32.and
       (i32.sub
        ;;@ ~lib/memory.ts:213:2
        (get_local $2)
        ;;@ ~lib/memory.ts:213:7
        (get_local $4)
       )
       ;;@ ~lib/memory.ts:214:7
       (i32.const -4)
      )
     )
    )
    ;;@ ~lib/memory.ts:220:24
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:220:27
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:221:2
  (if
   ;;@ ~lib/memory.ts:221:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:221:11
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:221:14
   (return)
  )
  ;;@ ~lib/memory.ts:222:2
  (i32.store
   ;;@ ~lib/memory.ts:222:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:222:20
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:222:23
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:223:2
  (i32.store
   ;;@ ~lib/memory.ts:223:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:223:20
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:223:23
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:224:2
  (i32.store
   ;;@ ~lib/memory.ts:224:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:224:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:224:24
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:224:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:225:2
  (i32.store
   ;;@ ~lib/memory.ts:225:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:225:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:225:24
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:225:27
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:226:2
  (if
   ;;@ ~lib/memory.ts:226:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:226:11
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:226:15
   (return)
  )
  ;;@ ~lib/memory.ts:227:2
  (i32.store
   ;;@ ~lib/memory.ts:227:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:227:20
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:227:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:228:2
  (i32.store
   ;;@ ~lib/memory.ts:228:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:228:20
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:228:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:229:2
  (i32.store
   ;;@ ~lib/memory.ts:229:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:229:20
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:229:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:230:2
  (i32.store
   ;;@ ~lib/memory.ts:230:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:230:20
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:230:24
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:231:2
  (i32.store
   ;;@ ~lib/memory.ts:231:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:231:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:231:24
    (i32.const 28)
   )
   ;;@ ~lib/memory.ts:231:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:232:2
  (i32.store
   ;;@ ~lib/memory.ts:232:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:232:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:232:24
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:232:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:233:2
  (i32.store
   ;;@ ~lib/memory.ts:233:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:233:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:233:24
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:233:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:234:2
  (i32.store
   ;;@ ~lib/memory.ts:234:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:234:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:234:24
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:234:28
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:238:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:237:2
    (tee_local $4
     ;;@ ~lib/memory.ts:237:6
     (i32.add
      ;;@ ~lib/memory.ts:237:11
      (i32.and
       ;;@ ~lib/memory.ts:237:12
       (get_local $0)
       ;;@ ~lib/memory.ts:237:19
       (i32.const 4)
      )
      ;;@ ~lib/memory.ts:237:6
      (i32.const 24)
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:239:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:239:7
    (get_local $4)
   )
  )
  ;;@ ~lib/memory.ts:242:2
  (set_local $3
   ;;@ ~lib/memory.ts:242:17
   (i64.or
    (i64.extend_u/i32
     (get_local $1)
    )
    ;;@ ~lib/memory.ts:242:28
    (i64.shl
     ;;@ ~lib/memory.ts:242:29
     (i64.extend_u/i32
      (get_local $1)
     )
     ;;@ ~lib/memory.ts:242:41
     (i64.const 32)
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ ~lib/memory.ts:243:9
    (i32.ge_u
     (get_local $2)
     ;;@ ~lib/memory.ts:243:14
     (i32.const 32)
    )
    (block
     ;;@ ~lib/memory.ts:244:4
     (i64.store
      ;;@ ~lib/memory.ts:244:15
      (get_local $0)
      ;;@ ~lib/memory.ts:244:21
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:245:4
     (i64.store
      ;;@ ~lib/memory.ts:245:15
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:245:22
       (i32.const 8)
      )
      ;;@ ~lib/memory.ts:245:25
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:246:4
     (i64.store
      ;;@ ~lib/memory.ts:246:15
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:246:22
       (i32.const 16)
      )
      ;;@ ~lib/memory.ts:246:26
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:247:4
     (i64.store
      ;;@ ~lib/memory.ts:247:15
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:247:22
       (i32.const 24)
      )
      ;;@ ~lib/memory.ts:247:26
      (get_local $3)
     )
     ;;@ ~lib/memory.ts:248:4
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/memory.ts:248:9
       (i32.const 32)
      )
     )
     ;;@ ~lib/memory.ts:249:4
     (set_local $0
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:249:12
       (i32.const 32)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $~lib/memory/copy_memory (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $continue|0
   (if
    ;;@ ~lib/memory.ts:8:9
    (if (result i32)
     (get_local $2)
     ;;@ ~lib/memory.ts:8:14
     (i32.and
      ;;@ ~lib/memory.ts:8:15
      (get_local $1)
      ;;@ ~lib/memory.ts:8:21
      (i32.const 3)
     )
     (get_local $2)
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $3
        ;;@ ~lib/memory.ts:9:14
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:9:4
     (i32.store8
      (get_local $3)
      ;;@ ~lib/memory.ts:9:31
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:9:22
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     ;;@ ~lib/memory.ts:10:4
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ ~lib/memory.ts:14:2
  (if
   (i32.eqz
    ;;@ ~lib/memory.ts:14:6
    (i32.and
     ;;@ ~lib/memory.ts:14:7
     (get_local $0)
     ;;@ ~lib/memory.ts:14:14
     (i32.const 3)
    )
   )
   ;;@ ~lib/memory.ts:14:23
   (block
    (loop $continue|1
     (if
      ;;@ ~lib/memory.ts:15:11
      (i32.ge_u
       (get_local $2)
       ;;@ ~lib/memory.ts:15:16
       (i32.const 16)
      )
      (block
       ;;@ ~lib/memory.ts:16:6
       (i32.store
        ;;@ ~lib/memory.ts:16:17
        (get_local $0)
        ;;@ ~lib/memory.ts:16:28
        (i32.load
         ;;@ ~lib/memory.ts:16:38
         (get_local $1)
        )
       )
       ;;@ ~lib/memory.ts:17:6
       (i32.store
        ;;@ ~lib/memory.ts:17:17
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:17:25
         (i32.const 4)
        )
        ;;@ ~lib/memory.ts:17:28
        (i32.load
         ;;@ ~lib/memory.ts:17:38
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:17:45
          (i32.const 4)
         )
        )
       )
       ;;@ ~lib/memory.ts:18:6
       (i32.store
        ;;@ ~lib/memory.ts:18:17
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:18:25
         (i32.const 8)
        )
        ;;@ ~lib/memory.ts:18:28
        (i32.load
         ;;@ ~lib/memory.ts:18:38
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:18:45
          (i32.const 8)
         )
        )
       )
       ;;@ ~lib/memory.ts:19:6
       (i32.store
        ;;@ ~lib/memory.ts:19:17
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:19:24
         (i32.const 12)
        )
        ;;@ ~lib/memory.ts:19:28
        (i32.load
         ;;@ ~lib/memory.ts:19:38
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:19:44
          (i32.const 12)
         )
        )
       )
       ;;@ ~lib/memory.ts:20:6
       (set_local $1
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:20:13
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:20:17
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:20:25
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:20:29
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:20:34
         (i32.const 16)
        )
       )
       (br $continue|1)
      )
     )
    )
    ;;@ ~lib/memory.ts:22:4
    (if
     ;;@ ~lib/memory.ts:22:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:22:12
      (i32.const 8)
     )
     ;;@ ~lib/memory.ts:22:15
     (block
      ;;@ ~lib/memory.ts:23:6
      (i32.store
       ;;@ ~lib/memory.ts:23:17
       (get_local $0)
       ;;@ ~lib/memory.ts:23:27
       (i32.load
        ;;@ ~lib/memory.ts:23:37
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:24:6
      (i32.store
       ;;@ ~lib/memory.ts:24:17
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:24:24
        (i32.const 4)
       )
       ;;@ ~lib/memory.ts:24:27
       (i32.load
        ;;@ ~lib/memory.ts:24:37
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:24:43
         (i32.const 4)
        )
       )
      )
      ;;@ ~lib/memory.ts:25:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:25:14
        (i32.const 8)
       )
      )
      ;;@ ~lib/memory.ts:25:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:25:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:27:4
    (if
     ;;@ ~lib/memory.ts:27:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:27:12
      (i32.const 4)
     )
     ;;@ ~lib/memory.ts:27:15
     (block
      ;;@ ~lib/memory.ts:28:6
      (i32.store
       ;;@ ~lib/memory.ts:28:17
       (get_local $0)
       ;;@ ~lib/memory.ts:28:23
       (i32.load
        ;;@ ~lib/memory.ts:28:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:29:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:29:14
        (i32.const 4)
       )
      )
      ;;@ ~lib/memory.ts:29:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:29:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:31:4
    (if
     ;;@ ~lib/memory.ts:31:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:31:12
      (i32.const 2)
     )
     ;;@ ~lib/memory.ts:31:15
     (block
      ;;@ ~lib/memory.ts:32:6
      (i32.store16
       ;;@ ~lib/memory.ts:32:17
       (get_local $0)
       ;;@ ~lib/memory.ts:32:23
       (i32.load16_u
        ;;@ ~lib/memory.ts:32:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:33:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:33:14
        (i32.const 2)
       )
      )
      ;;@ ~lib/memory.ts:33:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:33:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:35:4
    (if
     ;;@ ~lib/memory.ts:35:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:35:12
      (i32.const 1)
     )
     ;;@ ~lib/memory.ts:36:16
     (block
      (set_local $3
       (get_local $0)
      )
      ;;@ ~lib/memory.ts:36:6
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:36:33
       (block (result i32)
        (set_local $3
         (get_local $1)
        )
        ;;@ ~lib/memory.ts:36:24
        (i32.load8_u
         (get_local $3)
        )
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:38:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:43:2
  (if
   ;;@ ~lib/memory.ts:43:6
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/memory.ts:43:11
    (i32.const 32)
   )
   ;;@ ~lib/memory.ts:44:4
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (block $tablify|0
        (br_table $case0|2 $case1|2 $case2|2 $tablify|0
         (i32.sub
          ;;@ ~lib/memory.ts:44:12
          (i32.and
           (get_local $0)
           ;;@ ~lib/memory.ts:44:19
           (i32.const 3)
          )
          (i32.const 1)
         )
        )
       )
       (br $break|2)
      )
      ;;@ ~lib/memory.ts:47:8
      (set_local $4
       ;;@ ~lib/memory.ts:47:12
       (i32.load
        ;;@ ~lib/memory.ts:47:22
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         ;;@ ~lib/memory.ts:48:18
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:48:8
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:48:35
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        ;;@ ~lib/memory.ts:48:26
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         ;;@ ~lib/memory.ts:49:18
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:49:8
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:49:35
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        ;;@ ~lib/memory.ts:49:26
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         ;;@ ~lib/memory.ts:50:18
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:50:8
      (i32.store8
       (get_local $3)
       ;;@ ~lib/memory.ts:50:35
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        ;;@ ~lib/memory.ts:50:26
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      ;;@ ~lib/memory.ts:51:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ ~lib/memory.ts:51:13
        (i32.const 3)
       )
      )
      (loop $continue|3
       (if
        ;;@ ~lib/memory.ts:52:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:52:20
         (i32.const 17)
        )
        (block
         ;;@ ~lib/memory.ts:54:10
         (i32.store
          ;;@ ~lib/memory.ts:54:21
          (get_local $0)
          ;;@ ~lib/memory.ts:54:27
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ ~lib/memory.ts:54:32
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:54:37
           (i32.shl
            ;;@ ~lib/memory.ts:53:10
            (tee_local $3
             ;;@ ~lib/memory.ts:53:14
             (i32.load
              ;;@ ~lib/memory.ts:53:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:53:30
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/memory.ts:54:42
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:56:10
         (i32.store
          ;;@ ~lib/memory.ts:56:21
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:56:28
           (i32.const 4)
          )
          ;;@ ~lib/memory.ts:56:31
          (i32.or
           (i32.shr_u
            (get_local $3)
            ;;@ ~lib/memory.ts:56:36
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:56:41
           (i32.shl
            ;;@ ~lib/memory.ts:55:10
            (tee_local $4
             ;;@ ~lib/memory.ts:55:14
             (i32.load
              ;;@ ~lib/memory.ts:55:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:55:30
               (i32.const 5)
              )
             )
            )
            ;;@ ~lib/memory.ts:56:46
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:58:10
         (i32.store
          ;;@ ~lib/memory.ts:58:21
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:58:28
           (i32.const 8)
          )
          ;;@ ~lib/memory.ts:58:31
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ ~lib/memory.ts:58:36
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:58:41
           (i32.shl
            ;;@ ~lib/memory.ts:57:10
            (tee_local $3
             ;;@ ~lib/memory.ts:57:14
             (i32.load
              ;;@ ~lib/memory.ts:57:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:57:30
               (i32.const 9)
              )
             )
            )
            ;;@ ~lib/memory.ts:58:46
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:60:10
         (i32.store
          ;;@ ~lib/memory.ts:60:21
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:60:28
           (i32.const 12)
          )
          ;;@ ~lib/memory.ts:60:32
          (i32.or
           (i32.shr_u
            (get_local $3)
            ;;@ ~lib/memory.ts:60:37
            (i32.const 24)
           )
           ;;@ ~lib/memory.ts:60:42
           (i32.shl
            ;;@ ~lib/memory.ts:59:10
            (tee_local $4
             ;;@ ~lib/memory.ts:59:14
             (i32.load
              ;;@ ~lib/memory.ts:59:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:59:30
               (i32.const 13)
              )
             )
            )
            ;;@ ~lib/memory.ts:60:47
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:61:10
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:61:17
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:61:21
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:61:29
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:61:33
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/memory.ts:61:38
           (i32.const 16)
          )
         )
         (br $continue|3)
        )
       )
      )
      ;;@ ~lib/memory.ts:63:8
      (br $break|2)
     )
     ;;@ ~lib/memory.ts:66:8
     (set_local $4
      ;;@ ~lib/memory.ts:66:12
      (i32.load
       ;;@ ~lib/memory.ts:66:22
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        ;;@ ~lib/memory.ts:67:18
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:67:8
     (i32.store8
      (get_local $3)
      ;;@ ~lib/memory.ts:67:35
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:67:26
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        ;;@ ~lib/memory.ts:68:18
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:68:8
     (i32.store8
      (get_local $3)
      ;;@ ~lib/memory.ts:68:35
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:68:26
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     ;;@ ~lib/memory.ts:69:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/memory.ts:69:13
       (i32.const 2)
      )
     )
     (loop $continue|4
      (if
       ;;@ ~lib/memory.ts:70:15
       (i32.ge_u
        (get_local $2)
        ;;@ ~lib/memory.ts:70:20
        (i32.const 18)
       )
       (block
        ;;@ ~lib/memory.ts:72:10
        (i32.store
         ;;@ ~lib/memory.ts:72:21
         (get_local $0)
         ;;@ ~lib/memory.ts:72:27
         (i32.or
          (i32.shr_u
           (get_local $4)
           ;;@ ~lib/memory.ts:72:32
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:72:37
          (i32.shl
           ;;@ ~lib/memory.ts:71:10
           (tee_local $3
            ;;@ ~lib/memory.ts:71:14
            (i32.load
             ;;@ ~lib/memory.ts:71:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:71:30
              (i32.const 2)
             )
            )
           )
           ;;@ ~lib/memory.ts:72:42
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:74:10
        (i32.store
         ;;@ ~lib/memory.ts:74:21
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:74:28
          (i32.const 4)
         )
         ;;@ ~lib/memory.ts:74:31
         (i32.or
          (i32.shr_u
           (get_local $3)
           ;;@ ~lib/memory.ts:74:36
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:74:41
          (i32.shl
           ;;@ ~lib/memory.ts:73:10
           (tee_local $4
            ;;@ ~lib/memory.ts:73:14
            (i32.load
             ;;@ ~lib/memory.ts:73:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:73:30
              (i32.const 6)
             )
            )
           )
           ;;@ ~lib/memory.ts:74:46
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:76:10
        (i32.store
         ;;@ ~lib/memory.ts:76:21
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:76:28
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:76:31
         (i32.or
          (i32.shr_u
           (get_local $4)
           ;;@ ~lib/memory.ts:76:36
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:76:41
          (i32.shl
           ;;@ ~lib/memory.ts:75:10
           (tee_local $3
            ;;@ ~lib/memory.ts:75:14
            (i32.load
             ;;@ ~lib/memory.ts:75:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:75:30
              (i32.const 10)
             )
            )
           )
           ;;@ ~lib/memory.ts:76:46
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:78:10
        (i32.store
         ;;@ ~lib/memory.ts:78:21
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:78:28
          (i32.const 12)
         )
         ;;@ ~lib/memory.ts:78:32
         (i32.or
          (i32.shr_u
           (get_local $3)
           ;;@ ~lib/memory.ts:78:37
           (i32.const 16)
          )
          ;;@ ~lib/memory.ts:78:42
          (i32.shl
           ;;@ ~lib/memory.ts:77:10
           (tee_local $4
            ;;@ ~lib/memory.ts:77:14
            (i32.load
             ;;@ ~lib/memory.ts:77:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:77:30
              (i32.const 14)
             )
            )
           )
           ;;@ ~lib/memory.ts:78:47
           (i32.const 16)
          )
         )
        )
        ;;@ ~lib/memory.ts:79:10
        (set_local $1
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:79:17
          (i32.const 16)
         )
        )
        ;;@ ~lib/memory.ts:79:21
        (set_local $0
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:79:29
          (i32.const 16)
         )
        )
        ;;@ ~lib/memory.ts:79:33
        (set_local $2
         (i32.sub
          (get_local $2)
          ;;@ ~lib/memory.ts:79:38
          (i32.const 16)
         )
        )
        (br $continue|4)
       )
      )
     )
     ;;@ ~lib/memory.ts:81:8
     (br $break|2)
    )
    ;;@ ~lib/memory.ts:84:8
    (set_local $4
     ;;@ ~lib/memory.ts:84:12
     (i32.load
      ;;@ ~lib/memory.ts:84:22
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:85:18
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:85:8
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:85:35
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:85:26
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    ;;@ ~lib/memory.ts:86:8
    (set_local $2
     (i32.sub
      (get_local $2)
      ;;@ ~lib/memory.ts:86:13
      (i32.const 1)
     )
    )
    (loop $continue|5
     (if
      ;;@ ~lib/memory.ts:87:15
      (i32.ge_u
       (get_local $2)
       ;;@ ~lib/memory.ts:87:20
       (i32.const 19)
      )
      (block
       ;;@ ~lib/memory.ts:89:10
       (i32.store
        ;;@ ~lib/memory.ts:89:21
        (get_local $0)
        ;;@ ~lib/memory.ts:89:27
        (i32.or
         (i32.shr_u
          (get_local $4)
          ;;@ ~lib/memory.ts:89:32
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:89:36
         (i32.shl
          ;;@ ~lib/memory.ts:88:10
          (tee_local $3
           ;;@ ~lib/memory.ts:88:14
           (i32.load
            ;;@ ~lib/memory.ts:88:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:88:30
             (i32.const 3)
            )
           )
          )
          ;;@ ~lib/memory.ts:89:41
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:91:10
       (i32.store
        ;;@ ~lib/memory.ts:91:21
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:91:28
         (i32.const 4)
        )
        ;;@ ~lib/memory.ts:91:31
        (i32.or
         (i32.shr_u
          (get_local $3)
          ;;@ ~lib/memory.ts:91:36
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:91:40
         (i32.shl
          ;;@ ~lib/memory.ts:90:10
          (tee_local $4
           ;;@ ~lib/memory.ts:90:14
           (i32.load
            ;;@ ~lib/memory.ts:90:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:90:30
             (i32.const 7)
            )
           )
          )
          ;;@ ~lib/memory.ts:91:45
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:93:10
       (i32.store
        ;;@ ~lib/memory.ts:93:21
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:93:28
         (i32.const 8)
        )
        ;;@ ~lib/memory.ts:93:31
        (i32.or
         (i32.shr_u
          (get_local $4)
          ;;@ ~lib/memory.ts:93:36
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:93:40
         (i32.shl
          ;;@ ~lib/memory.ts:92:10
          (tee_local $3
           ;;@ ~lib/memory.ts:92:14
           (i32.load
            ;;@ ~lib/memory.ts:92:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:92:30
             (i32.const 11)
            )
           )
          )
          ;;@ ~lib/memory.ts:93:45
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:95:10
       (i32.store
        ;;@ ~lib/memory.ts:95:21
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:95:28
         (i32.const 12)
        )
        ;;@ ~lib/memory.ts:95:32
        (i32.or
         (i32.shr_u
          (get_local $3)
          ;;@ ~lib/memory.ts:95:37
          (i32.const 8)
         )
         ;;@ ~lib/memory.ts:95:41
         (i32.shl
          ;;@ ~lib/memory.ts:94:10
          (tee_local $4
           ;;@ ~lib/memory.ts:94:14
           (i32.load
            ;;@ ~lib/memory.ts:94:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:94:30
             (i32.const 15)
            )
           )
          )
          ;;@ ~lib/memory.ts:95:46
          (i32.const 24)
         )
        )
       )
       ;;@ ~lib/memory.ts:96:10
       (set_local $1
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:96:17
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:96:21
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:96:29
         (i32.const 16)
        )
       )
       ;;@ ~lib/memory.ts:96:33
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:96:38
         (i32.const 16)
        )
       )
       (br $continue|5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:104:2
  (if
   ;;@ ~lib/memory.ts:104:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:104:10
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:104:14
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:105:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:105:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:105:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:105:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:106:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:106:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:106:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:106:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:107:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:107:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:107:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:107:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:108:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:108:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:108:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:108:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:109:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:109:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:109:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:109:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:110:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:110:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:110:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:110:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:111:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:111:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:111:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:111:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:112:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:112:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:112:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:112:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:113:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:113:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:113:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:113:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:114:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:114:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:114:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:114:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:115:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:115:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:115:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:115:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:116:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:116:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:116:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:116:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:117:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:117:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:117:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:117:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:118:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:118:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:118:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:118:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:119:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:119:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:119:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:119:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:120:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:120:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:120:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:120:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:122:2
  (if
   ;;@ ~lib/memory.ts:122:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:122:10
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:122:13
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:123:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:123:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:123:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:123:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:124:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:124:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:124:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:124:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:125:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:125:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:125:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:125:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:126:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:126:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:126:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:126:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:127:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:127:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:127:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:127:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:128:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:128:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:128:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:128:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:129:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:129:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:129:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:129:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:130:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:130:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:130:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:130:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:132:2
  (if
   ;;@ ~lib/memory.ts:132:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:132:10
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:132:13
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:133:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:133:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:133:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:133:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:134:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:134:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:134:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:134:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:135:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:135:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:135:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:135:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:136:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:136:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:136:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:136:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:138:2
  (if
   ;;@ ~lib/memory.ts:138:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:138:10
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:138:13
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:139:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:139:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:139:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:139:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       ;;@ ~lib/memory.ts:140:14
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ ~lib/memory.ts:140:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:140:31
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      ;;@ ~lib/memory.ts:140:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:142:2
  (if
   ;;@ ~lib/memory.ts:142:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:142:10
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:143:14
   (block
    (set_local $3
     (get_local $0)
    )
    ;;@ ~lib/memory.ts:143:4
    (i32.store8
     (get_local $3)
     ;;@ ~lib/memory.ts:143:31
     (block (result i32)
      (set_local $3
       (get_local $1)
      )
      ;;@ ~lib/memory.ts:143:22
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
 )
 (func $~lib/memory/move_memory (; 7 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/memory.ts:151:2
  (if
   ;;@ ~lib/memory.ts:151:6
   (i32.eq
    (get_local $0)
    ;;@ ~lib/memory.ts:151:14
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:151:19
   (return)
  )
  ;;@ ~lib/memory.ts:152:2
  (if
   ;;@ ~lib/memory.ts:152:6
   (i32.and
    (if (result i32)
     (tee_local $3
      (i32.le_u
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:152:12
        (get_local $2)
       )
       ;;@ ~lib/memory.ts:152:17
       (get_local $0)
      )
     )
     (get_local $3)
     ;;@ ~lib/memory.ts:152:25
     (i32.le_u
      (i32.add
       (get_local $0)
       ;;@ ~lib/memory.ts:152:32
       (get_local $2)
      )
      ;;@ ~lib/memory.ts:152:37
      (get_local $1)
     )
    )
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:152:42
   (block
    ;;@ ~lib/memory.ts:153:4
    (call $~lib/memory/copy_memory
     ;;@ ~lib/memory.ts:153:16
     (get_local $0)
     ;;@ ~lib/memory.ts:153:22
     (get_local $1)
     ;;@ ~lib/memory.ts:153:27
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:154:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:156:2
  (if
   ;;@ ~lib/memory.ts:156:6
   (i32.lt_u
    (get_local $0)
    ;;@ ~lib/memory.ts:156:13
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:156:18
   (block
    ;;@ ~lib/memory.ts:157:4
    (if
     ;;@ ~lib/memory.ts:157:8
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:157:9
       (get_local $1)
       ;;@ ~lib/memory.ts:157:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:157:21
      (i32.and
       ;;@ ~lib/memory.ts:157:22
       (get_local $0)
       ;;@ ~lib/memory.ts:157:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:157:33
     (block
      (loop $continue|0
       (if
        ;;@ ~lib/memory.ts:158:13
        (i32.and
         (get_local $0)
         ;;@ ~lib/memory.ts:158:20
         (i32.const 7)
        )
        (block
         ;;@ ~lib/memory.ts:159:8
         (if
          ;;@ ~lib/memory.ts:159:12
          (i32.eqz
           ;;@ ~lib/memory.ts:159:13
           (get_local $2)
          )
          ;;@ ~lib/memory.ts:159:16
          (return)
         )
         ;;@ ~lib/memory.ts:160:8
         (set_local $2
          (i32.sub
           ;;@ ~lib/memory.ts:160:10
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $0
          (i32.add
           (tee_local $3
            ;;@ ~lib/memory.ts:161:18
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         ;;@ ~lib/memory.ts:161:8
         (i32.store8
          (get_local $3)
          ;;@ ~lib/memory.ts:161:35
          (block (result i32)
           (set_local $1
            (i32.add
             (tee_local $3
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           ;;@ ~lib/memory.ts:161:26
           (i32.load8_u
            (get_local $3)
           )
          )
         )
         (br $continue|0)
        )
       )
      )
      (loop $continue|1
       (if
        ;;@ ~lib/memory.ts:163:13
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:163:18
         (i32.const 8)
        )
        (block
         ;;@ ~lib/memory.ts:164:8
         (i64.store
          ;;@ ~lib/memory.ts:164:19
          (get_local $0)
          ;;@ ~lib/memory.ts:164:25
          (i64.load
           ;;@ ~lib/memory.ts:164:35
           (get_local $1)
          )
         )
         ;;@ ~lib/memory.ts:165:8
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/memory.ts:165:16
           (i32.const 8)
          )
         )
         ;;@ ~lib/memory.ts:166:8
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:166:16
           (i32.const 8)
          )
         )
         ;;@ ~lib/memory.ts:167:8
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:167:16
           (i32.const 8)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
    )
    (loop $continue|2
     (if
      ;;@ ~lib/memory.ts:170:11
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          ;;@ ~lib/memory.ts:171:16
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       ;;@ ~lib/memory.ts:171:6
       (i32.store8
        (get_local $3)
        ;;@ ~lib/memory.ts:171:33
        (block (result i32)
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         ;;@ ~lib/memory.ts:171:24
         (i32.load8_u
          (get_local $3)
         )
        )
       )
       ;;@ ~lib/memory.ts:172:6
       (set_local $2
        (i32.sub
         ;;@ ~lib/memory.ts:172:8
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $continue|2)
      )
     )
    )
   )
   ;;@ ~lib/memory.ts:174:9
   (block
    ;;@ ~lib/memory.ts:175:4
    (if
     ;;@ ~lib/memory.ts:175:8
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:175:9
       (get_local $1)
       ;;@ ~lib/memory.ts:175:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:175:21
      (i32.and
       ;;@ ~lib/memory.ts:175:22
       (get_local $0)
       ;;@ ~lib/memory.ts:175:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:175:33
     (block
      (loop $continue|3
       (if
        ;;@ ~lib/memory.ts:176:13
        (i32.and
         (i32.add
          ;;@ ~lib/memory.ts:176:14
          (get_local $0)
          ;;@ ~lib/memory.ts:176:21
          (get_local $2)
         )
         ;;@ ~lib/memory.ts:176:26
         (i32.const 7)
        )
        (block
         ;;@ ~lib/memory.ts:177:8
         (if
          ;;@ ~lib/memory.ts:177:12
          (i32.eqz
           ;;@ ~lib/memory.ts:177:13
           (get_local $2)
          )
          ;;@ ~lib/memory.ts:177:16
          (return)
         )
         ;;@ ~lib/memory.ts:178:8
         (i32.store8
          ;;@ ~lib/memory.ts:178:18
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:178:25
           (tee_local $2
            (i32.sub
             ;;@ ~lib/memory.ts:178:27
             (get_local $2)
             (i32.const 1)
            )
           )
          )
          ;;@ ~lib/memory.ts:178:30
          (i32.load8_u
           ;;@ ~lib/memory.ts:178:39
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:178:45
            (get_local $2)
           )
          )
         )
         (br $continue|3)
        )
       )
      )
      (loop $continue|4
       (if
        ;;@ ~lib/memory.ts:180:13
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:180:18
         (i32.const 8)
        )
        (block
         ;;@ ~lib/memory.ts:182:8
         (i64.store
          ;;@ ~lib/memory.ts:182:19
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:181:8
           (tee_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:181:13
             (i32.const 8)
            )
           )
          )
          ;;@ ~lib/memory.ts:182:29
          (i64.load
           ;;@ ~lib/memory.ts:182:39
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:182:45
            (get_local $2)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (loop $continue|5
     (if
      ;;@ ~lib/memory.ts:185:11
      (get_local $2)
      (block
       ;;@ ~lib/memory.ts:186:6
       (i32.store8
        ;;@ ~lib/memory.ts:186:16
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:186:23
         (tee_local $2
          (i32.sub
           ;;@ ~lib/memory.ts:186:25
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        ;;@ ~lib/memory.ts:186:28
        (i32.load8_u
         ;;@ ~lib/memory.ts:186:37
         (i32.add
          (get_local $1)
          ;;@ ~lib/memory.ts:186:43
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
 (func $~lib/internal/arraybuffer/reallocUnsafe (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ ~lib/internal/arraybuffer.ts:31:2
  (if
   ;;@ ~lib/internal/arraybuffer.ts:31:6
   (i32.gt_s
    (get_local $1)
    ;;@ ~lib/internal/arraybuffer.ts:30:2
    (tee_local $2
     ;;@ ~lib/internal/arraybuffer.ts:30:22
     (i32.load
      (get_local $0)
     )
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:33:4
   (if
    ;;@ ~lib/internal/arraybuffer.ts:33:8
    (i32.le_s
     (get_local $1)
     ;;@ ~lib/internal/arraybuffer.ts:33:25
     (i32.sub
      (i32.shl
       (i32.const 1)
       (i32.sub
        (i32.const 32)
        (i32.clz
         (i32.add
          (tee_local $3
           ;;@ ~lib/internal/arraybuffer.ts:33:43
           (get_local $2)
          )
          (i32.const 7)
         )
        )
       )
      )
      ;;@ ~lib/internal/arraybuffer.ts:33:60
      (i32.const 8)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:33:74
    (block
     ;;@ ~lib/internal/arraybuffer.ts:34:6
     (i32.store
      ;;@ ~lib/internal/arraybuffer.ts:34:17
      (get_local $0)
      ;;@ ~lib/internal/arraybuffer.ts:34:44
      (get_local $1)
     )
     ;;@ ~lib/internal/arraybuffer.ts:35:6
     (call $~lib/memory/set_memory
      ;;@ ~lib/internal/arraybuffer.ts:36:8
      (i32.add
       (i32.add
        (get_local $0)
        ;;@ ~lib/internal/arraybuffer.ts:36:36
        (i32.const 8)
       )
       ;;@ ~lib/internal/arraybuffer.ts:36:50
       (get_local $2)
      )
      ;;@ ~lib/internal/arraybuffer.ts:37:8
      (i32.const 0)
      ;;@ ~lib/internal/arraybuffer.ts:38:8
      (i32.sub
       ;;@ ~lib/internal/arraybuffer.ts:38:16
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:38:32
       (get_local $2)
      )
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:40:11
    (block
     ;;@ ~lib/internal/arraybuffer.ts:42:6
     (call $~lib/memory/move_memory
      ;;@ ~lib/internal/arraybuffer.ts:43:8
      (i32.add
       ;;@ ~lib/internal/arraybuffer.ts:41:6
       (tee_local $3
        ;;@ ~lib/internal/arraybuffer.ts:41:22
        (call $~lib/internal/arraybuffer/allocUnsafe
         ;;@ ~lib/internal/arraybuffer.ts:41:34
         (get_local $1)
        )
       )
       ;;@ ~lib/internal/arraybuffer.ts:43:39
       (i32.const 8)
      )
      ;;@ ~lib/internal/arraybuffer.ts:44:8
      (i32.add
       (get_local $0)
       ;;@ ~lib/internal/arraybuffer.ts:44:36
       (i32.const 8)
      )
      ;;@ ~lib/internal/arraybuffer.ts:45:8
      (get_local $2)
     )
     ;;@ ~lib/internal/arraybuffer.ts:47:6
     (call $~lib/memory/set_memory
      ;;@ ~lib/internal/arraybuffer.ts:48:8
      (i32.add
       (i32.add
        (get_local $3)
        ;;@ ~lib/internal/arraybuffer.ts:48:39
        (i32.const 8)
       )
       ;;@ ~lib/internal/arraybuffer.ts:48:53
       (get_local $2)
      )
      ;;@ ~lib/internal/arraybuffer.ts:49:8
      (i32.const 0)
      ;;@ ~lib/internal/arraybuffer.ts:50:8
      (i32.sub
       ;;@ ~lib/internal/arraybuffer.ts:50:16
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:50:32
       (get_local $2)
      )
     )
     ;;@ ~lib/internal/arraybuffer.ts:52:13
     (return
      (get_local $3)
     )
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:54:9
   (if
    ;;@ ~lib/internal/arraybuffer.ts:54:13
    (i32.lt_s
     (get_local $1)
     ;;@ ~lib/internal/arraybuffer.ts:54:29
     (get_local $2)
    )
    ;;@ ~lib/internal/arraybuffer.ts:57:4
    (i32.store
     ;;@ ~lib/internal/arraybuffer.ts:57:15
     (get_local $0)
     ;;@ ~lib/internal/arraybuffer.ts:57:42
     (get_local $1)
    )
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:59:9
  (get_local $0)
 )
 (func $~lib/array/Array<Body>#push (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/array.ts:125:4
  (set_local $3
   ;;@ ~lib/array.ts:125:20
   (i32.add
    ;;@ ~lib/array.ts:122:4
    (tee_local $2
     ;;@ ~lib/array.ts:122:17
     (i32.load offset=4
      (get_local $0)
     )
    )
    ;;@ ~lib/array.ts:125:29
    (i32.const 1)
   )
  )
  ;;@ ~lib/array.ts:126:4
  (if
   ;;@ ~lib/array.ts:126:8
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/array.ts:124:19
    (i32.shr_u
     (i32.load
      ;;@ ~lib/array.ts:123:4
      (tee_local $4
       ;;@ ~lib/array.ts:123:17
       (i32.load
        (get_local $0)
       )
      )
     )
     ;;@ ~lib/array.ts:124:41
     (i32.const 2)
    )
   )
   ;;@ ~lib/array.ts:126:38
   (block
    ;;@ ~lib/array.ts:128:6
    (if
     ;;@ ~lib/array.ts:128:10
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/array.ts:128:25
      (i32.const 268435454)
     )
     ;;@ ~lib/array.ts:128:42
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 128)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/array.ts:130:6
    (i32.store
     (get_local $0)
     ;;@ ~lib/array.ts:129:6
     (tee_local $4
      ;;@ ~lib/array.ts:129:15
      (call $~lib/internal/arraybuffer/reallocUnsafe
       ;;@ ~lib/array.ts:129:29
       (get_local $4)
       ;;@ ~lib/array.ts:129:37
       (i32.shl
        (get_local $3)
        ;;@ ~lib/array.ts:129:50
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  ;;@ ~lib/array.ts:132:4
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/array.ts:132:19
   (get_local $3)
  )
  ;;@ ~lib/internal/arraybuffer.ts:69:2
  (i32.store offset=8
   ;;@ ~lib/internal/arraybuffer.ts:69:11
   (i32.add
    ;;@ ~lib/array.ts:133:19
    (get_local $4)
    ;;@ ~lib/internal/arraybuffer.ts:69:39
    (i32.shl
     ;;@ ~lib/array.ts:133:27
     (get_local $2)
     ;;@ ~lib/internal/arraybuffer.ts:69:56
     (i32.const 2)
    )
   )
   ;;@ ~lib/array.ts:133:35
   (get_local $1)
  )
  ;;@ ~lib/array.ts:134:11
  (get_local $3)
 )
 (func $~lib/array/Array<Body>#__get (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:64:4
  (if
   ;;@ ~lib/array.ts:64:8
   (i32.ge_u
    (get_local $1)
    ;;@ ~lib/array.ts:63:19
    (i32.shr_u
     (i32.load
      ;;@ ~lib/array.ts:62:4
      (tee_local $2
       ;;@ ~lib/array.ts:62:17
       (i32.load
        (get_local $0)
       )
      )
     )
     ;;@ ~lib/array.ts:63:41
     (i32.const 2)
    )
   )
   ;;@ ~lib/array.ts:64:37
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 64)
     (i32.const 37)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:64:9
  (i32.load offset=8
   ;;@ ~lib/internal/arraybuffer.ts:64:17
   (i32.add
    ;;@ ~lib/array.ts:66:25
    (get_local $2)
    ;;@ ~lib/internal/arraybuffer.ts:64:45
    (i32.shl
     ;;@ ~lib/array.ts:66:33
     (get_local $1)
     ;;@ ~lib/internal/arraybuffer.ts:64:62
     (i32.const 2)
    )
   )
  )
 )
 (func $assembly/index/NBodySystem#constructor (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  ;;@ assembly/index.ts:88:4
  (set_local $8
   (i32.load offset=4
    (tee_local $3
     ;;@ assembly/index.ts:88:15
     (get_local $1)
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:89:20
    (i32.lt_s
     (get_local $2)
     ;;@ assembly/index.ts:89:24
     (get_local $8)
    )
    (block
     ;;@ assembly/index.ts:91:6
     (set_local $4
      ;;@ assembly/index.ts:91:14
      (f64.load offset=48
       ;;@ assembly/index.ts:90:6
       (tee_local $3
        ;;@ assembly/index.ts:90:14
        (call $~lib/array/Array<Body>#__get
         (get_local $1)
         ;;@ assembly/index.ts:90:21
         (get_local $2)
        )
       )
      )
     )
     ;;@ assembly/index.ts:92:6
     (set_local $5
      (f64.add
       (get_local $5)
       ;;@ assembly/index.ts:92:12
       (f64.mul
        (f64.load offset=24
         (get_local $3)
        )
        ;;@ assembly/index.ts:92:19
        (get_local $4)
       )
      )
     )
     ;;@ assembly/index.ts:93:6
     (set_local $6
      (f64.add
       (get_local $6)
       ;;@ assembly/index.ts:93:12
       (f64.mul
        (f64.load offset=32
         (get_local $3)
        )
        ;;@ assembly/index.ts:93:19
        (get_local $4)
       )
      )
     )
     ;;@ assembly/index.ts:94:6
     (set_local $7
      (f64.add
       (get_local $7)
       ;;@ assembly/index.ts:94:12
       (f64.mul
        (f64.load offset=40
         (get_local $3)
        )
        ;;@ assembly/index.ts:94:19
        (get_local $4)
       )
      )
     )
     ;;@ assembly/index.ts:89:30
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/index.ts:96:4
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $2
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 4)
       )
      )
      (i32.const 0)
     )
     (tee_local $0
      (get_local $2)
     )
    )
   )
   ;;@ assembly/index.ts:96:18
   (get_local $1)
  )
  (f64.store offset=24
   (tee_local $1
    ;;@ assembly/index.ts:97:4
    (call $~lib/array/Array<Body>#__get
     (i32.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:97:16
     (i32.const 0)
    )
   )
   (f64.div
    (f64.neg
     (get_local $5)
    )
    (f64.const 39.47841760435743)
   )
  )
  (f64.store offset=32
   (get_local $1)
   (f64.div
    (f64.neg
     (get_local $6)
    )
    (f64.const 39.47841760435743)
   )
  )
  (f64.store offset=40
   (get_local $1)
   (f64.div
    (f64.neg
     (get_local $7)
    )
    (f64.const 39.47841760435743)
   )
  )
  (get_local $0)
 )
 (func $assembly/index/getBody (; 12 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/index.ts:191:9
  (if (result i32)
   (i32.lt_s
    (get_local $0)
    (i32.load offset=4
     ;;@ assembly/index.ts:191:17
     (get_global $assembly/index/bodies)
    )
   )
   ;;@ assembly/index.ts:191:33
   (call $~lib/array/Array<Body>#__get
    (get_global $assembly/index/bodies)
    ;;@ assembly/index.ts:191:40
    (get_local $0)
   )
   ;;@ assembly/index.ts:191:49
   (i32.const 0)
  )
 )
 (func $assembly/index/NBodySystem#advance (; 13 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  ;;@ assembly/index.ts:102:4
  (set_local $14
   (i32.load offset=4
    (tee_local $0
     ;;@ assembly/index.ts:101:4
     (tee_local $13
      ;;@ assembly/index.ts:101:17
      (i32.load
       (get_local $0)
      )
     )
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:104:20
    (i32.lt_s
     (get_local $4)
     ;;@ assembly/index.ts:104:24
     (get_local $14)
    )
    (block
     ;;@ assembly/index.ts:107:6
     (set_local $15
      ;;@ assembly/index.ts:107:15
      (f64.load
       ;;@ assembly/index.ts:105:6
       (tee_local $0
        ;;@ assembly/index.ts:105:18
        (call $~lib/array/Array<Body>#__get
         (get_local $13)
         ;;@ assembly/index.ts:105:25
         (get_local $4)
        )
       )
      )
     )
     ;;@ assembly/index.ts:108:6
     (set_local $16
      ;;@ assembly/index.ts:108:15
      (f64.load offset=8
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:109:6
     (set_local $17
      ;;@ assembly/index.ts:109:15
      (f64.load offset=16
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:111:6
     (set_local $5
      ;;@ assembly/index.ts:111:17
      (f64.load offset=24
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:112:6
     (set_local $6
      ;;@ assembly/index.ts:112:17
      (f64.load offset=32
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:113:6
     (set_local $7
      ;;@ assembly/index.ts:113:17
      (f64.load offset=40
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:115:6
     (set_local $18
      ;;@ assembly/index.ts:115:19
      (f64.load offset=48
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:116:11
     (set_local $8
      ;;@ assembly/index.ts:116:19
      (i32.add
       (get_local $4)
       ;;@ assembly/index.ts:116:23
       (i32.const 1)
      )
     )
     (loop $continue|1
      (if
       ;;@ assembly/index.ts:116:26
       (i32.lt_s
        (get_local $8)
        ;;@ assembly/index.ts:116:30
        (get_local $14)
       )
       (block
        ;;@ assembly/index.ts:126:8
        (set_local $3
         ;;@ assembly/index.ts:126:18
         (f64.mul
          (get_local $18)
          ;;@ assembly/index.ts:124:8
          (tee_local $9
           ;;@ assembly/index.ts:124:18
           (f64.div
            (get_local $1)
            ;;@ assembly/index.ts:124:23
            (f64.mul
             ;;@ assembly/index.ts:122:8
             (tee_local $3
              ;;@ assembly/index.ts:122:25
              (f64.add
               (f64.add
                (f64.mul
                 ;;@ assembly/index.ts:118:8
                 (tee_local $10
                  ;;@ assembly/index.ts:118:17
                  (f64.sub
                   (get_local $15)
                   ;;@ assembly/index.ts:118:22
                   (f64.load
                    ;;@ assembly/index.ts:117:8
                    (tee_local $2
                     ;;@ assembly/index.ts:117:20
                     (call $~lib/array/Array<Body>#__get
                      (get_local $13)
                      ;;@ assembly/index.ts:117:27
                      (get_local $8)
                     )
                    )
                   )
                  )
                 )
                 ;;@ assembly/index.ts:122:30
                 (get_local $10)
                )
                ;;@ assembly/index.ts:122:35
                (f64.mul
                 ;;@ assembly/index.ts:119:8
                 (tee_local $11
                  ;;@ assembly/index.ts:119:17
                  (f64.sub
                   (get_local $16)
                   ;;@ assembly/index.ts:119:22
                   (f64.load offset=8
                    (get_local $2)
                   )
                  )
                 )
                 ;;@ assembly/index.ts:122:40
                 (get_local $11)
                )
               )
               ;;@ assembly/index.ts:122:45
               (f64.mul
                ;;@ assembly/index.ts:120:8
                (tee_local $12
                 ;;@ assembly/index.ts:120:17
                 (f64.sub
                  (get_local $17)
                  ;;@ assembly/index.ts:120:22
                  (f64.load offset=16
                   (get_local $2)
                  )
                 )
                )
                ;;@ assembly/index.ts:122:50
                (get_local $12)
               )
              )
             )
             ;;@ assembly/index.ts:123:23
             (f64.sqrt
              ;;@ assembly/index.ts:123:28
              (get_local $3)
             )
            )
           )
          )
         )
        )
        ;;@ assembly/index.ts:129:8
        (set_local $5
         (f64.sub
          (get_local $5)
          ;;@ assembly/index.ts:129:16
          (f64.mul
           (get_local $10)
           ;;@ assembly/index.ts:127:8
           (tee_local $9
            ;;@ assembly/index.ts:127:18
            (f64.mul
             (f64.load offset=48
              (get_local $2)
             )
             ;;@ assembly/index.ts:127:31
             (get_local $9)
            )
           )
          )
         )
        )
        ;;@ assembly/index.ts:130:8
        (set_local $6
         (f64.sub
          (get_local $6)
          ;;@ assembly/index.ts:130:16
          (f64.mul
           (get_local $11)
           ;;@ assembly/index.ts:130:21
           (get_local $9)
          )
         )
        )
        ;;@ assembly/index.ts:131:8
        (set_local $7
         (f64.sub
          (get_local $7)
          ;;@ assembly/index.ts:131:16
          (f64.mul
           (get_local $12)
           ;;@ assembly/index.ts:131:21
           (get_local $9)
          )
         )
        )
        ;;@ assembly/index.ts:133:8
        (f64.store offset=24
         (get_local $2)
         (f64.add
          (f64.load offset=24
           (get_local $2)
          )
          ;;@ assembly/index.ts:133:20
          (f64.mul
           (get_local $10)
           ;;@ assembly/index.ts:133:25
           (get_local $3)
          )
         )
        )
        ;;@ assembly/index.ts:134:8
        (f64.store offset=32
         (get_local $2)
         (f64.add
          (f64.load offset=32
           (get_local $2)
          )
          ;;@ assembly/index.ts:134:20
          (f64.mul
           (get_local $11)
           ;;@ assembly/index.ts:134:25
           (get_local $3)
          )
         )
        )
        ;;@ assembly/index.ts:135:8
        (f64.store offset=40
         (get_local $2)
         (f64.add
          (f64.load offset=40
           (get_local $2)
          )
          ;;@ assembly/index.ts:135:20
          (f64.mul
           (get_local $12)
           ;;@ assembly/index.ts:135:25
           (get_local $3)
          )
         )
        )
        ;;@ assembly/index.ts:116:36
        (set_local $8
         (i32.add
          ;;@ assembly/index.ts:116:38
          (get_local $8)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/index.ts:138:6
     (f64.store offset=24
      (get_local $0)
      ;;@ assembly/index.ts:138:17
      (get_local $5)
     )
     ;;@ assembly/index.ts:139:6
     (f64.store offset=32
      (get_local $0)
      ;;@ assembly/index.ts:139:17
      (get_local $6)
     )
     ;;@ assembly/index.ts:140:6
     (f64.store offset=40
      (get_local $0)
      ;;@ assembly/index.ts:140:17
      (get_local $7)
     )
     ;;@ assembly/index.ts:142:6
     (f64.store
      (get_local $0)
      (f64.add
       (f64.load
        (get_local $0)
       )
       ;;@ assembly/index.ts:142:17
       (f64.mul
        (get_local $1)
        ;;@ assembly/index.ts:142:22
        (get_local $5)
       )
      )
     )
     ;;@ assembly/index.ts:143:6
     (f64.store offset=8
      (get_local $0)
      (f64.add
       (f64.load offset=8
        (get_local $0)
       )
       ;;@ assembly/index.ts:143:17
       (f64.mul
        (get_local $1)
        ;;@ assembly/index.ts:143:22
        (get_local $6)
       )
      )
     )
     ;;@ assembly/index.ts:144:6
     (f64.store offset=16
      (get_local $0)
      (f64.add
       (f64.load offset=16
        (get_local $0)
       )
       ;;@ assembly/index.ts:144:17
       (f64.mul
        (get_local $1)
        ;;@ assembly/index.ts:144:22
        (get_local $7)
       )
      )
     )
     ;;@ assembly/index.ts:104:30
     (set_local $4
      (i32.add
       ;;@ assembly/index.ts:104:32
       (get_local $4)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $assembly/index/NBodySystem#energy (; 14 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  ;;@ assembly/index.ts:151:4
  (set_local $5
   (i32.load offset=4
    (tee_local $0
     ;;@ assembly/index.ts:150:4
     (tee_local $4
      ;;@ assembly/index.ts:150:17
      (i32.load
       (get_local $0)
      )
     )
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:153:20
    (i32.lt_s
     (get_local $2)
     ;;@ assembly/index.ts:153:24
     (get_local $5)
    )
    (block
     ;;@ assembly/index.ts:156:6
     (set_local $7
      ;;@ assembly/index.ts:156:15
      (f64.load
       ;;@ assembly/index.ts:154:6
       (tee_local $0
        ;;@ assembly/index.ts:154:18
        (call $~lib/array/Array<Body>#__get
         (get_local $4)
         ;;@ assembly/index.ts:154:25
         (get_local $2)
        )
       )
      )
     )
     ;;@ assembly/index.ts:157:6
     (set_local $8
      ;;@ assembly/index.ts:157:15
      (f64.load offset=8
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:158:6
     (set_local $9
      ;;@ assembly/index.ts:158:15
      (f64.load offset=16
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:166:6
     (set_local $1
      (f64.add
       (get_local $1)
       ;;@ assembly/index.ts:166:11
       (f64.mul
        (f64.mul
         (f64.const 0.5)
         ;;@ assembly/index.ts:164:6
         (tee_local $10
          ;;@ assembly/index.ts:164:16
          (f64.load offset=48
           (get_local $0)
          )
         )
        )
        ;;@ assembly/index.ts:166:23
        (f64.add
         ;;@ assembly/index.ts:166:24
         (f64.add
          (f64.mul
           ;;@ assembly/index.ts:160:6
           (tee_local $1
            ;;@ assembly/index.ts:160:15
            (f64.load offset=24
             (get_local $0)
            )
           )
           ;;@ assembly/index.ts:166:29
           (get_local $1)
          )
          ;;@ assembly/index.ts:166:34
          (f64.mul
           ;;@ assembly/index.ts:161:6
           (tee_local $1
            ;;@ assembly/index.ts:161:15
            (f64.load offset=32
             (get_local $0)
            )
           )
           ;;@ assembly/index.ts:166:39
           (get_local $1)
          )
         )
         ;;@ assembly/index.ts:166:44
         (f64.mul
          ;;@ assembly/index.ts:162:6
          (tee_local $1
           ;;@ assembly/index.ts:162:15
           (f64.load offset=40
            (get_local $0)
           )
          )
          ;;@ assembly/index.ts:166:49
          (get_local $1)
         )
        )
       )
      )
     )
     ;;@ assembly/index.ts:168:11
     (set_local $0
      ;;@ assembly/index.ts:168:19
      (i32.add
       (get_local $2)
       ;;@ assembly/index.ts:168:23
       (i32.const 1)
      )
     )
     (loop $continue|1
      (if
       ;;@ assembly/index.ts:168:26
       (i32.lt_s
        (get_local $0)
        ;;@ assembly/index.ts:168:30
        (get_local $5)
       )
       (block
        ;;@ assembly/index.ts:170:8
        (set_local $6
         ;;@ assembly/index.ts:170:17
         (f64.sub
          (get_local $7)
          ;;@ assembly/index.ts:170:22
          (f64.load
           ;;@ assembly/index.ts:169:8
           (tee_local $3
            ;;@ assembly/index.ts:169:20
            (call $~lib/array/Array<Body>#__get
             (get_local $4)
             ;;@ assembly/index.ts:169:27
             (get_local $0)
            )
           )
          )
         )
        )
        ;;@ assembly/index.ts:174:8
        (set_local $1
         (f64.sub
          (get_local $1)
          ;;@ assembly/index.ts:174:13
          (f64.div
           (f64.mul
            (get_local $10)
            ;;@ assembly/index.ts:174:19
            (f64.load offset=48
             (get_local $3)
            )
           )
           ;;@ assembly/index.ts:173:23
           (f64.sqrt
            ;;@ assembly/index.ts:173:28
            (f64.add
             (f64.add
              (f64.mul
               (get_local $6)
               ;;@ assembly/index.ts:173:33
               (get_local $6)
              )
              ;;@ assembly/index.ts:173:38
              (f64.mul
               ;;@ assembly/index.ts:171:8
               (tee_local $1
                ;;@ assembly/index.ts:171:17
                (f64.sub
                 (get_local $8)
                 ;;@ assembly/index.ts:171:22
                 (f64.load offset=8
                  (get_local $3)
                 )
                )
               )
               ;;@ assembly/index.ts:173:43
               (get_local $1)
              )
             )
             ;;@ assembly/index.ts:173:48
             (f64.mul
              ;;@ assembly/index.ts:172:8
              (tee_local $1
               ;;@ assembly/index.ts:172:17
               (f64.sub
                (get_local $9)
                ;;@ assembly/index.ts:172:22
                (f64.load offset=16
                 (get_local $3)
                )
               )
              )
              ;;@ assembly/index.ts:173:53
              (get_local $1)
             )
            )
           )
          )
         )
        )
        ;;@ assembly/index.ts:168:36
        (set_local $0
         (i32.add
          ;;@ assembly/index.ts:168:38
          (get_local $0)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/index.ts:153:30
     (set_local $2
      (i32.add
       ;;@ assembly/index.ts:153:32
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/index.ts:177:11
  (get_local $1)
 )
 (func $assembly/index/step (; 15 ;) (type $F) (result f64)
  ;;@ assembly/index.ts:195:9
  (call $assembly/index/NBodySystem#advance
   ;;@ assembly/index.ts:195:2
   (get_global $assembly/index/system)
   ;;@ assembly/index.ts:195:17
   (f64.const 0.01)
  )
  ;;@ assembly/index.ts:196:16
  (call $assembly/index/NBodySystem#energy
   ;;@ assembly/index.ts:196:9
   (get_global $assembly/index/system)
  )
 )
 (func $assembly/index/bench (; 16 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i32)
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:200:18
    (i32.lt_s
     (get_local $1)
     ;;@ assembly/index.ts:200:22
     (get_local $0)
    )
    (block
     ;;@ assembly/index.ts:200:41
     (call $assembly/index/NBodySystem#advance
      ;;@ assembly/index.ts:200:34
      (get_global $assembly/index/system)
      ;;@ assembly/index.ts:200:49
      (f64.const 0.01)
     )
     ;;@ assembly/index.ts:200:29
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/index.ts:201:16
  (call $assembly/index/NBodySystem#energy
   ;;@ assembly/index.ts:201:9
   (get_global $assembly/index/system)
  )
 )
 (func $start (; 17 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   ;;@ ~lib/allocator/arena.ts:12:25
   (i32.and
    (i32.add
     ;;@ ~lib/allocator/arena.ts:12:26
     (get_global $HEAP_BASE)
     ;;@ ~lib/allocator/arena.ts:12:38
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global $~lib/allocator/arena/offset
   ;;@ ~lib/allocator/arena.ts:13:20
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $assembly/index/bodies
   ;;@ assembly/index.ts:181:13
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (block $1of1
     (block $0of1
      (block $oob
       (br_table $0of1 $1of1 $oob
        (get_global $~argc)
       )
      )
      (unreachable)
     )
    )
    (call $~lib/array/Array<Body>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  ;;@ assembly/index.ts:182:7
  (drop
   (call $~lib/array/Array<Body>#push
    ;;@ assembly/index.ts:182:0
    (get_global $assembly/index/bodies)
    (call $assembly/index/Body#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 39.47841760435743)
    )
   )
  )
  ;;@ assembly/index.ts:183:7
  (drop
   (call $~lib/array/Array<Body>#push
    ;;@ assembly/index.ts:183:0
    (get_global $assembly/index/bodies)
    (call $assembly/index/Body#constructor
     (i32.const 0)
     (f64.const 4.841431442464721)
     (f64.const -1.1603200440274284)
     (f64.const -0.10362204447112311)
     (f64.const 0.606326392995832)
     (f64.const 2.81198684491626)
     (f64.const -0.02521836165988763)
     (f64.const 0.03769367487038949)
    )
   )
  )
  ;;@ assembly/index.ts:184:7
  (drop
   (call $~lib/array/Array<Body>#push
    ;;@ assembly/index.ts:184:0
    (get_global $assembly/index/bodies)
    (call $assembly/index/Body#constructor
     (i32.const 0)
     (f64.const 8.34336671824458)
     (f64.const 4.124798564124305)
     (f64.const -0.4035234171143214)
     (f64.const -1.0107743461787924)
     (f64.const 1.8256623712304119)
     (f64.const 0.008415761376584154)
     (f64.const 0.011286326131968767)
    )
   )
  )
  ;;@ assembly/index.ts:185:7
  (drop
   (call $~lib/array/Array<Body>#push
    ;;@ assembly/index.ts:185:0
    (get_global $assembly/index/bodies)
    (call $assembly/index/Body#constructor
     (i32.const 0)
     (f64.const 12.894369562139131)
     (f64.const -15.111151401698631)
     (f64.const -0.22330757889265573)
     (f64.const 1.0827910064415354)
     (f64.const 0.8687130181696082)
     (f64.const -0.010832637401363636)
     (f64.const 1.7237240570597112e-03)
    )
   )
  )
  ;;@ assembly/index.ts:186:7
  (drop
   (call $~lib/array/Array<Body>#push
    ;;@ assembly/index.ts:186:0
    (get_global $assembly/index/bodies)
    (call $assembly/index/Body#constructor
     (i32.const 0)
     (f64.const 15.379697114850917)
     (f64.const -25.919314609987964)
     (f64.const 0.17925877295037118)
     (f64.const 0.979090732243898)
     (f64.const 0.5946989986476762)
     (f64.const -0.034755955504078104)
     (f64.const 2.0336868699246304e-03)
    )
   )
  )
  (set_global $assembly/index/system
   ;;@ assembly/index.ts:188:13
   (call $assembly/index/NBodySystem#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:188:29
    (get_global $assembly/index/bodies)
   )
  )
 )
)
