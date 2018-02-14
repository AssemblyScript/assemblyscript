(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iv (func (param i32)))
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
 (global $HEAP_BASE i32 (i32.const 56))
 (memory $0 1)
 (data (i32.const 4) "\17\00\00\00(\00l\00i\00b\00)\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (export "allocate_memory" (func "$(lib)/allocator/tlsf/allocate_memory"))
 (export "free_memory" (func "$(lib)/allocator/tlsf/free_memory"))
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/allocator/tlsf/Root#set:tailRef" (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ (lib)/allocator/tlsf.ts:175:30
  (i32.store offset=3040
   ;;@ (lib)/allocator/tlsf.ts:175:43
   (i32.const 0)
   ;;@ (lib)/allocator/tlsf.ts:175:46
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setSLMap" (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func "$(lib)/allocator/tlsf/Root#setHead" (; 3 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
 (func "$(lib)/allocator/tlsf/Root#get:tailRef" (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:174:58
  (return
   ;;@ (lib)/allocator/tlsf.ts:174:32
   (i32.load offset=3040
    ;;@ (lib)/allocator/tlsf.ts:174:44
    (i32.const 0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Block#get:right" (; 5 ;) (type $ii) (param $0 i32) (result i32)
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
 (func "$(lib)/allocator/tlsf/fls<usize>" (; 6 ;) (type $ii) (param $0 i32) (result i32)
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
 (func "$(lib)/allocator/tlsf/Root#getHead" (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func "$(lib)/allocator/tlsf/Root#getSLMap" (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func "$(lib)/allocator/tlsf/Root#remove" (; 9 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func "$(lib)/allocator/tlsf/Block#get:left" (; 10 ;) (type $ii) (param $0 i32) (result i32)
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
 (func "$(lib)/allocator/tlsf/Root#setJump" (; 11 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func "$(lib)/allocator/tlsf/Root#insert" (; 12 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func "$(lib)/allocator/tlsf/Root#addMemory" (; 13 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  ;;@ (lib)/allocator/tlsf.ts:374:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:374:11
    (i32.le_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:374:20
     (get_local $2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 374)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:375:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:375:11
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:375:12
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:375:13
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:375:21
      (i32.const 3)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 375)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:376:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:376:11
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:376:12
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:376:13
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:376:19
      (i32.const 3)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 376)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:378:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:378:18
   (call "$(lib)/allocator/tlsf/Root#get:tailRef"
    (get_local $0)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:379:4
  (set_local $4
   ;;@ (lib)/allocator/tlsf.ts:379:26
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:380:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:380:8
   (get_local $3)
   ;;@ (lib)/allocator/tlsf.ts:380:17
   (block
    ;;@ (lib)/allocator/tlsf.ts:381:6
    (if
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:381:13
      (i32.ge_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:381:22
       (i32.add
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:381:32
        (i32.const 4)
       )
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 381)
       (i32.const 6)
      )
      (unreachable)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:384:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:384:10
     (i32.eq
      (i32.sub
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:384:18
       (i32.const 4)
      )
      ;;@ (lib)/allocator/tlsf.ts:384:32
      (get_local $3)
     )
     ;;@ (lib)/allocator/tlsf.ts:384:41
     (block
      ;;@ (lib)/allocator/tlsf.ts:385:8
      (set_local $1
       (i32.sub
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:385:17
        (i32.const 4)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:386:8
      (set_local $4
       ;;@ (lib)/allocator/tlsf.ts:386:19
       (i32.load
        (get_local $3)
       )
      )
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:390:6
   (if
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:390:13
     (i32.ge_u
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:390:22
      (i32.add
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:390:48
       (i32.const 3044)
      )
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 390)
      (i32.const 6)
     )
     (unreachable)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:393:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:393:15
   (i32.sub
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:393:21
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:394:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:394:8
   (i32.lt_u
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:394:15
    (i32.add
     (i32.add
      (i32.const 4)
      ;;@ (lib)/allocator/tlsf.ts:394:28
      (i32.const 12)
     )
     ;;@ (lib)/allocator/tlsf.ts:394:45
     (i32.const 4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:395:13
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:398:4
  (set_local $6
   ;;@ (lib)/allocator/tlsf.ts:398:19
   (i32.sub
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:398:26
    (i32.mul
     (i32.const 2)
     ;;@ (lib)/allocator/tlsf.ts:398:30
     (i32.const 4)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:399:4
  (set_local $7
   ;;@ (lib)/allocator/tlsf.ts:399:15
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:400:4
  (i32.store
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:400:16
   (i32.or
    (i32.or
     (get_local $6)
     ;;@ (lib)/allocator/tlsf.ts:400:27
     (i32.const 1)
    )
    ;;@ (lib)/allocator/tlsf.ts:400:34
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:400:35
     (get_local $4)
     ;;@ (lib)/allocator/tlsf.ts:400:46
     (i32.const 2)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:401:4
  (i32.store offset=4
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:401:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:402:4
  (i32.store offset=8
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:402:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:405:4
  (set_local $8
   ;;@ (lib)/allocator/tlsf.ts:405:15
   (i32.sub
    ;;@ (lib)/allocator/tlsf.ts:405:33
    (i32.add
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:405:41
     (get_local $5)
    )
    ;;@ (lib)/allocator/tlsf.ts:405:48
    (i32.const 4)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:406:4
  (i32.store
   (get_local $8)
   ;;@ (lib)/allocator/tlsf.ts:406:16
   (i32.or
    (i32.const 0)
    ;;@ (lib)/allocator/tlsf.ts:406:20
    (i32.const 2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:407:4
  (call "$(lib)/allocator/tlsf/Root#set:tailRef"
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:407:19
   (get_local $8)
  )
  ;;@ (lib)/allocator/tlsf.ts:409:9
  (call "$(lib)/allocator/tlsf/Root#insert"
   ;;@ (lib)/allocator/tlsf.ts:409:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:409:16
   (get_local $7)
  )
  ;;@ (lib)/allocator/tlsf.ts:411:11
  (return
   (i32.const 1)
  )
 )
 (func "$(lib)/allocator/tlsf/ffs<usize>" (; 14 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:417:2
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:417:9
    (i32.ne
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:417:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 417)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:418:20
  (return
   ;;@ (lib)/allocator/tlsf.ts:418:9
   (i32.ctz
    ;;@ (lib)/allocator/tlsf.ts:418:16
    (get_local $0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/ffs<u32>" (; 15 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:417:2
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:417:9
    (i32.ne
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:417:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 417)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:418:20
  (return
   ;;@ (lib)/allocator/tlsf.ts:418:9
   (i32.ctz
    ;;@ (lib)/allocator/tlsf.ts:418:16
    (get_local $0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#search" (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  ;;@ (lib)/allocator/tlsf.ts:293:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:293:11
    (i32.and
     (if (result i32)
      (i32.ne
       (tee_local $2
        (i32.ge_u
         (get_local $1)
         ;;@ (lib)/allocator/tlsf.ts:293:19
         (i32.const 12)
        )
       )
       (i32.const 0)
      )
      ;;@ (lib)/allocator/tlsf.ts:293:37
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:293:44
       (i32.const 1073741824)
      )
      (get_local $2)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 293)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:296:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:297:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:297:8
   (i32.lt_u
    (get_local $1)
    ;;@ (lib)/allocator/tlsf.ts:297:15
    (i32.const 128)
   )
   ;;@ (lib)/allocator/tlsf.ts:297:24
   (block
    ;;@ (lib)/allocator/tlsf.ts:298:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:298:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:299:6
    (set_local $4
     ;;@ (lib)/allocator/tlsf.ts:299:11
     (i32.div_u
      ;;@ (lib)/allocator/tlsf.ts:299:17
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:299:24
      (i32.const 4)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:300:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:302:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:302:11
     (call "$(lib)/allocator/tlsf/fls<usize>"
      ;;@ (lib)/allocator/tlsf.ts:302:22
      (get_local $1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:303:6
    (set_local $4
     ;;@ (lib)/allocator/tlsf.ts:303:11
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:303:17
      (i32.shr_u
       ;;@ (lib)/allocator/tlsf.ts:303:18
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:303:26
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:303:27
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:303:32
        (i32.const 5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:303:44
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:303:45
       (i32.const 1)
       ;;@ (lib)/allocator/tlsf.ts:303:50
       (i32.const 5)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:304:6
    (set_local $3
     (i32.sub
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:304:12
      (i32.sub
       (i32.const 7)
       ;;@ (lib)/allocator/tlsf.ts:304:22
       (i32.const 1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:306:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:306:10
     (i32.lt_u
      (get_local $4)
      ;;@ (lib)/allocator/tlsf.ts:306:15
      (i32.sub
       (i32.const 32)
       ;;@ (lib)/allocator/tlsf.ts:306:25
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:306:28
     (set_local $4
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:306:30
       (get_local $4)
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:307:11
     (block
      (set_local $3
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:307:13
        (get_local $3)
        (i32.const 1)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:307:17
      (set_local $4
       ;;@ (lib)/allocator/tlsf.ts:307:22
       (i32.const 0)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:311:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:311:16
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:311:21
    (call "$(lib)/allocator/tlsf/Root#getSLMap"
     ;;@ (lib)/allocator/tlsf.ts:311:16
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:311:30
     (get_local $3)
    )
    ;;@ (lib)/allocator/tlsf.ts:311:36
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:311:37
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:311:38
      (i32.const 0)
      (i32.const -1)
     )
     ;;@ (lib)/allocator/tlsf.ts:311:43
     (get_local $4)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:312:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:313:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:313:8
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:313:9
    (get_local $5)
   )
   ;;@ (lib)/allocator/tlsf.ts:313:16
   (block
    ;;@ (lib)/allocator/tlsf.ts:315:6
    (set_local $7
     ;;@ (lib)/allocator/tlsf.ts:315:18
     (i32.and
      (i32.load
       (get_local $0)
      )
      ;;@ (lib)/allocator/tlsf.ts:315:31
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:315:32
       (i32.xor
        ;;@ (lib)/allocator/tlsf.ts:315:33
        (i32.const 0)
        (i32.const -1)
       )
       ;;@ (lib)/allocator/tlsf.ts:315:38
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:315:39
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:315:44
        (i32.const 1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:316:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:316:10
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:316:11
      (get_local $7)
     )
     ;;@ (lib)/allocator/tlsf.ts:317:8
     (set_local $6
      ;;@ (lib)/allocator/tlsf.ts:317:15
      (i32.const 0)
     )
     ;;@ (lib)/allocator/tlsf.ts:318:13
     (block
      ;;@ (lib)/allocator/tlsf.ts:319:8
      (set_local $3
       ;;@ (lib)/allocator/tlsf.ts:319:13
       (call "$(lib)/allocator/tlsf/ffs<usize>"
        ;;@ (lib)/allocator/tlsf.ts:319:24
        (get_local $7)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:320:8
      (set_local $5
       ;;@ (lib)/allocator/tlsf.ts:320:16
       (if (result i32)
        (i32.eqz
         (tee_local $2
          ;;@ (lib)/allocator/tlsf.ts:320:28
          (call "$(lib)/allocator/tlsf/Root#getSLMap"
           ;;@ (lib)/allocator/tlsf.ts:320:23
           (get_local $0)
           ;;@ (lib)/allocator/tlsf.ts:320:37
           (get_local $3)
          )
         )
        )
        (block
         (call $abort
          (i32.const 0)
          (i32.const 4)
          (i32.const 320)
          (i32.const 16)
         )
         (unreachable)
        )
        (get_local $2)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:321:8
      (set_local $6
       ;;@ (lib)/allocator/tlsf.ts:321:20
       (call "$(lib)/allocator/tlsf/Root#getHead"
        ;;@ (lib)/allocator/tlsf.ts:321:15
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:321:28
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:321:32
        (call "$(lib)/allocator/tlsf/ffs<u32>"
         ;;@ (lib)/allocator/tlsf.ts:321:41
         (get_local $5)
        )
       )
      )
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:324:6
   (set_local $6
    ;;@ (lib)/allocator/tlsf.ts:324:18
    (call "$(lib)/allocator/tlsf/Root#getHead"
     ;;@ (lib)/allocator/tlsf.ts:324:13
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:324:26
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:324:30
     (call "$(lib)/allocator/tlsf/ffs<u32>"
      ;;@ (lib)/allocator/tlsf.ts:324:39
      (get_local $5)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:326:13
  (return
   (get_local $6)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#use" (; 17 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  ;;@ (lib)/allocator/tlsf.ts:344:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:344:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:345:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:345:11
    (i32.and
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:345:23
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 345)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:346:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:346:11
    (i32.and
     (if (result i32)
      (i32.ne
       (tee_local $4
        (i32.ge_u
         (get_local $2)
         ;;@ (lib)/allocator/tlsf.ts:346:19
         (i32.const 12)
        )
       )
       (i32.const 0)
      )
      ;;@ (lib)/allocator/tlsf.ts:346:37
      (i32.lt_u
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:346:44
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
     (i32.const 346)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:347:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:347:11
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:347:12
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:347:13
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:347:20
      (i32.const 3)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 347)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:349:9
  (call "$(lib)/allocator/tlsf/Root#remove"
   ;;@ (lib)/allocator/tlsf.ts:349:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:349:16
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:352:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:352:20
   (i32.sub
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:352:21
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:352:33
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:352:34
      (i32.const 3)
      (i32.const -1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:352:42
    (get_local $2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:353:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:353:8
   (i32.ge_u
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:353:21
    (i32.add
     (i32.const 4)
     ;;@ (lib)/allocator/tlsf.ts:353:34
     (i32.const 12)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:353:50
   (block
    ;;@ (lib)/allocator/tlsf.ts:354:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:354:19
     (i32.or
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:354:26
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:354:27
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:354:39
       (i32.const 2)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:356:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:356:18
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:357:8
      (i32.add
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:357:35
       (i32.const 4)
      )
      ;;@ (lib)/allocator/tlsf.ts:357:48
      (get_local $2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:359:6
    (i32.store
     (get_local $6)
     ;;@ (lib)/allocator/tlsf.ts:359:19
     (i32.or
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:359:20
       (get_local $5)
       ;;@ (lib)/allocator/tlsf.ts:359:32
       (i32.const 4)
      )
      ;;@ (lib)/allocator/tlsf.ts:359:46
      (i32.const 1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:360:11
    (call "$(lib)/allocator/tlsf/Root#insert"
     ;;@ (lib)/allocator/tlsf.ts:360:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:360:18
     (get_local $6)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:363:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:364:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:364:19
     (i32.and
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:364:31
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:364:32
       (i32.const 1)
       (i32.const -1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:365:6
    (set_local $7
     ;;@ (lib)/allocator/tlsf.ts:365:25
     (if (result i32)
      (i32.eqz
       (tee_local $4
        ;;@ (lib)/allocator/tlsf.ts:365:32
        (call "$(lib)/allocator/tlsf/Block#get:right"
         (get_local $1)
        )
       )
      )
      (block
       (call $abort
        (i32.const 0)
        (i32.const 4)
        (i32.const 365)
        (i32.const 25)
       )
       (unreachable)
      )
      (get_local $4)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:366:6
    (i32.store
     (get_local $7)
     (i32.and
      (i32.load
       (get_local $7)
      )
      ;;@ (lib)/allocator/tlsf.ts:366:20
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:366:21
       (i32.const 2)
       (i32.const -1)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:369:44
  (return
   ;;@ (lib)/allocator/tlsf.ts:369:11
   (i32.add
    (get_local $1)
    ;;@ (lib)/allocator/tlsf.ts:369:38
    (i32.const 4)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/allocate_memory" (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
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
  ;;@ (lib)/allocator/tlsf.ts:437:2
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:437:13
   (get_global "$(lib)/allocator/tlsf/ROOT")
  )
  ;;@ (lib)/allocator/tlsf.ts:438:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:438:6
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:438:7
    (get_local $1)
   )
   ;;@ (lib)/allocator/tlsf.ts:438:13
   (block
    ;;@ (lib)/allocator/tlsf.ts:439:4
    (set_local $2
     ;;@ (lib)/allocator/tlsf.ts:439:21
     (i32.and
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:439:22
       (get_global $HEAP_BASE)
       ;;@ (lib)/allocator/tlsf.ts:439:34
       (i32.const 3)
      )
      ;;@ (lib)/allocator/tlsf.ts:439:45
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:439:46
       (i32.const 3)
       (i32.const -1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:440:4
    (set_global "$(lib)/allocator/tlsf/ROOT"
     ;;@ (lib)/allocator/tlsf.ts:440:11
     (tee_local $1
      ;;@ (lib)/allocator/tlsf.ts:440:18
      (get_local $2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:441:4
    (call "$(lib)/allocator/tlsf/Root#set:tailRef"
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:441:19
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:442:4
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:442:17
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:443:4
    (block $break|0
     ;;@ (lib)/allocator/tlsf.ts:443:9
     (set_local $3
      ;;@ (lib)/allocator/tlsf.ts:443:25
      (i32.const 0)
     )
     (loop $continue|0
      (if
       ;;@ (lib)/allocator/tlsf.ts:443:28
       (i32.lt_u
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:443:33
        (i32.const 23)
       )
       (block
        (block
         ;;@ (lib)/allocator/tlsf.ts:444:11
         (call "$(lib)/allocator/tlsf/Root#setSLMap"
          ;;@ (lib)/allocator/tlsf.ts:444:6
          (get_local $1)
          ;;@ (lib)/allocator/tlsf.ts:444:20
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:444:24
          (i32.const 0)
         )
         ;;@ (lib)/allocator/tlsf.ts:445:6
         (block $break|1
          ;;@ (lib)/allocator/tlsf.ts:445:11
          (set_local $4
           ;;@ (lib)/allocator/tlsf.ts:445:25
           (i32.const 0)
          )
          (loop $continue|1
           (if
            ;;@ (lib)/allocator/tlsf.ts:445:28
            (i32.lt_u
             (get_local $4)
             ;;@ (lib)/allocator/tlsf.ts:445:33
             (i32.const 32)
            )
            (block
             ;;@ (lib)/allocator/tlsf.ts:446:13
             (call "$(lib)/allocator/tlsf/Root#setHead"
              ;;@ (lib)/allocator/tlsf.ts:446:8
              (get_local $1)
              ;;@ (lib)/allocator/tlsf.ts:446:21
              (get_local $3)
              ;;@ (lib)/allocator/tlsf.ts:446:25
              (get_local $4)
              ;;@ (lib)/allocator/tlsf.ts:446:29
              (i32.const 0)
             )
             ;;@ (lib)/allocator/tlsf.ts:445:42
             (set_local $4
              (i32.add
               ;;@ (lib)/allocator/tlsf.ts:445:44
               (get_local $4)
               (i32.const 1)
              )
             )
             (br $continue|1)
            )
           )
          )
         )
        )
        ;;@ (lib)/allocator/tlsf.ts:443:42
        (set_local $3
         (i32.add
          ;;@ (lib)/allocator/tlsf.ts:443:44
          (get_local $3)
          (i32.const 1)
         )
        )
        (br $continue|0)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:448:9
    (drop
     (call "$(lib)/allocator/tlsf/Root#addMemory"
      ;;@ (lib)/allocator/tlsf.ts:448:4
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:448:19
      (i32.add
       (get_local $2)
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
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:452:20
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:453:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:453:6
   (if (result i32)
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:453:14
    (i32.lt_u
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:453:21
     (i32.const 1073741824)
    )
    (get_local $0)
   )
   ;;@ (lib)/allocator/tlsf.ts:453:37
   (block
    ;;@ (lib)/allocator/tlsf.ts:454:4
    (set_local $0
     ;;@ (lib)/allocator/tlsf.ts:454:11
     (select
      (tee_local $6
       ;;@ (lib)/allocator/tlsf.ts:454:22
       (i32.and
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:454:23
         (get_local $0)
         ;;@ (lib)/allocator/tlsf.ts:454:30
         (i32.const 3)
        )
        ;;@ (lib)/allocator/tlsf.ts:454:41
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:454:42
         (i32.const 3)
         (i32.const -1)
        )
       )
      )
      (tee_local $7
       ;;@ (lib)/allocator/tlsf.ts:454:51
       (i32.const 12)
      )
      (i32.gt_u
       (get_local $6)
       (get_local $7)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:456:4
    (set_local $8
     ;;@ (lib)/allocator/tlsf.ts:456:21
     (call "$(lib)/allocator/tlsf/Root#search"
      ;;@ (lib)/allocator/tlsf.ts:456:16
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:456:28
      (get_local $0)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:457:4
    (if
     ;;@ (lib)/allocator/tlsf.ts:457:8
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:457:9
      (get_local $8)
     )
     ;;@ (lib)/allocator/tlsf.ts:457:16
     (block
      ;;@ (lib)/allocator/tlsf.ts:460:6
      (set_local $9
       ;;@ (lib)/allocator/tlsf.ts:460:24
       (current_memory)
      )
      ;;@ (lib)/allocator/tlsf.ts:461:6
      (set_local $10
       ;;@ (lib)/allocator/tlsf.ts:461:24
       (select
        (tee_local $6
         ;;@ (lib)/allocator/tlsf.ts:461:28
         (get_local $9)
        )
        (tee_local $7
         ;;@ (lib)/allocator/tlsf.ts:461:41
         (i32.shr_u
          (i32.and
           ;;@ (lib)/allocator/tlsf.ts:461:42
           (i32.add
            ;;@ (lib)/allocator/tlsf.ts:461:43
            (get_local $0)
            ;;@ (lib)/allocator/tlsf.ts:461:50
            (i32.const 65535)
           )
           ;;@ (lib)/allocator/tlsf.ts:461:60
           (i32.xor
            ;;@ (lib)/allocator/tlsf.ts:461:61
            (i32.const 65535)
            (i32.const -1)
           )
          )
          ;;@ (lib)/allocator/tlsf.ts:461:73
          (i32.const 16)
         )
        )
        (i32.gt_s
         (get_local $6)
         (get_local $7)
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:462:6
      (if
       ;;@ (lib)/allocator/tlsf.ts:462:10
       (i32.lt_s
        (grow_memory
         ;;@ (lib)/allocator/tlsf.ts:462:22
         (get_local $10)
        )
        ;;@ (lib)/allocator/tlsf.ts:462:37
        (i32.const 0)
       )
       ;;@ (lib)/allocator/tlsf.ts:463:8
       (unreachable)
      )
      ;;@ (lib)/allocator/tlsf.ts:464:6
      (set_local $11
       ;;@ (lib)/allocator/tlsf.ts:464:23
       (current_memory)
      )
      ;;@ (lib)/allocator/tlsf.ts:465:11
      (drop
       (call "$(lib)/allocator/tlsf/Root#addMemory"
        ;;@ (lib)/allocator/tlsf.ts:465:6
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:465:21
        (i32.shl
         (get_local $9)
         ;;@ (lib)/allocator/tlsf.ts:465:43
         (i32.const 16)
        )
        ;;@ (lib)/allocator/tlsf.ts:465:47
        (i32.shl
         (get_local $11)
         ;;@ (lib)/allocator/tlsf.ts:465:68
         (i32.const 16)
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:466:6
      (set_local $8
       ;;@ (lib)/allocator/tlsf.ts:466:14
       (if (result i32)
        (i32.eqz
         (tee_local $6
          ;;@ (lib)/allocator/tlsf.ts:466:26
          (call "$(lib)/allocator/tlsf/Root#search"
           ;;@ (lib)/allocator/tlsf.ts:466:21
           (get_local $1)
           ;;@ (lib)/allocator/tlsf.ts:466:33
           (get_local $0)
          )
         )
        )
        (block
         (call $abort
          (i32.const 0)
          (i32.const 4)
          (i32.const 466)
          (i32.const 14)
         )
         (unreachable)
        )
        (get_local $6)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:469:4
    (if
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:469:11
      (i32.ge_u
       (i32.and
        ;;@ (lib)/allocator/tlsf.ts:469:12
        (i32.load
         (get_local $8)
        )
        ;;@ (lib)/allocator/tlsf.ts:469:25
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:469:26
         (i32.const 3)
         (i32.const -1)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:469:35
       (get_local $0)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 469)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:470:4
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:470:16
     (call "$(lib)/allocator/tlsf/Root#use"
      ;;@ (lib)/allocator/tlsf.ts:470:11
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:470:20
      (get_local $8)
      ;;@ (lib)/allocator/tlsf.ts:470:27
      (get_local $0)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:473:9
  (return
   (get_local $5)
  )
 )
 (func "$(lib)/allocator/tlsf/free_memory" (; 19 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:478:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:478:6
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:478:12
   (block
    ;;@ (lib)/allocator/tlsf.ts:479:4
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:479:15
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
    ;;@ (lib)/allocator/tlsf.ts:480:4
    (if
     ;;@ (lib)/allocator/tlsf.ts:480:8
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:480:14
     (block
      ;;@ (lib)/allocator/tlsf.ts:481:6
      (set_local $2
       ;;@ (lib)/allocator/tlsf.ts:481:18
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:481:36
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:481:43
        (i32.const 4)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:482:6
      (set_local $3
       ;;@ (lib)/allocator/tlsf.ts:482:22
       (i32.load
        (get_local $2)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:483:6
      (if
       (i32.eqz
        ;;@ (lib)/allocator/tlsf.ts:483:13
        (i32.eqz
         ;;@ (lib)/allocator/tlsf.ts:483:14
         (i32.and
          ;;@ (lib)/allocator/tlsf.ts:483:15
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:483:27
          (i32.const 1)
         )
        )
       )
       (block
        (call $abort
         (i32.const 0)
         (i32.const 4)
         (i32.const 483)
         (i32.const 6)
        )
        (unreachable)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:484:6
      (i32.store
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:484:19
       (i32.or
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:484:31
        (i32.const 1)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:485:11
      (call "$(lib)/allocator/tlsf/Root#insert"
       ;;@ (lib)/allocator/tlsf.ts:485:6
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:485:18
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:485:36
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:485:43
        (i32.const 4)
       )
      )
     )
    )
   )
  )
 )
 (func $start (; 20 ;) (type $v)
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
 )
)
