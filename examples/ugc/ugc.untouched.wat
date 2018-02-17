(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiv (func (param i32 i32)))
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global "$(lib)/allocator/tlsf/AL_BITS" i32 (i32.const 2))
 (global "$(lib)/allocator/tlsf/AL_SIZE" i32 (i32.const 4))
 (global "$(lib)/allocator/tlsf/AL_MASK" i32 (i32.const 3))
 (global "$(lib)/allocator/tlsf/SL_BITS" i32 (i32.const 5))
 (global "$(lib)/allocator/tlsf/SL_SIZE" i32 (i32.const 32))
 (global "$(lib)/allocator/tlsf/SB_BITS" i32 (i32.const 7))
 (global "$(lib)/allocator/tlsf/SB_SIZE" i32 (i32.const 128))
 (global "$(lib)/allocator/tlsf/SB_MASK" i32 (i32.const 127))
 (global "$(lib)/allocator/tlsf/FL_BITS" i32 (i32.const 23))
 (global "$(lib)/allocator/tlsf/FREE" i32 (i32.const 1))
 (global "$(lib)/allocator/tlsf/LEFT_FREE" i32 (i32.const 2))
 (global "$(lib)/allocator/tlsf/TAGS" i32 (i32.const 3))
 (global "$(lib)/allocator/tlsf/ROOT" (mut i32) (i32.const 0))
 (global $assembly/ugc/IDLE i32 (i32.const 0))
 (global $assembly/ugc/MARK i32 (i32.const 1))
 (global $assembly/ugc/SWEEP i32 (i32.const 2))
 (global $assembly/ugc/GRAY i32 (i32.const 2))
 (global $assembly/ugc/GC (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 92))
 (memory $0 1)
 (data (i32.const 4) "\17\00\00\00(\00l\00i\00b\00)\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s\00")
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
  (return
   (get_local $1)
  )
 )
 (func $assembly/ugc/Control#get:paused (; 5 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/ugc.ts:99:67
  (return
   ;;@ assembly/ugc.ts:99:30
   (i32.ne
    (i32.and
     (i32.and
      ;;@ assembly/ugc.ts:99:31
      (i32.load8_u offset=28
       (get_local $0)
      )
      ;;@ assembly/ugc.ts:99:44
      (i32.const 128)
     )
     (i32.const 255)
    )
    ;;@ assembly/ugc.ts:99:67
    (i32.const 0)
   )
  )
 )
 (func $assembly/ugc/Control#set:paused (; 6 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/ugc.ts:102:4
  (i32.store8 offset=28
   (get_local $0)
   ;;@ assembly/ugc.ts:102:17
   (if (result i32)
    (get_local $1)
    ;;@ assembly/ugc.ts:103:8
    (block (result i32)
     (set_local $2
      (i32.and
       (i32.or
        (i32.load8_u offset=28
         (get_local $0)
        )
        ;;@ assembly/ugc.ts:103:22
        (i32.const 128)
       )
       (i32.const 255)
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
       (i32.const 255)
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
  ;;@ assembly/ugc.ts:271:2
  (if
   ;;@ assembly/ugc.ts:271:6
   (i32.eqz
    ;;@ assembly/ugc.ts:271:7
    (get_local $1)
   )
   ;;@ assembly/ugc.ts:271:15
   (block
   )
   ;;@ assembly/ugc.ts:276:4
   (set_local $2
    ;;@ assembly/ugc.ts:276:18
    (i32.load offset=8
     ;;@ assembly/ugc.ts:276:28
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/ugc/ObjectHeader#get:next (; 8 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/ugc.ts:29:57
  (return
   ;;@ assembly/ugc.ts:29:11
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
    (call $abort
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
 (func "$(lib)/allocator/tlsf/Block#get:right" (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ (lib)/allocator/tlsf.ts:83:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:83:11
    (i32.and
     (i32.load
      (get_local $0)
     )
     ;;@ (lib)/allocator/tlsf.ts:83:23
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:83:24
      (i32.const 3)
      (i32.const -1)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 83)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:88:4
  (return
   ;;@ (lib)/allocator/tlsf.ts:84:11
   (if (result i32)
    (i32.eqz
     (tee_local $1
      ;;@ (lib)/allocator/tlsf.ts:85:6
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:86:8
       (i32.add
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:86:34
        (i32.const 4)
       )
       ;;@ (lib)/allocator/tlsf.ts:86:47
       (i32.and
        ;;@ (lib)/allocator/tlsf.ts:86:48
        (i32.load
         (get_local $0)
        )
        ;;@ (lib)/allocator/tlsf.ts:86:60
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:86:61
         (i32.const 3)
         (i32.const -1)
        )
       )
      )
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 84)
      (i32.const 11)
     )
     (unreachable)
    )
    (get_local $1)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/fls<usize>" (; 11 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:423:2
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:423:9
    (i32.ne
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:423:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 423)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:424:2
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:425:26
  (return
   ;;@ (lib)/allocator/tlsf.ts:425:9
   (i32.sub
    (i32.const 31)
    ;;@ (lib)/allocator/tlsf.ts:425:15
    (i32.clz
     ;;@ (lib)/allocator/tlsf.ts:425:22
     (get_local $0)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getHead" (; 12 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:152:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:152:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:152:16
     (i32.const 23)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 152)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:153:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:153:11
    (i32.lt_u
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:153:16
     (i32.const 32)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 153)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:156:20
  (return
   ;;@ (lib)/allocator/tlsf.ts:154:11
   (i32.load offset=96
    ;;@ (lib)/allocator/tlsf.ts:155:6
    (i32.add
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:155:32
     (i32.mul
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:155:33
       (i32.mul
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:155:38
        (i32.const 32)
       )
       ;;@ (lib)/allocator/tlsf.ts:155:48
       (get_local $2)
      )
      ;;@ (lib)/allocator/tlsf.ts:155:61
      (i32.const 4)
     )
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setHead" (; 13 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:161:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:161:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:161:16
     (i32.const 23)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 161)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:162:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:162:11
    (i32.lt_u
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:162:16
     (i32.const 32)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 162)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:163:4
  (i32.store offset=96
   ;;@ (lib)/allocator/tlsf.ts:164:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:164:32
    (i32.mul
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:164:33
      (i32.mul
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:164:38
       (i32.const 32)
      )
      ;;@ (lib)/allocator/tlsf.ts:164:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:164:61
     (i32.const 4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:165:6
   (get_local $3)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getSLMap" (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:132:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:132:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:132:16
     (i32.const 23)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 132)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:133:68
  (return
   ;;@ (lib)/allocator/tlsf.ts:133:11
   (i32.load offset=4
    ;;@ (lib)/allocator/tlsf.ts:133:21
    (i32.add
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:133:47
     (i32.mul
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:133:52
      (i32.const 4)
     )
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setSLMap" (; 15 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:138:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:138:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:138:16
     (i32.const 23)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 138)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:139:4
  (i32.store offset=4
   ;;@ (lib)/allocator/tlsf.ts:139:15
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:139:41
    (i32.mul
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:139:46
     (i32.const 4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:139:49
   (get_local $2)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#remove" (; 16 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  ;;@ (lib)/allocator/tlsf.ts:251:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:251:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:252:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:252:11
    (i32.and
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:252:23
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 252)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:253:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:253:15
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:253:27
    (i32.xor
     ;;@ (lib)/allocator/tlsf.ts:253:28
     (i32.const 3)
     (i32.const -1)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:254:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:254:11
    (i32.and
     (if (result i32)
      (i32.ne
       (tee_local $4
        (i32.ge_u
         (get_local $3)
         ;;@ (lib)/allocator/tlsf.ts:254:19
         (i32.const 12)
        )
       )
       (i32.const 0)
      )
      ;;@ (lib)/allocator/tlsf.ts:254:37
      (i32.lt_u
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:254:44
       (i32.const 1073741824)
      )
      (get_local $4)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 254)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:257:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:258:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:258:8
   (i32.lt_u
    (get_local $3)
    ;;@ (lib)/allocator/tlsf.ts:258:15
    (i32.const 128)
   )
   ;;@ (lib)/allocator/tlsf.ts:258:24
   (block
    ;;@ (lib)/allocator/tlsf.ts:259:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:259:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:260:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:260:11
     (i32.div_u
      ;;@ (lib)/allocator/tlsf.ts:260:17
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:260:24
      (i32.const 4)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:261:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:262:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:262:11
     (call "$(lib)/allocator/tlsf/fls<usize>"
      ;;@ (lib)/allocator/tlsf.ts:262:22
      (get_local $3)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:263:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:263:11
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:263:17
      (i32.shr_u
       ;;@ (lib)/allocator/tlsf.ts:263:18
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:263:26
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:263:27
        (get_local $5)
        ;;@ (lib)/allocator/tlsf.ts:263:32
        (i32.const 5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:263:44
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:263:45
       (i32.const 1)
       ;;@ (lib)/allocator/tlsf.ts:263:50
       (i32.const 5)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:264:6
    (set_local $5
     (i32.sub
      (get_local $5)
      ;;@ (lib)/allocator/tlsf.ts:264:12
      (i32.sub
       (i32.const 7)
       ;;@ (lib)/allocator/tlsf.ts:264:22
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:268:4
  (set_local $7
   ;;@ (lib)/allocator/tlsf.ts:268:15
   (i32.load offset=4
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:269:4
  (set_local $8
   ;;@ (lib)/allocator/tlsf.ts:269:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:270:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:270:8
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:271:6
   (i32.store offset=8
    (get_local $7)
    ;;@ (lib)/allocator/tlsf.ts:271:18
    (get_local $8)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:272:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:272:8
   (get_local $8)
   ;;@ (lib)/allocator/tlsf.ts:273:6
   (i32.store offset=4
    (get_local $8)
    ;;@ (lib)/allocator/tlsf.ts:273:18
    (get_local $7)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:276:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:276:8
   (i32.eq
    (get_local $1)
    ;;@ (lib)/allocator/tlsf.ts:276:22
    (call "$(lib)/allocator/tlsf/Root#getHead"
     ;;@ (lib)/allocator/tlsf.ts:276:17
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:276:30
     (get_local $5)
     ;;@ (lib)/allocator/tlsf.ts:276:34
     (get_local $6)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:276:39
   (block
    ;;@ (lib)/allocator/tlsf.ts:277:11
    (call "$(lib)/allocator/tlsf/Root#setHead"
     ;;@ (lib)/allocator/tlsf.ts:277:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:277:19
     (get_local $5)
     ;;@ (lib)/allocator/tlsf.ts:277:23
     (get_local $6)
     ;;@ (lib)/allocator/tlsf.ts:277:27
     (get_local $8)
    )
    ;;@ (lib)/allocator/tlsf.ts:280:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:280:10
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:280:11
      (get_local $8)
     )
     ;;@ (lib)/allocator/tlsf.ts:280:17
     (block
      ;;@ (lib)/allocator/tlsf.ts:281:8
      (set_local $9
       ;;@ (lib)/allocator/tlsf.ts:281:25
       (call "$(lib)/allocator/tlsf/Root#getSLMap"
        ;;@ (lib)/allocator/tlsf.ts:281:20
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:281:34
        (get_local $5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:282:13
      (call "$(lib)/allocator/tlsf/Root#setSLMap"
       ;;@ (lib)/allocator/tlsf.ts:282:8
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:282:22
       (get_local $5)
       ;;@ (lib)/allocator/tlsf.ts:282:26
       (tee_local $9
        (i32.and
         (get_local $9)
         ;;@ (lib)/allocator/tlsf.ts:282:35
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:282:36
          (i32.shl
           ;;@ (lib)/allocator/tlsf.ts:282:37
           (i32.const 1)
           ;;@ (lib)/allocator/tlsf.ts:282:42
           (get_local $6)
          )
          (i32.const -1)
         )
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:285:8
      (if
       ;;@ (lib)/allocator/tlsf.ts:285:12
       (i32.eqz
        ;;@ (lib)/allocator/tlsf.ts:285:13
        (get_local $9)
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
 (func "$(lib)/allocator/tlsf/Block#get:left" (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ (lib)/allocator/tlsf.ts:75:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:75:11
    (i32.and
     (i32.load
      (get_local $0)
     )
     ;;@ (lib)/allocator/tlsf.ts:75:23
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 75)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:78:4
  (return
   ;;@ (lib)/allocator/tlsf.ts:76:11
   (if (result i32)
    (i32.eqz
     (tee_local $1
      ;;@ (lib)/allocator/tlsf.ts:77:6
      (i32.load
       ;;@ (lib)/allocator/tlsf.ts:77:18
       (i32.sub
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:77:44
        (i32.const 4)
       )
      )
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 76)
      (i32.const 11)
     )
     (unreachable)
    )
    (get_local $1)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setJump" (; 18 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:331:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:331:11
    (i32.and
     (i32.load
      (get_local $1)
     )
     ;;@ (lib)/allocator/tlsf.ts:331:23
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 331)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:332:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:332:11
    (i32.eq
     (call "$(lib)/allocator/tlsf/Block#get:right"
      (get_local $1)
     )
     ;;@ (lib)/allocator/tlsf.ts:332:25
     (get_local $2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 332)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:333:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:333:11
    (i32.and
     (i32.load
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:333:24
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 333)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:334:4
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:335:6
   (i32.sub
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:335:33
    (i32.const 4)
   )
   ;;@ (lib)/allocator/tlsf.ts:336:6
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#insert" (; 19 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  ;;@ (lib)/allocator/tlsf.ts:183:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:183:11
    (get_local $1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 183)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:184:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:184:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:185:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:185:11
    (i32.and
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:185:23
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 185)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:186:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:187:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:188:6
    (i32.and
     (if (result i32)
      (i32.ne
       (tee_local $4
        (i32.ge_u
         (tee_local $3
          ;;@ (lib)/allocator/tlsf.ts:188:14
          (i32.and
           (i32.load
            (get_local $1)
           )
           ;;@ (lib)/allocator/tlsf.ts:188:27
           (i32.xor
            ;;@ (lib)/allocator/tlsf.ts:188:28
            (i32.const 3)
            (i32.const -1)
           )
          )
         )
         ;;@ (lib)/allocator/tlsf.ts:188:37
         (i32.const 12)
        )
       )
       (i32.const 0)
      )
      ;;@ (lib)/allocator/tlsf.ts:188:55
      (i32.lt_u
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:188:62
       (i32.const 1073741824)
      )
      (get_local $4)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 187)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:191:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:191:23
   (if (result i32)
    (i32.eqz
     (tee_local $4
      ;;@ (lib)/allocator/tlsf.ts:191:30
      (call "$(lib)/allocator/tlsf/Block#get:right"
       (get_local $1)
      )
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 191)
      (i32.const 23)
     )
     (unreachable)
    )
    (get_local $4)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:192:4
  (set_local $6
   ;;@ (lib)/allocator/tlsf.ts:192:20
   (i32.load
    (get_local $5)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:195:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:195:8
   (i32.and
    (get_local $6)
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
     (get_local $5)
    )
    ;;@ (lib)/allocator/tlsf.ts:197:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:197:19
     (tee_local $2
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:197:20
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:197:33
       (i32.add
        (i32.const 4)
        ;;@ (lib)/allocator/tlsf.ts:197:46
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:197:47
         (get_local $6)
         ;;@ (lib)/allocator/tlsf.ts:197:59
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:197:60
          (i32.const 3)
          (i32.const -1)
         )
        )
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:198:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:198:14
     (call "$(lib)/allocator/tlsf/Block#get:right"
      (get_local $1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:199:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:199:18
     (i32.load
      (get_local $5)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:204:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:204:8
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:204:20
    (i32.const 2)
   )
   ;;@ (lib)/allocator/tlsf.ts:204:31
   (block
    ;;@ (lib)/allocator/tlsf.ts:205:6
    (set_local $7
     ;;@ (lib)/allocator/tlsf.ts:205:24
     (if (result i32)
      (i32.eqz
       (tee_local $4
        ;;@ (lib)/allocator/tlsf.ts:205:31
        (call "$(lib)/allocator/tlsf/Block#get:left"
         (get_local $1)
        )
       )
      )
      (block
       (call $abort
        (i32.const 0)
        (i32.const 4)
        (i32.const 205)
        (i32.const 24)
       )
       (unreachable)
      )
      (get_local $4)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:206:6
    (set_local $8
     ;;@ (lib)/allocator/tlsf.ts:206:21
     (i32.load
      (get_local $7)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:207:6
    (if
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:207:13
      (i32.and
       (get_local $8)
       ;;@ (lib)/allocator/tlsf.ts:207:24
       (i32.const 1)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 207)
       (i32.const 6)
      )
      (unreachable)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:208:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:208:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:208:18
     (get_local $7)
    )
    ;;@ (lib)/allocator/tlsf.ts:209:6
    (i32.store
     (get_local $7)
     ;;@ (lib)/allocator/tlsf.ts:209:18
     (tee_local $8
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:209:19
       (get_local $8)
       ;;@ (lib)/allocator/tlsf.ts:209:31
       (i32.add
        (i32.const 4)
        ;;@ (lib)/allocator/tlsf.ts:209:44
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:209:45
         (get_local $2)
         ;;@ (lib)/allocator/tlsf.ts:209:57
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:209:58
          (i32.const 3)
          (i32.const -1)
         )
        )
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:210:6
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:210:14
     (get_local $7)
    )
    ;;@ (lib)/allocator/tlsf.ts:211:6
    (set_local $2
     ;;@ (lib)/allocator/tlsf.ts:211:18
     (get_local $8)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:215:4
  (i32.store
   (get_local $5)
   ;;@ (lib)/allocator/tlsf.ts:215:17
   (i32.or
    (get_local $6)
    ;;@ (lib)/allocator/tlsf.ts:215:29
    (i32.const 2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:216:9
  (call "$(lib)/allocator/tlsf/Root#setJump"
   ;;@ (lib)/allocator/tlsf.ts:216:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:216:17
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:216:24
   (get_local $5)
  )
  ;;@ (lib)/allocator/tlsf.ts:219:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:219:11
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:219:23
    (i32.xor
     ;;@ (lib)/allocator/tlsf.ts:219:24
     (i32.const 3)
     (i32.const -1)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:220:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:220:11
    (i32.and
     (if (result i32)
      (i32.ne
       (tee_local $4
        (i32.ge_u
         (get_local $3)
         ;;@ (lib)/allocator/tlsf.ts:220:19
         (i32.const 12)
        )
       )
       (i32.const 0)
      )
      ;;@ (lib)/allocator/tlsf.ts:220:37
      (i32.lt_u
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:220:44
       (i32.const 1073741824)
      )
      (get_local $4)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 220)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:223:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:224:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:224:8
   (i32.lt_u
    (get_local $3)
    ;;@ (lib)/allocator/tlsf.ts:224:15
    (i32.const 128)
   )
   ;;@ (lib)/allocator/tlsf.ts:224:24
   (block
    ;;@ (lib)/allocator/tlsf.ts:225:6
    (set_local $9
     ;;@ (lib)/allocator/tlsf.ts:225:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:226:6
    (set_local $10
     ;;@ (lib)/allocator/tlsf.ts:226:11
     (i32.div_u
      ;;@ (lib)/allocator/tlsf.ts:226:17
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:226:24
      (i32.const 4)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:227:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:228:6
    (set_local $9
     ;;@ (lib)/allocator/tlsf.ts:228:11
     (call "$(lib)/allocator/tlsf/fls<usize>"
      ;;@ (lib)/allocator/tlsf.ts:228:22
      (get_local $3)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:229:6
    (set_local $10
     ;;@ (lib)/allocator/tlsf.ts:229:11
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:229:17
      (i32.shr_u
       ;;@ (lib)/allocator/tlsf.ts:229:18
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:229:26
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:229:27
        (get_local $9)
        ;;@ (lib)/allocator/tlsf.ts:229:32
        (i32.const 5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:229:44
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:229:45
       (i32.const 1)
       ;;@ (lib)/allocator/tlsf.ts:229:50
       (i32.const 5)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:230:6
    (set_local $9
     (i32.sub
      (get_local $9)
      ;;@ (lib)/allocator/tlsf.ts:230:12
      (i32.sub
       (i32.const 7)
       ;;@ (lib)/allocator/tlsf.ts:230:22
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:234:4
  (set_local $11
   ;;@ (lib)/allocator/tlsf.ts:234:20
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:234:15
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:234:28
    (get_local $9)
    ;;@ (lib)/allocator/tlsf.ts:234:32
    (get_local $10)
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
   (get_local $11)
  )
  ;;@ (lib)/allocator/tlsf.ts:237:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:237:8
   (get_local $11)
   ;;@ (lib)/allocator/tlsf.ts:237:14
   (i32.store offset=4
    (get_local $11)
    ;;@ (lib)/allocator/tlsf.ts:237:26
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:238:9
  (call "$(lib)/allocator/tlsf/Root#setHead"
   ;;@ (lib)/allocator/tlsf.ts:238:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:238:17
   (get_local $9)
   ;;@ (lib)/allocator/tlsf.ts:238:21
   (get_local $10)
   ;;@ (lib)/allocator/tlsf.ts:238:25
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
     (get_local $9)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:242:9
  (call "$(lib)/allocator/tlsf/Root#setSLMap"
   ;;@ (lib)/allocator/tlsf.ts:242:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:242:18
   (get_local $9)
   ;;@ (lib)/allocator/tlsf.ts:242:22
   (i32.or
    ;;@ (lib)/allocator/tlsf.ts:242:27
    (call "$(lib)/allocator/tlsf/Root#getSLMap"
     ;;@ (lib)/allocator/tlsf.ts:242:22
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:242:36
     (get_local $9)
    )
    ;;@ (lib)/allocator/tlsf.ts:242:42
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:242:43
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:242:48
     (get_local $10)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/free_memory" (; 20 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:480:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:480:6
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:480:12
   (block
    ;;@ (lib)/allocator/tlsf.ts:481:4
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:481:15
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
    ;;@ (lib)/allocator/tlsf.ts:482:4
    (if
     ;;@ (lib)/allocator/tlsf.ts:482:8
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:482:14
     (block
      ;;@ (lib)/allocator/tlsf.ts:483:6
      (set_local $2
       ;;@ (lib)/allocator/tlsf.ts:483:18
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:483:36
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:483:43
        (i32.const 4)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:484:6
      (set_local $3
       ;;@ (lib)/allocator/tlsf.ts:484:22
       (i32.load
        (get_local $2)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:485:6
      (if
       (i32.eqz
        ;;@ (lib)/allocator/tlsf.ts:485:13
        (i32.eqz
         ;;@ (lib)/allocator/tlsf.ts:485:14
         (i32.and
          ;;@ (lib)/allocator/tlsf.ts:485:15
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:485:27
          (i32.const 1)
         )
        )
       )
       (block
        (call $abort
         (i32.const 0)
         (i32.const 4)
         (i32.const 485)
         (i32.const 6)
        )
        (unreachable)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:486:6
      (i32.store
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:486:19
       (i32.or
        (get_local $3)
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
 )
 (func $assembly/ugc/gc_free_fn (; 21 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/ugc.ts:287:2
  (set_local $2
   ;;@ assembly/ugc.ts:287:16
   (i32.load
    ;;@ assembly/ugc.ts:287:26
    (i32.add
     (get_local $1)
     ;;@ assembly/ugc.ts:287:54
     (i32.const 8)
    )
   )
  )
  ;;@ assembly/ugc.ts:292:2
  (call "$(lib)/allocator/tlsf/free_memory"
   ;;@ assembly/ugc.ts:292:14
   (get_local $1)
  )
 )
 (func $assembly/ugc/Control#step (; 22 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/ugc.ts:164:4
  (nop)
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
         (i32.and
          (i32.xor
           (get_local $3)
           ;;@ assembly/ugc.ts:187:33
           (i32.const 1)
          )
          (i32.const 255)
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
   ;;@ assembly/ugc.ts:218:11
   (call $assembly/ugc/Control#step
    ;;@ assembly/ugc.ts:218:6
    (get_local $0)
   )
  )
  ;;@ assembly/ugc.ts:219:4
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/ugc.ts:219:11
     (i32.ne
      (i32.load8_u offset=28
       (get_local $0)
      )
      ;;@ assembly/ugc.ts:219:25
      (i32.const 0)
     )
     (block
      ;;@ assembly/ugc.ts:220:11
      (call $assembly/ugc/Control#step
       ;;@ assembly/ugc.ts:220:6
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
  ;;@ assembly/ugc.ts:261:2
  (set_local $0
   ;;@ assembly/ugc.ts:261:15
   (call $assembly/ugc/Control#get:paused
    (get_global $assembly/ugc/GC)
   )
  )
  ;;@ assembly/ugc.ts:262:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:262:14
   (i32.const 0)
  )
  ;;@ assembly/ugc.ts:263:5
  (call $assembly/ugc/Control#collect
   ;;@ assembly/ugc.ts:263:2
   (get_global $assembly/ugc/GC)
  )
  ;;@ assembly/ugc.ts:264:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:264:14
   (get_local $0)
  )
 )
 (func $assembly/ugc/gc_pause (; 25 ;) (type $v)
  ;;@ assembly/ugc.ts:251:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:251:14
   (i32.const 1)
  )
 )
 (func $assembly/ugc/gc_resume (; 26 ;) (type $v)
  ;;@ assembly/ugc.ts:256:2
  (call $assembly/ugc/Control#set:paused
   (get_global $assembly/ugc/GC)
   ;;@ assembly/ugc.ts:256:14
   (i32.const 0)
  )
 )
 (func $start (; 27 ;) (type $v)
  ;;@ (lib)/allocator/tlsf.ts:50:0
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:50:7
    (i32.ge_u
     (i32.const 2)
     ;;@ (lib)/allocator/tlsf.ts:50:18
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 50)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:116:0
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:116:7
    (i32.le_s
     (i32.shl
      ;;@ (lib)/allocator/tlsf.ts:116:8
      (i32.const 1)
      ;;@ (lib)/allocator/tlsf.ts:116:13
      (i32.const 5)
     )
     ;;@ (lib)/allocator/tlsf.ts:116:25
     (i32.const 32)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $assembly/ugc/GC
   ;;@ assembly/ugc.ts:243:17
   (call $assembly/ugc/Control.create
    ;;@ assembly/ugc.ts:243:24
    (get_global $HEAP_BASE)
   )
  )
 )
)
