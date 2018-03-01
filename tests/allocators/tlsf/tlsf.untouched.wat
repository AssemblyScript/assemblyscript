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
  ;;@ (lib)/allocator/tlsf.ts:174:30
  (i32.store offset=3040
   ;;@ (lib)/allocator/tlsf.ts:174:43
   (i32.const 0)
   ;;@ (lib)/allocator/tlsf.ts:174:46
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setSLMap" (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:137:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:137:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:137:16
     (i32.const 23)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 137)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:138:4
  (i32.store offset=4
   ;;@ (lib)/allocator/tlsf.ts:138:15
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:138:41
    (i32.mul
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:138:46
     (i32.const 4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:138:49
   (get_local $2)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setHead" (; 3 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:160:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:160:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:160:16
     (i32.const 23)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 160)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:161:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:161:11
    (i32.lt_u
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:161:16
     (i32.const 32)
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
  (i32.store offset=96
   ;;@ (lib)/allocator/tlsf.ts:163:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:163:32
    (i32.mul
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:163:33
      (i32.mul
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:163:38
       (i32.const 32)
      )
      ;;@ (lib)/allocator/tlsf.ts:163:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:163:61
     (i32.const 4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:164:6
   (get_local $3)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#get:tailRef" (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:173:58
  (return
   ;;@ (lib)/allocator/tlsf.ts:173:32
   (i32.load offset=3040
    ;;@ (lib)/allocator/tlsf.ts:173:44
    (i32.const 0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Block#get:right" (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ (lib)/allocator/tlsf.ts:82:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:82:11
    (i32.and
     (i32.load
      (get_local $0)
     )
     ;;@ (lib)/allocator/tlsf.ts:82:23
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:82:24
      (i32.const 3)
      (i32.const -1)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 82)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:87:4
  (return
   ;;@ (lib)/allocator/tlsf.ts:83:11
   (if (result i32)
    (i32.eqz
     (tee_local $1
      ;;@ (lib)/allocator/tlsf.ts:84:6
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
        ;;@ (lib)/allocator/tlsf.ts:85:60
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:85:61
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
      (i32.const 83)
      (i32.const 11)
     )
     (unreachable)
    )
    (get_local $1)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/fls<usize>" (; 6 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:421:2
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:421:9
    (i32.ne
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:421:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 421)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:422:2
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:423:26
  (return
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
 )
 (func "$(lib)/allocator/tlsf/Root#getHead" (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:151:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:151:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:151:16
     (i32.const 23)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 151)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:152:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:152:11
    (i32.lt_u
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:152:16
     (i32.const 32)
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
  ;;@ (lib)/allocator/tlsf.ts:155:20
  (return
   ;;@ (lib)/allocator/tlsf.ts:153:11
   (i32.load offset=96
    ;;@ (lib)/allocator/tlsf.ts:154:6
    (i32.add
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:154:32
     (i32.mul
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:154:33
       (i32.mul
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:154:38
        (i32.const 32)
       )
       ;;@ (lib)/allocator/tlsf.ts:154:48
       (get_local $2)
      )
      ;;@ (lib)/allocator/tlsf.ts:154:61
      (i32.const 4)
     )
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getSLMap" (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:131:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:131:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:131:16
     (i32.const 23)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 131)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:132:68
  (return
   ;;@ (lib)/allocator/tlsf.ts:132:11
   (i32.load offset=4
    ;;@ (lib)/allocator/tlsf.ts:132:21
    (i32.add
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:132:47
     (i32.mul
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:132:52
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
  ;;@ (lib)/allocator/tlsf.ts:250:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:250:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:251:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:251:11
    (i32.and
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:251:23
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 251)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:252:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:252:15
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:252:27
    (i32.xor
     ;;@ (lib)/allocator/tlsf.ts:252:28
     (i32.const 3)
     (i32.const -1)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:253:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:253:11
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.ge_u
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:253:19
        (i32.const 12)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:253:37
      (i32.lt_u
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:253:44
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
     (i32.const 253)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:256:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:257:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:257:8
   (i32.lt_u
    (get_local $3)
    ;;@ (lib)/allocator/tlsf.ts:257:15
    (i32.const 128)
   )
   ;;@ (lib)/allocator/tlsf.ts:257:24
   (block
    ;;@ (lib)/allocator/tlsf.ts:258:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:258:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:259:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:259:11
     (i32.div_u
      ;;@ (lib)/allocator/tlsf.ts:259:17
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:259:24
      (i32.const 4)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:260:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:261:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:261:11
     (call "$(lib)/allocator/tlsf/fls<usize>"
      ;;@ (lib)/allocator/tlsf.ts:261:22
      (get_local $3)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:262:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:262:11
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:262:17
      (i32.shr_u
       ;;@ (lib)/allocator/tlsf.ts:262:18
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:262:26
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:262:27
        (get_local $5)
        ;;@ (lib)/allocator/tlsf.ts:262:32
        (i32.const 5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:262:44
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:262:45
       (i32.const 1)
       ;;@ (lib)/allocator/tlsf.ts:262:50
       (i32.const 5)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:263:6
    (set_local $5
     (i32.sub
      (get_local $5)
      ;;@ (lib)/allocator/tlsf.ts:263:12
      (i32.sub
       (i32.const 7)
       ;;@ (lib)/allocator/tlsf.ts:263:22
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:267:4
  (set_local $7
   ;;@ (lib)/allocator/tlsf.ts:267:15
   (i32.load offset=4
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:268:4
  (set_local $8
   ;;@ (lib)/allocator/tlsf.ts:268:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:269:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:269:8
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:269:14
   (i32.store offset=8
    (get_local $7)
    ;;@ (lib)/allocator/tlsf.ts:269:26
    (get_local $8)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:270:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:270:8
   (get_local $8)
   ;;@ (lib)/allocator/tlsf.ts:270:14
   (i32.store offset=4
    (get_local $8)
    ;;@ (lib)/allocator/tlsf.ts:270:26
    (get_local $7)
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
     (get_local $5)
     ;;@ (lib)/allocator/tlsf.ts:273:34
     (get_local $6)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:273:39
   (block
    ;;@ (lib)/allocator/tlsf.ts:274:11
    (call "$(lib)/allocator/tlsf/Root#setHead"
     ;;@ (lib)/allocator/tlsf.ts:274:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:274:19
     (get_local $5)
     ;;@ (lib)/allocator/tlsf.ts:274:23
     (get_local $6)
     ;;@ (lib)/allocator/tlsf.ts:274:27
     (get_local $8)
    )
    ;;@ (lib)/allocator/tlsf.ts:277:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:277:10
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:277:11
      (get_local $8)
     )
     ;;@ (lib)/allocator/tlsf.ts:277:17
     (block
      ;;@ (lib)/allocator/tlsf.ts:278:8
      (set_local $9
       ;;@ (lib)/allocator/tlsf.ts:278:25
       (call "$(lib)/allocator/tlsf/Root#getSLMap"
        ;;@ (lib)/allocator/tlsf.ts:278:20
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:278:34
        (get_local $5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:279:13
      (call "$(lib)/allocator/tlsf/Root#setSLMap"
       ;;@ (lib)/allocator/tlsf.ts:279:8
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:279:22
       (get_local $5)
       ;;@ (lib)/allocator/tlsf.ts:279:26
       (tee_local $9
        (i32.and
         (get_local $9)
         ;;@ (lib)/allocator/tlsf.ts:279:35
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:279:36
          (i32.shl
           ;;@ (lib)/allocator/tlsf.ts:279:37
           (i32.const 1)
           ;;@ (lib)/allocator/tlsf.ts:279:42
           (get_local $6)
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
        (get_local $9)
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
  ;;@ (lib)/allocator/tlsf.ts:74:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:74:11
    (i32.and
     (i32.load
      (get_local $0)
     )
     ;;@ (lib)/allocator/tlsf.ts:74:23
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 74)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:77:4
  (return
   ;;@ (lib)/allocator/tlsf.ts:75:11
   (if (result i32)
    (i32.eqz
     (tee_local $1
      ;;@ (lib)/allocator/tlsf.ts:76:6
      (i32.load
       ;;@ (lib)/allocator/tlsf.ts:76:18
       (i32.sub
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:76:44
        (i32.const 4)
       )
      )
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 75)
      (i32.const 11)
     )
     (unreachable)
    )
    (get_local $1)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setJump" (; 11 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:327:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:327:11
    (i32.and
     (i32.load
      (get_local $1)
     )
     ;;@ (lib)/allocator/tlsf.ts:327:23
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 327)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:328:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:328:11
    (i32.eq
     (call "$(lib)/allocator/tlsf/Block#get:right"
      (get_local $1)
     )
     ;;@ (lib)/allocator/tlsf.ts:328:25
     (get_local $2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 328)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:329:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:329:11
    (i32.and
     (i32.load
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:329:24
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 329)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:330:4
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:331:6
   (i32.sub
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:331:33
    (i32.const 4)
   )
   ;;@ (lib)/allocator/tlsf.ts:332:6
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
  ;;@ (lib)/allocator/tlsf.ts:182:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:182:11
    (get_local $1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 182)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:183:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:183:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:184:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:184:11
    (i32.and
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:184:23
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 184)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:185:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:186:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:187:6
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.ge_u
        (tee_local $3
         ;;@ (lib)/allocator/tlsf.ts:187:14
         (i32.and
          (i32.load
           (get_local $1)
          )
          ;;@ (lib)/allocator/tlsf.ts:187:27
          (i32.xor
           ;;@ (lib)/allocator/tlsf.ts:187:28
           (i32.const 3)
           (i32.const -1)
          )
         )
        )
        ;;@ (lib)/allocator/tlsf.ts:187:37
        (i32.const 12)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:187:55
      (i32.lt_u
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:187:62
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
     (i32.const 186)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:190:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:190:23
   (if (result i32)
    (i32.eqz
     (tee_local $4
      ;;@ (lib)/allocator/tlsf.ts:190:30
      (call "$(lib)/allocator/tlsf/Block#get:right"
       (get_local $1)
      )
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 190)
      (i32.const 23)
     )
     (unreachable)
    )
    (get_local $4)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:191:4
  (set_local $6
   ;;@ (lib)/allocator/tlsf.ts:191:20
   (i32.load
    (get_local $5)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:194:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:194:8
   (i32.and
    (get_local $6)
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
     (get_local $5)
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
        (i32.const 4)
        ;;@ (lib)/allocator/tlsf.ts:196:46
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:196:47
         (get_local $6)
         ;;@ (lib)/allocator/tlsf.ts:196:59
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:196:60
          (i32.const 3)
          (i32.const -1)
         )
        )
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:197:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:197:14
     (call "$(lib)/allocator/tlsf/Block#get:right"
      (get_local $1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:198:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:198:18
     (i32.load
      (get_local $5)
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
    ;;@ (lib)/allocator/tlsf.ts:204:6
    (set_local $7
     ;;@ (lib)/allocator/tlsf.ts:204:24
     (if (result i32)
      (i32.eqz
       (tee_local $4
        ;;@ (lib)/allocator/tlsf.ts:204:31
        (call "$(lib)/allocator/tlsf/Block#get:left"
         (get_local $1)
        )
       )
      )
      (block
       (call $abort
        (i32.const 0)
        (i32.const 4)
        (i32.const 204)
        (i32.const 24)
       )
       (unreachable)
      )
      (get_local $4)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:205:6
    (set_local $8
     ;;@ (lib)/allocator/tlsf.ts:205:21
     (i32.load
      (get_local $7)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:206:6
    (if
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:206:13
      (i32.and
       (get_local $8)
       ;;@ (lib)/allocator/tlsf.ts:206:24
       (i32.const 1)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 206)
       (i32.const 6)
      )
      (unreachable)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:207:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:207:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:207:18
     (get_local $7)
    )
    ;;@ (lib)/allocator/tlsf.ts:208:6
    (i32.store
     (get_local $7)
     ;;@ (lib)/allocator/tlsf.ts:208:18
     (tee_local $8
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:208:19
       (get_local $8)
       ;;@ (lib)/allocator/tlsf.ts:208:31
       (i32.add
        (i32.const 4)
        ;;@ (lib)/allocator/tlsf.ts:208:44
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:208:45
         (get_local $2)
         ;;@ (lib)/allocator/tlsf.ts:208:57
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:208:58
          (i32.const 3)
          (i32.const -1)
         )
        )
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:209:6
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:209:14
     (get_local $7)
    )
    ;;@ (lib)/allocator/tlsf.ts:210:6
    (set_local $2
     ;;@ (lib)/allocator/tlsf.ts:210:18
     (get_local $8)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:214:4
  (i32.store
   (get_local $5)
   ;;@ (lib)/allocator/tlsf.ts:214:17
   (i32.or
    (get_local $6)
    ;;@ (lib)/allocator/tlsf.ts:214:29
    (i32.const 2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:215:9
  (call "$(lib)/allocator/tlsf/Root#setJump"
   ;;@ (lib)/allocator/tlsf.ts:215:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:215:17
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:215:24
   (get_local $5)
  )
  ;;@ (lib)/allocator/tlsf.ts:218:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:218:11
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:218:23
    (i32.xor
     ;;@ (lib)/allocator/tlsf.ts:218:24
     (i32.const 3)
     (i32.const -1)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:219:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:219:11
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.ge_u
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:219:19
        (i32.const 12)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:219:37
      (i32.lt_u
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:219:44
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
     (i32.const 219)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:222:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:223:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:223:8
   (i32.lt_u
    (get_local $3)
    ;;@ (lib)/allocator/tlsf.ts:223:15
    (i32.const 128)
   )
   ;;@ (lib)/allocator/tlsf.ts:223:24
   (block
    ;;@ (lib)/allocator/tlsf.ts:224:6
    (set_local $9
     ;;@ (lib)/allocator/tlsf.ts:224:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:225:6
    (set_local $10
     ;;@ (lib)/allocator/tlsf.ts:225:11
     (i32.div_u
      ;;@ (lib)/allocator/tlsf.ts:225:17
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:225:24
      (i32.const 4)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:226:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:227:6
    (set_local $9
     ;;@ (lib)/allocator/tlsf.ts:227:11
     (call "$(lib)/allocator/tlsf/fls<usize>"
      ;;@ (lib)/allocator/tlsf.ts:227:22
      (get_local $3)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:228:6
    (set_local $10
     ;;@ (lib)/allocator/tlsf.ts:228:11
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:228:17
      (i32.shr_u
       ;;@ (lib)/allocator/tlsf.ts:228:18
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:228:26
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:228:27
        (get_local $9)
        ;;@ (lib)/allocator/tlsf.ts:228:32
        (i32.const 5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:228:44
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:228:45
       (i32.const 1)
       ;;@ (lib)/allocator/tlsf.ts:228:50
       (i32.const 5)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:229:6
    (set_local $9
     (i32.sub
      (get_local $9)
      ;;@ (lib)/allocator/tlsf.ts:229:12
      (i32.sub
       (i32.const 7)
       ;;@ (lib)/allocator/tlsf.ts:229:22
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:233:4
  (set_local $11
   ;;@ (lib)/allocator/tlsf.ts:233:20
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:233:15
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:233:28
    (get_local $9)
    ;;@ (lib)/allocator/tlsf.ts:233:32
    (get_local $10)
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
   (get_local $11)
  )
  ;;@ (lib)/allocator/tlsf.ts:236:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:236:8
   (get_local $11)
   ;;@ (lib)/allocator/tlsf.ts:236:14
   (i32.store offset=4
    (get_local $11)
    ;;@ (lib)/allocator/tlsf.ts:236:26
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:237:9
  (call "$(lib)/allocator/tlsf/Root#setHead"
   ;;@ (lib)/allocator/tlsf.ts:237:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:237:17
   (get_local $9)
   ;;@ (lib)/allocator/tlsf.ts:237:21
   (get_local $10)
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
     (get_local $9)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:241:9
  (call "$(lib)/allocator/tlsf/Root#setSLMap"
   ;;@ (lib)/allocator/tlsf.ts:241:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:241:18
   (get_local $9)
   ;;@ (lib)/allocator/tlsf.ts:241:22
   (i32.or
    ;;@ (lib)/allocator/tlsf.ts:241:27
    (call "$(lib)/allocator/tlsf/Root#getSLMap"
     ;;@ (lib)/allocator/tlsf.ts:241:22
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:241:36
     (get_local $9)
    )
    ;;@ (lib)/allocator/tlsf.ts:241:42
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:241:43
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:241:48
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
  ;;@ (lib)/allocator/tlsf.ts:370:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:370:11
    (i32.le_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:370:20
     (get_local $2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 370)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:371:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:371:11
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:371:12
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:371:13
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:371:21
      (i32.const 3)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 371)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:372:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:372:11
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:372:12
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:372:13
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:372:19
      (i32.const 3)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 372)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:374:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:374:18
   (call "$(lib)/allocator/tlsf/Root#get:tailRef"
    (get_local $0)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:375:4
  (set_local $4
   ;;@ (lib)/allocator/tlsf.ts:375:26
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:376:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:376:8
   (get_local $3)
   ;;@ (lib)/allocator/tlsf.ts:376:17
   (block
    ;;@ (lib)/allocator/tlsf.ts:377:6
    (if
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:377:13
      (i32.ge_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:377:22
       (i32.add
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:377:32
        (i32.const 4)
       )
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 377)
       (i32.const 6)
      )
      (unreachable)
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
   ;;@ (lib)/allocator/tlsf.ts:386:6
   (if
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:386:13
     (i32.ge_u
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:386:22
      (i32.add
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:386:48
       (i32.const 3044)
      )
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 386)
      (i32.const 6)
     )
     (unreachable)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:390:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:390:15
   (i32.sub
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:390:21
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:391:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:391:8
   (i32.lt_u
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:391:15
    (i32.add
     (i32.add
      (i32.const 4)
      ;;@ (lib)/allocator/tlsf.ts:391:28
      (i32.const 12)
     )
     ;;@ (lib)/allocator/tlsf.ts:391:45
     (i32.const 4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:392:13
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:396:4
  (set_local $6
   ;;@ (lib)/allocator/tlsf.ts:396:19
   (i32.sub
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:396:26
    (i32.mul
     (i32.const 2)
     ;;@ (lib)/allocator/tlsf.ts:396:30
     (i32.const 4)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:397:4
  (set_local $7
   ;;@ (lib)/allocator/tlsf.ts:397:15
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:398:4
  (i32.store
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:398:16
   (i32.or
    (i32.or
     (get_local $6)
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
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:399:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:400:4
  (i32.store offset=8
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:400:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:403:4
  (set_local $8
   ;;@ (lib)/allocator/tlsf.ts:403:15
   (i32.sub
    ;;@ (lib)/allocator/tlsf.ts:403:33
    (i32.add
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:403:41
     (get_local $5)
    )
    ;;@ (lib)/allocator/tlsf.ts:403:48
    (i32.const 4)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:404:4
  (i32.store
   (get_local $8)
   ;;@ (lib)/allocator/tlsf.ts:404:16
   (i32.or
    (i32.const 0)
    ;;@ (lib)/allocator/tlsf.ts:404:20
    (i32.const 2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:405:4
  (call "$(lib)/allocator/tlsf/Root#set:tailRef"
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:405:19
   (get_local $8)
  )
  ;;@ (lib)/allocator/tlsf.ts:407:9
  (call "$(lib)/allocator/tlsf/Root#insert"
   ;;@ (lib)/allocator/tlsf.ts:407:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:407:16
   (get_local $7)
  )
  ;;@ (lib)/allocator/tlsf.ts:409:11
  (return
   (i32.const 1)
  )
 )
 (func "$(lib)/allocator/tlsf/ffs<usize>" (; 14 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:415:2
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:415:9
    (i32.ne
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:415:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 415)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:416:20
  (return
   ;;@ (lib)/allocator/tlsf.ts:416:9
   (i32.ctz
    ;;@ (lib)/allocator/tlsf.ts:416:16
    (get_local $0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/ffs<u32>" (; 15 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:415:2
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:415:9
    (i32.ne
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:415:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 415)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:416:20
  (return
   ;;@ (lib)/allocator/tlsf.ts:416:9
   (i32.ctz
    ;;@ (lib)/allocator/tlsf.ts:416:16
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
  ;;@ (lib)/allocator/tlsf.ts:289:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:289:11
    (i32.and
     (if (result i32)
      (tee_local $2
       (i32.ge_u
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:289:19
        (i32.const 12)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:289:37
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:289:44
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
     (i32.const 289)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:292:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:293:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:293:8
   (i32.lt_u
    (get_local $1)
    ;;@ (lib)/allocator/tlsf.ts:293:15
    (i32.const 128)
   )
   ;;@ (lib)/allocator/tlsf.ts:293:24
   (block
    ;;@ (lib)/allocator/tlsf.ts:294:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:294:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:295:6
    (set_local $4
     ;;@ (lib)/allocator/tlsf.ts:295:11
     (i32.div_u
      ;;@ (lib)/allocator/tlsf.ts:295:17
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:295:24
      (i32.const 4)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:296:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:298:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:298:11
     (call "$(lib)/allocator/tlsf/fls<usize>"
      ;;@ (lib)/allocator/tlsf.ts:298:22
      (get_local $1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:299:6
    (set_local $4
     ;;@ (lib)/allocator/tlsf.ts:299:11
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:299:17
      (i32.shr_u
       ;;@ (lib)/allocator/tlsf.ts:299:18
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:299:26
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:299:27
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:299:32
        (i32.const 5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:299:44
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:299:45
       (i32.const 1)
       ;;@ (lib)/allocator/tlsf.ts:299:50
       (i32.const 5)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:300:6
    (set_local $3
     (i32.sub
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:300:12
      (i32.sub
       (i32.const 7)
       ;;@ (lib)/allocator/tlsf.ts:300:22
       (i32.const 1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:302:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:302:10
     (i32.lt_u
      (get_local $4)
      ;;@ (lib)/allocator/tlsf.ts:302:15
      (i32.sub
       (i32.const 32)
       ;;@ (lib)/allocator/tlsf.ts:302:25
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:302:28
     (set_local $4
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:302:30
       (get_local $4)
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:303:11
     (block
      (set_local $3
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:303:13
        (get_local $3)
        (i32.const 1)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:303:17
      (set_local $4
       ;;@ (lib)/allocator/tlsf.ts:303:22
       (i32.const 0)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:307:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:307:16
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:307:21
    (call "$(lib)/allocator/tlsf/Root#getSLMap"
     ;;@ (lib)/allocator/tlsf.ts:307:16
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:307:30
     (get_local $3)
    )
    ;;@ (lib)/allocator/tlsf.ts:307:36
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:307:37
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:307:38
      (i32.const 0)
      (i32.const -1)
     )
     ;;@ (lib)/allocator/tlsf.ts:307:43
     (get_local $4)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:308:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:309:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:309:8
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:309:9
    (get_local $5)
   )
   ;;@ (lib)/allocator/tlsf.ts:309:16
   (block
    ;;@ (lib)/allocator/tlsf.ts:311:6
    (set_local $7
     ;;@ (lib)/allocator/tlsf.ts:311:18
     (i32.and
      (i32.load
       (get_local $0)
      )
      ;;@ (lib)/allocator/tlsf.ts:311:31
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:311:32
       (i32.xor
        ;;@ (lib)/allocator/tlsf.ts:311:33
        (i32.const 0)
        (i32.const -1)
       )
       ;;@ (lib)/allocator/tlsf.ts:311:38
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:311:39
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:311:44
        (i32.const 1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:312:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:312:10
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:312:11
      (get_local $7)
     )
     ;;@ (lib)/allocator/tlsf.ts:313:8
     (set_local $6
      ;;@ (lib)/allocator/tlsf.ts:313:15
      (i32.const 0)
     )
     ;;@ (lib)/allocator/tlsf.ts:314:13
     (block
      ;;@ (lib)/allocator/tlsf.ts:315:8
      (set_local $3
       ;;@ (lib)/allocator/tlsf.ts:315:13
       (call "$(lib)/allocator/tlsf/ffs<usize>"
        ;;@ (lib)/allocator/tlsf.ts:315:24
        (get_local $7)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:316:8
      (set_local $5
       ;;@ (lib)/allocator/tlsf.ts:316:16
       (if (result i32)
        (i32.eqz
         (tee_local $2
          ;;@ (lib)/allocator/tlsf.ts:316:28
          (call "$(lib)/allocator/tlsf/Root#getSLMap"
           ;;@ (lib)/allocator/tlsf.ts:316:23
           (get_local $0)
           ;;@ (lib)/allocator/tlsf.ts:316:37
           (get_local $3)
          )
         )
        )
        (block
         (call $abort
          (i32.const 0)
          (i32.const 4)
          (i32.const 316)
          (i32.const 16)
         )
         (unreachable)
        )
        (get_local $2)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:317:8
      (set_local $6
       ;;@ (lib)/allocator/tlsf.ts:317:20
       (call "$(lib)/allocator/tlsf/Root#getHead"
        ;;@ (lib)/allocator/tlsf.ts:317:15
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:317:28
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:317:32
        (call "$(lib)/allocator/tlsf/ffs<u32>"
         ;;@ (lib)/allocator/tlsf.ts:317:41
         (get_local $5)
        )
       )
      )
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:320:6
   (set_local $6
    ;;@ (lib)/allocator/tlsf.ts:320:18
    (call "$(lib)/allocator/tlsf/Root#getHead"
     ;;@ (lib)/allocator/tlsf.ts:320:13
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:320:26
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:320:30
     (call "$(lib)/allocator/tlsf/ffs<u32>"
      ;;@ (lib)/allocator/tlsf.ts:320:39
      (get_local $5)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:322:11
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
  ;;@ (lib)/allocator/tlsf.ts:340:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:340:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:341:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:341:11
    (i32.and
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:341:23
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 341)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:342:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:342:11
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.ge_u
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:342:19
        (i32.const 12)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:342:37
      (i32.lt_u
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:342:44
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
     (i32.const 342)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:343:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:343:11
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:343:12
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:343:13
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:343:20
      (i32.const 3)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 343)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:345:9
  (call "$(lib)/allocator/tlsf/Root#remove"
   ;;@ (lib)/allocator/tlsf.ts:345:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:345:16
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:348:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:348:20
   (i32.sub
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:348:21
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:348:33
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:348:34
      (i32.const 3)
      (i32.const -1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:348:42
    (get_local $2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:349:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:349:8
   (i32.ge_u
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:349:21
    (i32.add
     (i32.const 4)
     ;;@ (lib)/allocator/tlsf.ts:349:34
     (i32.const 12)
    )
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
    ;;@ (lib)/allocator/tlsf.ts:352:6
    (set_local $6
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
    ;;@ (lib)/allocator/tlsf.ts:355:6
    (i32.store
     (get_local $6)
     ;;@ (lib)/allocator/tlsf.ts:355:19
     (i32.or
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:355:20
       (get_local $5)
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
     (get_local $6)
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
      ;;@ (lib)/allocator/tlsf.ts:360:31
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:360:32
       (i32.const 1)
       (i32.const -1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:361:6
    (set_local $7
     ;;@ (lib)/allocator/tlsf.ts:361:25
     (if (result i32)
      (i32.eqz
       (tee_local $4
        ;;@ (lib)/allocator/tlsf.ts:361:32
        (call "$(lib)/allocator/tlsf/Block#get:right"
         (get_local $1)
        )
       )
      )
      (block
       (call $abort
        (i32.const 0)
        (i32.const 4)
        (i32.const 361)
        (i32.const 25)
       )
       (unreachable)
      )
      (get_local $4)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:362:6
    (i32.store
     (get_local $7)
     (i32.and
      (i32.load
       (get_local $7)
      )
      ;;@ (lib)/allocator/tlsf.ts:362:20
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:362:21
       (i32.const 2)
       (i32.const -1)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:365:44
  (return
   ;;@ (lib)/allocator/tlsf.ts:365:11
   (i32.add
    (get_local $1)
    ;;@ (lib)/allocator/tlsf.ts:365:38
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
  (local $12 i32)
  ;;@ (lib)/allocator/tlsf.ts:436:2
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:436:13
   (get_global "$(lib)/allocator/tlsf/ROOT")
  )
  ;;@ (lib)/allocator/tlsf.ts:437:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:437:6
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:437:7
    (get_local $1)
   )
   ;;@ (lib)/allocator/tlsf.ts:437:13
   (block
    ;;@ (lib)/allocator/tlsf.ts:438:4
    (set_local $2
     ;;@ (lib)/allocator/tlsf.ts:438:21
     (i32.and
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:438:22
       (get_global $HEAP_BASE)
       ;;@ (lib)/allocator/tlsf.ts:438:34
       (i32.const 3)
      )
      ;;@ (lib)/allocator/tlsf.ts:438:45
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:438:46
       (i32.const 3)
       (i32.const -1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:439:4
    (set_global "$(lib)/allocator/tlsf/ROOT"
     ;;@ (lib)/allocator/tlsf.ts:439:11
     (tee_local $1
      ;;@ (lib)/allocator/tlsf.ts:439:18
      (get_local $2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:440:4
    (call "$(lib)/allocator/tlsf/Root#set:tailRef"
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:440:19
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:441:4
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:441:17
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:442:4
    (block $break|0
     ;;@ (lib)/allocator/tlsf.ts:442:9
     (set_local $3
      ;;@ (lib)/allocator/tlsf.ts:442:25
      (i32.const 0)
     )
     (loop $continue|0
      (if
       ;;@ (lib)/allocator/tlsf.ts:442:28
       (i32.lt_u
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:442:33
        (i32.const 23)
       )
       (block
        (block
         ;;@ (lib)/allocator/tlsf.ts:443:11
         (call "$(lib)/allocator/tlsf/Root#setSLMap"
          ;;@ (lib)/allocator/tlsf.ts:443:6
          (get_local $1)
          ;;@ (lib)/allocator/tlsf.ts:443:20
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:443:24
          (i32.const 0)
         )
         ;;@ (lib)/allocator/tlsf.ts:444:6
         (block $break|1
          ;;@ (lib)/allocator/tlsf.ts:444:11
          (set_local $4
           ;;@ (lib)/allocator/tlsf.ts:444:25
           (i32.const 0)
          )
          (loop $continue|1
           (if
            ;;@ (lib)/allocator/tlsf.ts:444:28
            (i32.lt_u
             (get_local $4)
             ;;@ (lib)/allocator/tlsf.ts:444:33
             (i32.const 32)
            )
            (block
             (block
              ;;@ (lib)/allocator/tlsf.ts:445:13
              (call "$(lib)/allocator/tlsf/Root#setHead"
               ;;@ (lib)/allocator/tlsf.ts:445:8
               (get_local $1)
               ;;@ (lib)/allocator/tlsf.ts:445:21
               (get_local $3)
               ;;@ (lib)/allocator/tlsf.ts:445:25
               (get_local $4)
               ;;@ (lib)/allocator/tlsf.ts:445:29
               (i32.const 0)
              )
             )
             ;;@ (lib)/allocator/tlsf.ts:444:42
             (set_local $4
              (i32.add
               ;;@ (lib)/allocator/tlsf.ts:444:44
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
        ;;@ (lib)/allocator/tlsf.ts:442:42
        (set_local $3
         (i32.add
          ;;@ (lib)/allocator/tlsf.ts:442:44
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
    (get_local $0)
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
       (i32.shr_u
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:461:25
         (i32.add
          ;;@ (lib)/allocator/tlsf.ts:461:26
          (get_local $0)
          ;;@ (lib)/allocator/tlsf.ts:461:33
          (i32.const 65535)
         )
         ;;@ (lib)/allocator/tlsf.ts:461:43
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:461:44
          (i32.const 65535)
          (i32.const -1)
         )
        )
        ;;@ (lib)/allocator/tlsf.ts:461:56
        (i32.const 16)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:462:6
      (set_local $11
       ;;@ (lib)/allocator/tlsf.ts:462:24
       (select
        (tee_local $6
         ;;@ (lib)/allocator/tlsf.ts:462:28
         (get_local $9)
        )
        (tee_local $7
         ;;@ (lib)/allocator/tlsf.ts:462:41
         (get_local $10)
        )
        (i32.gt_s
         (get_local $6)
         (get_local $7)
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:463:6
      (if
       ;;@ (lib)/allocator/tlsf.ts:463:10
       (i32.lt_s
        (grow_memory
         ;;@ (lib)/allocator/tlsf.ts:463:22
         (get_local $11)
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
          (get_local $10)
         )
         ;;@ (lib)/allocator/tlsf.ts:464:39
         (i32.const 0)
        )
        ;;@ (lib)/allocator/tlsf.ts:465:10
        (unreachable)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:468:6
      (set_local $12
       ;;@ (lib)/allocator/tlsf.ts:468:23
       (current_memory)
      )
      ;;@ (lib)/allocator/tlsf.ts:469:11
      (drop
       (call "$(lib)/allocator/tlsf/Root#addMemory"
        ;;@ (lib)/allocator/tlsf.ts:469:6
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:469:21
        (i32.shl
         (get_local $9)
         ;;@ (lib)/allocator/tlsf.ts:469:43
         (i32.const 16)
        )
        ;;@ (lib)/allocator/tlsf.ts:469:47
        (i32.shl
         (get_local $12)
         ;;@ (lib)/allocator/tlsf.ts:469:68
         (i32.const 16)
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:470:6
      (set_local $8
       ;;@ (lib)/allocator/tlsf.ts:470:14
       (if (result i32)
        (i32.eqz
         (tee_local $6
          ;;@ (lib)/allocator/tlsf.ts:470:26
          (call "$(lib)/allocator/tlsf/Root#search"
           ;;@ (lib)/allocator/tlsf.ts:470:21
           (get_local $1)
           ;;@ (lib)/allocator/tlsf.ts:470:33
           (get_local $0)
          )
         )
        )
        (block
         (call $abort
          (i32.const 0)
          (i32.const 4)
          (i32.const 470)
          (i32.const 14)
         )
         (unreachable)
        )
        (get_local $6)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:473:4
    (if
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:473:11
      (i32.ge_u
       (i32.and
        ;;@ (lib)/allocator/tlsf.ts:473:12
        (i32.load
         (get_local $8)
        )
        ;;@ (lib)/allocator/tlsf.ts:473:25
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:473:26
         (i32.const 3)
         (i32.const -1)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:473:35
       (get_local $0)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 473)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:474:4
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:474:16
     (call "$(lib)/allocator/tlsf/Root#use"
      ;;@ (lib)/allocator/tlsf.ts:474:11
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:474:20
      (get_local $8)
      ;;@ (lib)/allocator/tlsf.ts:474:27
      (get_local $0)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:477:9
  (return
   (get_local $5)
  )
 )
 (func "$(lib)/allocator/tlsf/free_memory" (; 19 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:483:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:483:6
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:483:12
   (block
    ;;@ (lib)/allocator/tlsf.ts:484:4
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:484:15
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
    ;;@ (lib)/allocator/tlsf.ts:485:4
    (if
     ;;@ (lib)/allocator/tlsf.ts:485:8
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:485:14
     (block
      ;;@ (lib)/allocator/tlsf.ts:486:6
      (set_local $2
       ;;@ (lib)/allocator/tlsf.ts:486:18
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:486:36
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:486:43
        (i32.const 4)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:487:6
      (set_local $3
       ;;@ (lib)/allocator/tlsf.ts:487:22
       (i32.load
        (get_local $2)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:488:6
      (if
       (i32.eqz
        ;;@ (lib)/allocator/tlsf.ts:488:13
        (i32.eqz
         ;;@ (lib)/allocator/tlsf.ts:488:14
         (i32.and
          ;;@ (lib)/allocator/tlsf.ts:488:15
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:488:27
          (i32.const 1)
         )
        )
       )
       (block
        (call $abort
         (i32.const 0)
         (i32.const 4)
         (i32.const 488)
         (i32.const 6)
        )
        (unreachable)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:489:6
      (i32.store
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:489:19
       (i32.or
        (get_local $3)
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
 )
 (func $start (; 20 ;) (type $v)
  ;;@ (lib)/allocator/tlsf.ts:49:0
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:49:7
    (i32.ge_u
     (i32.const 2)
     ;;@ (lib)/allocator/tlsf.ts:49:18
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 49)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:115:0
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:115:7
    (i32.le_s
     (i32.shl
      ;;@ (lib)/allocator/tlsf.ts:115:8
      (i32.const 1)
      ;;@ (lib)/allocator/tlsf.ts:115:13
      (i32.const 5)
     )
     ;;@ (lib)/allocator/tlsf.ts:115:25
     (i32.const 32)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 115)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
