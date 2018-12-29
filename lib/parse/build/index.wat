(module
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 8) "\00\00\00\00")
 (data (i32.const 16) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 48) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 104) "\18\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00u\00l\00e\00/\00i\00n\00d\00e\00x\00.\00t\00s\00")
 (data (i32.const 160) "\00\00\00\00\00\00\00\00")
 (data (i32.const 168) "\a0\00\00\00\00\00\00\00")
 (data (i32.const 176) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 208) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 272) "\00\00\00\00\00\00\00\00")
 (data (i32.const 280) "\10\01\00\00\00\00\00\00")
 (data (i32.const 288) "\01\00\00\00\'\00")
 (data (i32.const 296) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 312) "\06\00\00\00C\00u\00s\00t\00o\00m\00")
 (data (i32.const 328) "\04\00\00\00T\00y\00p\00e\00")
 (data (i32.const 344) "\06\00\00\00I\00m\00p\00o\00r\00t\00")
 (data (i32.const 360) "\08\00\00\00F\00u\00n\00c\00t\00i\00o\00n\00")
 (data (i32.const 384) "\05\00\00\00T\00a\00b\00l\00e\00")
 (data (i32.const 400) "\06\00\00\00M\00e\00m\00o\00r\00y\00")
 (data (i32.const 416) "\06\00\00\00G\00l\00o\00b\00a\00l\00")
 (data (i32.const 432) "\06\00\00\00E\00x\00p\00o\00r\00t\00")
 (data (i32.const 448) "\05\00\00\00S\00t\00a\00r\00t\00")
 (data (i32.const 464) "\07\00\00\00E\00l\00e\00m\00e\00n\00t\00")
 (data (i32.const 488) "\04\00\00\00C\00o\00d\00e\00")
 (data (i32.const 504) "\04\00\00\00D\00a\00t\00a\00")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "index" "log" (func $assembly/index/log<i32> (param i32)))
 (global $src/common/MAX_PAGES i32 (i32.const 65535))
 (global $src/common/MAX_ELEMS i32 (i32.const -1))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $src/common/SectionId.Custom (mut i32) (i32.const 0))
 (global $src/common/SectionId.Type (mut i32) (i32.const 1))
 (global $src/common/SectionId.Import (mut i32) (i32.const 2))
 (global $src/common/SectionId.Function (mut i32) (i32.const 3))
 (global $src/common/SectionId.Table (mut i32) (i32.const 4))
 (global $src/common/SectionId.Memory (mut i32) (i32.const 5))
 (global $src/common/SectionId.Global (mut i32) (i32.const 6))
 (global $src/common/SectionId.Export (mut i32) (i32.const 7))
 (global $src/common/SectionId.Start (mut i32) (i32.const 8))
 (global $src/common/SectionId.Element (mut i32) (i32.const 9))
 (global $src/common/SectionId.Code (mut i32) (i32.const 10))
 (global $src/common/SectionId.Data (mut i32) (i32.const 11))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $HEAP_BASE i32 (i32.const 516))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "Parser#constructor" (func $assembly/index/Parser#constructor))
 (export "Parser#get:buf" (func $Parser#get:buf))
 (export "Parser#set:buf" (func $Parser#set:buf))
 (export "Parser#get:module" (func $Parser#get:module))
 (export "Parser#set:module" (func $Parser#set:module))
 (export "Parser#parseString" (func $assembly/index/Parser#parseString))
 (export "Parser#readVaruint" (func $assembly/index/Parser#readVaruint))
 (export "Parser#get:off" (func $assembly/index/Parser#get:off))
 (export "Parser#set:off" (func $assembly/index/Parser#set:off))
 (export "Parser#parse" (func $assembly/index/Parser#parse))
 (export "newParser" (func $assembly/index/newParser))
 (export "parse" (func $assembly/index/parse))
 (export "memory.fill" (func $~lib/memory/memory.fill))
 (export "memory.copy" (func $~lib/memory/memory.copy))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (start $start)
 (func $~lib/internal/memory/memset (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.fill (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/memory.ts:15:4
  (call $~lib/internal/memory/memset
   ;;@ ~lib/memory.ts:15:11
   (get_local $0)
   ;;@ ~lib/memory.ts:15:17
   (get_local $1)
   ;;@ ~lib/memory.ts:15:20
   (get_local $2)
  )
 )
 (func $~lib/internal/memory/memcpy (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/internal/memory.ts:6:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/internal/memory.ts:6:9
     (if (result i32)
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:6:14
      (i32.and
       ;;@ ~lib/internal/memory.ts:6:15
       (get_local $1)
       ;;@ ~lib/internal/memory.ts:6:21
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      ;;@ ~lib/internal/memory.ts:6:25
      (block
       ;;@ ~lib/internal/memory.ts:7:4
       (i32.store8
        ;;@ ~lib/internal/memory.ts:7:14
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
        ;;@ ~lib/internal/memory.ts:7:22
        (i32.load8_u
         ;;@ ~lib/internal/memory.ts:7:31
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
       ;;@ ~lib/internal/memory.ts:8:4
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
  ;;@ ~lib/internal/memory.ts:12:2
  (if
   ;;@ ~lib/internal/memory.ts:12:6
   (i32.eq
    (i32.and
     ;;@ ~lib/internal/memory.ts:12:7
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:12:14
     (i32.const 3)
    )
    ;;@ ~lib/internal/memory.ts:12:20
    (i32.const 0)
   )
   ;;@ ~lib/internal/memory.ts:12:23
   (block
    ;;@ ~lib/internal/memory.ts:13:4
    (block $break|1
     (loop $continue|1
      (if
       ;;@ ~lib/internal/memory.ts:13:11
       (i32.ge_u
        (get_local $2)
        ;;@ ~lib/internal/memory.ts:13:16
        (i32.const 16)
       )
       (block
        ;;@ ~lib/internal/memory.ts:13:20
        (block
         ;;@ ~lib/internal/memory.ts:14:6
         (i32.store
          ;;@ ~lib/internal/memory.ts:14:17
          (get_local $0)
          ;;@ ~lib/internal/memory.ts:14:28
          (i32.load
           ;;@ ~lib/internal/memory.ts:14:38
           (get_local $1)
          )
         )
         ;;@ ~lib/internal/memory.ts:15:6
         (i32.store
          ;;@ ~lib/internal/memory.ts:15:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:15:25
           (i32.const 4)
          )
          ;;@ ~lib/internal/memory.ts:15:28
          (i32.load
           ;;@ ~lib/internal/memory.ts:15:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/internal/memory.ts:15:45
            (i32.const 4)
           )
          )
         )
         ;;@ ~lib/internal/memory.ts:16:6
         (i32.store
          ;;@ ~lib/internal/memory.ts:16:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:16:25
           (i32.const 8)
          )
          ;;@ ~lib/internal/memory.ts:16:28
          (i32.load
           ;;@ ~lib/internal/memory.ts:16:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/internal/memory.ts:16:45
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/internal/memory.ts:17:6
         (i32.store
          ;;@ ~lib/internal/memory.ts:17:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:17:24
           (i32.const 12)
          )
          ;;@ ~lib/internal/memory.ts:17:28
          (i32.load
           ;;@ ~lib/internal/memory.ts:17:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/internal/memory.ts:17:44
            (i32.const 12)
           )
          )
         )
         ;;@ ~lib/internal/memory.ts:18:6
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/internal/memory.ts:18:13
           (i32.const 16)
          )
         )
         ;;@ ~lib/internal/memory.ts:18:17
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:18:25
           (i32.const 16)
          )
         )
         ;;@ ~lib/internal/memory.ts:18:29
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/internal/memory.ts:18:34
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ ~lib/internal/memory.ts:20:4
    (if
     ;;@ ~lib/internal/memory.ts:20:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:20:12
      (i32.const 8)
     )
     ;;@ ~lib/internal/memory.ts:20:15
     (block
      ;;@ ~lib/internal/memory.ts:21:6
      (i32.store
       ;;@ ~lib/internal/memory.ts:21:17
       (get_local $0)
       ;;@ ~lib/internal/memory.ts:21:27
       (i32.load
        ;;@ ~lib/internal/memory.ts:21:37
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/memory.ts:22:6
      (i32.store
       ;;@ ~lib/internal/memory.ts:22:17
       (i32.add
        (get_local $0)
        ;;@ ~lib/internal/memory.ts:22:24
        (i32.const 4)
       )
       ;;@ ~lib/internal/memory.ts:22:27
       (i32.load
        ;;@ ~lib/internal/memory.ts:22:37
        (i32.add
         (get_local $1)
         ;;@ ~lib/internal/memory.ts:22:43
         (i32.const 4)
        )
       )
      )
      ;;@ ~lib/internal/memory.ts:23:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/internal/memory.ts:23:14
        (i32.const 8)
       )
      )
      ;;@ ~lib/internal/memory.ts:23:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/internal/memory.ts:23:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/internal/memory.ts:25:4
    (if
     ;;@ ~lib/internal/memory.ts:25:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:25:12
      (i32.const 4)
     )
     ;;@ ~lib/internal/memory.ts:25:15
     (block
      ;;@ ~lib/internal/memory.ts:26:6
      (i32.store
       ;;@ ~lib/internal/memory.ts:26:17
       (get_local $0)
       ;;@ ~lib/internal/memory.ts:26:23
       (i32.load
        ;;@ ~lib/internal/memory.ts:26:33
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/memory.ts:27:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/internal/memory.ts:27:14
        (i32.const 4)
       )
      )
      ;;@ ~lib/internal/memory.ts:27:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/internal/memory.ts:27:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ ~lib/internal/memory.ts:29:4
    (if
     ;;@ ~lib/internal/memory.ts:29:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:29:12
      (i32.const 2)
     )
     ;;@ ~lib/internal/memory.ts:29:15
     (block
      ;;@ ~lib/internal/memory.ts:30:6
      (i32.store16
       ;;@ ~lib/internal/memory.ts:30:17
       (get_local $0)
       ;;@ ~lib/internal/memory.ts:30:23
       (i32.load16_u
        ;;@ ~lib/internal/memory.ts:30:33
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/memory.ts:31:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/internal/memory.ts:31:14
        (i32.const 2)
       )
      )
      ;;@ ~lib/internal/memory.ts:31:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/internal/memory.ts:31:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ ~lib/internal/memory.ts:33:4
    (if
     ;;@ ~lib/internal/memory.ts:33:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:33:12
      (i32.const 1)
     )
     ;;@ ~lib/internal/memory.ts:33:15
     (i32.store8
      ;;@ ~lib/internal/memory.ts:34:16
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
      ;;@ ~lib/internal/memory.ts:34:24
      (i32.load8_u
       ;;@ ~lib/internal/memory.ts:34:33
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
    ;;@ ~lib/internal/memory.ts:36:4
    (return)
   )
  )
  ;;@ ~lib/internal/memory.ts:41:2
  (if
   ;;@ ~lib/internal/memory.ts:41:6
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:41:11
    (i32.const 32)
   )
   ;;@ ~lib/internal/memory.ts:41:15
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        ;;@ ~lib/internal/memory.ts:42:12
        (i32.and
         (get_local $0)
         ;;@ ~lib/internal/memory.ts:42:19
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/internal/memory.ts:44:11
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/internal/memory.ts:63:11
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/internal/memory.ts:81:11
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      ;;@ ~lib/internal/memory.ts:44:14
      (block
       ;;@ ~lib/internal/memory.ts:45:8
       (set_local $3
        ;;@ ~lib/internal/memory.ts:45:12
        (i32.load
         ;;@ ~lib/internal/memory.ts:45:22
         (get_local $1)
        )
       )
       ;;@ ~lib/internal/memory.ts:46:8
       (i32.store8
        ;;@ ~lib/internal/memory.ts:46:18
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
        ;;@ ~lib/internal/memory.ts:46:26
        (i32.load8_u
         ;;@ ~lib/internal/memory.ts:46:35
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
       ;;@ ~lib/internal/memory.ts:47:8
       (i32.store8
        ;;@ ~lib/internal/memory.ts:47:18
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
        ;;@ ~lib/internal/memory.ts:47:26
        (i32.load8_u
         ;;@ ~lib/internal/memory.ts:47:35
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
       ;;@ ~lib/internal/memory.ts:48:8
       (i32.store8
        ;;@ ~lib/internal/memory.ts:48:18
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
        ;;@ ~lib/internal/memory.ts:48:26
        (i32.load8_u
         ;;@ ~lib/internal/memory.ts:48:35
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
       ;;@ ~lib/internal/memory.ts:49:8
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/internal/memory.ts:49:13
         (i32.const 3)
        )
       )
       ;;@ ~lib/internal/memory.ts:50:8
       (block $break|3
        (loop $continue|3
         (if
          ;;@ ~lib/internal/memory.ts:50:15
          (i32.ge_u
           (get_local $2)
           ;;@ ~lib/internal/memory.ts:50:20
           (i32.const 17)
          )
          (block
           ;;@ ~lib/internal/memory.ts:50:24
           (block
            ;;@ ~lib/internal/memory.ts:51:10
            (set_local $4
             ;;@ ~lib/internal/memory.ts:51:14
             (i32.load
              ;;@ ~lib/internal/memory.ts:51:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/internal/memory.ts:51:30
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:52:10
            (i32.store
             ;;@ ~lib/internal/memory.ts:52:21
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:52:27
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/internal/memory.ts:52:32
               (i32.const 24)
              )
              ;;@ ~lib/internal/memory.ts:52:37
              (i32.shl
               (get_local $4)
               ;;@ ~lib/internal/memory.ts:52:42
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:53:10
            (set_local $3
             ;;@ ~lib/internal/memory.ts:53:14
             (i32.load
              ;;@ ~lib/internal/memory.ts:53:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/internal/memory.ts:53:30
               (i32.const 5)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:54:10
            (i32.store
             ;;@ ~lib/internal/memory.ts:54:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/internal/memory.ts:54:28
              (i32.const 4)
             )
             ;;@ ~lib/internal/memory.ts:54:31
             (i32.or
              (i32.shr_u
               (get_local $4)
               ;;@ ~lib/internal/memory.ts:54:36
               (i32.const 24)
              )
              ;;@ ~lib/internal/memory.ts:54:41
              (i32.shl
               (get_local $3)
               ;;@ ~lib/internal/memory.ts:54:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:55:10
            (set_local $4
             ;;@ ~lib/internal/memory.ts:55:14
             (i32.load
              ;;@ ~lib/internal/memory.ts:55:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/internal/memory.ts:55:30
               (i32.const 9)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:56:10
            (i32.store
             ;;@ ~lib/internal/memory.ts:56:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/internal/memory.ts:56:28
              (i32.const 8)
             )
             ;;@ ~lib/internal/memory.ts:56:31
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/internal/memory.ts:56:36
               (i32.const 24)
              )
              ;;@ ~lib/internal/memory.ts:56:41
              (i32.shl
               (get_local $4)
               ;;@ ~lib/internal/memory.ts:56:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:57:10
            (set_local $3
             ;;@ ~lib/internal/memory.ts:57:14
             (i32.load
              ;;@ ~lib/internal/memory.ts:57:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/internal/memory.ts:57:30
               (i32.const 13)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:58:10
            (i32.store
             ;;@ ~lib/internal/memory.ts:58:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/internal/memory.ts:58:28
              (i32.const 12)
             )
             ;;@ ~lib/internal/memory.ts:58:32
             (i32.or
              (i32.shr_u
               (get_local $4)
               ;;@ ~lib/internal/memory.ts:58:37
               (i32.const 24)
              )
              ;;@ ~lib/internal/memory.ts:58:42
              (i32.shl
               (get_local $3)
               ;;@ ~lib/internal/memory.ts:58:47
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:59:10
            (set_local $1
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:59:17
              (i32.const 16)
             )
            )
            ;;@ ~lib/internal/memory.ts:59:21
            (set_local $0
             (i32.add
              (get_local $0)
              ;;@ ~lib/internal/memory.ts:59:29
              (i32.const 16)
             )
            )
            ;;@ ~lib/internal/memory.ts:59:33
            (set_local $2
             (i32.sub
              (get_local $2)
              ;;@ ~lib/internal/memory.ts:59:38
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       ;;@ ~lib/internal/memory.ts:61:8
       (br $break|2)
      )
     )
     ;;@ ~lib/internal/memory.ts:63:14
     (block
      ;;@ ~lib/internal/memory.ts:64:8
      (set_local $3
       ;;@ ~lib/internal/memory.ts:64:12
       (i32.load
        ;;@ ~lib/internal/memory.ts:64:22
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/memory.ts:65:8
      (i32.store8
       ;;@ ~lib/internal/memory.ts:65:18
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
       ;;@ ~lib/internal/memory.ts:65:26
       (i32.load8_u
        ;;@ ~lib/internal/memory.ts:65:35
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
      ;;@ ~lib/internal/memory.ts:66:8
      (i32.store8
       ;;@ ~lib/internal/memory.ts:66:18
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
       ;;@ ~lib/internal/memory.ts:66:26
       (i32.load8_u
        ;;@ ~lib/internal/memory.ts:66:35
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
      ;;@ ~lib/internal/memory.ts:67:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ ~lib/internal/memory.ts:67:13
        (i32.const 2)
       )
      )
      ;;@ ~lib/internal/memory.ts:68:8
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/internal/memory.ts:68:15
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/internal/memory.ts:68:20
          (i32.const 18)
         )
         (block
          ;;@ ~lib/internal/memory.ts:68:24
          (block
           ;;@ ~lib/internal/memory.ts:69:10
           (set_local $4
            ;;@ ~lib/internal/memory.ts:69:14
            (i32.load
             ;;@ ~lib/internal/memory.ts:69:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:69:30
              (i32.const 2)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:70:10
           (i32.store
            ;;@ ~lib/internal/memory.ts:70:21
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:70:27
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/internal/memory.ts:70:32
              (i32.const 16)
             )
             ;;@ ~lib/internal/memory.ts:70:37
             (i32.shl
              (get_local $4)
              ;;@ ~lib/internal/memory.ts:70:42
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:71:10
           (set_local $3
            ;;@ ~lib/internal/memory.ts:71:14
            (i32.load
             ;;@ ~lib/internal/memory.ts:71:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:71:30
              (i32.const 6)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:72:10
           (i32.store
            ;;@ ~lib/internal/memory.ts:72:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:72:28
             (i32.const 4)
            )
            ;;@ ~lib/internal/memory.ts:72:31
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ ~lib/internal/memory.ts:72:36
              (i32.const 16)
             )
             ;;@ ~lib/internal/memory.ts:72:41
             (i32.shl
              (get_local $3)
              ;;@ ~lib/internal/memory.ts:72:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:73:10
           (set_local $4
            ;;@ ~lib/internal/memory.ts:73:14
            (i32.load
             ;;@ ~lib/internal/memory.ts:73:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:73:30
              (i32.const 10)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:74:10
           (i32.store
            ;;@ ~lib/internal/memory.ts:74:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:74:28
             (i32.const 8)
            )
            ;;@ ~lib/internal/memory.ts:74:31
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/internal/memory.ts:74:36
              (i32.const 16)
             )
             ;;@ ~lib/internal/memory.ts:74:41
             (i32.shl
              (get_local $4)
              ;;@ ~lib/internal/memory.ts:74:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:75:10
           (set_local $3
            ;;@ ~lib/internal/memory.ts:75:14
            (i32.load
             ;;@ ~lib/internal/memory.ts:75:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:75:30
              (i32.const 14)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:76:10
           (i32.store
            ;;@ ~lib/internal/memory.ts:76:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:76:28
             (i32.const 12)
            )
            ;;@ ~lib/internal/memory.ts:76:32
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ ~lib/internal/memory.ts:76:37
              (i32.const 16)
             )
             ;;@ ~lib/internal/memory.ts:76:42
             (i32.shl
              (get_local $3)
              ;;@ ~lib/internal/memory.ts:76:47
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:77:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:77:17
             (i32.const 16)
            )
           )
           ;;@ ~lib/internal/memory.ts:77:21
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:77:29
             (i32.const 16)
            )
           )
           ;;@ ~lib/internal/memory.ts:77:33
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/internal/memory.ts:77:38
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      ;;@ ~lib/internal/memory.ts:79:8
      (br $break|2)
     )
    )
    ;;@ ~lib/internal/memory.ts:81:14
    (block
     ;;@ ~lib/internal/memory.ts:82:8
     (set_local $3
      ;;@ ~lib/internal/memory.ts:82:12
      (i32.load
       ;;@ ~lib/internal/memory.ts:82:22
       (get_local $1)
      )
     )
     ;;@ ~lib/internal/memory.ts:83:8
     (i32.store8
      ;;@ ~lib/internal/memory.ts:83:18
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
      ;;@ ~lib/internal/memory.ts:83:26
      (i32.load8_u
       ;;@ ~lib/internal/memory.ts:83:35
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
     ;;@ ~lib/internal/memory.ts:84:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/internal/memory.ts:84:13
       (i32.const 1)
      )
     )
     ;;@ ~lib/internal/memory.ts:85:8
     (block $break|5
      (loop $continue|5
       (if
        ;;@ ~lib/internal/memory.ts:85:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/internal/memory.ts:85:20
         (i32.const 19)
        )
        (block
         ;;@ ~lib/internal/memory.ts:85:24
         (block
          ;;@ ~lib/internal/memory.ts:86:10
          (set_local $4
           ;;@ ~lib/internal/memory.ts:86:14
           (i32.load
            ;;@ ~lib/internal/memory.ts:86:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:86:30
             (i32.const 3)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:87:10
          (i32.store
           ;;@ ~lib/internal/memory.ts:87:21
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:87:27
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/internal/memory.ts:87:32
             (i32.const 8)
            )
            ;;@ ~lib/internal/memory.ts:87:36
            (i32.shl
             (get_local $4)
             ;;@ ~lib/internal/memory.ts:87:41
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:88:10
          (set_local $3
           ;;@ ~lib/internal/memory.ts:88:14
           (i32.load
            ;;@ ~lib/internal/memory.ts:88:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:88:30
             (i32.const 7)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:89:10
          (i32.store
           ;;@ ~lib/internal/memory.ts:89:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:89:28
            (i32.const 4)
           )
           ;;@ ~lib/internal/memory.ts:89:31
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ ~lib/internal/memory.ts:89:36
             (i32.const 8)
            )
            ;;@ ~lib/internal/memory.ts:89:40
            (i32.shl
             (get_local $3)
             ;;@ ~lib/internal/memory.ts:89:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:90:10
          (set_local $4
           ;;@ ~lib/internal/memory.ts:90:14
           (i32.load
            ;;@ ~lib/internal/memory.ts:90:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:90:30
             (i32.const 11)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:91:10
          (i32.store
           ;;@ ~lib/internal/memory.ts:91:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:91:28
            (i32.const 8)
           )
           ;;@ ~lib/internal/memory.ts:91:31
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/internal/memory.ts:91:36
             (i32.const 8)
            )
            ;;@ ~lib/internal/memory.ts:91:40
            (i32.shl
             (get_local $4)
             ;;@ ~lib/internal/memory.ts:91:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:92:10
          (set_local $3
           ;;@ ~lib/internal/memory.ts:92:14
           (i32.load
            ;;@ ~lib/internal/memory.ts:92:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:92:30
             (i32.const 15)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:93:10
          (i32.store
           ;;@ ~lib/internal/memory.ts:93:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:93:28
            (i32.const 12)
           )
           ;;@ ~lib/internal/memory.ts:93:32
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ ~lib/internal/memory.ts:93:37
             (i32.const 8)
            )
            ;;@ ~lib/internal/memory.ts:93:41
            (i32.shl
             (get_local $3)
             ;;@ ~lib/internal/memory.ts:93:46
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:94:10
          (set_local $1
           (i32.add
            (get_local $1)
            ;;@ ~lib/internal/memory.ts:94:17
            (i32.const 16)
           )
          )
          ;;@ ~lib/internal/memory.ts:94:21
          (set_local $0
           (i32.add
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:94:29
            (i32.const 16)
           )
          )
          ;;@ ~lib/internal/memory.ts:94:33
          (set_local $2
           (i32.sub
            (get_local $2)
            ;;@ ~lib/internal/memory.ts:94:38
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     ;;@ ~lib/internal/memory.ts:96:8
     (br $break|2)
    )
   )
  )
  ;;@ ~lib/internal/memory.ts:102:2
  (if
   ;;@ ~lib/internal/memory.ts:102:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:102:10
    (i32.const 16)
   )
   ;;@ ~lib/internal/memory.ts:102:14
   (block
    ;;@ ~lib/internal/memory.ts:103:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:103:14
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
     ;;@ ~lib/internal/memory.ts:103:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:103:31
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
    ;;@ ~lib/internal/memory.ts:104:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:104:14
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
     ;;@ ~lib/internal/memory.ts:104:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:104:31
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
    ;;@ ~lib/internal/memory.ts:105:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:105:14
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
     ;;@ ~lib/internal/memory.ts:105:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:105:31
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
    ;;@ ~lib/internal/memory.ts:106:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:106:14
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
     ;;@ ~lib/internal/memory.ts:106:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:106:31
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
    ;;@ ~lib/internal/memory.ts:107:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:107:14
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
     ;;@ ~lib/internal/memory.ts:107:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:107:31
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
    ;;@ ~lib/internal/memory.ts:108:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:108:14
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
     ;;@ ~lib/internal/memory.ts:108:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:108:31
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
    ;;@ ~lib/internal/memory.ts:109:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:109:14
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
     ;;@ ~lib/internal/memory.ts:109:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:109:31
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
    ;;@ ~lib/internal/memory.ts:110:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:110:14
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
     ;;@ ~lib/internal/memory.ts:110:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:110:31
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
    ;;@ ~lib/internal/memory.ts:111:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:111:14
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
     ;;@ ~lib/internal/memory.ts:111:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:111:31
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
    ;;@ ~lib/internal/memory.ts:112:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:112:14
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
     ;;@ ~lib/internal/memory.ts:112:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:112:31
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
    ;;@ ~lib/internal/memory.ts:113:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:113:14
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
     ;;@ ~lib/internal/memory.ts:113:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:113:31
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
    ;;@ ~lib/internal/memory.ts:114:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:114:14
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
     ;;@ ~lib/internal/memory.ts:114:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:114:31
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
    ;;@ ~lib/internal/memory.ts:115:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:115:14
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
     ;;@ ~lib/internal/memory.ts:115:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:115:31
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
    ;;@ ~lib/internal/memory.ts:116:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:116:14
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
     ;;@ ~lib/internal/memory.ts:116:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:116:31
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
    ;;@ ~lib/internal/memory.ts:117:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:117:14
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
     ;;@ ~lib/internal/memory.ts:117:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:117:31
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
    ;;@ ~lib/internal/memory.ts:118:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:118:14
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
     ;;@ ~lib/internal/memory.ts:118:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:118:31
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
  ;;@ ~lib/internal/memory.ts:120:2
  (if
   ;;@ ~lib/internal/memory.ts:120:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:120:10
    (i32.const 8)
   )
   ;;@ ~lib/internal/memory.ts:120:13
   (block
    ;;@ ~lib/internal/memory.ts:121:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:121:14
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
     ;;@ ~lib/internal/memory.ts:121:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:121:31
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
    ;;@ ~lib/internal/memory.ts:122:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:122:14
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
     ;;@ ~lib/internal/memory.ts:122:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:122:31
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
    ;;@ ~lib/internal/memory.ts:123:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:123:14
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
     ;;@ ~lib/internal/memory.ts:123:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:123:31
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
    ;;@ ~lib/internal/memory.ts:124:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:124:14
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
     ;;@ ~lib/internal/memory.ts:124:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:124:31
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
    ;;@ ~lib/internal/memory.ts:125:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:125:14
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
     ;;@ ~lib/internal/memory.ts:125:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:125:31
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
    ;;@ ~lib/internal/memory.ts:126:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:126:14
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
     ;;@ ~lib/internal/memory.ts:126:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:126:31
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
    ;;@ ~lib/internal/memory.ts:127:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:127:14
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
     ;;@ ~lib/internal/memory.ts:127:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:127:31
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
    ;;@ ~lib/internal/memory.ts:128:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:128:14
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
     ;;@ ~lib/internal/memory.ts:128:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:128:31
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
  ;;@ ~lib/internal/memory.ts:130:2
  (if
   ;;@ ~lib/internal/memory.ts:130:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:130:10
    (i32.const 4)
   )
   ;;@ ~lib/internal/memory.ts:130:13
   (block
    ;;@ ~lib/internal/memory.ts:131:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:131:14
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
     ;;@ ~lib/internal/memory.ts:131:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:131:31
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
    ;;@ ~lib/internal/memory.ts:132:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:132:14
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
     ;;@ ~lib/internal/memory.ts:132:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:132:31
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
    ;;@ ~lib/internal/memory.ts:133:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:133:14
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
     ;;@ ~lib/internal/memory.ts:133:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:133:31
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
    ;;@ ~lib/internal/memory.ts:134:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:134:14
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
     ;;@ ~lib/internal/memory.ts:134:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:134:31
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
  ;;@ ~lib/internal/memory.ts:136:2
  (if
   ;;@ ~lib/internal/memory.ts:136:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:136:10
    (i32.const 2)
   )
   ;;@ ~lib/internal/memory.ts:136:13
   (block
    ;;@ ~lib/internal/memory.ts:137:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:137:14
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
     ;;@ ~lib/internal/memory.ts:137:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:137:31
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
    ;;@ ~lib/internal/memory.ts:138:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:138:14
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
     ;;@ ~lib/internal/memory.ts:138:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:138:31
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
  ;;@ ~lib/internal/memory.ts:140:2
  (if
   ;;@ ~lib/internal/memory.ts:140:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:140:10
    (i32.const 1)
   )
   ;;@ ~lib/internal/memory.ts:140:13
   (i32.store8
    ;;@ ~lib/internal/memory.ts:141:14
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
    ;;@ ~lib/internal/memory.ts:141:22
    (i32.load8_u
     ;;@ ~lib/internal/memory.ts:141:31
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
 (func $~lib/internal/memory/memmove (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/internal/memory.ts:147:2
  (if
   ;;@ ~lib/internal/memory.ts:147:6
   (i32.eq
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:147:14
    (get_local $1)
   )
   ;;@ ~lib/internal/memory.ts:147:19
   (return)
  )
  ;;@ ~lib/internal/memory.ts:148:2
  (if
   ;;@ ~lib/internal/memory.ts:148:6
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       ;;@ ~lib/internal/memory.ts:148:12
       (get_local $2)
      )
      ;;@ ~lib/internal/memory.ts:148:17
      (get_local $0)
     )
    )
    (get_local $3)
    ;;@ ~lib/internal/memory.ts:148:25
    (i32.le_u
     (i32.add
      (get_local $0)
      ;;@ ~lib/internal/memory.ts:148:32
      (get_local $2)
     )
     ;;@ ~lib/internal/memory.ts:148:37
     (get_local $1)
    )
   )
   ;;@ ~lib/internal/memory.ts:148:42
   (block
    ;;@ ~lib/internal/memory.ts:149:4
    (call $~lib/internal/memory/memcpy
     ;;@ ~lib/internal/memory.ts:149:11
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:149:17
     (get_local $1)
     ;;@ ~lib/internal/memory.ts:149:22
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:150:4
    (return)
   )
  )
  ;;@ ~lib/internal/memory.ts:152:2
  (if
   ;;@ ~lib/internal/memory.ts:152:6
   (i32.lt_u
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:152:13
    (get_local $1)
   )
   ;;@ ~lib/internal/memory.ts:152:18
   (block
    ;;@ ~lib/internal/memory.ts:153:4
    (if
     ;;@ ~lib/internal/memory.ts:153:8
     (i32.eq
      (i32.and
       ;;@ ~lib/internal/memory.ts:153:9
       (get_local $1)
       ;;@ ~lib/internal/memory.ts:153:15
       (i32.const 7)
      )
      ;;@ ~lib/internal/memory.ts:153:21
      (i32.and
       ;;@ ~lib/internal/memory.ts:153:22
       (get_local $0)
       ;;@ ~lib/internal/memory.ts:153:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/internal/memory.ts:153:33
     (block
      ;;@ ~lib/internal/memory.ts:154:6
      (block $break|0
       (loop $continue|0
        (if
         ;;@ ~lib/internal/memory.ts:154:13
         (i32.and
          (get_local $0)
          ;;@ ~lib/internal/memory.ts:154:20
          (i32.const 7)
         )
         (block
          ;;@ ~lib/internal/memory.ts:154:23
          (block
           ;;@ ~lib/internal/memory.ts:155:8
           (if
            ;;@ ~lib/internal/memory.ts:155:12
            (i32.eqz
             ;;@ ~lib/internal/memory.ts:155:13
             (get_local $2)
            )
            ;;@ ~lib/internal/memory.ts:155:16
            (return)
           )
           ;;@ ~lib/internal/memory.ts:156:8
           (set_local $2
            (i32.sub
             ;;@ ~lib/internal/memory.ts:156:10
             (get_local $2)
             (i32.const 1)
            )
           )
           ;;@ ~lib/internal/memory.ts:157:8
           (i32.store8
            ;;@ ~lib/internal/memory.ts:157:18
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
            ;;@ ~lib/internal/memory.ts:157:26
            (i32.load8_u
             ;;@ ~lib/internal/memory.ts:157:35
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
      ;;@ ~lib/internal/memory.ts:159:6
      (block $break|1
       (loop $continue|1
        (if
         ;;@ ~lib/internal/memory.ts:159:13
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/internal/memory.ts:159:18
          (i32.const 8)
         )
         (block
          ;;@ ~lib/internal/memory.ts:159:21
          (block
           ;;@ ~lib/internal/memory.ts:160:8
           (i64.store
            ;;@ ~lib/internal/memory.ts:160:19
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:160:25
            (i64.load
             ;;@ ~lib/internal/memory.ts:160:35
             (get_local $1)
            )
           )
           ;;@ ~lib/internal/memory.ts:161:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/internal/memory.ts:161:16
             (i32.const 8)
            )
           )
           ;;@ ~lib/internal/memory.ts:162:8
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:162:16
             (i32.const 8)
            )
           )
           ;;@ ~lib/internal/memory.ts:163:8
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:163:16
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
    ;;@ ~lib/internal/memory.ts:166:4
    (block $break|2
     (loop $continue|2
      (if
       ;;@ ~lib/internal/memory.ts:166:11
       (get_local $2)
       (block
        ;;@ ~lib/internal/memory.ts:166:14
        (block
         ;;@ ~lib/internal/memory.ts:167:6
         (i32.store8
          ;;@ ~lib/internal/memory.ts:167:16
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
          ;;@ ~lib/internal/memory.ts:167:24
          (i32.load8_u
           ;;@ ~lib/internal/memory.ts:167:33
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
         ;;@ ~lib/internal/memory.ts:168:6
         (set_local $2
          (i32.sub
           ;;@ ~lib/internal/memory.ts:168:8
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
   ;;@ ~lib/internal/memory.ts:170:9
   (block
    ;;@ ~lib/internal/memory.ts:171:4
    (if
     ;;@ ~lib/internal/memory.ts:171:8
     (i32.eq
      (i32.and
       ;;@ ~lib/internal/memory.ts:171:9
       (get_local $1)
       ;;@ ~lib/internal/memory.ts:171:15
       (i32.const 7)
      )
      ;;@ ~lib/internal/memory.ts:171:21
      (i32.and
       ;;@ ~lib/internal/memory.ts:171:22
       (get_local $0)
       ;;@ ~lib/internal/memory.ts:171:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/internal/memory.ts:171:33
     (block
      ;;@ ~lib/internal/memory.ts:172:6
      (block $break|3
       (loop $continue|3
        (if
         ;;@ ~lib/internal/memory.ts:172:13
         (i32.and
          (i32.add
           ;;@ ~lib/internal/memory.ts:172:14
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:172:21
           (get_local $2)
          )
          ;;@ ~lib/internal/memory.ts:172:26
          (i32.const 7)
         )
         (block
          ;;@ ~lib/internal/memory.ts:172:29
          (block
           ;;@ ~lib/internal/memory.ts:173:8
           (if
            ;;@ ~lib/internal/memory.ts:173:12
            (i32.eqz
             ;;@ ~lib/internal/memory.ts:173:13
             (get_local $2)
            )
            ;;@ ~lib/internal/memory.ts:173:16
            (return)
           )
           ;;@ ~lib/internal/memory.ts:174:8
           (i32.store8
            ;;@ ~lib/internal/memory.ts:174:18
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:174:25
             (tee_local $2
              (i32.sub
               ;;@ ~lib/internal/memory.ts:174:27
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:174:30
            (i32.load8_u
             ;;@ ~lib/internal/memory.ts:174:39
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:174:45
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
      ;;@ ~lib/internal/memory.ts:176:6
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/internal/memory.ts:176:13
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/internal/memory.ts:176:18
          (i32.const 8)
         )
         (block
          ;;@ ~lib/internal/memory.ts:176:21
          (block
           ;;@ ~lib/internal/memory.ts:177:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/internal/memory.ts:177:13
             (i32.const 8)
            )
           )
           ;;@ ~lib/internal/memory.ts:178:8
           (i64.store
            ;;@ ~lib/internal/memory.ts:178:19
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:178:26
             (get_local $2)
            )
            ;;@ ~lib/internal/memory.ts:178:29
            (i64.load
             ;;@ ~lib/internal/memory.ts:178:39
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:178:45
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
    ;;@ ~lib/internal/memory.ts:181:4
    (block $break|5
     (loop $continue|5
      (if
       ;;@ ~lib/internal/memory.ts:181:11
       (get_local $2)
       (block
        ;;@ ~lib/internal/memory.ts:181:14
        (i32.store8
         ;;@ ~lib/internal/memory.ts:182:16
         (i32.add
          (get_local $0)
          ;;@ ~lib/internal/memory.ts:182:23
          (tee_local $2
           (i32.sub
            ;;@ ~lib/internal/memory.ts:182:25
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         ;;@ ~lib/internal/memory.ts:182:28
         (i32.load8_u
          ;;@ ~lib/internal/memory.ts:182:37
          (i32.add
           (get_local $1)
           ;;@ ~lib/internal/memory.ts:182:43
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
 (func $~lib/memory/memory.copy (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/memory.ts:20:4
  (call $~lib/internal/memory/memmove
   ;;@ ~lib/memory.ts:20:12
   (get_local $0)
   ;;@ ~lib/memory.ts:20:18
   (get_local $1)
   ;;@ ~lib/memory.ts:20:23
   (get_local $2)
  )
 )
 (func $~lib/internal/memory/memcmp (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  ;;@ ~lib/internal/memory.ts:249:2
  (if
   ;;@ ~lib/internal/memory.ts:249:6
   (i32.eq
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:249:12
    (get_local $1)
   )
   ;;@ ~lib/internal/memory.ts:249:23
   (return
    (i32.const 0)
   )
  )
  ;;@ ~lib/internal/memory.ts:250:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/internal/memory.ts:250:9
     (if (result i32)
      (tee_local $3
       (i32.ne
        (get_local $2)
        ;;@ ~lib/internal/memory.ts:250:14
        (i32.const 0)
       )
      )
      ;;@ ~lib/internal/memory.ts:250:19
      (i32.eq
       (i32.load8_u
        ;;@ ~lib/internal/memory.ts:250:28
        (get_local $0)
       )
       ;;@ ~lib/internal/memory.ts:250:35
       (i32.load8_u
        ;;@ ~lib/internal/memory.ts:250:44
        (get_local $1)
       )
      )
      (get_local $3)
     )
     (block
      ;;@ ~lib/internal/memory.ts:250:49
      (block
       ;;@ ~lib/internal/memory.ts:251:4
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       ;;@ ~lib/internal/memory.ts:251:9
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       ;;@ ~lib/internal/memory.ts:251:15
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
  ;;@ ~lib/internal/memory.ts:253:53
  (if (result i32)
   ;;@ ~lib/internal/memory.ts:253:9
   (get_local $2)
   ;;@ ~lib/internal/memory.ts:253:13
   (i32.sub
    (i32.load8_u
     ;;@ ~lib/internal/memory.ts:253:27
     (get_local $0)
    )
    ;;@ ~lib/internal/memory.ts:253:33
    (i32.load8_u
     ;;@ ~lib/internal/memory.ts:253:47
     (get_local $1)
    )
   )
   ;;@ ~lib/internal/memory.ts:253:53
   (i32.const 0)
  )
 )
 (func $~lib/memory/memory.compare (; 8 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ ~lib/memory.ts:25:27
  (call $~lib/internal/memory/memcmp
   ;;@ ~lib/memory.ts:25:18
   (get_local $0)
   ;;@ ~lib/memory.ts:25:22
   (get_local $1)
   ;;@ ~lib/memory.ts:25:26
   (get_local $2)
  )
 )
 (func $~lib/allocator/arena/__memory_allocate (; 9 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 10 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/memory.ts:41:4
  (return
   ;;@ ~lib/memory.ts:41:45
   (call $~lib/allocator/arena/__memory_allocate
    ;;@ ~lib/memory.ts:41:63
    (get_local $0)
   )
  )
 )
 (func $~lib/allocator/arena/__memory_free (; 11 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/memory/memory.free (; 12 ;) (type $iv) (param $0 i32)
  ;;@ ~lib/memory.ts:47:36
  (call $~lib/allocator/arena/__memory_free
   ;;@ ~lib/memory.ts:47:50
   (get_local $0)
  )
  ;;@ ~lib/memory.ts:47:56
  (return)
 )
 (func $~lib/allocator/arena/__memory_reset (; 13 ;) (type $v)
  ;;@ ~lib/allocator/arena.ts:38:2
  (set_global $~lib/allocator/arena/offset
   ;;@ ~lib/allocator/arena.ts:38:11
   (get_global $~lib/allocator/arena/startOffset)
  )
 )
 (func $~lib/memory/memory.reset (; 14 ;) (type $v)
  ;;@ ~lib/memory.ts:53:37
  (call $~lib/allocator/arena/__memory_reset)
  ;;@ ~lib/memory.ts:53:55
  (return)
 )
 (func $assembly/index/Parser#constructor (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ assembly/index.ts:37:3
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $2)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $2)
        (i32.const 0)
       )
       (get_local $2)
      )
     )
    )
   )
   ;;@ assembly/index.ts:37:14
   (get_local $1)
  )
  ;;@ assembly/index.ts:38:3
  (i32.store offset=4
   (get_local $0)
   ;;@ assembly/index.ts:38:17
   (block (result i32)
    (set_local $2
     (call $~lib/memory/memory.allocate
      (i32.const 4)
     )
    )
    (i32.store
     (get_local $2)
     (i32.const 0)
    )
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $assembly/buffer/index/Buffer#readVaruint (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ assembly/buffer/index.ts:40:4
  (set_local $2
   ;;@ assembly/buffer/index.ts:40:19
   (i32.const 0)
  )
  ;;@ assembly/buffer/index.ts:41:4
  (set_local $3
   ;;@ assembly/buffer/index.ts:41:19
   (i32.const 0)
  )
  ;;@ assembly/buffer/index.ts:43:4
  (set_local $5
   ;;@ assembly/buffer/index.ts:43:15
   (i32.load offset=8
    (get_local $0)
   )
  )
  ;;@ assembly/buffer/index.ts:44:4
  (block $break|0
   (loop $continue|0
    ;;@ assembly/buffer/index.ts:44:7
    (block
     ;;@ assembly/buffer/index.ts:45:6
     (set_local $4
      ;;@ assembly/buffer/index.ts:45:12
      (i32.load8_u
       ;;@ assembly/buffer/index.ts:45:21
       (block (result i32)
        (set_local $6
         (get_local $5)
        )
        (set_local $5
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
     ;;@ assembly/buffer/index.ts:46:6
     (set_local $2
      (i32.or
       (get_local $2)
       ;;@ assembly/buffer/index.ts:46:13
       (i32.shl
        (i32.and
         ;;@ assembly/buffer/index.ts:46:14
         (get_local $4)
         ;;@ assembly/buffer/index.ts:46:20
         (i32.const 127)
        )
        ;;@ assembly/buffer/index.ts:46:29
        (get_local $3)
       )
      )
     )
     ;;@ assembly/buffer/index.ts:47:6
     (if
      ;;@ assembly/buffer/index.ts:47:10
      (i32.eqz
       ;;@ assembly/buffer/index.ts:47:11
       (i32.and
        ;;@ assembly/buffer/index.ts:47:12
        (get_local $4)
        ;;@ assembly/buffer/index.ts:47:18
        (i32.const 128)
       )
      )
      ;;@ assembly/buffer/index.ts:47:25
      (br $break|0)
     )
     ;;@ assembly/buffer/index.ts:48:6
     (set_local $3
      (i32.add
       (get_local $3)
       ;;@ assembly/buffer/index.ts:48:13
       (i32.const 7)
      )
     )
    )
    (br_if $continue|0
     ;;@ assembly/buffer/index.ts:49:13
     (i32.const 1)
    )
   )
  )
  ;;@ assembly/buffer/index.ts:50:5
  (i32.store offset=8
   (get_local $0)
   ;;@ assembly/buffer/index.ts:50:16
   (get_local $5)
  )
  ;;@ assembly/buffer/index.ts:51:11
  (get_local $2)
 )
 (func $~lib/internal/string/allocateUnsafe (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/internal/string.ts:14:2
  (if
   (i32.eqz
    ;;@ ~lib/internal/string.ts:14:9
    (if (result i32)
     (tee_local $1
      (i32.gt_s
       (get_local $0)
       ;;@ ~lib/internal/string.ts:14:18
       (i32.const 0)
      )
     )
     ;;@ ~lib/internal/string.ts:14:23
     (i32.le_s
      (get_local $0)
      ;;@ ~lib/internal/string.ts:14:33
      (get_global $~lib/internal/string/MAX_LENGTH)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 14)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/internal/string.ts:16:2
  (set_local $2
   ;;@ ~lib/internal/string.ts:19:20
   (block $~lib/memory/memory.allocate|inlined.1 (result i32)
    (set_local $1
     ;;@ ~lib/internal/string.ts:19:29
     (i32.add
      (get_global $~lib/internal/string/HEADER_SIZE)
      ;;@ ~lib/internal/string.ts:19:43
      (i32.shl
       ;;@ ~lib/internal/string.ts:19:44
       (get_local $0)
       ;;@ ~lib/internal/string.ts:19:61
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/memory.ts:41:4
    (br $~lib/memory/memory.allocate|inlined.1
     ;;@ ~lib/memory.ts:41:45
     (call $~lib/allocator/arena/__memory_allocate
      ;;@ ~lib/memory.ts:41:63
      (get_local $1)
     )
    )
   )
  )
  ;;@ ~lib/internal/string.ts:21:2
  (i32.store
   ;;@ ~lib/internal/string.ts:21:13
   (get_local $2)
   ;;@ ~lib/internal/string.ts:21:21
   (get_local $0)
  )
  ;;@ ~lib/internal/string.ts:22:34
  (get_local $2)
 )
 (func $~lib/string/String.fromUTF8 (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  ;;@ ~lib/string.ts:500:4
  (if
   ;;@ ~lib/string.ts:500:8
   (i32.lt_u
    (get_local $1)
    ;;@ ~lib/string.ts:500:14
    (i32.const 1)
   )
   ;;@ ~lib/string.ts:500:45
   (return
    ;;@ ~lib/string.ts:500:24
    (i32.const 8)
   )
  )
  ;;@ ~lib/string.ts:501:4
  (set_local $2
   ;;@ ~lib/string.ts:501:17
   (i32.const 0)
  )
  ;;@ ~lib/string.ts:502:4
  (set_local $4
   ;;@ ~lib/string.ts:502:21
   (block $~lib/memory/memory.allocate|inlined.0 (result i32)
    (set_local $3
     ;;@ ~lib/string.ts:502:30
     (i32.shl
      (get_local $1)
      ;;@ ~lib/string.ts:502:44
      (i32.const 1)
     )
    )
    (br $~lib/memory/memory.allocate|inlined.0
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $3)
     )
    )
   )
  )
  ;;@ ~lib/string.ts:503:4
  (set_local $5
   ;;@ ~lib/string.ts:503:17
   (i32.const 0)
  )
  ;;@ ~lib/string.ts:504:4
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/string.ts:504:11
     (i32.lt_u
      (get_local $2)
      ;;@ ~lib/string.ts:504:20
      (get_local $1)
     )
     (block
      ;;@ ~lib/string.ts:504:25
      (block
       ;;@ ~lib/string.ts:505:6
       (set_local $3
        ;;@ ~lib/string.ts:505:15
        (i32.load8_u
         ;;@ ~lib/string.ts:505:29
         (i32.add
          (get_local $0)
          ;;@ ~lib/string.ts:505:35
          (block (result i32)
           (set_local $3
            (get_local $2)
           )
           (set_local $2
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
       ;;@ ~lib/string.ts:506:6
       (if
        ;;@ ~lib/string.ts:506:10
        (i32.lt_u
         (get_local $3)
         ;;@ ~lib/string.ts:506:15
         (i32.const 128)
        )
        ;;@ ~lib/string.ts:506:20
        (block
         ;;@ ~lib/string.ts:507:8
         (i32.store16
          ;;@ ~lib/string.ts:507:19
          (i32.add
           (get_local $4)
           ;;@ ~lib/string.ts:507:25
           (get_local $5)
          )
          ;;@ ~lib/string.ts:507:33
          (get_local $3)
         )
         ;;@ ~lib/string.ts:508:8
         (set_local $5
          (i32.add
           (get_local $5)
           ;;@ ~lib/string.ts:508:18
           (i32.const 2)
          )
         )
        )
        ;;@ ~lib/string.ts:509:13
        (if
         ;;@ ~lib/string.ts:509:17
         (if (result i32)
          (tee_local $6
           (i32.gt_u
            (get_local $3)
            ;;@ ~lib/string.ts:509:22
            (i32.const 191)
           )
          )
          ;;@ ~lib/string.ts:509:29
          (i32.lt_u
           (get_local $3)
           ;;@ ~lib/string.ts:509:34
           (i32.const 224)
          )
          (get_local $6)
         )
         ;;@ ~lib/string.ts:509:39
         (block
          ;;@ ~lib/string.ts:510:8
          (if
           (i32.eqz
            ;;@ ~lib/string.ts:510:15
            (i32.le_u
             (i32.add
              (get_local $2)
              ;;@ ~lib/string.ts:510:24
              (i32.const 1)
             )
             ;;@ ~lib/string.ts:510:29
             (get_local $1)
            )
           )
           (block
            (call $~lib/env/abort
             (i32.const 0)
             (i32.const 16)
             (i32.const 510)
             (i32.const 8)
            )
            (unreachable)
           )
          )
          ;;@ ~lib/string.ts:511:8
          (i32.store16
           ;;@ ~lib/string.ts:511:19
           (i32.add
            (get_local $4)
            ;;@ ~lib/string.ts:511:25
            (get_local $5)
           )
           ;;@ ~lib/string.ts:511:33
           (i32.or
            (i32.shl
             (i32.and
              ;;@ ~lib/string.ts:511:34
              (get_local $3)
              ;;@ ~lib/string.ts:511:39
              (i32.const 31)
             )
             ;;@ ~lib/string.ts:511:46
             (i32.const 6)
            )
            ;;@ ~lib/string.ts:511:50
            (i32.and
             (i32.load8_u
              ;;@ ~lib/string.ts:511:59
              (i32.add
               (get_local $0)
               ;;@ ~lib/string.ts:511:65
               (block (result i32)
                (set_local $6
                 (get_local $2)
                )
                (set_local $2
                 (i32.add
                  (get_local $6)
                  (i32.const 1)
                 )
                )
                (get_local $6)
               )
              )
             )
             ;;@ ~lib/string.ts:511:77
             (i32.const 63)
            )
           )
          )
          ;;@ ~lib/string.ts:512:8
          (set_local $5
           (i32.add
            (get_local $5)
            ;;@ ~lib/string.ts:512:18
            (i32.const 2)
           )
          )
         )
         ;;@ ~lib/string.ts:513:13
         (if
          ;;@ ~lib/string.ts:513:17
          (if (result i32)
           (tee_local $6
            (i32.gt_u
             (get_local $3)
             ;;@ ~lib/string.ts:513:22
             (i32.const 239)
            )
           )
           ;;@ ~lib/string.ts:513:29
           (i32.lt_u
            (get_local $3)
            ;;@ ~lib/string.ts:513:34
            (i32.const 365)
           )
           (get_local $6)
          )
          ;;@ ~lib/string.ts:513:39
          (block
           ;;@ ~lib/string.ts:514:8
           (if
            (i32.eqz
             ;;@ ~lib/string.ts:514:15
             (i32.le_u
              (i32.add
               (get_local $2)
               ;;@ ~lib/string.ts:514:24
               (i32.const 3)
              )
              ;;@ ~lib/string.ts:514:29
              (get_local $1)
             )
            )
            (block
             (call $~lib/env/abort
              (i32.const 0)
              (i32.const 16)
              (i32.const 514)
              (i32.const 8)
             )
             (unreachable)
            )
           )
           ;;@ ~lib/string.ts:515:8
           (set_local $3
            ;;@ ~lib/string.ts:515:13
            (i32.sub
             (i32.or
              ;;@ ~lib/string.ts:516:10
              (i32.or
               (i32.or
                (i32.shl
                 (i32.and
                  ;;@ ~lib/string.ts:516:11
                  (get_local $3)
                  ;;@ ~lib/string.ts:516:39
                  (i32.const 7)
                 )
                 ;;@ ~lib/string.ts:516:45
                 (i32.const 18)
                )
                ;;@ ~lib/string.ts:517:10
                (i32.shl
                 (i32.and
                  ;;@ ~lib/string.ts:517:11
                  (i32.load8_u
                   ;;@ ~lib/string.ts:517:20
                   (i32.add
                    (get_local $0)
                    ;;@ ~lib/string.ts:517:26
                    (block (result i32)
                     (set_local $6
                      (get_local $2)
                     )
                     (set_local $2
                      (i32.add
                       (get_local $6)
                       (i32.const 1)
                      )
                     )
                     (get_local $6)
                    )
                   )
                  )
                  ;;@ ~lib/string.ts:517:38
                  (i32.const 63)
                 )
                 ;;@ ~lib/string.ts:517:45
                 (i32.const 12)
                )
               )
               ;;@ ~lib/string.ts:518:10
               (i32.shl
                (i32.and
                 ;;@ ~lib/string.ts:518:11
                 (i32.load8_u
                  ;;@ ~lib/string.ts:518:20
                  (i32.add
                   (get_local $0)
                   ;;@ ~lib/string.ts:518:26
                   (block (result i32)
                    (set_local $6
                     (get_local $2)
                    )
                    (set_local $2
                     (i32.add
                      (get_local $6)
                      (i32.const 1)
                     )
                    )
                    (get_local $6)
                   )
                  )
                 )
                 ;;@ ~lib/string.ts:518:38
                 (i32.const 63)
                )
                ;;@ ~lib/string.ts:518:45
                (i32.const 6)
               )
              )
              ;;@ ~lib/string.ts:519:11
              (i32.and
               (i32.load8_u
                ;;@ ~lib/string.ts:519:20
                (i32.add
                 (get_local $0)
                 ;;@ ~lib/string.ts:519:26
                 (block (result i32)
                  (set_local $6
                   (get_local $2)
                  )
                  (set_local $2
                   (i32.add
                    (get_local $6)
                    (i32.const 1)
                   )
                  )
                  (get_local $6)
                 )
                )
               )
               ;;@ ~lib/string.ts:519:38
               (i32.const 63)
              )
             )
             ;;@ ~lib/string.ts:520:12
             (i32.const 65536)
            )
           )
           ;;@ ~lib/string.ts:521:8
           (i32.store16
            ;;@ ~lib/string.ts:521:19
            (i32.add
             (get_local $4)
             ;;@ ~lib/string.ts:521:25
             (get_local $5)
            )
            ;;@ ~lib/string.ts:521:33
            (i32.add
             (i32.const 55296)
             ;;@ ~lib/string.ts:521:42
             (i32.shr_u
              ;;@ ~lib/string.ts:521:43
              (get_local $3)
              ;;@ ~lib/string.ts:521:49
              (i32.const 10)
             )
            )
           )
           ;;@ ~lib/string.ts:522:8
           (set_local $5
            (i32.add
             (get_local $5)
             ;;@ ~lib/string.ts:522:18
             (i32.const 2)
            )
           )
           ;;@ ~lib/string.ts:523:8
           (i32.store16
            ;;@ ~lib/string.ts:523:19
            (i32.add
             (get_local $4)
             ;;@ ~lib/string.ts:523:25
             (get_local $5)
            )
            ;;@ ~lib/string.ts:523:33
            (i32.add
             (i32.const 56320)
             ;;@ ~lib/string.ts:523:42
             (i32.and
              ;;@ ~lib/string.ts:523:43
              (get_local $3)
              ;;@ ~lib/string.ts:523:48
              (i32.const 1023)
             )
            )
           )
           ;;@ ~lib/string.ts:524:8
           (set_local $5
            (i32.add
             (get_local $5)
             ;;@ ~lib/string.ts:524:18
             (i32.const 2)
            )
           )
          )
          ;;@ ~lib/string.ts:525:13
          (block
           ;;@ ~lib/string.ts:526:8
           (if
            (i32.eqz
             ;;@ ~lib/string.ts:526:15
             (i32.le_u
              (i32.add
               (get_local $2)
               ;;@ ~lib/string.ts:526:24
               (i32.const 2)
              )
              ;;@ ~lib/string.ts:526:29
              (get_local $1)
             )
            )
            (block
             (call $~lib/env/abort
              (i32.const 0)
              (i32.const 16)
              (i32.const 526)
              (i32.const 8)
             )
             (unreachable)
            )
           )
           ;;@ ~lib/string.ts:527:8
           (i32.store16
            ;;@ ~lib/string.ts:527:19
            (i32.add
             (get_local $4)
             ;;@ ~lib/string.ts:527:25
             (get_local $5)
            )
            ;;@ ~lib/string.ts:528:10
            (i32.or
             (i32.or
              (i32.shl
               (i32.and
                ;;@ ~lib/string.ts:528:11
                (get_local $3)
                ;;@ ~lib/string.ts:528:38
                (i32.const 15)
               )
               ;;@ ~lib/string.ts:528:45
               (i32.const 12)
              )
              ;;@ ~lib/string.ts:529:10
              (i32.shl
               (i32.and
                ;;@ ~lib/string.ts:529:11
                (i32.load8_u
                 ;;@ ~lib/string.ts:529:20
                 (i32.add
                  (get_local $0)
                  ;;@ ~lib/string.ts:529:26
                  (block (result i32)
                   (set_local $6
                    (get_local $2)
                   )
                   (set_local $2
                    (i32.add
                     (get_local $6)
                     (i32.const 1)
                    )
                   )
                   (get_local $6)
                  )
                 )
                )
                ;;@ ~lib/string.ts:529:38
                (i32.const 63)
               )
               ;;@ ~lib/string.ts:529:45
               (i32.const 6)
              )
             )
             ;;@ ~lib/string.ts:530:11
             (i32.and
              (i32.load8_u
               ;;@ ~lib/string.ts:530:20
               (i32.add
                (get_local $0)
                ;;@ ~lib/string.ts:530:26
                (block (result i32)
                 (set_local $6
                  (get_local $2)
                 )
                 (set_local $2
                  (i32.add
                   (get_local $6)
                   (i32.const 1)
                  )
                 )
                 (get_local $6)
                )
               )
              )
              ;;@ ~lib/string.ts:530:38
              (i32.const 63)
             )
            )
           )
           ;;@ ~lib/string.ts:532:8
           (set_local $5
            (i32.add
             (get_local $5)
             ;;@ ~lib/string.ts:532:18
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ ~lib/string.ts:535:4
  (if
   (i32.eqz
    ;;@ ~lib/string.ts:535:11
    (i32.eq
     (get_local $2)
     ;;@ ~lib/string.ts:535:21
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 16)
     (i32.const 535)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/string.ts:536:4
  (set_local $7
   ;;@ ~lib/string.ts:536:14
   (call $~lib/internal/string/allocateUnsafe
    ;;@ ~lib/string.ts:536:29
    (i32.shr_u
     ;;@ ~lib/string.ts:536:35
     (get_local $5)
     ;;@ ~lib/string.ts:536:45
     (i32.const 1)
    )
   )
  )
  ;;@ ~lib/string.ts:537:11
  (block $~lib/memory/memory.copy|inlined.0
   (set_local $3
    ;;@ ~lib/string.ts:537:16
    (i32.add
     (get_local $7)
     ;;@ ~lib/string.ts:537:41
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   ;;@ ~lib/memory.ts:20:4
   (call $~lib/internal/memory/memmove
    ;;@ ~lib/memory.ts:20:12
    (get_local $3)
    ;;@ ~lib/memory.ts:20:18
    (get_local $4)
    ;;@ ~lib/memory.ts:20:23
    (get_local $5)
   )
  )
  ;;@ ~lib/string.ts:538:11
  (block $~lib/memory/memory.free|inlined.0
   ;;@ ~lib/memory.ts:47:4
   (block
    ;;@ ~lib/memory.ts:47:36
    (call $~lib/allocator/arena/__memory_free
     ;;@ ~lib/memory.ts:47:50
     (get_local $4)
    )
    ;;@ ~lib/memory.ts:47:56
    (br $~lib/memory/memory.free|inlined.0)
   )
  )
  ;;@ ~lib/string.ts:539:11
  (get_local $7)
 )
 (func $assembly/index/Parser#parseString (; 19 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/index.ts:42:63
  (call $~lib/string/String.fromUTF8
   ;;@ assembly/index.ts:42:26
   (i32.load offset=8
    (i32.load
     (get_local $0)
    )
   )
   ;;@ assembly/index.ts:42:48
   (call $assembly/buffer/index/Buffer#readVaruint
    ;;@ assembly/index.ts:42:39
    (i32.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:42:60
    (i32.const 32)
   )
  )
 )
 (func $assembly/index/Parser#readVaruint (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:46:34
  (call $assembly/buffer/index/Buffer#readVaruint
   ;;@ assembly/index.ts:46:10
   (i32.load
    (get_local $0)
   )
   ;;@ assembly/index.ts:46:31
   (get_local $1)
  )
 )
 (func $assembly/index/Parser#get:off (; 21 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/index.ts:50:19
  (i32.load offset=8
   ;;@ assembly/index.ts:50:10
   (i32.load
    (get_local $0)
   )
  )
 )
 (func $assembly/index/Parser#set:off (; 22 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/index.ts:54:3
  (i32.store offset=8
   (i32.load
    (get_local $0)
   )
   ;;@ assembly/index.ts:54:18
   (get_local $1)
  )
 )
 (func $assembly/buffer/index/Buffer#readUint<u32> (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/buffer/index.ts:20:4
  (set_local $1
   ;;@ assembly/buffer/index.ts:20:14
   (i32.load offset=8
    (get_local $0)
   )
  )
  ;;@ assembly/buffer/index.ts:21:4
  (set_local $2
   ;;@ assembly/buffer/index.ts:21:14
   (i32.load
    ;;@ assembly/buffer/index.ts:21:27
    (get_local $1)
   )
  )
  ;;@ assembly/buffer/index.ts:22:4
  (i32.store offset=8
   (get_local $0)
   ;;@ assembly/buffer/index.ts:22:15
   (i32.add
    (get_local $1)
    ;;@ assembly/buffer/index.ts:22:21
    (i32.const 4)
   )
  )
  ;;@ assembly/buffer/index.ts:23:11
  (get_local $2)
 )
 (func $assembly/buffer/index/Buffer#peekVaruint (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ assembly/buffer/index.ts:55:4
  (set_local $2
   ;;@ assembly/buffer/index.ts:55:17
   (i32.load offset=8
    (get_local $0)
   )
  )
  ;;@ assembly/buffer/index.ts:56:4
  (set_local $3
   ;;@ assembly/buffer/index.ts:56:19
   (call $assembly/buffer/index/Buffer#readVaruint
    ;;@ assembly/buffer/index.ts:56:14
    (get_local $0)
    ;;@ assembly/buffer/index.ts:56:31
    (get_local $1)
   )
  )
  ;;@ assembly/buffer/index.ts:57:4
  (i32.store offset=8
   (get_local $0)
   ;;@ assembly/buffer/index.ts:57:16
   (get_local $2)
  )
  ;;@ assembly/buffer/index.ts:58:11
  (get_local $3)
 )
 (func $assembly/buffer/index/Buffer#readVarint (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ assembly/buffer/index.ts:63:4
  (set_local $2
   ;;@ assembly/buffer/index.ts:63:19
   (i32.const 0)
  )
  ;;@ assembly/buffer/index.ts:64:4
  (set_local $3
   ;;@ assembly/buffer/index.ts:64:19
   (i32.const 0)
  )
  ;;@ assembly/buffer/index.ts:66:4
  (set_local $5
   ;;@ assembly/buffer/index.ts:66:15
   (i32.load offset=8
    (get_local $0)
   )
  )
  ;;@ assembly/buffer/index.ts:67:4
  (block $break|0
   (loop $continue|0
    ;;@ assembly/buffer/index.ts:67:7
    (block
     ;;@ assembly/buffer/index.ts:68:6
     (set_local $4
      ;;@ assembly/buffer/index.ts:68:12
      (i32.load8_u
       ;;@ assembly/buffer/index.ts:68:21
       (block (result i32)
        (set_local $6
         (get_local $5)
        )
        (set_local $5
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
     ;;@ assembly/buffer/index.ts:69:6
     (set_local $2
      (i32.or
       (get_local $2)
       ;;@ assembly/buffer/index.ts:69:13
       (i32.shl
        (i32.and
         ;;@ assembly/buffer/index.ts:69:14
         (get_local $4)
         ;;@ assembly/buffer/index.ts:69:20
         (i32.const 127)
        )
        ;;@ assembly/buffer/index.ts:69:29
        (get_local $3)
       )
      )
     )
     ;;@ assembly/buffer/index.ts:70:6
     (set_local $3
      (i32.add
       (get_local $3)
       ;;@ assembly/buffer/index.ts:70:13
       (i32.const 7)
      )
     )
    )
    (br_if $continue|0
     ;;@ assembly/buffer/index.ts:71:13
     (i32.and
      (get_local $4)
      ;;@ assembly/buffer/index.ts:71:19
      (i32.const 128)
     )
    )
   )
  )
  ;;@ assembly/buffer/index.ts:72:5
  (i32.store offset=8
   (get_local $0)
   ;;@ assembly/buffer/index.ts:72:16
   (get_local $5)
  )
  ;;@ assembly/buffer/index.ts:73:78
  (select
   ;;@ assembly/buffer/index.ts:73:23
   (i32.or
    (get_local $2)
    ;;@ assembly/buffer/index.ts:73:29
    (i32.shl
     ;;@ assembly/buffer/index.ts:73:30
     (i32.xor
      ;;@ assembly/buffer/index.ts:73:31
      (i32.const 0)
      (i32.const -1)
     )
     ;;@ assembly/buffer/index.ts:73:36
     (get_local $3)
    )
   )
   ;;@ assembly/buffer/index.ts:73:42
   (get_local $2)
   ;;@ assembly/buffer/index.ts:73:47
   (if (result i32)
    (tee_local $6
     (i32.lt_u
      (get_local $3)
      ;;@ assembly/buffer/index.ts:73:53
      (get_local $1)
     )
    )
    ;;@ assembly/buffer/index.ts:73:61
    (i32.ne
     (i32.and
      ;;@ assembly/buffer/index.ts:73:62
      (get_local $4)
      ;;@ assembly/buffer/index.ts:73:68
      (i32.const 64)
     )
     ;;@ assembly/buffer/index.ts:73:77
     (i32.const 0)
    )
    (get_local $6)
   )
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 26 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 27 ;) (type $ii) (param $0 i32) (result i32)
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
     (i32.const 208)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:25:2
  (set_local $1
   ;;@ ~lib/internal/arraybuffer.ts:28:20
   (block $~lib/memory/memory.allocate|inlined.2 (result i32)
    (set_local $2
     ;;@ ~lib/internal/arraybuffer.ts:28:29
     (call $~lib/internal/arraybuffer/computeSize
      ;;@ ~lib/internal/arraybuffer.ts:28:41
      (get_local $0)
     )
    )
    ;;@ ~lib/memory.ts:41:4
    (br $~lib/memory/memory.allocate|inlined.2
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
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ ~lib/internal/arraybuffer.ts:35:2
  (set_local $2
   ;;@ ~lib/internal/arraybuffer.ts:35:22
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:36:2
  (if
   ;;@ ~lib/internal/arraybuffer.ts:36:6
   (i32.gt_s
    (get_local $1)
    ;;@ ~lib/internal/arraybuffer.ts:36:22
    (get_local $2)
   )
   ;;@ ~lib/internal/arraybuffer.ts:36:37
   (block
    ;;@ ~lib/internal/arraybuffer.ts:37:4
    (if
     (i32.eqz
      ;;@ ~lib/internal/arraybuffer.ts:37:11
      (i32.le_s
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:37:28
       (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 208)
       (i32.const 37)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:38:4
    (if
     ;;@ ~lib/internal/arraybuffer.ts:38:8
     (i32.le_s
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:38:25
      (i32.sub
       ;;@ ~lib/internal/arraybuffer.ts:38:31
       (call $~lib/internal/arraybuffer/computeSize
        ;;@ ~lib/internal/arraybuffer.ts:38:43
        (get_local $2)
       )
       ;;@ ~lib/internal/arraybuffer.ts:38:60
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
     )
     ;;@ ~lib/internal/arraybuffer.ts:38:74
     (block
      ;;@ ~lib/internal/arraybuffer.ts:39:6
      (i32.store
       ;;@ ~lib/internal/arraybuffer.ts:39:17
       (get_local $0)
       ;;@ ~lib/internal/arraybuffer.ts:39:44
       (get_local $1)
      )
      ;;@ ~lib/internal/arraybuffer.ts:40:13
      (block $~lib/memory/memory.fill|inlined.0
       (set_local $3
        ;;@ ~lib/internal/arraybuffer.ts:41:8
        (i32.add
         (i32.add
          (get_local $0)
          ;;@ ~lib/internal/arraybuffer.ts:41:36
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         ;;@ ~lib/internal/arraybuffer.ts:41:50
         (get_local $2)
        )
       )
       (set_local $4
        ;;@ ~lib/internal/arraybuffer.ts:42:8
        (i32.const 0)
       )
       (set_local $5
        ;;@ ~lib/internal/arraybuffer.ts:43:8
        (i32.sub
         ;;@ ~lib/internal/arraybuffer.ts:43:16
         (get_local $1)
         ;;@ ~lib/internal/arraybuffer.ts:43:32
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $5)
       )
      )
     )
     ;;@ ~lib/internal/arraybuffer.ts:45:11
     (block
      ;;@ ~lib/internal/arraybuffer.ts:46:6
      (set_local $5
       ;;@ ~lib/internal/arraybuffer.ts:46:22
       (call $~lib/internal/arraybuffer/allocateUnsafe
        ;;@ ~lib/internal/arraybuffer.ts:46:37
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/arraybuffer.ts:47:13
      (block $~lib/memory/memory.copy|inlined.1
       (set_local $4
        ;;@ ~lib/internal/arraybuffer.ts:48:8
        (i32.add
         (get_local $5)
         ;;@ ~lib/internal/arraybuffer.ts:48:39
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (set_local $3
        ;;@ ~lib/internal/arraybuffer.ts:49:8
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/arraybuffer.ts:49:36
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       ;;@ ~lib/memory.ts:20:4
       (call $~lib/internal/memory/memmove
        ;;@ ~lib/memory.ts:20:12
        (get_local $4)
        ;;@ ~lib/memory.ts:20:18
        (get_local $3)
        ;;@ ~lib/memory.ts:20:23
        (get_local $2)
       )
      )
      ;;@ ~lib/internal/arraybuffer.ts:52:13
      (block $~lib/memory/memory.fill|inlined.1
       (set_local $3
        ;;@ ~lib/internal/arraybuffer.ts:53:8
        (i32.add
         (i32.add
          (get_local $5)
          ;;@ ~lib/internal/arraybuffer.ts:53:39
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         ;;@ ~lib/internal/arraybuffer.ts:53:53
         (get_local $2)
        )
       )
       (set_local $4
        ;;@ ~lib/internal/arraybuffer.ts:54:8
        (i32.const 0)
       )
       (set_local $6
        ;;@ ~lib/internal/arraybuffer.ts:55:8
        (i32.sub
         ;;@ ~lib/internal/arraybuffer.ts:55:16
         (get_local $1)
         ;;@ ~lib/internal/arraybuffer.ts:55:32
         (get_local $2)
        )
       )
       ;;@ ~lib/memory.ts:15:4
       (call $~lib/internal/memory/memset
        ;;@ ~lib/memory.ts:15:11
        (get_local $3)
        ;;@ ~lib/memory.ts:15:17
        (get_local $4)
        ;;@ ~lib/memory.ts:15:20
        (get_local $6)
       )
      )
      ;;@ ~lib/internal/arraybuffer.ts:57:13
      (return
       (get_local $5)
      )
     )
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:59:9
   (if
    ;;@ ~lib/internal/arraybuffer.ts:59:13
    (i32.lt_s
     (get_local $1)
     ;;@ ~lib/internal/arraybuffer.ts:59:29
     (get_local $2)
    )
    ;;@ ~lib/internal/arraybuffer.ts:59:44
    (block
     ;;@ ~lib/internal/arraybuffer.ts:61:4
     (if
      (i32.eqz
       ;;@ ~lib/internal/arraybuffer.ts:61:11
       (i32.ge_s
        (get_local $1)
        ;;@ ~lib/internal/arraybuffer.ts:61:28
        (i32.const 0)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 208)
        (i32.const 61)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     ;;@ ~lib/internal/arraybuffer.ts:62:4
     (i32.store
      ;;@ ~lib/internal/arraybuffer.ts:62:15
      (get_local $0)
      ;;@ ~lib/internal/arraybuffer.ts:62:42
      (get_local $1)
     )
    )
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:64:9
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#push (; 29 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/array.ts:166:4
  (set_local $2
   ;;@ ~lib/array.ts:166:17
   (i32.load offset=4
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:167:4
  (set_local $3
   ;;@ ~lib/array.ts:167:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:168:4
  (set_local $4
   ;;@ ~lib/array.ts:168:19
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    ;;@ ~lib/array.ts:168:41
    (i32.const 2)
   )
  )
  ;;@ ~lib/array.ts:169:4
  (set_local $5
   ;;@ ~lib/array.ts:169:20
   (i32.add
    (get_local $2)
    ;;@ ~lib/array.ts:169:29
    (i32.const 1)
   )
  )
  ;;@ ~lib/array.ts:170:4
  (if
   ;;@ ~lib/array.ts:170:8
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/array.ts:170:23
    (get_local $4)
   )
   ;;@ ~lib/array.ts:170:38
   (block
    ;;@ ~lib/array.ts:172:6
    (if
     ;;@ ~lib/array.ts:172:10
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/array.ts:172:25
      (i32.const 268435454)
     )
     ;;@ ~lib/array.ts:172:42
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 176)
       (i32.const 172)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/array.ts:173:6
    (set_local $3
     ;;@ ~lib/array.ts:173:15
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      ;;@ ~lib/array.ts:173:32
      (get_local $3)
      ;;@ ~lib/array.ts:173:40
      (i32.shl
       (get_local $5)
       ;;@ ~lib/array.ts:173:53
       (i32.const 2)
      )
     )
    )
    ;;@ ~lib/array.ts:174:6
    (i32.store
     (get_local $0)
     ;;@ ~lib/array.ts:174:21
     (get_local $3)
    )
   )
  )
  ;;@ ~lib/array.ts:176:4
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/array.ts:176:19
   (get_local $5)
  )
  ;;@ ~lib/array.ts:177:4
  (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.0
   ;;@ ~lib/internal/arraybuffer.ts:72:2
   (i32.store offset=8
    ;;@ ~lib/internal/arraybuffer.ts:72:11
    (i32.add
     (get_local $3)
     ;;@ ~lib/internal/arraybuffer.ts:72:39
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:72:40
      (get_local $2)
      ;;@ ~lib/internal/arraybuffer.ts:72:56
      (i32.const 2)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:72:71
    (get_local $1)
   )
  )
  ;;@ ~lib/array.ts:179:11
  (get_local $5)
 )
 (func $assembly/module/index/FuncType#constructor (; 30 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $5
       (call $~lib/memory/memory.allocate
        (i32.const 16)
       )
      )
      (i32.store
       (get_local $5)
       (get_local $1)
      )
      (i32.store offset=4
       (get_local $5)
       (get_local $2)
      )
      (i32.store offset=8
       (get_local $5)
       (get_local $3)
      )
      (i32.store offset=12
       (get_local $5)
       (get_local $4)
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<FuncType>#push (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/array.ts:166:4
  (set_local $2
   ;;@ ~lib/array.ts:166:17
   (i32.load offset=4
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:167:4
  (set_local $3
   ;;@ ~lib/array.ts:167:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:168:4
  (set_local $4
   ;;@ ~lib/array.ts:168:19
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    ;;@ ~lib/array.ts:168:41
    (i32.const 2)
   )
  )
  ;;@ ~lib/array.ts:169:4
  (set_local $5
   ;;@ ~lib/array.ts:169:20
   (i32.add
    (get_local $2)
    ;;@ ~lib/array.ts:169:29
    (i32.const 1)
   )
  )
  ;;@ ~lib/array.ts:170:4
  (if
   ;;@ ~lib/array.ts:170:8
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/array.ts:170:23
    (get_local $4)
   )
   ;;@ ~lib/array.ts:170:38
   (block
    ;;@ ~lib/array.ts:172:6
    (if
     ;;@ ~lib/array.ts:172:10
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/array.ts:172:25
      (i32.const 268435454)
     )
     ;;@ ~lib/array.ts:172:42
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 176)
       (i32.const 172)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/array.ts:173:6
    (set_local $3
     ;;@ ~lib/array.ts:173:15
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      ;;@ ~lib/array.ts:173:32
      (get_local $3)
      ;;@ ~lib/array.ts:173:40
      (i32.shl
       (get_local $5)
       ;;@ ~lib/array.ts:173:53
       (i32.const 2)
      )
     )
    )
    ;;@ ~lib/array.ts:174:6
    (i32.store
     (get_local $0)
     ;;@ ~lib/array.ts:174:21
     (get_local $3)
    )
   )
  )
  ;;@ ~lib/array.ts:176:4
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/array.ts:176:19
   (get_local $5)
  )
  ;;@ ~lib/array.ts:177:4
  (block $~lib/internal/arraybuffer/storeUnsafe<FuncType,FuncType>|inlined.0
   ;;@ ~lib/internal/arraybuffer.ts:72:2
   (i32.store offset=8
    ;;@ ~lib/internal/arraybuffer.ts:72:11
    (i32.add
     (get_local $3)
     ;;@ ~lib/internal/arraybuffer.ts:72:39
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:72:40
      (get_local $2)
      ;;@ ~lib/internal/arraybuffer.ts:72:56
      (i32.const 2)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:72:71
    (get_local $1)
   )
  )
  ;;@ ~lib/array.ts:179:11
  (get_local $5)
 )
 (func $assembly/module/index/TypeSection#get:end (; 32 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/module/index.ts:100:35
  (i32.add
   ;;@ assembly/module/index.ts:100:11
   (i32.load offset=12
    (get_local $0)
   )
   ;;@ assembly/module/index.ts:100:30
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $assembly/module/index/TypeSection#parse (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  ;;@ assembly/module/index.ts:104:4
  (i32.store offset=8
   (get_local $1)
   ;;@ assembly/module/index.ts:104:14
   (i32.load offset=12
    (get_local $0)
   )
  )
  ;;@ assembly/module/index.ts:105:4
  (set_local $2
   ;;@ assembly/module/index.ts:105:20
   (call $assembly/buffer/index/Buffer#readVaruint
    ;;@ assembly/module/index.ts:105:16
    (get_local $1)
    ;;@ assembly/module/index.ts:105:32
    (i32.const 32)
   )
  )
  ;;@ assembly/module/index.ts:106:4
  (block $break|0
   ;;@ assembly/module/index.ts:106:9
   (set_local $3
    ;;@ assembly/module/index.ts:106:26
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/module/index.ts:106:29
      (i32.lt_u
       (get_local $3)
       ;;@ assembly/module/index.ts:106:37
       (get_local $2)
      )
     )
    )
    ;;@ assembly/module/index.ts:106:53
    (block
     ;;@ assembly/module/index.ts:107:6
     (set_local $4
      ;;@ assembly/module/index.ts:107:17
      (i32.and
       ;;@ assembly/module/index.ts:107:21
       (call $assembly/buffer/index/Buffer#readVarint
        ;;@ assembly/module/index.ts:107:17
        (get_local $1)
        ;;@ assembly/module/index.ts:107:32
        (i32.const 7)
       )
       ;;@ assembly/module/index.ts:107:37
       (i32.const 127)
      )
     )
     ;;@ assembly/module/index.ts:112:6
     (set_local $5
      ;;@ assembly/module/index.ts:112:27
      (call $assembly/buffer/index/Buffer#readVaruint
       ;;@ assembly/module/index.ts:112:23
       (get_local $1)
       ;;@ assembly/module/index.ts:112:39
       (i32.const 32)
      )
     )
     ;;@ assembly/module/index.ts:113:6
     (set_local $6
      ;;@ assembly/module/index.ts:113:30
      (i32.const 168)
     )
     ;;@ assembly/module/index.ts:114:6
     (block $break|1
      ;;@ assembly/module/index.ts:114:11
      (set_local $7
       ;;@ assembly/module/index.ts:114:33
       (i32.const 0)
      )
      (loop $repeat|1
       (br_if $break|1
        (i32.eqz
         ;;@ assembly/module/index.ts:114:36
         (i32.lt_u
          (get_local $7)
          ;;@ assembly/module/index.ts:114:49
          (get_local $5)
         )
        )
       )
       ;;@ assembly/module/index.ts:114:75
       (block
        ;;@ assembly/module/index.ts:115:8
        (set_local $8
         ;;@ assembly/module/index.ts:115:24
         (i32.and
          ;;@ assembly/module/index.ts:115:28
          (call $assembly/buffer/index/Buffer#readVarint
           ;;@ assembly/module/index.ts:115:24
           (get_local $1)
           ;;@ assembly/module/index.ts:115:39
           (i32.const 7)
          )
          ;;@ assembly/module/index.ts:115:44
          (i32.const 127)
         )
        )
        ;;@ assembly/module/index.ts:121:19
        (drop
         (call $~lib/array/Array<i32>#push
          ;;@ assembly/module/index.ts:121:8
          (get_local $6)
          ;;@ assembly/module/index.ts:121:24
          (get_local $8)
         )
        )
       )
       ;;@ assembly/module/index.ts:114:61
       (set_local $7
        (i32.add
         ;;@ assembly/module/index.ts:114:63
         (get_local $7)
         (i32.const 1)
        )
       )
       (br $repeat|1)
      )
     )
     ;;@ assembly/module/index.ts:123:6
     (set_local $7
      ;;@ assembly/module/index.ts:123:28
      (call $assembly/buffer/index/Buffer#readVaruint
       ;;@ assembly/module/index.ts:123:24
       (get_local $1)
       ;;@ assembly/module/index.ts:123:40
       (i32.const 1)
      )
     )
     ;;@ assembly/module/index.ts:124:6
     (set_local $8
      ;;@ assembly/module/index.ts:124:30
      (i32.const 280)
     )
     ;;@ assembly/module/index.ts:125:6
     (block $break|2
      ;;@ assembly/module/index.ts:125:11
      (set_local $9
       ;;@ assembly/module/index.ts:125:34
       (i32.const 0)
      )
      (loop $repeat|2
       (br_if $break|2
        (i32.eqz
         ;;@ assembly/module/index.ts:125:37
         (i32.lt_u
          (get_local $9)
          ;;@ assembly/module/index.ts:125:51
          (get_local $7)
         )
        )
       )
       ;;@ assembly/module/index.ts:125:79
       (block
        ;;@ assembly/module/index.ts:126:8
        (set_local $10
         ;;@ assembly/module/index.ts:126:25
         (i32.and
          ;;@ assembly/module/index.ts:126:29
          (call $assembly/buffer/index/Buffer#readVarint
           ;;@ assembly/module/index.ts:126:25
           (get_local $1)
           ;;@ assembly/module/index.ts:126:40
           (i32.const 7)
          )
          ;;@ assembly/module/index.ts:126:45
          (i32.const 127)
         )
        )
        ;;@ assembly/module/index.ts:132:19
        (drop
         (call $~lib/array/Array<i32>#push
          ;;@ assembly/module/index.ts:132:8
          (get_local $8)
          ;;@ assembly/module/index.ts:132:24
          (get_local $10)
         )
        )
       )
       ;;@ assembly/module/index.ts:125:64
       (set_local $9
        (i32.add
         ;;@ assembly/module/index.ts:125:66
         (get_local $9)
         (i32.const 1)
        )
       )
       (br $repeat|2)
      )
     )
     ;;@ assembly/module/index.ts:134:17
     (drop
      (call $~lib/array/Array<FuncType>#push
       ;;@ assembly/module/index.ts:134:6
       (i32.load offset=20
        (get_local $0)
       )
       ;;@ assembly/module/index.ts:134:22
       (call $assembly/module/index/FuncType#constructor
        (i32.const 0)
        ;;@ assembly/module/index.ts:134:35
        (get_local $3)
        ;;@ assembly/module/index.ts:134:42
        (get_local $4)
        ;;@ assembly/module/index.ts:134:48
        (get_local $6)
        ;;@ assembly/module/index.ts:134:60
        (get_local $8)
       )
      )
     )
    )
    ;;@ assembly/module/index.ts:106:44
    (set_local $3
     (i32.add
      ;;@ assembly/module/index.ts:106:46
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/module/index.ts:136:4
  (i32.store offset=8
   (get_local $1)
   ;;@ assembly/module/index.ts:136:14
   (call $assembly/module/index/TypeSection#get:end
    (get_local $0)
   )
  )
  ;;@ assembly/module/index.ts:137:11
  (get_local $0)
 )
 (func $assembly/module/index/TypeSection#constructor (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ assembly/module/index.ts:95:4
  (drop
   (get_local $0)
  )
  ;;@ assembly/module/index.ts:95:9
  (drop
   ;;@ assembly/module/index.ts:95:10
   (get_local $1)
  )
  ;;@ assembly/module/index.ts:96:9
  (drop
   (call $assembly/module/index/TypeSection#parse
    ;;@ assembly/module/index.ts:96:4
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $2
         (call $~lib/memory/memory.allocate
          (i32.const 24)
         )
        )
        (i32.store
         (get_local $2)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $2)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $2)
         (i32.const 0)
        )
        (i32.store offset=12
         (get_local $2)
         (i32.const 0)
        )
        (i32.store offset=16
         (get_local $2)
         ;;@ assembly/module/index.ts:51:17
         (i32.const 8)
        )
        (i32.store offset=20
         (get_local $2)
         (i32.const 0)
        )
        (get_local $2)
       )
      )
     )
    )
    ;;@ assembly/module/index.ts:96:15
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/string/copyUnsafe (; 35 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  ;;@ ~lib/internal/string.ts:34:9
  (block $~lib/memory/memory.copy|inlined.2
   (set_local $5
    ;;@ ~lib/internal/string.ts:35:4
    (i32.add
     (i32.add
      (get_local $0)
      ;;@ ~lib/internal/string.ts:35:30
      (i32.shl
       ;;@ ~lib/internal/string.ts:35:31
       (get_local $1)
       ;;@ ~lib/internal/string.ts:35:45
       (i32.const 1)
      )
     )
     ;;@ ~lib/internal/string.ts:35:50
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (set_local $6
    ;;@ ~lib/internal/string.ts:36:4
    (i32.add
     (i32.add
      (get_local $2)
      ;;@ ~lib/internal/string.ts:36:30
      (i32.shl
       ;;@ ~lib/internal/string.ts:36:31
       (get_local $3)
       ;;@ ~lib/internal/string.ts:36:45
       (i32.const 1)
      )
     )
     ;;@ ~lib/internal/string.ts:36:50
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (set_local $7
    ;;@ ~lib/internal/string.ts:37:4
    (i32.shl
     (get_local $4)
     ;;@ ~lib/internal/string.ts:37:11
     (i32.const 1)
    )
   )
   ;;@ ~lib/memory.ts:20:4
   (call $~lib/internal/memory/memmove
    ;;@ ~lib/memory.ts:20:12
    (get_local $5)
    ;;@ ~lib/memory.ts:20:18
    (get_local $6)
    ;;@ ~lib/memory.ts:20:23
    (get_local $7)
   )
  )
 )
 (func $~lib/string/String#concat (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/string.ts:110:4
  (if
   (i32.eqz
    ;;@ ~lib/string.ts:110:11
    (i32.ne
     (get_local $0)
     ;;@ ~lib/string.ts:110:20
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 16)
     (i32.const 110)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/string.ts:111:4
  (if
   ;;@ ~lib/string.ts:111:8
   (i32.eq
    (get_local $1)
    ;;@ ~lib/string.ts:111:18
    (i32.const 0)
   )
   ;;@ ~lib/string.ts:111:24
   (set_local $1
    ;;@ ~lib/string.ts:111:32
    (i32.const 296)
   )
  )
  ;;@ ~lib/string.ts:113:4
  (set_local $2
   ;;@ ~lib/string.ts:113:25
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/string.ts:114:4
  (set_local $3
   ;;@ ~lib/string.ts:114:26
   (i32.load
    (get_local $1)
   )
  )
  ;;@ ~lib/string.ts:115:4
  (set_local $4
   ;;@ ~lib/string.ts:115:24
   (i32.add
    (get_local $2)
    ;;@ ~lib/string.ts:115:34
    (get_local $3)
   )
  )
  ;;@ ~lib/string.ts:116:4
  (if
   ;;@ ~lib/string.ts:116:8
   (i32.eq
    (get_local $4)
    ;;@ ~lib/string.ts:116:18
    (i32.const 0)
   )
   ;;@ ~lib/string.ts:116:49
   (return
    ;;@ ~lib/string.ts:116:28
    (i32.const 8)
   )
  )
  ;;@ ~lib/string.ts:117:4
  (set_local $5
   ;;@ ~lib/string.ts:117:14
   (call $~lib/internal/string/allocateUnsafe
    ;;@ ~lib/string.ts:117:29
    (get_local $4)
   )
  )
  ;;@ ~lib/string.ts:118:4
  (call $~lib/internal/string/copyUnsafe
   ;;@ ~lib/string.ts:118:15
   (get_local $5)
   ;;@ ~lib/string.ts:118:20
   (i32.const 0)
   ;;@ ~lib/string.ts:118:23
   (get_local $0)
   ;;@ ~lib/string.ts:118:29
   (i32.const 0)
   ;;@ ~lib/string.ts:118:32
   (get_local $2)
  )
  ;;@ ~lib/string.ts:119:4
  (call $~lib/internal/string/copyUnsafe
   ;;@ ~lib/string.ts:119:15
   (get_local $5)
   ;;@ ~lib/string.ts:119:20
   (get_local $2)
   ;;@ ~lib/string.ts:119:29
   (get_local $1)
   ;;@ ~lib/string.ts:119:36
   (i32.const 0)
   ;;@ ~lib/string.ts:119:39
   (get_local $3)
  )
  ;;@ ~lib/string.ts:120:11
  (get_local $5)
 )
 (func $~lib/string/String.__concat (; 37 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/string.ts:105:4
  (if
   ;;@ ~lib/string.ts:105:8
   (i32.eqz
    ;;@ ~lib/string.ts:105:9
    (get_local $0)
   )
   ;;@ ~lib/string.ts:105:34
   (set_local $0
    ;;@ ~lib/string.ts:105:41
    (i32.const 296)
   )
  )
  ;;@ ~lib/string.ts:106:28
  (call $~lib/string/String#concat
   ;;@ ~lib/string.ts:106:11
   (get_local $0)
   ;;@ ~lib/string.ts:106:23
   (get_local $1)
  )
 )
 (func $assembly/module/index/sectionName (; 38 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/module/index.ts:14:2
  (block $break|0
   (block $case12|0
    (block $case11|0
     (block $case10|0
      (block $case9|0
       (block $case8|0
        (block $case7|0
         (block $case6|0
          (block $case5|0
           (block $case4|0
            (block $case3|0
             (block $case2|0
              (block $case1|0
               (block $case0|0
                (set_local $1
                 ;;@ assembly/module/index.ts:14:10
                 (get_local $0)
                )
                (br_if $case0|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:15:9
                  (i32.const 0)
                 )
                )
                (br_if $case1|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:17:9
                  (i32.const 1)
                 )
                )
                (br_if $case2|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:19:10
                  (i32.const 2)
                 )
                )
                (br_if $case3|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:21:10
                  (i32.const 3)
                 )
                )
                (br_if $case4|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:23:10
                  (i32.const 4)
                 )
                )
                (br_if $case5|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:25:10
                  (i32.const 5)
                 )
                )
                (br_if $case6|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:27:10
                  (i32.const 6)
                 )
                )
                (br_if $case7|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:29:10
                  (i32.const 7)
                 )
                )
                (br_if $case8|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:31:10
                  (i32.const 8)
                 )
                )
                (br_if $case9|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:33:10
                  (i32.const 9)
                 )
                )
                (br_if $case10|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:35:10
                  (i32.const 10)
                 )
                )
                (br_if $case11|0
                 (i32.eq
                  (get_local $1)
                  ;;@ assembly/module/index.ts:37:10
                  (i32.const 11)
                 )
                )
                (br $case12|0)
               )
               ;;@ assembly/module/index.ts:16:13
               (return
                (i32.const 312)
               )
              )
              ;;@ assembly/module/index.ts:18:13
              (return
               (i32.const 328)
              )
             )
             ;;@ assembly/module/index.ts:20:10
             (return
              (i32.const 344)
             )
            )
            ;;@ assembly/module/index.ts:22:10
            (return
             (i32.const 360)
            )
           )
           ;;@ assembly/module/index.ts:24:10
           (return
            (i32.const 384)
           )
          )
          ;;@ assembly/module/index.ts:26:10
          (return
           (i32.const 400)
          )
         )
         ;;@ assembly/module/index.ts:28:10
         (return
          (i32.const 416)
         )
        )
        ;;@ assembly/module/index.ts:30:10
        (return
         (i32.const 432)
        )
       )
       ;;@ assembly/module/index.ts:32:10
       (return
        (i32.const 448)
       )
      )
      ;;@ assembly/module/index.ts:34:10
      (return
       (i32.const 464)
      )
     )
     ;;@ assembly/module/index.ts:36:10
     (return
      (i32.const 488)
     )
    )
    ;;@ assembly/module/index.ts:38:10
    (return
     (i32.const 504)
    )
   )
   ;;@ assembly/module/index.ts:40:6
   (unreachable)
  )
  ;;@ assembly/module/index.ts:43:9
  (i32.const 8)
 )
 (func $assembly/module/index/Section#constructor (; 39 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/module/index.ts:54:4
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/memory/memory.allocate
         (i32.const 20)
        )
       )
       (i32.store
        (get_local $2)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $2)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $2)
        (i32.const 0)
       )
       (i32.store offset=12
        (get_local $2)
        (i32.const 0)
       )
       (i32.store offset=16
        (get_local $2)
        ;;@ assembly/module/index.ts:51:17
        (i32.const 8)
       )
       (get_local $2)
      )
     )
    )
   )
   ;;@ assembly/module/index.ts:54:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ assembly/module/index.ts:55:4
  (i32.store offset=4
   (get_local $0)
   ;;@ assembly/module/index.ts:55:18
   (call $assembly/buffer/index/Buffer#readVaruint
    ;;@ assembly/module/index.ts:55:14
    (get_local $1)
    ;;@ assembly/module/index.ts:55:30
    (i32.const 7)
   )
  )
  ;;@ assembly/module/index.ts:56:4
  (i32.store offset=8
   (get_local $0)
   ;;@ assembly/module/index.ts:56:27
   (call $assembly/buffer/index/Buffer#readVaruint
    ;;@ assembly/module/index.ts:56:23
    (get_local $1)
    ;;@ assembly/module/index.ts:56:39
    (i32.const 32)
   )
  )
  ;;@ assembly/module/index.ts:57:4
  (if
   ;;@ assembly/module/index.ts:57:8
   (i32.eq
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/module/index.ts:57:19
    (i32.const 0)
   )
   ;;@ assembly/module/index.ts:57:21
   (block
    ;;@ assembly/module/index.ts:58:6
    (set_local $2
     ;;@ assembly/module/index.ts:58:19
     (i32.load offset=8
      (get_local $1)
     )
    )
    ;;@ assembly/module/index.ts:59:6
    (set_local $3
     ;;@ assembly/module/index.ts:59:25
     (call $assembly/buffer/index/Buffer#readVaruint
      ;;@ assembly/module/index.ts:59:21
      (get_local $1)
      ;;@ assembly/module/index.ts:59:37
      (i32.const 32)
     )
    )
    ;;@ assembly/module/index.ts:60:6
    (set_local $4
     ;;@ assembly/module/index.ts:60:21
     (i32.load offset=8
      (get_local $1)
     )
    )
    ;;@ assembly/module/index.ts:62:6
    (i32.store offset=16
     (get_local $0)
     ;;@ assembly/module/index.ts:62:18
     (call $~lib/string/String.__concat
      (call $~lib/string/String.__concat
       (i32.const 288)
       ;;@ assembly/module/index.ts:62:31
       (call $~lib/string/String.fromUTF8
        ;;@ assembly/module/index.ts:62:40
        (get_local $4)
        ;;@ assembly/module/index.ts:62:50
        (get_local $3)
       )
      )
      ;;@ assembly/module/index.ts:62:62
      (i32.const 288)
     )
    )
    ;;@ assembly/module/index.ts:63:6
    (i32.store offset=8
     (get_local $1)
     (i32.add
      (i32.load offset=8
       (get_local $1)
      )
      ;;@ assembly/module/index.ts:63:17
      (get_local $3)
     )
    )
    ;;@ assembly/module/index.ts:64:6
    (i32.store offset=8
     (get_local $0)
     (i32.sub
      (i32.load offset=8
       (get_local $0)
      )
      ;;@ assembly/module/index.ts:64:26
      (i32.sub
       (i32.load offset=8
        (get_local $1)
       )
       ;;@ assembly/module/index.ts:64:36
       (get_local $2)
      )
     )
    )
   )
   ;;@ assembly/module/index.ts:65:11
   (if
    ;;@ assembly/module/index.ts:65:15
    (i32.le_u
     (i32.load offset=4
      (get_local $0)
     )
     ;;@ assembly/module/index.ts:65:26
     (get_global $src/common/SectionId.Data)
    )
    ;;@ assembly/module/index.ts:65:47
    (i32.store offset=16
     ;;@ assembly/module/index.ts:66:6
     (get_local $0)
     ;;@ assembly/module/index.ts:66:18
     (call $assembly/module/index/sectionName
      ;;@ assembly/module/index.ts:66:30
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    ;;@ assembly/module/index.ts:67:11
    (unreachable)
   )
  )
  ;;@ assembly/module/index.ts:70:4
  (i32.store offset=12
   (get_local $0)
   ;;@ assembly/module/index.ts:70:23
   (i32.load offset=8
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $assembly/module/index/Section.create (; 40 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ assembly/module/index.ts:74:4
  (set_local $1
   ;;@ assembly/module/index.ts:74:14
   (i32.load offset=8
    (get_local $0)
   )
  )
  ;;@ assembly/module/index.ts:75:4
  (set_local $2
   ;;@ assembly/module/index.ts:75:17
   (call $assembly/buffer/index/Buffer#peekVaruint
    ;;@ assembly/module/index.ts:75:13
    (get_local $0)
    ;;@ assembly/module/index.ts:75:29
    (i32.const 7)
   )
  )
  ;;@ assembly/module/index.ts:76:4
  (if
   (i32.eqz
    ;;@ assembly/module/index.ts:76:12
    (i32.eq
     (get_local $1)
     ;;@ assembly/module/index.ts:76:19
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 76)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ assembly/module/index.ts:77:4
  (block $break|0
   (block $case1|0
    (block $case0|0
     (set_local $3
      ;;@ assembly/module/index.ts:77:12
      (get_local $2)
     )
     (br_if $case0|0
      (i32.eq
       (get_local $3)
       ;;@ assembly/module/index.ts:78:11
       (get_global $src/common/SectionId.Type)
      )
     )
     (br $case1|0)
    )
    ;;@ assembly/module/index.ts:79:34
    (return
     ;;@ assembly/module/index.ts:79:15
     (call $assembly/module/index/TypeSection#constructor
      (i32.const 0)
      ;;@ assembly/module/index.ts:79:31
      (get_local $0)
     )
    )
   )
  )
  ;;@ assembly/module/index.ts:82:26
  (call $assembly/module/index/Section#constructor
   (i32.const 0)
   ;;@ assembly/module/index.ts:82:23
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Section>#push (; 41 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/array.ts:166:4
  (set_local $2
   ;;@ ~lib/array.ts:166:17
   (i32.load offset=4
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:167:4
  (set_local $3
   ;;@ ~lib/array.ts:167:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:168:4
  (set_local $4
   ;;@ ~lib/array.ts:168:19
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    ;;@ ~lib/array.ts:168:41
    (i32.const 2)
   )
  )
  ;;@ ~lib/array.ts:169:4
  (set_local $5
   ;;@ ~lib/array.ts:169:20
   (i32.add
    (get_local $2)
    ;;@ ~lib/array.ts:169:29
    (i32.const 1)
   )
  )
  ;;@ ~lib/array.ts:170:4
  (if
   ;;@ ~lib/array.ts:170:8
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/array.ts:170:23
    (get_local $4)
   )
   ;;@ ~lib/array.ts:170:38
   (block
    ;;@ ~lib/array.ts:172:6
    (if
     ;;@ ~lib/array.ts:172:10
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/array.ts:172:25
      (i32.const 268435454)
     )
     ;;@ ~lib/array.ts:172:42
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 176)
       (i32.const 172)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/array.ts:173:6
    (set_local $3
     ;;@ ~lib/array.ts:173:15
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      ;;@ ~lib/array.ts:173:32
      (get_local $3)
      ;;@ ~lib/array.ts:173:40
      (i32.shl
       (get_local $5)
       ;;@ ~lib/array.ts:173:53
       (i32.const 2)
      )
     )
    )
    ;;@ ~lib/array.ts:174:6
    (i32.store
     (get_local $0)
     ;;@ ~lib/array.ts:174:21
     (get_local $3)
    )
   )
  )
  ;;@ ~lib/array.ts:176:4
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/array.ts:176:19
   (get_local $5)
  )
  ;;@ ~lib/array.ts:177:4
  (block $~lib/internal/arraybuffer/storeUnsafe<Section,Section>|inlined.0
   ;;@ ~lib/internal/arraybuffer.ts:72:2
   (i32.store offset=8
    ;;@ ~lib/internal/arraybuffer.ts:72:11
    (i32.add
     (get_local $3)
     ;;@ ~lib/internal/arraybuffer.ts:72:39
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:72:40
      (get_local $2)
      ;;@ ~lib/internal/arraybuffer.ts:72:56
      (i32.const 2)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:72:71
    (get_local $1)
   )
  )
  ;;@ ~lib/array.ts:179:11
  (get_local $5)
 )
 (func $assembly/index/Module#push (; 42 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/index.ts:29:18
  (drop
   (call $~lib/array/Array<Section>#push
    ;;@ assembly/index.ts:29:4
    (i32.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:29:23
    (get_local $1)
   )
  )
 )
 (func $assembly/index/Parser#parse (; 43 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  ;;@ assembly/index.ts:59:4
  (set_local $1
   ;;@ assembly/index.ts:59:25
   (call $assembly/buffer/index/Buffer#readUint<u32>
    ;;@ assembly/index.ts:59:16
    (i32.load
     (get_local $0)
    )
   )
  )
  ;;@ assembly/index.ts:60:4
  (if
   ;;@ assembly/index.ts:60:8
   (i32.ne
    (get_local $1)
    ;;@ assembly/index.ts:60:17
    (i32.const 1836278016)
   )
   ;;@ assembly/index.ts:60:29
   (unreachable)
  )
  ;;@ assembly/index.ts:61:4
  (set_local $2
   ;;@ assembly/index.ts:61:27
   (call $assembly/buffer/index/Buffer#readUint<u32>
    ;;@ assembly/index.ts:61:18
    (i32.load
     (get_local $0)
    )
   )
  )
  ;;@ assembly/index.ts:62:4
  (if
   ;;@ assembly/index.ts:62:8
   (i32.ne
    (get_local $2)
    ;;@ assembly/index.ts:62:19
    (i32.const 1)
   )
   ;;@ assembly/index.ts:62:22
   (unreachable)
  )
  ;;@ assembly/index.ts:63:4
  (set_local $3
   ;;@ assembly/index.ts:63:31
   (i32.const 0)
  )
  ;;@ assembly/index.ts:64:4
  (set_local $4
   ;;@ assembly/index.ts:64:31
   (i32.const 0)
  )
  ;;@ assembly/index.ts:65:4
  (set_local $5
   ;;@ assembly/index.ts:65:31
   (i32.const 0)
  )
  ;;@ assembly/index.ts:66:4
  (set_local $6
   ;;@ assembly/index.ts:66:31
   (i32.const 0)
  )
  ;;@ assembly/index.ts:67:4
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/index.ts:67:11
     (i32.lt_u
      (i32.load offset=8
       (i32.load
        (get_local $0)
       )
      )
      ;;@ assembly/index.ts:67:26
      (i32.load offset=4
       (i32.load
        (get_local $0)
       )
      )
     )
     (block
      ;;@ assembly/index.ts:67:43
      (block
       ;;@ assembly/index.ts:68:6
       (call $assembly/index/log<i32>
        ;;@ assembly/index.ts:68:15
        (call $assembly/index/Parser#get:off
         (get_local $0)
        )
       )
       ;;@ assembly/index.ts:69:6
       (set_local $7
        ;;@ assembly/index.ts:69:28
        (call $assembly/module/index/Section.create
         ;;@ assembly/index.ts:69:35
         (i32.load
          (get_local $0)
         )
        )
       )
       ;;@ assembly/index.ts:70:18
       (call $assembly/index/Module#push
        ;;@ assembly/index.ts:70:6
        (i32.load offset=4
         (get_local $0)
        )
        ;;@ assembly/index.ts:70:23
        (get_local $7)
       )
       ;;@ assembly/index.ts:71:6
       (call $assembly/index/Parser#set:off
        (get_local $0)
        ;;@ assembly/index.ts:71:17
        (i32.add
         (i32.load offset=12
          (get_local $7)
         )
         ;;@ assembly/index.ts:71:39
         (i32.load offset=8
          (get_local $7)
         )
        )
       )
       ;;@ assembly/index.ts:72:6
       (call $assembly/index/log<i32>
        ;;@ assembly/index.ts:72:15
        (call $assembly/index/Parser#get:off
         (get_local $0)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ assembly/index.ts:74:4
  (call $assembly/index/log<i32>
   ;;@ assembly/index.ts:74:13
   (i32.load offset=4
    (i32.load
     (get_local $0)
    )
   )
  )
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:data (; 44 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/arraybuffer.ts:13:55
  (i32.add
   ;;@ ~lib/arraybuffer.ts:13:29
   (get_local $0)
   ;;@ ~lib/arraybuffer.ts:13:55
   (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
  )
 )
 (func $assembly/buffer/index/Buffer#constructor (; 45 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ assembly/buffer/index.ts:12:4
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/memory/memory.allocate
         (i32.const 12)
        )
       )
       (i32.store
        (get_local $2)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $2)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $2)
        (i32.const 0)
       )
       (get_local $2)
      )
     )
    )
   )
   ;;@ assembly/buffer/index.ts:12:18
   (get_local $1)
  )
  ;;@ assembly/buffer/index.ts:13:4
  (i32.store offset=8
   (get_local $0)
   ;;@ assembly/buffer/index.ts:13:15
   (call $~lib/arraybuffer/ArrayBuffer#get:data
    (i32.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/buffer/index.ts:14:4
  (i32.store offset=4
   (get_local $0)
   ;;@ assembly/buffer/index.ts:14:18
   (i32.load offset=8
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $assembly/index/newParser (; 46 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/index.ts:81:2
  (set_local $1
   ;;@ assembly/index.ts:81:15
   (call $assembly/buffer/index/Buffer#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:81:26
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:82:26
  (call $assembly/index/Parser#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:82:20
   (get_local $1)
  )
 )
 (func $assembly/index/parse (; 47 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/index.ts:86:4
  (call $assembly/index/Parser#parse
   ;;@ assembly/index.ts:86:2
   (get_local $0)
  )
  ;;@ assembly/index.ts:87:18
  (i32.load
   ;;@ assembly/index.ts:87:9
   (i32.load offset=4
    (get_local $0)
   )
  )
 )
 (func $start (; 48 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
 )
 (func $null (; 49 ;) (type $v)
 )
 (func $Parser#get:buf (; 50 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load
   (get_local $0)
  )
 )
 (func $Parser#set:buf (; 51 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Parser#get:module (; 52 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=4
   (get_local $0)
  )
 )
 (func $Parser#set:module (; 53 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
 )
)
