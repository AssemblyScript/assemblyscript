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
 (import "env" "memory" (memory $0 1))
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $assembly/index/SOLAR_MASS f64 (f64.const 39.47841760435743))
 (global $assembly/index/DAYS_PER_YEAR f64 (f64.const 365.24))
 (global $assembly/index/system (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $HEAP_BASE i32 (i32.const 100))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "bench" (func $assembly/index/bench))
 (export "getBody" (func $assembly/index/getBody))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ ~lib/allocator/arena.ts:18:2
  (if
   ;;@ ~lib/allocator/arena.ts:18:6
   (i32.gt_u
    (get_local $0)
    ;;@ ~lib/allocator/arena.ts:18:13
    (get_global $~lib/internal/allocator/MAX_SIZE_32)
   )
   ;;@ ~lib/allocator/arena.ts:18:26
   (unreachable)
  )
  ;;@ ~lib/allocator/arena.ts:19:2
  (set_local $1
   ;;@ ~lib/allocator/arena.ts:19:12
   (get_global $~lib/allocator/arena/offset)
  )
  ;;@ ~lib/allocator/arena.ts:20:2
  (set_local $4
   ;;@ ~lib/allocator/arena.ts:20:15
   (i32.and
    (i32.add
     ;;@ ~lib/allocator/arena.ts:20:16
     (i32.add
      (get_local $1)
      ;;@ ~lib/allocator/arena.ts:20:22
      (select
       (tee_local $2
        ;;@ ~lib/allocator/arena.ts:20:33
        (get_local $0)
       )
       (tee_local $3
        ;;@ ~lib/allocator/arena.ts:20:39
        (i32.const 1)
       )
       (i32.gt_u
        (get_local $2)
        (get_local $3)
       )
      )
     )
     ;;@ ~lib/allocator/arena.ts:20:44
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    ;;@ ~lib/allocator/arena.ts:20:55
    (i32.xor
     ;;@ ~lib/allocator/arena.ts:20:56
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  ;;@ ~lib/allocator/arena.ts:21:2
  (set_local $5
   ;;@ ~lib/allocator/arena.ts:21:27
   (current_memory)
  )
  ;;@ ~lib/allocator/arena.ts:22:2
  (if
   ;;@ ~lib/allocator/arena.ts:22:6
   (i32.gt_u
    (get_local $4)
    ;;@ ~lib/allocator/arena.ts:22:15
    (i32.shl
     (get_local $5)
     ;;@ ~lib/allocator/arena.ts:22:37
     (i32.const 16)
    )
   )
   ;;@ ~lib/allocator/arena.ts:22:41
   (block
    ;;@ ~lib/allocator/arena.ts:23:4
    (set_local $2
     ;;@ ~lib/allocator/arena.ts:23:22
     (i32.shr_u
      (i32.and
       ;;@ ~lib/allocator/arena.ts:23:23
       (i32.add
        ;;@ ~lib/allocator/arena.ts:23:24
        (i32.sub
         (get_local $4)
         ;;@ ~lib/allocator/arena.ts:23:33
         (get_local $1)
        )
        ;;@ ~lib/allocator/arena.ts:23:39
        (i32.const 65535)
       )
       ;;@ ~lib/allocator/arena.ts:23:49
       (i32.xor
        ;;@ ~lib/allocator/arena.ts:23:50
        (i32.const 65535)
        (i32.const -1)
       )
      )
      ;;@ ~lib/allocator/arena.ts:23:62
      (i32.const 16)
     )
    )
    ;;@ ~lib/allocator/arena.ts:24:4
    (set_local $3
     ;;@ ~lib/allocator/arena.ts:24:22
     (select
      (tee_local $3
       ;;@ ~lib/allocator/arena.ts:24:26
       (get_local $5)
      )
      (tee_local $6
       ;;@ ~lib/allocator/arena.ts:24:39
       (get_local $2)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $6)
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:25:4
    (if
     ;;@ ~lib/allocator/arena.ts:25:8
     (i32.lt_s
      ;;@ ~lib/allocator/arena.ts:25:15
      (grow_memory
       ;;@ ~lib/allocator/arena.ts:25:20
       (get_local $3)
      )
      ;;@ ~lib/allocator/arena.ts:25:35
      (i32.const 0)
     )
     ;;@ ~lib/allocator/arena.ts:25:38
     (if
      ;;@ ~lib/allocator/arena.ts:26:10
      (i32.lt_s
       ;;@ ~lib/allocator/arena.ts:26:17
       (grow_memory
        ;;@ ~lib/allocator/arena.ts:26:22
        (get_local $2)
       )
       ;;@ ~lib/allocator/arena.ts:26:37
       (i32.const 0)
      )
      ;;@ ~lib/allocator/arena.ts:26:40
      (unreachable)
     )
    )
   )
  )
  ;;@ ~lib/allocator/arena.ts:31:2
  (set_global $~lib/allocator/arena/offset
   ;;@ ~lib/allocator/arena.ts:31:11
   (get_local $4)
  )
  ;;@ ~lib/allocator/arena.ts:32:9
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/memory.ts:41:4
  (return
   ;;@ ~lib/memory.ts:41:45
   (call $~lib/allocator/arena/__memory_allocate
    ;;@ ~lib/memory.ts:41:63
    (get_local $0)
   )
  )
 )
 (func $assembly/index/Body#constructor (; 3 ;) (type $iFFFFFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (param $7 f64) (result i32)
  (local $8 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $8
       (call $~lib/memory/memory.allocate
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
 (func $assembly/index/Sun (; 4 ;) (type $i) (result i32)
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
   (get_global $assembly/index/SOLAR_MASS)
  )
 )
 (func $assembly/index/Jupiter (; 5 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:46:2
  (call $assembly/index/Body#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:39:5
   (f64.const 4.841431442464721)
   ;;@ assembly/index.ts:40:4
   (f64.const -1.1603200440274284)
   ;;@ assembly/index.ts:41:4
   (f64.const -0.10362204447112311)
   ;;@ assembly/index.ts:42:5
   (f64.mul
    (f64.const 0.001660076642744037)
    ;;@ assembly/index.ts:42:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:43:5
   (f64.mul
    (f64.const 0.007699011184197404)
    ;;@ assembly/index.ts:43:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:44:4
   (f64.mul
    (f64.const -6.90460016972063e-05)
    ;;@ assembly/index.ts:44:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:45:5
   (f64.mul
    (f64.const 9.547919384243266e-04)
    ;;@ assembly/index.ts:45:31
    (get_global $assembly/index/SOLAR_MASS)
   )
  )
 )
 (func $assembly/index/Saturn (; 6 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:58:2
  (call $assembly/index/Body#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:51:5
   (f64.const 8.34336671824458)
   ;;@ assembly/index.ts:52:5
   (f64.const 4.124798564124305)
   ;;@ assembly/index.ts:53:4
   (f64.const -0.4035234171143214)
   ;;@ assembly/index.ts:54:4
   (f64.mul
    (f64.const -0.002767425107268624)
    ;;@ assembly/index.ts:54:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:55:5
   (f64.mul
    (f64.const 0.004998528012349172)
    ;;@ assembly/index.ts:55:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:56:5
   (f64.mul
    (f64.const 2.3041729757376393e-05)
    ;;@ assembly/index.ts:56:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:57:5
   (f64.mul
    (f64.const 2.858859806661308e-04)
    ;;@ assembly/index.ts:57:31
    (get_global $assembly/index/SOLAR_MASS)
   )
  )
 )
 (func $assembly/index/Uranus (; 7 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:70:2
  (call $assembly/index/Body#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:63:5
   (f64.const 12.894369562139131)
   ;;@ assembly/index.ts:64:4
   (f64.const -15.111151401698631)
   ;;@ assembly/index.ts:65:4
   (f64.const -0.22330757889265573)
   ;;@ assembly/index.ts:66:5
   (f64.mul
    (f64.const 0.002964601375647616)
    ;;@ assembly/index.ts:66:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:67:5
   (f64.mul
    (f64.const 2.3784717395948095e-03)
    ;;@ assembly/index.ts:67:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:68:4
   (f64.mul
    (f64.const -2.9658956854023756e-05)
    ;;@ assembly/index.ts:68:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:69:5
   (f64.mul
    (f64.const 4.366244043351563e-05)
    ;;@ assembly/index.ts:69:31
    (get_global $assembly/index/SOLAR_MASS)
   )
  )
 )
 (func $assembly/index/Neptune (; 8 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:82:2
  (call $assembly/index/Body#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:75:5
   (f64.const 15.379697114850917)
   ;;@ assembly/index.ts:76:4
   (f64.const -25.919314609987964)
   ;;@ assembly/index.ts:77:5
   (f64.const 0.17925877295037118)
   ;;@ assembly/index.ts:78:5
   (f64.mul
    (f64.const 2.6806777249038932e-03)
    ;;@ assembly/index.ts:78:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:79:5
   (f64.mul
    (f64.const 0.001628241700382423)
    ;;@ assembly/index.ts:79:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:80:4
   (f64.mul
    (f64.const -9.515922545197159e-05)
    ;;@ assembly/index.ts:80:31
    (get_global $assembly/index/DAYS_PER_YEAR)
   )
   ;;@ assembly/index.ts:81:5
   (f64.mul
    (f64.const 5.1513890204661145e-05)
    ;;@ assembly/index.ts:81:31
    (get_global $assembly/index/SOLAR_MASS)
   )
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 9 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/internal/arraybuffer.ts:15:77
  (i32.shl
   ;;@ ~lib/internal/arraybuffer.ts:15:9
   (i32.const 1)
   ;;@ ~lib/internal/arraybuffer.ts:15:21
   (i32.sub
    ;;@ ~lib/internal/arraybuffer.ts:15:29
    (i32.const 32)
    ;;@ ~lib/internal/arraybuffer.ts:15:39
    (i32.clz
     ;;@ ~lib/internal/arraybuffer.ts:15:48
     (i32.sub
      (i32.add
       (get_local $0)
       ;;@ ~lib/internal/arraybuffer.ts:15:61
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      ;;@ ~lib/internal/arraybuffer.ts:15:75
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/internal/arraybuffer.ts:23:2
  (if
   (i32.eqz
    ;;@ ~lib/internal/arraybuffer.ts:23:9
    (i32.le_u
     (get_local $0)
     ;;@ ~lib/internal/arraybuffer.ts:23:28
     (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:25:2
  (set_local $1
   ;;@ ~lib/internal/arraybuffer.ts:28:20
   (block $~lib/memory/memory.allocate|inlined.0 (result i32)
    (set_local $2
     ;;@ ~lib/internal/arraybuffer.ts:28:29
     (call $~lib/internal/arraybuffer/computeSize
      ;;@ ~lib/internal/arraybuffer.ts:28:41
      (get_local $0)
     )
    )
    ;;@ ~lib/memory.ts:41:4
    (br $~lib/memory/memory.allocate|inlined.0
     ;;@ ~lib/memory.ts:41:45
     (call $~lib/allocator/arena/__memory_allocate
      ;;@ ~lib/memory.ts:41:63
      (get_local $2)
     )
    )
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:30:2
  (i32.store
   ;;@ ~lib/internal/arraybuffer.ts:30:13
   (get_local $1)
   ;;@ ~lib/internal/arraybuffer.ts:30:21
   (get_local $0)
  )
  ;;@ ~lib/internal/arraybuffer.ts:31:39
  (get_local $1)
 )
 (func $~lib/internal/memory/memset (; 11 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  ;;@ ~lib/internal/memory.ts:191:2
  (if
   ;;@ ~lib/internal/memory.ts:191:6
   (i32.eqz
    ;;@ ~lib/internal/memory.ts:191:7
    (get_local $2)
   )
   ;;@ ~lib/internal/memory.ts:191:10
   (return)
  )
  ;;@ ~lib/internal/memory.ts:192:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:192:12
   (get_local $0)
   ;;@ ~lib/internal/memory.ts:192:18
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:193:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:193:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:193:19
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:193:23
    (i32.const 1)
   )
   ;;@ ~lib/internal/memory.ts:193:26
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:194:2
  (if
   ;;@ ~lib/internal/memory.ts:194:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:194:11
    (i32.const 2)
   )
   ;;@ ~lib/internal/memory.ts:194:14
   (return)
  )
  ;;@ ~lib/internal/memory.ts:196:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:196:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:196:19
    (i32.const 1)
   )
   ;;@ ~lib/internal/memory.ts:196:22
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:197:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:197:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:197:19
    (i32.const 2)
   )
   ;;@ ~lib/internal/memory.ts:197:22
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:198:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:198:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:198:19
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:198:23
    (i32.const 2)
   )
   ;;@ ~lib/internal/memory.ts:198:26
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:199:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:199:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:199:19
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:199:23
    (i32.const 3)
   )
   ;;@ ~lib/internal/memory.ts:199:26
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:200:2
  (if
   ;;@ ~lib/internal/memory.ts:200:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:200:11
    (i32.const 6)
   )
   ;;@ ~lib/internal/memory.ts:200:14
   (return)
  )
  ;;@ ~lib/internal/memory.ts:201:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:201:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:201:19
    (i32.const 3)
   )
   ;;@ ~lib/internal/memory.ts:201:22
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:202:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:202:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:202:19
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:202:23
    (i32.const 4)
   )
   ;;@ ~lib/internal/memory.ts:202:26
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:203:2
  (if
   ;;@ ~lib/internal/memory.ts:203:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:203:11
    (i32.const 8)
   )
   ;;@ ~lib/internal/memory.ts:203:14
   (return)
  )
  ;;@ ~lib/internal/memory.ts:206:2
  (set_local $3
   ;;@ ~lib/internal/memory.ts:206:17
   (i32.and
    (i32.sub
     (i32.const 0)
     ;;@ ~lib/internal/memory.ts:206:18
     (get_local $0)
    )
    ;;@ ~lib/internal/memory.ts:206:25
    (i32.const 3)
   )
  )
  ;;@ ~lib/internal/memory.ts:207:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:207:10
    (get_local $3)
   )
  )
  ;;@ ~lib/internal/memory.ts:208:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:208:7
    (get_local $3)
   )
  )
  ;;@ ~lib/internal/memory.ts:209:2
  (set_local $2
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:209:7
    (i32.const -4)
   )
  )
  ;;@ ~lib/internal/memory.ts:211:2
  (set_local $4
   ;;@ ~lib/internal/memory.ts:211:17
   (i32.mul
    (i32.div_u
     (i32.const -1)
     ;;@ ~lib/internal/memory.ts:211:27
     (i32.const 255)
    )
    (i32.and
     ;;@ ~lib/internal/memory.ts:211:33
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  ;;@ ~lib/internal/memory.ts:214:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:214:13
   (get_local $0)
   ;;@ ~lib/internal/memory.ts:214:19
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:215:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:215:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:215:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:215:24
    (i32.const 4)
   )
   ;;@ ~lib/internal/memory.ts:215:27
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:216:2
  (if
   ;;@ ~lib/internal/memory.ts:216:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:216:11
    (i32.const 8)
   )
   ;;@ ~lib/internal/memory.ts:216:14
   (return)
  )
  ;;@ ~lib/internal/memory.ts:217:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:217:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:217:20
    (i32.const 4)
   )
   ;;@ ~lib/internal/memory.ts:217:23
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:218:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:218:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:218:20
    (i32.const 8)
   )
   ;;@ ~lib/internal/memory.ts:218:23
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:219:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:219:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:219:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:219:24
    (i32.const 12)
   )
   ;;@ ~lib/internal/memory.ts:219:28
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:220:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:220:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:220:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:220:24
    (i32.const 8)
   )
   ;;@ ~lib/internal/memory.ts:220:27
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:221:2
  (if
   ;;@ ~lib/internal/memory.ts:221:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:221:11
    (i32.const 24)
   )
   ;;@ ~lib/internal/memory.ts:221:15
   (return)
  )
  ;;@ ~lib/internal/memory.ts:222:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:222:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:222:20
    (i32.const 12)
   )
   ;;@ ~lib/internal/memory.ts:222:24
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:223:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:223:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:223:20
    (i32.const 16)
   )
   ;;@ ~lib/internal/memory.ts:223:24
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:224:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:224:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:224:20
    (i32.const 20)
   )
   ;;@ ~lib/internal/memory.ts:224:24
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:225:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:225:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:225:20
    (i32.const 24)
   )
   ;;@ ~lib/internal/memory.ts:225:24
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:226:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:226:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:226:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:226:24
    (i32.const 28)
   )
   ;;@ ~lib/internal/memory.ts:226:28
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:227:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:227:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:227:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:227:24
    (i32.const 24)
   )
   ;;@ ~lib/internal/memory.ts:227:28
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:228:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:228:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:228:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:228:24
    (i32.const 20)
   )
   ;;@ ~lib/internal/memory.ts:228:28
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:229:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:229:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:229:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:229:24
    (i32.const 16)
   )
   ;;@ ~lib/internal/memory.ts:229:28
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:232:2
  (set_local $3
   ;;@ ~lib/internal/memory.ts:232:6
   (i32.add
    (i32.const 24)
    ;;@ ~lib/internal/memory.ts:232:11
    (i32.and
     ;;@ ~lib/internal/memory.ts:232:12
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:232:19
     (i32.const 4)
    )
   )
  )
  ;;@ ~lib/internal/memory.ts:233:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:233:10
    (get_local $3)
   )
  )
  ;;@ ~lib/internal/memory.ts:234:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:234:7
    (get_local $3)
   )
  )
  ;;@ ~lib/internal/memory.ts:237:2
  (set_local $5
   ;;@ ~lib/internal/memory.ts:237:17
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    ;;@ ~lib/internal/memory.ts:237:28
    (i64.shl
     ;;@ ~lib/internal/memory.ts:237:29
     (i64.extend_u/i32
      (get_local $4)
     )
     ;;@ ~lib/internal/memory.ts:237:41
     (i64.const 32)
    )
   )
  )
  ;;@ ~lib/internal/memory.ts:238:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/internal/memory.ts:238:9
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:238:14
      (i32.const 32)
     )
     (block
      ;;@ ~lib/internal/memory.ts:238:18
      (block
       ;;@ ~lib/internal/memory.ts:239:4
       (i64.store
        ;;@ ~lib/internal/memory.ts:239:15
        (get_local $0)
        ;;@ ~lib/internal/memory.ts:239:21
        (get_local $5)
       )
       ;;@ ~lib/internal/memory.ts:240:4
       (i64.store
        ;;@ ~lib/internal/memory.ts:240:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/memory.ts:240:22
         (i32.const 8)
        )
        ;;@ ~lib/internal/memory.ts:240:25
        (get_local $5)
       )
       ;;@ ~lib/internal/memory.ts:241:4
       (i64.store
        ;;@ ~lib/internal/memory.ts:241:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/memory.ts:241:22
         (i32.const 16)
        )
        ;;@ ~lib/internal/memory.ts:241:26
        (get_local $5)
       )
       ;;@ ~lib/internal/memory.ts:242:4
       (i64.store
        ;;@ ~lib/internal/memory.ts:242:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/memory.ts:242:22
         (i32.const 24)
        )
        ;;@ ~lib/internal/memory.ts:242:26
        (get_local $5)
       )
       ;;@ ~lib/internal/memory.ts:243:4
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/internal/memory.ts:243:9
         (i32.const 32)
        )
       )
       ;;@ ~lib/internal/memory.ts:244:4
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/memory.ts:244:12
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
 (func $~lib/array/Array<Body>#constructor (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/array.ts:37:4
  (if
   ;;@ ~lib/array.ts:37:8
   (i32.gt_u
    (get_local $1)
    ;;@ ~lib/array.ts:37:22
    (i32.const 268435454)
   )
   ;;@ ~lib/array.ts:37:39
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/array.ts:38:4
  (set_local $2
   ;;@ ~lib/array.ts:38:21
   (i32.shl
    (get_local $1)
    ;;@ ~lib/array.ts:38:31
    (i32.const 2)
   )
  )
  ;;@ ~lib/array.ts:39:4
  (set_local $3
   ;;@ ~lib/array.ts:39:17
   (call $~lib/internal/arraybuffer/allocateUnsafe
    ;;@ ~lib/array.ts:39:32
    (get_local $2)
   )
  )
  ;;@ ~lib/array.ts:40:4
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
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
   ;;@ ~lib/array.ts:40:19
   (get_local $3)
  )
  ;;@ ~lib/array.ts:41:4
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/array.ts:41:19
   (get_local $1)
  )
  ;;@ ~lib/array.ts:42:11
  (block $~lib/memory/memory.fill|inlined.0
   (set_local $4
    ;;@ ~lib/array.ts:43:6
    (i32.add
     (get_local $3)
     ;;@ ~lib/array.ts:43:34
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    ;;@ ~lib/array.ts:44:6
    (i32.const 0)
   )
   ;;@ ~lib/memory.ts:15:4
   (call $~lib/internal/memory/memset
    ;;@ ~lib/memory.ts:15:11
    (get_local $4)
    ;;@ ~lib/memory.ts:15:17
    (get_local $5)
    ;;@ ~lib/memory.ts:15:20
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Body>#__unchecked_set (; 13 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/array.ts:112:4
  (block $~lib/internal/arraybuffer/storeUnsafe<Body,Body>|inlined.0
   (set_local $3
    ;;@ ~lib/array.ts:112:21
    (i32.load
     (get_local $0)
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:72:2
   (i32.store offset=8
    ;;@ ~lib/internal/arraybuffer.ts:72:11
    (i32.add
     (get_local $3)
     ;;@ ~lib/internal/arraybuffer.ts:72:39
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:72:40
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:72:56
      (i32.const 2)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:72:71
    (get_local $2)
   )
  )
 )
 (func $~lib/array/Array<Body>#__unchecked_get (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:92:46
  (block $~lib/internal/arraybuffer/loadUnsafe<Body,Body>|inlined.0 (result i32)
   (set_local $2
    ;;@ ~lib/array.ts:92:27
    (i32.load
     (get_local $0)
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:68:91
   (i32.load offset=8
    ;;@ ~lib/internal/arraybuffer.ts:68:20
    (i32.add
     (get_local $2)
     ;;@ ~lib/internal/arraybuffer.ts:68:48
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:68:49
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:68:65
      (i32.const 2)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Body>#__get (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:84:4
  (set_local $2
   ;;@ ~lib/array.ts:84:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:87:23
  (if (result i32)
   ;;@ ~lib/array.ts:85:11
   (i32.lt_u
    (get_local $1)
    ;;@ ~lib/array.ts:85:24
    (i32.shr_u
     ;;@ ~lib/array.ts:85:30
     (i32.load
      (get_local $2)
     )
     ;;@ ~lib/array.ts:85:52
     (i32.const 2)
    )
   )
   ;;@ ~lib/array.ts:86:8
   (block $~lib/internal/arraybuffer/loadUnsafe<Body,Body>|inlined.1 (result i32)
    ;;@ ~lib/internal/arraybuffer.ts:68:91
    (i32.load offset=8
     ;;@ ~lib/internal/arraybuffer.ts:68:20
     (i32.add
      (get_local $2)
      ;;@ ~lib/internal/arraybuffer.ts:68:48
      (i32.shl
       ;;@ ~lib/internal/arraybuffer.ts:68:49
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:68:65
       (i32.const 2)
      )
     )
    )
   )
   ;;@ ~lib/array.ts:87:8
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
    (get_global $assembly/index/SOLAR_MASS)
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
    (get_global $assembly/index/SOLAR_MASS)
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
    (get_global $assembly/index/SOLAR_MASS)
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
  ;;@ assembly/index.ts:88:4
  (set_local $2
   ;;@ assembly/index.ts:88:20
   (f64.const 0)
  )
  ;;@ assembly/index.ts:89:4
  (set_local $3
   ;;@ assembly/index.ts:89:20
   (f64.const 0)
  )
  ;;@ assembly/index.ts:90:4
  (set_local $4
   ;;@ assembly/index.ts:90:20
   (f64.const 0)
  )
  ;;@ assembly/index.ts:91:4
  (set_local $5
   ;;@ assembly/index.ts:91:15
   (block $~lib/array/Array<Body>#get:length|inlined.0 (result i32)
    ;;@ ~lib/array.ts:51:16
    (i32.load offset=4
     ;;@ ~lib/array.ts:51:11
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:92:4
  (block $break|0
   ;;@ assembly/index.ts:92:9
   (set_local $6
    ;;@ assembly/index.ts:92:17
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:92:20
      (i32.lt_s
       (get_local $6)
       ;;@ assembly/index.ts:92:24
       (get_local $5)
      )
     )
    )
    ;;@ assembly/index.ts:92:35
    (block
     ;;@ assembly/index.ts:93:6
     (set_local $7
      ;;@ assembly/index.ts:93:14
      (call $~lib/array/Array<Body>#__unchecked_get
       ;;@ assembly/index.ts:93:24
       (get_local $1)
       ;;@ assembly/index.ts:93:31
       (get_local $6)
      )
     )
     ;;@ assembly/index.ts:94:6
     (set_local $8
      ;;@ assembly/index.ts:94:14
      (f64.load offset=48
       (get_local $7)
      )
     )
     ;;@ assembly/index.ts:95:6
     (set_local $2
      (f64.add
       (get_local $2)
       ;;@ assembly/index.ts:95:12
       (f64.mul
        (f64.load offset=24
         (get_local $7)
        )
        ;;@ assembly/index.ts:95:19
        (get_local $8)
       )
      )
     )
     ;;@ assembly/index.ts:96:6
     (set_local $3
      (f64.add
       (get_local $3)
       ;;@ assembly/index.ts:96:12
       (f64.mul
        (f64.load offset=32
         (get_local $7)
        )
        ;;@ assembly/index.ts:96:19
        (get_local $8)
       )
      )
     )
     ;;@ assembly/index.ts:97:6
     (set_local $4
      (f64.add
       (get_local $4)
       ;;@ assembly/index.ts:97:12
       (f64.mul
        (f64.load offset=40
         (get_local $7)
        )
        ;;@ assembly/index.ts:97:19
        (get_local $8)
       )
      )
     )
    )
    ;;@ assembly/index.ts:92:30
    (set_local $6
     (i32.add
      ;;@ assembly/index.ts:92:32
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/index.ts:99:14
  (drop
   (call $assembly/index/Body#offsetMomentum
    ;;@ assembly/index.ts:99:4
    (call $~lib/array/Array<Body>#__get
     (get_local $1)
     ;;@ assembly/index.ts:99:11
     (i32.const 0)
    )
    ;;@ assembly/index.ts:99:29
    (get_local $2)
    ;;@ assembly/index.ts:99:33
    (get_local $3)
    ;;@ assembly/index.ts:99:37
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
       (call $~lib/memory/memory.allocate
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
  ;;@ assembly/index.ts:189:2
  (set_global $assembly/index/system
   ;;@ assembly/index.ts:189:11
   (call $assembly/index/NBodySystem#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:189:27
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
      ;;@ assembly/index.ts:190:4
      (call $assembly/index/Sun)
     )
     (call $~lib/array/Array<Body>#__unchecked_set
      (get_local $0)
      (i32.const 1)
      ;;@ assembly/index.ts:191:4
      (call $assembly/index/Jupiter)
     )
     (call $~lib/array/Array<Body>#__unchecked_set
      (get_local $0)
      (i32.const 2)
      ;;@ assembly/index.ts:192:4
      (call $assembly/index/Saturn)
     )
     (call $~lib/array/Array<Body>#__unchecked_set
      (get_local $0)
      (i32.const 3)
      ;;@ assembly/index.ts:193:4
      (call $assembly/index/Uranus)
     )
     (call $~lib/array/Array<Body>#__unchecked_set
      (get_local $0)
      (i32.const 4)
      ;;@ assembly/index.ts:194:4
      (call $assembly/index/Neptune)
     )
     (get_local $0)
    )
   )
  )
 )
 (func $assembly/index/NBodySystem#advance (; 19 ;) (type $iFv) (param $0 i32) (param $1 f64)
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
  ;;@ assembly/index.ts:103:4
  (set_local $2
   ;;@ assembly/index.ts:103:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:104:4
  (set_local $3
   ;;@ assembly/index.ts:104:20
   (block $~lib/array/Array<Body>#get:length|inlined.1 (result i32)
    ;;@ ~lib/array.ts:51:16
    (i32.load offset=4
     ;;@ ~lib/array.ts:51:11
     (get_local $2)
    )
   )
  )
  ;;@ assembly/index.ts:107:4
  (block $break|0
   ;;@ assembly/index.ts:107:9
   (set_local $4
    ;;@ assembly/index.ts:107:22
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:107:25
      (i32.lt_u
       (get_local $4)
       ;;@ assembly/index.ts:107:29
       (get_local $3)
      )
     )
    )
    ;;@ assembly/index.ts:107:40
    (block
     ;;@ assembly/index.ts:108:6
     (set_local $5
      ;;@ assembly/index.ts:108:18
      (call $~lib/array/Array<Body>#__unchecked_get
       ;;@ assembly/index.ts:108:28
       (get_local $2)
       ;;@ assembly/index.ts:108:35
       (get_local $4)
      )
     )
     ;;@ assembly/index.ts:111:6
     (set_local $6
      ;;@ assembly/index.ts:111:15
      (f64.load
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:112:6
     (set_local $7
      ;;@ assembly/index.ts:112:15
      (f64.load offset=8
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:113:6
     (set_local $8
      ;;@ assembly/index.ts:113:15
      (f64.load offset=16
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:115:6
     (set_local $9
      ;;@ assembly/index.ts:115:17
      (f64.load offset=24
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:116:6
     (set_local $10
      ;;@ assembly/index.ts:116:17
      (f64.load offset=32
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:117:6
     (set_local $11
      ;;@ assembly/index.ts:117:17
      (f64.load offset=40
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:119:6
     (set_local $12
      ;;@ assembly/index.ts:119:19
      (f64.load offset=48
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:120:6
     (block $break|1
      ;;@ assembly/index.ts:120:11
      (set_local $13
       ;;@ assembly/index.ts:120:24
       (i32.add
        (get_local $4)
        ;;@ assembly/index.ts:120:28
        (i32.const 1)
       )
      )
      (loop $repeat|1
       (br_if $break|1
        (i32.eqz
         ;;@ assembly/index.ts:120:31
         (i32.lt_u
          (get_local $13)
          ;;@ assembly/index.ts:120:35
          (get_local $3)
         )
        )
       )
       ;;@ assembly/index.ts:120:46
       (block
        ;;@ assembly/index.ts:121:8
        (set_local $14
         ;;@ assembly/index.ts:121:20
         (call $~lib/array/Array<Body>#__unchecked_get
          ;;@ assembly/index.ts:121:30
          (get_local $2)
          ;;@ assembly/index.ts:121:37
          (get_local $13)
         )
        )
        ;;@ assembly/index.ts:124:8
        (set_local $15
         ;;@ assembly/index.ts:124:17
         (f64.sub
          (get_local $6)
          ;;@ assembly/index.ts:124:22
          (f64.load
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:125:8
        (set_local $16
         ;;@ assembly/index.ts:125:17
         (f64.sub
          (get_local $7)
          ;;@ assembly/index.ts:125:22
          (f64.load offset=8
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:126:8
        (set_local $17
         ;;@ assembly/index.ts:126:17
         (f64.sub
          (get_local $8)
          ;;@ assembly/index.ts:126:22
          (f64.load offset=16
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:128:8
        (set_local $18
         ;;@ assembly/index.ts:128:25
         (f64.add
          (f64.add
           (f64.mul
            (get_local $15)
            ;;@ assembly/index.ts:128:30
            (get_local $15)
           )
           ;;@ assembly/index.ts:128:35
           (f64.mul
            (get_local $16)
            ;;@ assembly/index.ts:128:40
            (get_local $16)
           )
          )
          ;;@ assembly/index.ts:128:45
          (f64.mul
           (get_local $17)
           ;;@ assembly/index.ts:128:50
           (get_local $17)
          )
         )
        )
        ;;@ assembly/index.ts:129:8
        (set_local $19
         ;;@ assembly/index.ts:129:23
         (block $~lib/math/NativeMath.sqrt|inlined.0 (result f64)
          ;;@ ~lib/math.ts:1016:30
          (f64.sqrt
           ;;@ ~lib/math.ts:1016:29
           (get_local $18)
          )
         )
        )
        ;;@ assembly/index.ts:130:8
        (set_local $20
         ;;@ assembly/index.ts:130:18
         (f64.div
          (get_local $1)
          ;;@ assembly/index.ts:130:23
          (f64.mul
           ;;@ assembly/index.ts:130:24
           (get_local $18)
           ;;@ assembly/index.ts:130:37
           (get_local $19)
          )
         )
        )
        ;;@ assembly/index.ts:132:8
        (set_local $21
         ;;@ assembly/index.ts:132:18
         (f64.mul
          (get_local $12)
          ;;@ assembly/index.ts:132:27
          (get_local $20)
         )
        )
        ;;@ assembly/index.ts:133:8
        (set_local $22
         ;;@ assembly/index.ts:133:18
         (f64.mul
          (f64.load offset=48
           (get_local $14)
          )
          ;;@ assembly/index.ts:133:31
          (get_local $20)
         )
        )
        ;;@ assembly/index.ts:135:8
        (set_local $9
         (f64.sub
          (get_local $9)
          ;;@ assembly/index.ts:135:16
          (f64.mul
           (get_local $15)
           ;;@ assembly/index.ts:135:21
           (get_local $22)
          )
         )
        )
        ;;@ assembly/index.ts:136:8
        (set_local $10
         (f64.sub
          (get_local $10)
          ;;@ assembly/index.ts:136:16
          (f64.mul
           (get_local $16)
           ;;@ assembly/index.ts:136:21
           (get_local $22)
          )
         )
        )
        ;;@ assembly/index.ts:137:8
        (set_local $11
         (f64.sub
          (get_local $11)
          ;;@ assembly/index.ts:137:16
          (f64.mul
           (get_local $17)
           ;;@ assembly/index.ts:137:21
           (get_local $22)
          )
         )
        )
        ;;@ assembly/index.ts:139:8
        (f64.store offset=24
         (get_local $14)
         (f64.add
          (f64.load offset=24
           (get_local $14)
          )
          ;;@ assembly/index.ts:139:20
          (f64.mul
           (get_local $15)
           ;;@ assembly/index.ts:139:25
           (get_local $21)
          )
         )
        )
        ;;@ assembly/index.ts:140:8
        (f64.store offset=32
         (get_local $14)
         (f64.add
          (f64.load offset=32
           (get_local $14)
          )
          ;;@ assembly/index.ts:140:20
          (f64.mul
           (get_local $16)
           ;;@ assembly/index.ts:140:25
           (get_local $21)
          )
         )
        )
        ;;@ assembly/index.ts:141:8
        (f64.store offset=40
         (get_local $14)
         (f64.add
          (f64.load offset=40
           (get_local $14)
          )
          ;;@ assembly/index.ts:141:20
          (f64.mul
           (get_local $17)
           ;;@ assembly/index.ts:141:25
           (get_local $21)
          )
         )
        )
       )
       ;;@ assembly/index.ts:120:41
       (set_local $13
        (i32.add
         ;;@ assembly/index.ts:120:43
         (get_local $13)
         (i32.const 1)
        )
       )
       (br $repeat|1)
      )
     )
     ;;@ assembly/index.ts:144:6
     (f64.store offset=24
      (get_local $5)
      ;;@ assembly/index.ts:144:17
      (get_local $9)
     )
     ;;@ assembly/index.ts:145:6
     (f64.store offset=32
      (get_local $5)
      ;;@ assembly/index.ts:145:17
      (get_local $10)
     )
     ;;@ assembly/index.ts:146:6
     (f64.store offset=40
      (get_local $5)
      ;;@ assembly/index.ts:146:17
      (get_local $11)
     )
     ;;@ assembly/index.ts:148:6
     (f64.store
      (get_local $5)
      (f64.add
       (f64.load
        (get_local $5)
       )
       ;;@ assembly/index.ts:148:17
       (f64.mul
        (get_local $1)
        ;;@ assembly/index.ts:148:22
        (get_local $9)
       )
      )
     )
     ;;@ assembly/index.ts:149:6
     (f64.store offset=8
      (get_local $5)
      (f64.add
       (f64.load offset=8
        (get_local $5)
       )
       ;;@ assembly/index.ts:149:17
       (f64.mul
        (get_local $1)
        ;;@ assembly/index.ts:149:22
        (get_local $10)
       )
      )
     )
     ;;@ assembly/index.ts:150:6
     (f64.store offset=16
      (get_local $5)
      (f64.add
       (f64.load offset=16
        (get_local $5)
       )
       ;;@ assembly/index.ts:150:17
       (f64.mul
        (get_local $1)
        ;;@ assembly/index.ts:150:22
        (get_local $11)
       )
      )
     )
    )
    ;;@ assembly/index.ts:107:35
    (set_local $4
     (i32.add
      ;;@ assembly/index.ts:107:37
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $assembly/index/NBodySystem#energy (; 20 ;) (type $iF) (param $0 i32) (result f64)
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
  ;;@ assembly/index.ts:155:4
  (set_local $1
   ;;@ assembly/index.ts:155:19
   (f64.const 0)
  )
  ;;@ assembly/index.ts:156:4
  (set_local $2
   ;;@ assembly/index.ts:156:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:158:4
  (block $break|0
   ;;@ assembly/index.ts:158:9
   (block
    (set_local $3
     ;;@ assembly/index.ts:158:22
     (i32.const 0)
    )
    (set_local $4
     ;;@ assembly/index.ts:158:37
     (block $~lib/array/Array<Body>#get:length|inlined.2 (result i32)
      ;;@ ~lib/array.ts:51:16
      (i32.load offset=4
       ;;@ ~lib/array.ts:51:11
       (get_local $2)
      )
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:158:52
      (i32.lt_u
       (get_local $3)
       ;;@ assembly/index.ts:158:56
       (get_local $4)
      )
     )
    )
    ;;@ assembly/index.ts:158:67
    (block
     ;;@ assembly/index.ts:159:6
     (set_local $5
      ;;@ assembly/index.ts:159:18
      (call $~lib/array/Array<Body>#__unchecked_get
       ;;@ assembly/index.ts:159:28
       (get_local $2)
       ;;@ assembly/index.ts:159:35
       (get_local $3)
      )
     )
     ;;@ assembly/index.ts:161:6
     (set_local $6
      ;;@ assembly/index.ts:161:15
      (f64.load
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:162:6
     (set_local $7
      ;;@ assembly/index.ts:162:15
      (f64.load offset=8
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:163:6
     (set_local $8
      ;;@ assembly/index.ts:163:15
      (f64.load offset=16
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:165:6
     (set_local $9
      ;;@ assembly/index.ts:165:15
      (f64.load offset=24
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:166:6
     (set_local $10
      ;;@ assembly/index.ts:166:15
      (f64.load offset=32
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:167:6
     (set_local $11
      ;;@ assembly/index.ts:167:15
      (f64.load offset=40
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:169:6
     (set_local $12
      ;;@ assembly/index.ts:169:16
      (f64.load offset=48
       (get_local $5)
      )
     )
     ;;@ assembly/index.ts:171:6
     (set_local $1
      (f64.add
       (get_local $1)
       ;;@ assembly/index.ts:171:11
       (f64.mul
        (f64.mul
         (f64.const 0.5)
         ;;@ assembly/index.ts:171:17
         (get_local $12)
        )
        ;;@ assembly/index.ts:171:23
        (f64.add
         ;;@ assembly/index.ts:171:24
         (f64.add
          (f64.mul
           (get_local $9)
           ;;@ assembly/index.ts:171:29
           (get_local $9)
          )
          ;;@ assembly/index.ts:171:34
          (f64.mul
           (get_local $10)
           ;;@ assembly/index.ts:171:39
           (get_local $10)
          )
         )
         ;;@ assembly/index.ts:171:44
         (f64.mul
          (get_local $11)
          ;;@ assembly/index.ts:171:49
          (get_local $11)
         )
        )
       )
      )
     )
     ;;@ assembly/index.ts:173:6
     (block $break|1
      ;;@ assembly/index.ts:173:11
      (set_local $13
       ;;@ assembly/index.ts:173:24
       (i32.add
        (get_local $3)
        ;;@ assembly/index.ts:173:28
        (i32.const 1)
       )
      )
      (loop $repeat|1
       (br_if $break|1
        (i32.eqz
         ;;@ assembly/index.ts:173:31
         (i32.lt_u
          (get_local $13)
          ;;@ assembly/index.ts:173:35
          (get_local $4)
         )
        )
       )
       ;;@ assembly/index.ts:173:46
       (block
        ;;@ assembly/index.ts:174:8
        (set_local $14
         ;;@ assembly/index.ts:174:20
         (call $~lib/array/Array<Body>#__unchecked_get
          ;;@ assembly/index.ts:174:30
          (get_local $2)
          ;;@ assembly/index.ts:174:37
          (get_local $13)
         )
        )
        ;;@ assembly/index.ts:175:8
        (set_local $15
         ;;@ assembly/index.ts:175:17
         (f64.sub
          (get_local $6)
          ;;@ assembly/index.ts:175:22
          (f64.load
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:176:8
        (set_local $16
         ;;@ assembly/index.ts:176:17
         (f64.sub
          (get_local $7)
          ;;@ assembly/index.ts:176:22
          (f64.load offset=8
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:177:8
        (set_local $17
         ;;@ assembly/index.ts:177:17
         (f64.sub
          (get_local $8)
          ;;@ assembly/index.ts:177:22
          (f64.load offset=16
           (get_local $14)
          )
         )
        )
        ;;@ assembly/index.ts:178:8
        (set_local $18
         ;;@ assembly/index.ts:178:23
         (block $~lib/math/NativeMath.sqrt|inlined.1 (result f64)
          (set_local $18
           ;;@ assembly/index.ts:178:40
           (f64.add
            (f64.add
             (f64.mul
              (get_local $15)
              ;;@ assembly/index.ts:178:45
              (get_local $15)
             )
             ;;@ assembly/index.ts:178:50
             (f64.mul
              (get_local $16)
              ;;@ assembly/index.ts:178:55
              (get_local $16)
             )
            )
            ;;@ assembly/index.ts:178:60
            (f64.mul
             (get_local $17)
             ;;@ assembly/index.ts:178:65
             (get_local $17)
            )
           )
          )
          ;;@ ~lib/math.ts:1016:30
          (f64.sqrt
           ;;@ ~lib/math.ts:1016:29
           (get_local $18)
          )
         )
        )
        ;;@ assembly/index.ts:179:8
        (set_local $1
         (f64.sub
          (get_local $1)
          ;;@ assembly/index.ts:179:13
          (f64.div
           (f64.mul
            (get_local $12)
            ;;@ assembly/index.ts:179:19
            (f64.load offset=48
             (get_local $14)
            )
           )
           ;;@ assembly/index.ts:179:32
           (get_local $18)
          )
         )
        )
       )
       ;;@ assembly/index.ts:173:41
       (set_local $13
        (i32.add
         ;;@ assembly/index.ts:173:43
         (get_local $13)
         (i32.const 1)
        )
       )
       (br $repeat|1)
      )
     )
    )
    ;;@ assembly/index.ts:158:62
    (set_local $3
     (i32.add
      ;;@ assembly/index.ts:158:64
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/index.ts:182:11
  (get_local $1)
 )
 (func $assembly/index/step (; 21 ;) (type $F) (result f64)
  ;;@ assembly/index.ts:199:9
  (call $assembly/index/NBodySystem#advance
   ;;@ assembly/index.ts:199:2
   (get_global $assembly/index/system)
   ;;@ assembly/index.ts:199:17
   (f64.const 0.01)
  )
  ;;@ assembly/index.ts:200:23
  (call $assembly/index/NBodySystem#energy
   ;;@ assembly/index.ts:200:9
   (get_global $assembly/index/system)
  )
 )
 (func $assembly/index/bench (; 22 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  ;;@ assembly/index.ts:204:2
  (block $break|0
   ;;@ assembly/index.ts:204:7
   (set_local $1
    ;;@ assembly/index.ts:204:20
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:204:23
      (i32.lt_u
       (get_local $1)
       ;;@ assembly/index.ts:204:27
       (get_local $0)
      )
     )
    )
    ;;@ assembly/index.ts:204:46
    (call $assembly/index/NBodySystem#advance
     ;;@ assembly/index.ts:204:39
     (get_global $assembly/index/system)
     ;;@ assembly/index.ts:204:54
     (f64.const 0.01)
    )
    ;;@ assembly/index.ts:204:34
    (set_local $1
     (i32.add
      ;;@ assembly/index.ts:204:36
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $assembly/index/getBody (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/index.ts:208:2
  (set_local $1
   ;;@ assembly/index.ts:208:15
   (i32.load
    (get_global $assembly/index/system)
   )
  )
  ;;@ assembly/index.ts:209:59
  (if (result i32)
   ;;@ assembly/index.ts:209:9
   (i32.lt_u
    (get_local $0)
    ;;@ assembly/index.ts:209:22
    (block $~lib/array/Array<Body>#get:length|inlined.4 (result i32)
     ;;@ ~lib/array.ts:51:16
     (i32.load offset=4
      ;;@ ~lib/array.ts:51:11
      (get_local $1)
     )
    )
   )
   ;;@ assembly/index.ts:209:43
   (call $~lib/array/Array<Body>#__get
    (get_local $1)
    ;;@ assembly/index.ts:209:50
    (get_local $0)
   )
   ;;@ assembly/index.ts:209:59
   (i32.const 0)
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
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    ;;@ ~lib/allocator/arena.ts:12:49
    (i32.xor
     ;;@ ~lib/allocator/arena.ts:12:50
     (get_global $~lib/internal/allocator/AL_MASK)
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
 (func $null (; 25 ;) (type $v)
 )
)
