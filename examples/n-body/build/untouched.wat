(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $iFFFFFFFi (func (param i32 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iFFFi (func (param i32 f64 f64 f64) (result i32)))
 (type $F (func (result f64)))
 (type $iFv (func (param i32 f64)))
 (type $iF (func (param i32) (result f64)))
 (type $iv (func (param i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $assembly/index/SOLAR_MASS f64 (f64.const 39.47841760435743))
 (global $assembly/index/DAYS_PER_YEAR f64 (f64.const 365.24))
 (global $assembly/index/system (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $HEAP_BASE i32 (i32.const 100))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (export "init" (func $assembly/index/init))
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
  (local $5 i32)
  (local $6 i32)
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
    ;;@ ~lib/allocator/arena.ts:19:4
    (set_local $1
     ;;@ ~lib/allocator/arena.ts:19:14
     (get_global $~lib/allocator/arena/offset)
    )
    ;;@ ~lib/allocator/arena.ts:20:4
    (set_local $2
     ;;@ ~lib/allocator/arena.ts:20:17
     (i32.and
      (i32.add
       ;;@ ~lib/allocator/arena.ts:20:18
       (i32.add
        (get_local $1)
        ;;@ ~lib/allocator/arena.ts:20:24
        (get_local $0)
       )
       ;;@ ~lib/allocator/arena.ts:20:31
       (i32.const 7)
      )
      ;;@ ~lib/allocator/arena.ts:20:42
      (i32.xor
       ;;@ ~lib/allocator/arena.ts:20:43
       (i32.const 7)
       (i32.const -1)
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:21:4
    (set_local $3
     ;;@ ~lib/allocator/arena.ts:21:22
     (current_memory)
    )
    ;;@ ~lib/allocator/arena.ts:22:4
    (if
     ;;@ ~lib/allocator/arena.ts:22:8
     (i32.gt_u
      (get_local $2)
      ;;@ ~lib/allocator/arena.ts:22:17
      (i32.shl
       (get_local $3)
       ;;@ ~lib/allocator/arena.ts:22:39
       (i32.const 16)
      )
     )
     ;;@ ~lib/allocator/arena.ts:22:43
     (block
      ;;@ ~lib/allocator/arena.ts:23:6
      (set_local $4
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
         ;;@ ~lib/allocator/arena.ts:23:51
         (i32.xor
          ;;@ ~lib/allocator/arena.ts:23:52
          (i32.const 65535)
          (i32.const -1)
         )
        )
        ;;@ ~lib/allocator/arena.ts:23:64
        (i32.const 16)
       )
      )
      ;;@ ~lib/allocator/arena.ts:24:6
      (set_local $5
       ;;@ ~lib/allocator/arena.ts:24:24
       (select
        (tee_local $5
         ;;@ ~lib/allocator/arena.ts:24:28
         (get_local $3)
        )
        (tee_local $6
         ;;@ ~lib/allocator/arena.ts:24:41
         (get_local $4)
        )
        (i32.gt_s
         (get_local $5)
         (get_local $6)
        )
       )
      )
      ;;@ ~lib/allocator/arena.ts:25:6
      (if
       ;;@ ~lib/allocator/arena.ts:25:10
       (i32.lt_s
        (grow_memory
         ;;@ ~lib/allocator/arena.ts:25:22
         (get_local $5)
        )
        ;;@ ~lib/allocator/arena.ts:25:37
        (i32.const 0)
       )
       ;;@ ~lib/allocator/arena.ts:25:40
       (if
        ;;@ ~lib/allocator/arena.ts:26:12
        (i32.lt_s
         (grow_memory
          ;;@ ~lib/allocator/arena.ts:26:24
          (get_local $4)
         )
         ;;@ ~lib/allocator/arena.ts:26:39
         (i32.const 0)
        )
        ;;@ ~lib/allocator/arena.ts:26:42
        (unreachable)
       )
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
 (func $assembly/index/Body#constructor (; 2 ;) (type $iFFFFFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (param $7 f64) (result i32)
  (local $8 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $8
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 56)
       )
      )
      (f64.store
       (get_local $8)
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
  )
 )
 (func $assembly/index/Sun (; 3 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:34:2
  (call $assembly/index/Body#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:33:4
   (f64.const 0)
   ;;@ assembly/index.ts:33:9
   (f64.const 0)
   ;;@ assembly/index.ts:33:14
   (f64.const 0)
   ;;@ assembly/index.ts:33:19
   (f64.const 0)
   ;;@ assembly/index.ts:33:24
   (f64.const 0)
   ;;@ assembly/index.ts:33:29
   (f64.const 0)
   ;;@ assembly/index.ts:33:34
   (f64.const 39.47841760435743)
  )
 )
 (func $assembly/index/Jupiter (; 4 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:46:2
  (call $assembly/index/Body#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:39:4
   (f64.const 4.841431442464721)
   ;;@ assembly/index.ts:40:4
   (f64.const -1.1603200440274284)
   ;;@ assembly/index.ts:41:4
   (f64.const -0.10362204447112311)
   ;;@ assembly/index.ts:42:4
   (f64.mul
    (f64.const 0.001660076642744037)
    ;;@ assembly/index.ts:42:30
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:43:4
   (f64.mul
    (f64.const 0.007699011184197404)
    ;;@ assembly/index.ts:43:30
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:44:4
   (f64.mul
    (f64.const -6.90460016972063e-05)
    ;;@ assembly/index.ts:44:31
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:45:4
   (f64.mul
    (f64.const 9.547919384243266e-04)
    ;;@ assembly/index.ts:45:30
    (f64.const 39.47841760435743)
   )
  )
 )
 (func $assembly/index/Saturn (; 5 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:58:2
  (call $assembly/index/Body#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:51:4
   (f64.const 8.34336671824458)
   ;;@ assembly/index.ts:52:4
   (f64.const 4.124798564124305)
   ;;@ assembly/index.ts:53:4
   (f64.const -0.4035234171143214)
   ;;@ assembly/index.ts:54:4
   (f64.mul
    (f64.const -0.002767425107268624)
    ;;@ assembly/index.ts:54:31
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:55:4
   (f64.mul
    (f64.const 0.004998528012349172)
    ;;@ assembly/index.ts:55:30
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:56:4
   (f64.mul
    (f64.const 2.3041729757376393e-05)
    ;;@ assembly/index.ts:56:30
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:57:4
   (f64.mul
    (f64.const 2.858859806661308e-04)
    ;;@ assembly/index.ts:57:30
    (f64.const 39.47841760435743)
   )
  )
 )
 (func $assembly/index/Uranus (; 6 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:70:2
  (call $assembly/index/Body#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:63:4
   (f64.const 12.894369562139131)
   ;;@ assembly/index.ts:64:4
   (f64.const -15.111151401698631)
   ;;@ assembly/index.ts:65:4
   (f64.const -0.22330757889265573)
   ;;@ assembly/index.ts:66:4
   (f64.mul
    (f64.const 0.002964601375647616)
    ;;@ assembly/index.ts:66:30
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:67:4
   (f64.mul
    (f64.const 2.3784717395948095e-03)
    ;;@ assembly/index.ts:67:30
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:68:4
   (f64.mul
    (f64.const -2.9658956854023756e-05)
    ;;@ assembly/index.ts:68:31
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:69:4
   (f64.mul
    (f64.const 4.366244043351563e-05)
    ;;@ assembly/index.ts:69:30
    (f64.const 39.47841760435743)
   )
  )
 )
 (func $assembly/index/Neptune (; 7 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:82:2
  (call $assembly/index/Body#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:75:4
   (f64.const 15.379697114850917)
   ;;@ assembly/index.ts:76:4
   (f64.const -25.919314609987964)
   ;;@ assembly/index.ts:77:4
   (f64.const 0.17925877295037118)
   ;;@ assembly/index.ts:78:4
   (f64.mul
    (f64.const 2.6806777249038932e-03)
    ;;@ assembly/index.ts:78:30
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:79:4
   (f64.mul
    (f64.const 0.001628241700382423)
    ;;@ assembly/index.ts:79:30
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:80:4
   (f64.mul
    (f64.const -9.515922545197159e-05)
    ;;@ assembly/index.ts:80:31
    (f64.const 365.24)
   )
   ;;@ assembly/index.ts:81:4
   (f64.mul
    (f64.const 5.1513890204661145e-05)
    ;;@ assembly/index.ts:81:30
    (f64.const 39.47841760435743)
   )
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 8 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/internal/arraybuffer.ts:17:77
  (i32.shl
   ;;@ ~lib/internal/arraybuffer.ts:17:9
   (i32.const 1)
   ;;@ ~lib/internal/arraybuffer.ts:17:21
   (i32.sub
    ;;@ ~lib/internal/arraybuffer.ts:17:29
    (i32.const 32)
    ;;@ ~lib/internal/arraybuffer.ts:17:39
    (i32.clz
     ;;@ ~lib/internal/arraybuffer.ts:17:48
     (i32.sub
      (i32.add
       (get_local $0)
       ;;@ ~lib/internal/arraybuffer.ts:17:61
       (i32.const 8)
      )
      ;;@ ~lib/internal/arraybuffer.ts:17:75
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/allocUnsafe (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ ~lib/internal/arraybuffer.ts:22:2
  (if
   (i32.eqz
    ;;@ ~lib/internal/arraybuffer.ts:22:9
    (i32.le_u
     (get_local $0)
     ;;@ ~lib/internal/arraybuffer.ts:22:28
     (i32.const 1073741816)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 22)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:23:2
  (set_local $1
   ;;@ ~lib/internal/arraybuffer.ts:23:15
   (call $~lib/allocator/arena/allocate_memory
    ;;@ ~lib/internal/arraybuffer.ts:23:31
    (call $~lib/internal/arraybuffer/computeSize
     ;;@ ~lib/internal/arraybuffer.ts:23:43
     (get_local $0)
    )
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:24:2
  (i32.store
   ;;@ ~lib/internal/arraybuffer.ts:24:13
   (get_local $1)
   ;;@ ~lib/internal/arraybuffer.ts:24:21
   (get_local $0)
  )
  ;;@ ~lib/internal/arraybuffer.ts:25:39
  (get_local $1)
 )
 (func $~lib/memory/set_memory (; 10 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
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
  ;;@ ~lib/memory.ts:211:2
  (set_local $3
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
  ;;@ ~lib/memory.ts:212:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:212:10
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:213:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:213:7
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:214:2
  (set_local $2
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:214:7
    (i32.const -4)
   )
  )
  ;;@ ~lib/memory.ts:216:2
  (set_local $4
   ;;@ ~lib/memory.ts:216:17
   (i32.mul
    (i32.div_u
     (i32.const -1)
     ;;@ ~lib/memory.ts:216:27
     (i32.const 255)
    )
    (i32.and
     ;;@ ~lib/memory.ts:216:33
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  ;;@ ~lib/memory.ts:219:2
  (i32.store
   ;;@ ~lib/memory.ts:219:13
   (get_local $0)
   ;;@ ~lib/memory.ts:219:19
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:220:2
  (i32.store
   ;;@ ~lib/memory.ts:220:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:220:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:220:24
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:220:27
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
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
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:237:2
  (set_local $3
   ;;@ ~lib/memory.ts:237:6
   (i32.add
    (i32.const 24)
    ;;@ ~lib/memory.ts:237:11
    (i32.and
     ;;@ ~lib/memory.ts:237:12
     (get_local $0)
     ;;@ ~lib/memory.ts:237:19
     (i32.const 4)
    )
   )
  )
  ;;@ ~lib/memory.ts:238:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:238:10
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:239:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:239:7
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:242:2
  (set_local $5
   ;;@ ~lib/memory.ts:242:17
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    ;;@ ~lib/memory.ts:242:28
    (i64.shl
     ;;@ ~lib/memory.ts:242:29
     (i64.extend_u/i32
      (get_local $4)
     )
     ;;@ ~lib/memory.ts:242:41
     (i64.const 32)
    )
   )
  )
  ;;@ ~lib/memory.ts:243:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/memory.ts:243:9
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/memory.ts:243:14
      (i32.const 32)
     )
     (block
      (block
       ;;@ ~lib/memory.ts:244:4
       (i64.store
        ;;@ ~lib/memory.ts:244:15
        (get_local $0)
        ;;@ ~lib/memory.ts:244:21
        (get_local $5)
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
        (get_local $5)
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
        (get_local $5)
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
        (get_local $5)
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
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Body>#constructor (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/array.ts:24:4
  (set_local $2
   ;;@ ~lib/array.ts:24:21
   (i32.shl
    (get_local $1)
    ;;@ ~lib/array.ts:24:31
    (i32.const 2)
   )
  )
  ;;@ ~lib/array.ts:25:4
  (set_local $3
   ;;@ ~lib/array.ts:25:17
   (call $~lib/internal/arraybuffer/allocUnsafe
    ;;@ ~lib/array.ts:25:29
    (get_local $2)
   )
  )
  ;;@ ~lib/array.ts:26:4
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   ;;@ ~lib/array.ts:26:19
   (get_local $3)
  )
  ;;@ ~lib/array.ts:27:4
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/array.ts:27:19
   (get_local $1)
  )
  ;;@ ~lib/array.ts:28:4
  (call $~lib/memory/set_memory
   ;;@ ~lib/array.ts:29:6
   (i32.add
    (get_local $3)
    ;;@ ~lib/array.ts:29:34
    (i32.const 8)
   )
   ;;@ ~lib/array.ts:30:6
   (i32.const 0)
   ;;@ ~lib/array.ts:31:6
   (get_local $2)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Body>#__unchecked_set (; 12 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/array.ts:96:4
  (block $~lib/internal/arraybuffer/storeUnsafe<Body,Body>|inlined.0
   (set_local $3
    ;;@ ~lib/array.ts:96:21
    (i32.load
     (get_local $0)
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:69:2
   (i32.store offset=8
    ;;@ ~lib/internal/arraybuffer.ts:69:11
    (i32.add
     (get_local $3)
     ;;@ ~lib/internal/arraybuffer.ts:69:39
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:69:40
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:69:56
      (i32.const 2)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:69:71
    (get_local $2)
   )
  )
 )
 (func $~lib/array/Array<Body>#get:length (; 13 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/array.ts:36:16
  (i32.load offset=4
   ;;@ ~lib/array.ts:36:11
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Body>#__unchecked_get (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:77:46
  (block $~lib/internal/arraybuffer/loadUnsafe<Body,Body>|inlined.0 (result i32)
   (set_local $2
    ;;@ ~lib/array.ts:77:27
    (i32.load
     (get_local $0)
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:64:91
   (i32.load offset=8
    ;;@ ~lib/internal/arraybuffer.ts:64:20
    (i32.add
     (get_local $2)
     ;;@ ~lib/internal/arraybuffer.ts:64:48
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:64:49
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:64:65
      (i32.const 2)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Body>#__get (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:69:4
  (set_local $2
   ;;@ ~lib/array.ts:69:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:72:23
  (if (result i32)
   ;;@ ~lib/array.ts:70:11
   (i32.lt_u
    (get_local $1)
    ;;@ ~lib/array.ts:70:24
    (i32.shr_u
     ;;@ ~lib/array.ts:70:30
     (i32.load
      (get_local $2)
     )
     ;;@ ~lib/array.ts:70:52
     (i32.const 2)
    )
   )
   ;;@ ~lib/array.ts:71:8
   (block $~lib/internal/arraybuffer/loadUnsafe<Body,Body>|inlined.1 (result i32)
    ;;@ ~lib/internal/arraybuffer.ts:64:91
    (i32.load offset=8
     ;;@ ~lib/internal/arraybuffer.ts:64:20
     (i32.add
      (get_local $2)
      ;;@ ~lib/internal/arraybuffer.ts:64:48
      (i32.shl
       ;;@ ~lib/internal/arraybuffer.ts:64:49
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:64:65
       (i32.const 2)
      )
     )
    )
   )
   ;;@ ~lib/array.ts:72:8
   (unreachable)
  )
 )
 (func $assembly/index/Body#offsetMomentum (; 16 ;) (type $iFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  ;;@ assembly/index.ts:24:4
  (f64.store offset=24
   (get_local $0)
   ;;@ assembly/index.ts:24:14
   (f64.div
    (f64.neg
     ;;@ assembly/index.ts:24:15
     (get_local $1)
    )
    ;;@ assembly/index.ts:24:20
    (f64.const 39.47841760435743)
   )
  )
  ;;@ assembly/index.ts:25:4
  (f64.store offset=32
   (get_local $0)
   ;;@ assembly/index.ts:25:14
   (f64.div
    (f64.neg
     ;;@ assembly/index.ts:25:15
     (get_local $2)
    )
    ;;@ assembly/index.ts:25:20
    (f64.const 39.47841760435743)
   )
  )
  ;;@ assembly/index.ts:26:4
  (f64.store offset=40
   (get_local $0)
   ;;@ assembly/index.ts:26:14
   (f64.div
    (f64.neg
     ;;@ assembly/index.ts:26:15
     (get_local $3)
    )
    ;;@ assembly/index.ts:26:20
    (f64.const 39.47841760435743)
   )
  )
  ;;@ assembly/index.ts:27:11
  (get_local $0)
 )
 (func $assembly/index/NBodySystem#constructor (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  ;;@ assembly/index.ts:90:4
  (set_local $2
   ;;@ assembly/index.ts:90:20
   (f64.const 0)
  )
  ;;@ assembly/index.ts:91:4
  (set_local $3
   ;;@ assembly/index.ts:91:20
   (f64.const 0)
  )
  ;;@ assembly/index.ts:92:4
  (set_local $4
   ;;@ assembly/index.ts:92:20
   (f64.const 0)
  )
  ;;@ assembly/index.ts:93:4
  (set_local $5
   ;;@ assembly/index.ts:93:15
   (call $~lib/array/Array<Body>#get:length
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:94:4
  (block $break|0
   ;;@ assembly/index.ts:94:9
   (set_local $6
    ;;@ assembly/index.ts:94:17
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:94:20
      (i32.lt_s
       (get_local $6)
       ;;@ assembly/index.ts:94:24
       (get_local $5)
      )
     )
    )
    ;;@ assembly/index.ts:94:35
    (block
     ;;@ assembly/index.ts:95:6
     (set_local $7
      ;;@ assembly/index.ts:95:14
      (call $~lib/array/Array<Body>#__unchecked_get
       ;;@ assembly/index.ts:95:24
       (get_local $1)
       ;;@ assembly/index.ts:95:31
       (get_local $6)
      )
     )
     ;;@ assembly/index.ts:96:6
     (set_local $8
      ;;@ assembly/index.ts:96:14
      (f64.load offset=48
       (get_local $7)
      )
     )
     ;;@ assembly/index.ts:97:6
     (set_local $2
      (f64.add
       (get_local $2)
       ;;@ assembly/index.ts:97:12
       (f64.mul
        (f64.load offset=24
         (get_local $7)
        )
        ;;@ assembly/index.ts:97:19
        (get_local $8)
       )
      )
     )
     ;;@ assembly/index.ts:98:6
     (set_local $3
      (f64.add
       (get_local $3)
       ;;@ assembly/index.ts:98:12
       (f64.mul
        (f64.load offset=32
         (get_local $7)
        )
        ;;@ assembly/index.ts:98:19
        (get_local $8)
       )
      )
     )
     ;;@ assembly/index.ts:99:6
     (set_local $4
      (f64.add
       (get_local $4)
       ;;@ assembly/index.ts:99:12
       (f64.mul
        (f64.load offset=40
         (get_local $7)
        )
        ;;@ assembly/index.ts:99:19
        (get_local $8)
       )
      )
     )
    )
    ;;@ assembly/index.ts:94:30
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/index.ts:101:14
  (drop
   (call $assembly/index/Body#offsetMomentum
    ;;@ assembly/index.ts:101:4
    (call $~lib/array/Array<Body>#__get
     (get_local $1)
     ;;@ assembly/index.ts:101:11
     (i32.const 0)
    )
    ;;@ assembly/index.ts:101:29
    (get_local $2)
    ;;@ assembly/index.ts:101:33
    (get_local $3)
    ;;@ assembly/index.ts:101:37
    (get_local $4)
   )
  )
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $6
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 4)
       )
      )
      (i32.store
       (get_local $6)
       (get_local $1)
      )
      (get_local $6)
     )
    )
   )
  )
 )
 (func $assembly/index/init (; 18 ;) (type $v)
  (local $0 i32)
  ;;@ assembly/index.ts:191:2
  (set_global $assembly/index/system
   ;;@ assembly/index.ts:191:11
   (call $assembly/index/NBodySystem#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:191:27
    (block (result i32)
     (set_local $0
      (call $~lib/array/Array<Body>#constructor
       (i32.const 0)
       (i32.const 5)
      )
     )
     (call $~lib/array/Array<Body>#__unchecked_set
      (get_local $0)
      (i32.const 0)
      ;;@ assembly/index.ts:192:4
      (call $assembly/index/Sun)
     )
     (call $~lib/array/Array<Body>#__unchecked_set
      (get_local $0)
      (i32.const 1)
      ;;@ assembly/index.ts:193:4
      (call $assembly/index/Jupiter)
     )
     (call $~lib/array/Array<Body>#__unchecked_set
      (get_local $0)
      (i32.const 2)
      ;;@ assembly/index.ts:194:4
      (call $assembly/index/Saturn)
     )
     (call $~lib/array/Array<Body>#__unchecked_set
      (get_local $0)
      (i32.const 3)
      ;;@ assembly/index.ts:195:4
      (call $assembly/index/Uranus)
     )
     (call $~lib/array/Array<Body>#__unchecked_set
      (get_local $0)
      (i32.const 4)
      ;;@ assembly/index.ts:196:4
      (call $assembly/index/Neptune)
     )
     (get_local $0)
    )
   )
  )
 )
 (func $assembly/index/getBody (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/index.ts:201:2
  (set_local $1
   ;;@ assembly/index.ts:201:15
   (i32.load
    (get_global $assembly/index/system)
   )
  )
  ;;@ assembly/index.ts:202:59
  (if (result i32)
   ;;@ assembly/index.ts:202:9
   (i32.lt_u
    (get_local $0)
    ;;@ assembly/index.ts:202:22
    (call $~lib/array/Array<Body>#get:length
     ;;@ assembly/index.ts:202:27
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:202:43
   (call $~lib/array/Array<Body>#__get
    (get_local $1)
    ;;@ assembly/index.ts:202:50
    (get_local $0)
   )
   ;;@ assembly/index.ts:202:59
   (i32.const 0)
  )
 )
 (func $assembly/index/NBodySystem#advance (; 20 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
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
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  ;;@ assembly/index.ts:105:4
  (set_local $2
   ;;@ assembly/index.ts:105:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:106:4
  (set_local $3
   ;;@ assembly/index.ts:106:20
   (call $~lib/array/Array<Body>#get:length
    (get_local $2)
   )
  )
  ;;@ assembly/index.ts:109:4
  (block $break|0
   ;;@ assembly/index.ts:109:9
   (set_local $4
    ;;@ assembly/index.ts:109:22
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:109:25
      (i32.lt_u
       (get_local $4)
       ;;@ assembly/index.ts:109:29
       (get_local $3)
      )
     )
    )
    ;;@ assembly/index.ts:109:40
    (block
     ;;@ assembly/index.ts:110:6
     (set_local $5
      ;;@ assembly/index.ts:110:18
      (call $~lib/array/Array<Body>#__unchecked_get
       ;;@ assembly/index.ts:110:28
       (get_local $2)
       ;;@ assembly/index.ts:110:35
       (get_local $4)
      )
     )
     ;;@ assembly/index.ts:113:6
     (set_local $6
      ;;@ assembly/index.ts:113:15
      (f64.load
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:114:6
     (set_local $7
      ;;@ assembly/index.ts:114:15
      (f64.load offset=8
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:115:6
     (set_local $8
      ;;@ assembly/index.ts:115:15
      (f64.load offset=16
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:117:6
     (set_local $9
      ;;@ assembly/index.ts:117:17
      (f64.load offset=24
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:118:6
     (set_local $10
      ;;@ assembly/index.ts:118:17
      (f64.load offset=32
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:119:6
     (set_local $11
      ;;@ assembly/index.ts:119:17
      (f64.load offset=40
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:121:6
     (set_local $12
      ;;@ assembly/index.ts:121:19
      (f64.load offset=48
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:122:6
     (block $break|1
      ;;@ assembly/index.ts:122:11
      (set_local $13
       ;;@ assembly/index.ts:122:24
       (i32.add
        (get_local $4)
        ;;@ assembly/index.ts:122:28
        (i32.const 1)
       )
      )
      (loop $repeat|1
       (br_if $break|1
        (i32.eqz
         ;;@ assembly/index.ts:122:31
         (i32.lt_u
          (get_local $13)
          ;;@ assembly/index.ts:122:35
          (get_local $3)
         )
        )
       )
       ;;@ assembly/index.ts:122:46
       (block
        ;;@ assembly/index.ts:123:8
        (set_local $14
         ;;@ assembly/index.ts:123:20
         (call $~lib/array/Array<Body>#__unchecked_get
          ;;@ assembly/index.ts:123:30
          (get_local $2)
          ;;@ assembly/index.ts:123:37
          (get_local $13)
         )
        )
        ;;@ assembly/index.ts:126:8
        (set_local $15
         ;;@ assembly/index.ts:126:17
         (f64.sub
          (get_local $6)
          ;;@ assembly/index.ts:126:22
          (f64.load
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:127:8
        (set_local $16
         ;;@ assembly/index.ts:127:17
         (f64.sub
          (get_local $7)
          ;;@ assembly/index.ts:127:22
          (f64.load offset=8
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:128:8
        (set_local $17
         ;;@ assembly/index.ts:128:17
         (f64.sub
          (get_local $8)
          ;;@ assembly/index.ts:128:22
          (f64.load offset=16
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:130:8
        (set_local $18
         ;;@ assembly/index.ts:130:25
         (f64.add
          (f64.add
           (f64.mul
            (get_local $15)
            ;;@ assembly/index.ts:130:30
            (get_local $15)
           )
           ;;@ assembly/index.ts:130:35
           (f64.mul
            (get_local $16)
            ;;@ assembly/index.ts:130:40
            (get_local $16)
           )
          )
          ;;@ assembly/index.ts:130:45
          (f64.mul
           (get_local $17)
           ;;@ assembly/index.ts:130:50
           (get_local $17)
          )
         )
        )
        ;;@ assembly/index.ts:131:8
        (set_local $19
         ;;@ assembly/index.ts:131:23
         (block $~lib/math/NativeMath.sqrt|inlined.0 (result f64)
          ;;@ ~lib/math.ts:1076:30
          (f64.sqrt
           ;;@ ~lib/math.ts:1076:29
           (get_local $18)
          )
         )
        )
        ;;@ assembly/index.ts:132:8
        (set_local $20
         ;;@ assembly/index.ts:132:18
         (f64.div
          (get_local $1)
          ;;@ assembly/index.ts:132:23
          (f64.mul
           ;;@ assembly/index.ts:132:24
           (get_local $18)
           ;;@ assembly/index.ts:132:37
           (get_local $19)
          )
         )
        )
        ;;@ assembly/index.ts:134:8
        (set_local $21
         ;;@ assembly/index.ts:134:18
         (f64.mul
          (get_local $12)
          ;;@ assembly/index.ts:134:27
          (get_local $20)
         )
        )
        ;;@ assembly/index.ts:135:8
        (set_local $22
         ;;@ assembly/index.ts:135:18
         (f64.mul
          (f64.load offset=48
           (get_local $14)
          )
          ;;@ assembly/index.ts:135:31
          (get_local $20)
         )
        )
        ;;@ assembly/index.ts:137:8
        (set_local $9
         (f64.sub
          (get_local $9)
          ;;@ assembly/index.ts:137:16
          (f64.mul
           (get_local $15)
           ;;@ assembly/index.ts:137:21
           (get_local $22)
          )
         )
        )
        ;;@ assembly/index.ts:138:8
        (set_local $10
         (f64.sub
          (get_local $10)
          ;;@ assembly/index.ts:138:16
          (f64.mul
           (get_local $16)
           ;;@ assembly/index.ts:138:21
           (get_local $22)
          )
         )
        )
        ;;@ assembly/index.ts:139:8
        (set_local $11
         (f64.sub
          (get_local $11)
          ;;@ assembly/index.ts:139:16
          (f64.mul
           (get_local $17)
           ;;@ assembly/index.ts:139:21
           (get_local $22)
          )
         )
        )
        ;;@ assembly/index.ts:141:8
        (f64.store offset=24
         (get_local $14)
         (f64.add
          (f64.load offset=24
           (get_local $14)
          )
          ;;@ assembly/index.ts:141:20
          (f64.mul
           (get_local $15)
           ;;@ assembly/index.ts:141:25
           (get_local $21)
          )
         )
        )
        ;;@ assembly/index.ts:142:8
        (f64.store offset=32
         (get_local $14)
         (f64.add
          (f64.load offset=32
           (get_local $14)
          )
          ;;@ assembly/index.ts:142:20
          (f64.mul
           (get_local $16)
           ;;@ assembly/index.ts:142:25
           (get_local $21)
          )
         )
        )
        ;;@ assembly/index.ts:143:8
        (f64.store offset=40
         (get_local $14)
         (f64.add
          (f64.load offset=40
           (get_local $14)
          )
          ;;@ assembly/index.ts:143:20
          (f64.mul
           (get_local $17)
           ;;@ assembly/index.ts:143:25
           (get_local $21)
          )
         )
        )
       )
       ;;@ assembly/index.ts:122:41
       (set_local $13
        (i32.add
         ;;@ assembly/index.ts:122:43
         (get_local $13)
         (i32.const 1)
        )
       )
       (br $repeat|1)
      )
     )
     ;;@ assembly/index.ts:146:6
     (f64.store offset=24
      (get_local $5)
      ;;@ assembly/index.ts:146:17
      (get_local $9)
     )
     ;;@ assembly/index.ts:147:6
     (f64.store offset=32
      (get_local $5)
      ;;@ assembly/index.ts:147:17
      (get_local $10)
     )
     ;;@ assembly/index.ts:148:6
     (f64.store offset=40
      (get_local $5)
      ;;@ assembly/index.ts:148:17
      (get_local $11)
     )
     ;;@ assembly/index.ts:150:6
     (f64.store
      (get_local $5)
      (f64.add
       (f64.load
        (get_local $5)
       )
       ;;@ assembly/index.ts:150:17
       (f64.mul
        (get_local $1)
        ;;@ assembly/index.ts:150:22
        (get_local $9)
       )
      )
     )
     ;;@ assembly/index.ts:151:6
     (f64.store offset=8
      (get_local $5)
      (f64.add
       (f64.load offset=8
        (get_local $5)
       )
       ;;@ assembly/index.ts:151:17
       (f64.mul
        (get_local $1)
        ;;@ assembly/index.ts:151:22
        (get_local $10)
       )
      )
     )
     ;;@ assembly/index.ts:152:6
     (f64.store offset=16
      (get_local $5)
      (f64.add
       (f64.load offset=16
        (get_local $5)
       )
       ;;@ assembly/index.ts:152:17
       (f64.mul
        (get_local $1)
        ;;@ assembly/index.ts:152:22
        (get_local $11)
       )
      )
     )
    )
    ;;@ assembly/index.ts:109:35
    (set_local $4
     (i32.add
      ;;@ assembly/index.ts:109:37
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $assembly/index/NBodySystem#energy (; 21 ;) (type $iF) (param $0 i32) (result f64)
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
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  ;;@ assembly/index.ts:157:4
  (set_local $1
   ;;@ assembly/index.ts:157:19
   (f64.const 0)
  )
  ;;@ assembly/index.ts:158:4
  (set_local $2
   ;;@ assembly/index.ts:158:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:160:4
  (block $break|0
   (block
    (set_local $3
     ;;@ assembly/index.ts:160:22
     (i32.const 0)
    )
    (set_local $4
     ;;@ assembly/index.ts:160:37
     (call $~lib/array/Array<Body>#get:length
      (get_local $2)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:160:52
      (i32.lt_u
       (get_local $3)
       ;;@ assembly/index.ts:160:56
       (get_local $4)
      )
     )
    )
    ;;@ assembly/index.ts:160:67
    (block
     ;;@ assembly/index.ts:161:6
     (set_local $5
      ;;@ assembly/index.ts:161:18
      (call $~lib/array/Array<Body>#__unchecked_get
       ;;@ assembly/index.ts:161:28
       (get_local $2)
       ;;@ assembly/index.ts:161:35
       (get_local $3)
      )
     )
     ;;@ assembly/index.ts:163:6
     (set_local $6
      ;;@ assembly/index.ts:163:15
      (f64.load
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:164:6
     (set_local $7
      ;;@ assembly/index.ts:164:15
      (f64.load offset=8
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:165:6
     (set_local $8
      ;;@ assembly/index.ts:165:15
      (f64.load offset=16
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:167:6
     (set_local $9
      ;;@ assembly/index.ts:167:15
      (f64.load offset=24
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:168:6
     (set_local $10
      ;;@ assembly/index.ts:168:15
      (f64.load offset=32
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:169:6
     (set_local $11
      ;;@ assembly/index.ts:169:15
      (f64.load offset=40
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:171:6
     (set_local $12
      ;;@ assembly/index.ts:171:16
      (f64.load offset=48
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:173:6
     (set_local $1
      (f64.add
       (get_local $1)
       ;;@ assembly/index.ts:173:11
       (f64.mul
        (f64.mul
         (f64.const 0.5)
         ;;@ assembly/index.ts:173:17
         (get_local $12)
        )
        ;;@ assembly/index.ts:173:23
        (f64.add
         ;;@ assembly/index.ts:173:24
         (f64.add
          (f64.mul
           (get_local $9)
           ;;@ assembly/index.ts:173:29
           (get_local $9)
          )
          ;;@ assembly/index.ts:173:34
          (f64.mul
           (get_local $10)
           ;;@ assembly/index.ts:173:39
           (get_local $10)
          )
         )
         ;;@ assembly/index.ts:173:44
         (f64.mul
          (get_local $11)
          ;;@ assembly/index.ts:173:49
          (get_local $11)
         )
        )
       )
      )
     )
     ;;@ assembly/index.ts:175:6
     (block $break|1
      ;;@ assembly/index.ts:175:11
      (set_local $13
       ;;@ assembly/index.ts:175:24
       (i32.add
        (get_local $3)
        ;;@ assembly/index.ts:175:28
        (i32.const 1)
       )
      )
      (loop $repeat|1
       (br_if $break|1
        (i32.eqz
         ;;@ assembly/index.ts:175:31
         (i32.lt_u
          (get_local $13)
          ;;@ assembly/index.ts:175:35
          (get_local $4)
         )
        )
       )
       ;;@ assembly/index.ts:175:46
       (block
        ;;@ assembly/index.ts:176:8
        (set_local $14
         ;;@ assembly/index.ts:176:20
         (call $~lib/array/Array<Body>#__unchecked_get
          ;;@ assembly/index.ts:176:30
          (get_local $2)
          ;;@ assembly/index.ts:176:37
          (get_local $13)
         )
        )
        ;;@ assembly/index.ts:177:8
        (set_local $15
         ;;@ assembly/index.ts:177:17
         (f64.sub
          (get_local $6)
          ;;@ assembly/index.ts:177:22
          (f64.load
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:178:8
        (set_local $16
         ;;@ assembly/index.ts:178:17
         (f64.sub
          (get_local $7)
          ;;@ assembly/index.ts:178:22
          (f64.load offset=8
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:179:8
        (set_local $17
         ;;@ assembly/index.ts:179:17
         (f64.sub
          (get_local $8)
          ;;@ assembly/index.ts:179:22
          (f64.load offset=16
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:180:8
        (set_local $18
         ;;@ assembly/index.ts:180:23
         (block $~lib/math/NativeMath.sqrt|inlined.1 (result f64)
          (set_local $18
           ;;@ assembly/index.ts:180:40
           (f64.add
            (f64.add
             (f64.mul
              (get_local $15)
              ;;@ assembly/index.ts:180:45
              (get_local $15)
             )
             ;;@ assembly/index.ts:180:50
             (f64.mul
              (get_local $16)
              ;;@ assembly/index.ts:180:55
              (get_local $16)
             )
            )
            ;;@ assembly/index.ts:180:60
            (f64.mul
             (get_local $17)
             ;;@ assembly/index.ts:180:65
             (get_local $17)
            )
           )
          )
          ;;@ ~lib/math.ts:1076:30
          (f64.sqrt
           ;;@ ~lib/math.ts:1076:29
           (get_local $18)
          )
         )
        )
        ;;@ assembly/index.ts:181:8
        (set_local $1
         (f64.sub
          (get_local $1)
          ;;@ assembly/index.ts:181:13
          (f64.div
           (f64.mul
            (get_local $12)
            ;;@ assembly/index.ts:181:19
            (f64.load offset=48
             (get_local $14)
            )
           )
           ;;@ assembly/index.ts:181:32
           (get_local $18)
          )
         )
        )
       )
       ;;@ assembly/index.ts:175:41
       (set_local $13
        (i32.add
         ;;@ assembly/index.ts:175:43
         (get_local $13)
         (i32.const 1)
        )
       )
       (br $repeat|1)
      )
     )
    )
    ;;@ assembly/index.ts:160:62
    (set_local $3
     (i32.add
      ;;@ assembly/index.ts:160:64
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/index.ts:184:11
  (get_local $1)
 )
 (func $assembly/index/step (; 22 ;) (type $F) (result f64)
  ;;@ assembly/index.ts:206:9
  (call $assembly/index/NBodySystem#advance
   ;;@ assembly/index.ts:206:2
   (get_global $assembly/index/system)
   ;;@ assembly/index.ts:206:17
   (f64.const 0.01)
  )
  ;;@ assembly/index.ts:207:23
  (call $assembly/index/NBodySystem#energy
   ;;@ assembly/index.ts:207:9
   (get_global $assembly/index/system)
  )
 )
 (func $assembly/index/bench (; 23 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  ;;@ assembly/index.ts:211:2
  (block $break|0
   ;;@ assembly/index.ts:211:7
   (set_local $1
    ;;@ assembly/index.ts:211:20
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:211:23
      (i32.lt_u
       (get_local $1)
       ;;@ assembly/index.ts:211:27
       (get_local $0)
      )
     )
    )
    ;;@ assembly/index.ts:211:46
    (call $assembly/index/NBodySystem#advance
     ;;@ assembly/index.ts:211:39
     (get_global $assembly/index/system)
     ;;@ assembly/index.ts:211:54
     (f64.const 0.01)
    )
    ;;@ assembly/index.ts:211:34
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $start (; 24 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   ;;@ ~lib/allocator/arena.ts:12:25
   (i32.and
    (i32.add
     ;;@ ~lib/allocator/arena.ts:12:26
     (get_global $HEAP_BASE)
     ;;@ ~lib/allocator/arena.ts:12:38
     (i32.const 7)
    )
    ;;@ ~lib/allocator/arena.ts:12:49
    (i32.xor
     ;;@ ~lib/allocator/arena.ts:12:50
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   ;;@ ~lib/allocator/arena.ts:13:20
   (get_global $~lib/allocator/arena/startOffset)
  )
  (nop)
 )
)
