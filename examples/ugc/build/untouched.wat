(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
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
 (global $assembly/ugc/IDLE i32 (i32.const 0))
 (global $assembly/ugc/MARK i32 (i32.const 1))
 (global $assembly/ugc/SWEEP i32 (i32.const 2))
 (global $assembly/ugc/GRAY i32 (i32.const 2))
 (global $assembly/ugc/GC (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 92))
 (memory $0 1)
 (data (i32.const 8) "\16\00\00\00~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 56) "\0f\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00u\00g\00c\00.\00t\00s\00")
 (export "gc_collect" (func $assembly/ugc/gc_collect))
 (export "gc_pause" (func $assembly/ugc/gc_pause))
 (export "gc_resume" (func $assembly/ugc/gc_resume))
 (export "memory" (memory $0))
 (start $start)
 (func $assembly/ugc/ObjectHeader#set:next (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/ugc.ts:33:4
  (i32.store
   (get_local $0)
   ;;@ assembly/ugc.ts:33:23
   (i32.or
    (get_local $1)
    ;;@ assembly/ugc.ts:33:50
    (i32.and
     ;;@ assembly/ugc.ts:33:51
     (i32.load
      (get_local $0)
     )
     ;;@ assembly/ugc.ts:33:70
     (i32.const 3)
    )
   )
  )
 )
 (func $assembly/ugc/ObjectHeader#set:prev (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/ugc.ts:41:4
  (i32.store offset=4
   (get_local $0)
   ;;@ assembly/ugc.ts:41:23
   (i32.or
    (get_local $1)
    ;;@ assembly/ugc.ts:41:50
    (i32.and
     ;;@ assembly/ugc.ts:41:51
     (i32.load offset=4
      (get_local $0)
     )
     ;;@ assembly/ugc.ts:41:70
     (i32.const 3)
    )
   )
  )
 )
 (func $assembly/ugc/ObjectHeader#clear (; 3 ;) (type $iv) (param $0 i32)
  ;;@ assembly/ugc.ts:70:4
  (call $assembly/ugc/ObjectHeader#set:next
   (get_local $0)
   ;;@ assembly/ugc.ts:70:16
   (get_local $0)
  )
  ;;@ assembly/ugc.ts:71:4
  (call $assembly/ugc/ObjectHeader#set:prev
   (get_local $0)
   ;;@ assembly/ugc.ts:71:16
   (get_local $0)
  )
 )
 (func $assembly/ugc/Control.create (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ assembly/ugc.ts:111:4
  (set_local $1
   ;;@ assembly/ugc.ts:111:18
   (get_local $0)
  )
  ;;@ assembly/ugc.ts:112:4
  (set_local $2
   ;;@ assembly/ugc.ts:112:15
   (get_local $0)
  )
  ;;@ assembly/ugc.ts:113:4
  (set_local $3
   ;;@ assembly/ugc.ts:113:15
   (i32.add
    ;;@ assembly/ugc.ts:113:40
    (get_local $0)
    ;;@ assembly/ugc.ts:113:46
    (i32.mul
     (i32.const 2)
     ;;@ assembly/ugc.ts:113:50
     (i32.const 4)
    )
   )
  )
  ;;@ assembly/ugc.ts:114:9
  (call $assembly/ugc/ObjectHeader#clear
   ;;@ assembly/ugc.ts:114:4
   (get_local $2)
  )
  ;;@ assembly/ugc.ts:115:9
  (call $assembly/ugc/ObjectHeader#clear
   ;;@ assembly/ugc.ts:115:4
   (get_local $3)
  )
  ;;@ assembly/ugc.ts:116:4
  (i32.store8 offset=28
   (get_local $1)
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
   (get_local $2)
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
 (func $assembly/ugc/Control#get:paused (; 5 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/ugc.ts:99:67
  (i32.ne
   ;;@ assembly/ugc.ts:99:30
   (i32.and
    ;;@ assembly/ugc.ts:99:31
    (i32.load8_u offset=28
     (get_local $0)
    )
    ;;@ assembly/ugc.ts:99:44
    (i32.const 128)
   )
   ;;@ assembly/ugc.ts:99:67
   (i32.const 0)
  )
 )
 (func $assembly/ugc/Control#set:paused (; 6 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/ugc.ts:102:4
  (i32.store8 offset=28
   (get_local $0)
   ;;@ assembly/ugc.ts:102:17
   (if (result i32)
    (i32.and
     (get_local $1)
     (i32.const 1)
    )
    ;;@ assembly/ugc.ts:103:8
    (block (result i32)
     (set_local $2
      (i32.or
       (i32.load8_u offset=28
        (get_local $0)
       )
       ;;@ assembly/ugc.ts:103:22
       (i32.const 128)
      )
     )
     (i32.store8 offset=28
      ;;@ assembly/ugc.ts:103:8
      (get_local $0)
      (get_local $2)
     )
     (get_local $2)
    )
    ;;@ assembly/ugc.ts:104:8
    (block (result i32)
     (set_local $2
      (i32.and
       (i32.load8_u offset=28
        (get_local $0)
       )
       ;;@ assembly/ugc.ts:104:22
       (i32.xor
        ;;@ assembly/ugc.ts:104:23
        (i32.const 128)
        (i32.const -1)
       )
      )
     )
     (i32.store8 offset=28
      ;;@ assembly/ugc.ts:104:8
      (get_local $0)
      (get_local $2)
     )
     (get_local $2)
    )
   )
  )
 )
 (func $assembly/ugc/gc_scan_fn (; 7 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/ugc.ts:275:2
  (if
   ;;@ assembly/ugc.ts:275:6
   (i32.eqz
    ;;@ assembly/ugc.ts:275:7
    (get_local $1)
   )
   ;;@ assembly/ugc.ts:275:15
   (nop)
   ;;@ assembly/ugc.ts:277:9
   (set_local $2
    ;;@ assembly/ugc.ts:280:18
    (i32.load offset=8
     ;;@ assembly/ugc.ts:280:28
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/ugc/ObjectHeader#get:next (; 8 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/ugc.ts:29:57
  (i32.and
   ;;@ assembly/ugc.ts:29:36
   (i32.load
    (get_local $0)
   )
   ;;@ assembly/ugc.ts:29:55
   (i32.xor
    ;;@ assembly/ugc.ts:29:56
    (i32.const 3)
    (i32.const -1)
   )
  )
 )
 (func $assembly/ugc/ObjectHeader#set:color (; 9 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/ugc.ts:49:4
  (if
   (i32.eqz
    ;;@ assembly/ugc.ts:49:11
    (i32.lt_u
     (get_local $1)
     ;;@ assembly/ugc.ts:49:19
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 56)
     (i32.const 49)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ assembly/ugc.ts:50:4
  (i32.store
   (get_local $0)
   ;;@ assembly/ugc.ts:50:23
   (i32.or
    (i32.load
     (get_local $0)
    )
    ;;@ assembly/ugc.ts:50:42
    (get_local $1)
   )
  )
 )
 (func $~lib/allocator/tlsf/Block#get:right (; 10 ;) (type $ii) (param $0 i32) (result i32)
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
      (i32.const 3)
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
       (i32.const 8)
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
        (i32.const 3)
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
 (func $~lib/allocator/tlsf/fls<usize> (; 11 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/allocator/tlsf/Root#getHead (; 12 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:158:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:158:11
    (i32.lt_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:158:16
     (i32.const 22)
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
     (i32.const 32)
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
       (i32.const 32)
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
 (func $~lib/allocator/tlsf/Root#setHead (; 13 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ ~lib/allocator/tlsf.ts:167:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:167:11
    (i32.lt_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:167:16
     (i32.const 22)
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
     (i32.const 32)
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
       (i32.const 32)
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
 (func $~lib/allocator/tlsf/Root#getSLMap (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/tlsf.ts:138:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:138:11
    (i32.lt_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:138:16
     (i32.const 22)
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
 (func $~lib/allocator/tlsf/Root#setSLMap (; 15 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ ~lib/allocator/tlsf.ts:144:4
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:144:11
    (i32.lt_u
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:144:16
     (i32.const 22)
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
     (i32.const 1)
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
     (i32.const 3)
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
       (i32.const 16)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:260:37
     (i32.lt_u
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:260:44
      (i32.const 1073741824)
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
    (i32.const 256)
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
      (i32.const 8)
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
        (i32.const 5)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:269:44
      (i32.shl
       ;;@ ~lib/allocator/tlsf.ts:269:45
       (i32.const 1)
       ;;@ ~lib/allocator/tlsf.ts:269:50
       (i32.const 5)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:270:6
    (set_local $5
     (i32.sub
      (get_local $5)
      ;;@ ~lib/allocator/tlsf.ts:270:12
      (i32.sub
       (i32.const 8)
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
     (i32.const 2)
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
     (i32.const 1)
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
     (i32.const 2)
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
     (i32.const 1)
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
          (i32.const 3)
          (i32.const -1)
         )
        )
       )
       ;;@ ~lib/allocator/tlsf.ts:194:37
       (i32.const 16)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:194:55
     (i32.lt_u
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:194:62
      (i32.const 1073741824)
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
    (i32.const 1)
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
        (i32.const 8)
        ;;@ ~lib/allocator/tlsf.ts:203:46
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:203:47
         (get_local $6)
         ;;@ ~lib/allocator/tlsf.ts:203:59
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:203:60
          (i32.const 3)
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
    (i32.const 2)
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
       (i32.const 1)
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
        (i32.const 8)
        ;;@ ~lib/allocator/tlsf.ts:215:44
        (i32.and
         ;;@ ~lib/allocator/tlsf.ts:215:45
         (get_local $2)
         ;;@ ~lib/allocator/tlsf.ts:215:57
         (i32.xor
          ;;@ ~lib/allocator/tlsf.ts:215:58
          (i32.const 3)
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
    (i32.const 2)
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
     (i32.const 3)
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
       (i32.const 16)
      )
     )
     ;;@ ~lib/allocator/tlsf.ts:226:37
     (i32.lt_u
      (get_local $3)
      ;;@ ~lib/allocator/tlsf.ts:226:44
      (i32.const 1073741824)
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
    (i32.const 256)
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
      (i32.const 8)
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
        (i32.const 5)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:235:44
      (i32.shl
       ;;@ ~lib/allocator/tlsf.ts:235:45
       (i32.const 1)
       ;;@ ~lib/allocator/tlsf.ts:235:50
       (i32.const 5)
      )
     )
    )
    ;;@ ~lib/allocator/tlsf.ts:236:6
    (set_local $8
     (i32.sub
      (get_local $8)
      ;;@ ~lib/allocator/tlsf.ts:236:12
      (i32.sub
       (i32.const 8)
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
 (func $~lib/allocator/tlsf/free_memory (; 20 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ ~lib/allocator/tlsf.ts:492:2
  (if
   ;;@ ~lib/allocator/tlsf.ts:492:6
   (get_local $0)
   ;;@ ~lib/allocator/tlsf.ts:492:12
   (block
    ;;@ ~lib/allocator/tlsf.ts:493:4
    (set_local $1
     ;;@ ~lib/allocator/tlsf.ts:493:15
     (get_global $~lib/allocator/tlsf/ROOT)
    )
    ;;@ ~lib/allocator/tlsf.ts:494:4
    (if
     ;;@ ~lib/allocator/tlsf.ts:494:8
     (get_local $1)
     ;;@ ~lib/allocator/tlsf.ts:494:14
     (block
      ;;@ ~lib/allocator/tlsf.ts:495:6
      (set_local $2
       ;;@ ~lib/allocator/tlsf.ts:495:18
       (i32.sub
        ;;@ ~lib/allocator/tlsf.ts:495:36
        (get_local $0)
        ;;@ ~lib/allocator/tlsf.ts:495:43
        (i32.const 8)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:496:6
      (set_local $3
       ;;@ ~lib/allocator/tlsf.ts:496:22
       (i32.load
        (get_local $2)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:497:6
      (if
       (i32.eqz
        ;;@ ~lib/allocator/tlsf.ts:497:13
        (i32.eqz
         ;;@ ~lib/allocator/tlsf.ts:497:14
         (i32.and
          ;;@ ~lib/allocator/tlsf.ts:497:15
          (get_local $3)
          ;;@ ~lib/allocator/tlsf.ts:497:27
          (i32.const 1)
         )
        )
       )
       (block
        (call $~lib/env/abort
         (i32.const 0)
         (i32.const 8)
         (i32.const 497)
         (i32.const 6)
        )
        (unreachable)
       )
      )
      ;;@ ~lib/allocator/tlsf.ts:498:6
      (i32.store
       (get_local $2)
       ;;@ ~lib/allocator/tlsf.ts:498:19
       (i32.or
        (get_local $3)
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
 )
 (func $assembly/ugc/gc_free_fn (; 21 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/ugc.ts:291:2
  (set_local $2
   ;;@ assembly/ugc.ts:291:16
   (i32.load
    ;;@ assembly/ugc.ts:291:26
    (i32.add
     (get_local $1)
     ;;@ assembly/ugc.ts:291:54
     (i32.const 8)
    )
   )
  )
  ;;@ assembly/ugc.ts:296:2
  (call $~lib/allocator/tlsf/free_memory
   ;;@ assembly/ugc.ts:296:14
   (get_local $1)
  )
 )
 (func $assembly/ugc/Control#step (; 22 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/ugc.ts:165:4
  (block $break|0
   (block $case2|0
    (block $case1|0
     (block $case0|0
      (set_local $2
       ;;@ assembly/ugc.ts:165:12
       (i32.load8_u offset=28
        (get_local $0)
       )
      )
      (br_if $case0|0
       (i32.eq
        (get_local $2)
        ;;@ assembly/ugc.ts:167:11
        (i32.const 0)
       )
      )
      (br_if $case1|0
       (i32.eq
        (get_local $2)
        ;;@ assembly/ugc.ts:172:11
        (i32.const 1)
       )
      )
      (br_if $case2|0
       (i32.eq
        (get_local $2)
        ;;@ assembly/ugc.ts:194:11
        (i32.const 2)
       )
      )
      (br $break|0)
     )
     ;;@ assembly/ugc.ts:168:8
     (call $assembly/ugc/gc_scan_fn
      ;;@ assembly/ugc.ts:168:19
      (get_local $0)
      ;;@ assembly/ugc.ts:168:25
      (i32.const 0)
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
    ;;@ assembly/ugc.ts:173:8
    (set_local $1
     ;;@ assembly/ugc.ts:173:14
     (call $assembly/ugc/ObjectHeader#get:next
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
    ;;@ assembly/ugc.ts:174:8
    (set_local $3
     ;;@ assembly/ugc.ts:174:20
     (i32.load8_u offset=29
      (get_local $0)
     )
    )
    ;;@ assembly/ugc.ts:176:8
    (if
     ;;@ assembly/ugc.ts:176:12
     (i32.ne
      (get_local $1)
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
      ;;@ assembly/ugc.ts:178:10
      (call $assembly/ugc/ObjectHeader#set:color
       (get_local $1)
       ;;@ assembly/ugc.ts:178:22
       (i32.and
        (i32.xor
         (get_local $3)
         ;;@ assembly/ugc.ts:178:30
         (i32.const 1)
        )
        (i32.const 255)
       )
      )
      ;;@ assembly/ugc.ts:179:10
      (call $assembly/ugc/gc_scan_fn
       ;;@ assembly/ugc.ts:179:21
       (get_local $0)
       ;;@ assembly/ugc.ts:179:27
       (get_local $1)
      )
     )
     ;;@ assembly/ugc.ts:180:15
     (block
      ;;@ assembly/ugc.ts:181:10
      (call $assembly/ugc/gc_scan_fn
       ;;@ assembly/ugc.ts:181:21
       (get_local $0)
       ;;@ assembly/ugc.ts:181:27
       (i32.const 0)
      )
      ;;@ assembly/ugc.ts:182:10
      (set_local $1
       ;;@ assembly/ugc.ts:182:16
       (call $assembly/ugc/ObjectHeader#get:next
        (i32.load offset=24
         (get_local $0)
        )
       )
      )
      ;;@ assembly/ugc.ts:183:10
      (if
       ;;@ assembly/ugc.ts:183:14
       (i32.eq
        (get_local $1)
        ;;@ assembly/ugc.ts:183:21
        (i32.load offset=20
         (get_local $0)
        )
       )
       ;;@ assembly/ugc.ts:183:30
       (block
        ;;@ assembly/ugc.ts:184:12
        (set_local $4
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
         (get_local $4)
        )
        ;;@ assembly/ugc.ts:187:12
        (i32.store8 offset=29
         (get_local $0)
         ;;@ assembly/ugc.ts:187:25
         (i32.xor
          (get_local $3)
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
          (get_local $4)
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
    )
    ;;@ assembly/ugc.ts:192:8
    (br $break|0)
   )
   ;;@ assembly/ugc.ts:195:8
   (set_local $1
    ;;@ assembly/ugc.ts:195:14
    (i32.load offset=24
     (get_local $0)
    )
   )
   ;;@ assembly/ugc.ts:196:8
   (if
    ;;@ assembly/ugc.ts:196:12
    (i32.ne
     (get_local $1)
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
      ;;@ assembly/ugc.ts:197:26
      (call $assembly/ugc/ObjectHeader#get:next
       (get_local $1)
      )
     )
     ;;@ assembly/ugc.ts:198:10
     (call $assembly/ugc/gc_free_fn
      ;;@ assembly/ugc.ts:198:21
      (get_local $0)
      ;;@ assembly/ugc.ts:198:27
      (get_local $1)
     )
    )
    ;;@ assembly/ugc.ts:199:15
    (block
     ;;@ assembly/ugc.ts:200:18
     (call $assembly/ugc/ObjectHeader#clear
      ;;@ assembly/ugc.ts:200:10
      (i32.load offset=20
       (get_local $0)
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
   ;;@ assembly/ugc.ts:203:8
   (br $break|0)
  )
 )
 (func $assembly/ugc/Control#collect (; 23 ;) (type $iv) (param $0 i32)
  ;;@ assembly/ugc.ts:217:4
  (if
   ;;@ assembly/ugc.ts:217:8
   (i32.eq
    (i32.load8_u offset=28
     (get_local $0)
    )
    ;;@ assembly/ugc.ts:217:22
    (i32.const 0)
   )
   ;;@ assembly/ugc.ts:217:28
   (call $assembly/ugc/Control#step
    ;;@ assembly/ugc.ts:218:6
    (get_local $0)
   )
  )
  ;;@ assembly/ugc.ts:220:4
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/ugc.ts:220:11
     (i32.ne
      (i32.load8_u offset=28
       (get_local $0)
      )
      ;;@ assembly/ugc.ts:220:25
      (i32.const 0)
     )
     (block
      ;;@ assembly/ugc.ts:220:31
      (call $assembly/ugc/Control#step
       ;;@ assembly/ugc.ts:221:6
       (get_local $0)
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $assembly/ugc/gc_collect (; 24 ;) (type $v)
  (local $0 i32)
  ;;@ assembly/ugc.ts:265:2
  (set_local $0
   ;;@ assembly/ugc.ts:265:15
   (call $assembly/ugc/Control#get:paused
    (get_global $assembly/ugc/GC)
   )
  )
  ;;@ assembly/ugc.ts:266:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:266:14
   (i32.const 0)
  )
  ;;@ assembly/ugc.ts:267:5
  (call $assembly/ugc/Control#collect
   ;;@ assembly/ugc.ts:267:2
   (get_global $assembly/ugc/GC)
  )
  ;;@ assembly/ugc.ts:268:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:268:14
   (get_local $0)
  )
 )
 (func $assembly/ugc/gc_pause (; 25 ;) (type $v)
  ;;@ assembly/ugc.ts:255:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:255:14
   (i32.const 1)
  )
 )
 (func $assembly/ugc/gc_resume (; 26 ;) (type $v)
  ;;@ assembly/ugc.ts:260:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:260:14
   (i32.const 0)
  )
 )
 (func $start (; 27 ;) (type $v)
  ;;@ ~lib/allocator/tlsf.ts:122:0
  (if
   (i32.eqz
    ;;@ ~lib/allocator/tlsf.ts:122:7
    (i32.le_s
     (i32.shl
      ;;@ ~lib/allocator/tlsf.ts:122:8
      (i32.const 1)
      ;;@ ~lib/allocator/tlsf.ts:122:13
      (i32.const 5)
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
  (set_global $assembly/ugc/GC
   ;;@ assembly/ugc.ts:247:17
   (call $assembly/ugc/Control.create
    ;;@ assembly/ugc.ts:247:24
    (get_global $HEAP_BASE)
   )
  )
 )
)
