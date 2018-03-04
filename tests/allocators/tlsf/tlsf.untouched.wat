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
 (global "$(lib)/allocator/tlsf/AL_BITS" i32 (i32.const 3))
 (global "$(lib)/allocator/tlsf/AL_SIZE" i32 (i32.const 8))
 (global "$(lib)/allocator/tlsf/AL_MASK" i32 (i32.const 7))
 (global "$(lib)/allocator/tlsf/SL_BITS" i32 (i32.const 5))
 (global "$(lib)/allocator/tlsf/SL_SIZE" i32 (i32.const 32))
 (global "$(lib)/allocator/tlsf/SB_BITS" i32 (i32.const 8))
 (global "$(lib)/allocator/tlsf/SB_SIZE" i32 (i32.const 256))
 (global "$(lib)/allocator/tlsf/FL_BITS" i32 (i32.const 22))
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
  ;;@ (lib)/allocator/tlsf.ts:177:30
  (i32.store offset=2912
   ;;@ (lib)/allocator/tlsf.ts:177:43
   (i32.const 0)
   ;;@ (lib)/allocator/tlsf.ts:177:46
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setSLMap" (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:140:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:140:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:140:16
     (i32.const 22)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 140)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:141:4
  (i32.store offset=4
   ;;@ (lib)/allocator/tlsf.ts:141:15
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:141:41
    (i32.mul
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:141:46
     (i32.const 4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:141:49
   (get_local $2)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setHead" (; 3 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:163:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:163:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:163:16
     (i32.const 22)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 163)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:164:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:164:11
    (i32.lt_u
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:164:16
     (i32.const 32)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 164)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:165:4
  (i32.store offset=96
   ;;@ (lib)/allocator/tlsf.ts:166:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:166:32
    (i32.mul
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:166:33
      (i32.mul
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:166:38
       (i32.const 32)
      )
      ;;@ (lib)/allocator/tlsf.ts:166:48
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:166:61
     (i32.const 4)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:167:6
   (get_local $3)
  )
 )
 (func "$(lib)/allocator/tlsf/Root#get:tailRef" (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:176:58
  (return
   ;;@ (lib)/allocator/tlsf.ts:176:32
   (i32.load offset=2912
    ;;@ (lib)/allocator/tlsf.ts:176:44
    (i32.const 0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Block#get:right" (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ (lib)/allocator/tlsf.ts:85:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:85:11
    (i32.and
     (i32.load
      (get_local $0)
     )
     ;;@ (lib)/allocator/tlsf.ts:85:23
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:85:24
      (i32.const 3)
      (i32.const -1)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 85)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:90:4
  (return
   ;;@ (lib)/allocator/tlsf.ts:86:11
   (if (result i32)
    (i32.eqz
     (tee_local $1
      ;;@ (lib)/allocator/tlsf.ts:87:6
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:88:8
       (i32.add
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:88:34
        (i32.const 8)
       )
       ;;@ (lib)/allocator/tlsf.ts:88:47
       (i32.and
        ;;@ (lib)/allocator/tlsf.ts:88:48
        (i32.load
         (get_local $0)
        )
        ;;@ (lib)/allocator/tlsf.ts:88:60
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:88:61
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
      (i32.const 86)
      (i32.const 11)
     )
     (unreachable)
    )
    (get_local $1)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/fls<usize>" (; 6 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:424:2
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:424:9
    (i32.ne
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:424:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 424)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:425:2
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:426:26
  (return
   ;;@ (lib)/allocator/tlsf.ts:426:9
   (i32.sub
    (i32.const 31)
    ;;@ (lib)/allocator/tlsf.ts:426:15
    (i32.clz
     ;;@ (lib)/allocator/tlsf.ts:426:22
     (get_local $0)
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getHead" (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:154:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:154:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:154:16
     (i32.const 22)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 154)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:155:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:155:11
    (i32.lt_u
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:155:16
     (i32.const 32)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 155)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:158:20
  (return
   ;;@ (lib)/allocator/tlsf.ts:156:11
   (i32.load offset=96
    ;;@ (lib)/allocator/tlsf.ts:157:6
    (i32.add
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:157:32
     (i32.mul
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:157:33
       (i32.mul
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:157:38
        (i32.const 32)
       )
       ;;@ (lib)/allocator/tlsf.ts:157:48
       (get_local $2)
      )
      ;;@ (lib)/allocator/tlsf.ts:157:61
      (i32.const 4)
     )
    )
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#getSLMap" (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:134:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:134:11
    (i32.lt_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:134:16
     (i32.const 22)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 134)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:135:68
  (return
   ;;@ (lib)/allocator/tlsf.ts:135:11
   (i32.load offset=4
    ;;@ (lib)/allocator/tlsf.ts:135:21
    (i32.add
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:135:47
     (i32.mul
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:135:52
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
  ;;@ (lib)/allocator/tlsf.ts:253:4
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:253:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:254:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:254:11
    (i32.and
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:254:23
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
  ;;@ (lib)/allocator/tlsf.ts:255:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:255:15
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:255:27
    (i32.xor
     ;;@ (lib)/allocator/tlsf.ts:255:28
     (i32.const 3)
     (i32.const -1)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:256:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:256:11
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.ge_u
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:256:19
        (i32.const 16)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:256:37
      (i32.lt_u
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:256:44
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
     (i32.const 256)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:259:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:260:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:260:8
   (i32.lt_u
    (get_local $3)
    ;;@ (lib)/allocator/tlsf.ts:260:15
    (i32.const 256)
   )
   ;;@ (lib)/allocator/tlsf.ts:260:24
   (block
    ;;@ (lib)/allocator/tlsf.ts:261:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:261:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:262:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:262:11
     (i32.div_u
      ;;@ (lib)/allocator/tlsf.ts:262:17
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:262:24
      (i32.const 8)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:263:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:264:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:264:11
     (call "$(lib)/allocator/tlsf/fls<usize>"
      ;;@ (lib)/allocator/tlsf.ts:264:22
      (get_local $3)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:265:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:265:11
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:265:17
      (i32.shr_u
       ;;@ (lib)/allocator/tlsf.ts:265:18
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:265:26
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:265:27
        (get_local $5)
        ;;@ (lib)/allocator/tlsf.ts:265:32
        (i32.const 5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:265:44
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:265:45
       (i32.const 1)
       ;;@ (lib)/allocator/tlsf.ts:265:50
       (i32.const 5)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:266:6
    (set_local $5
     (i32.sub
      (get_local $5)
      ;;@ (lib)/allocator/tlsf.ts:266:12
      (i32.sub
       (i32.const 8)
       ;;@ (lib)/allocator/tlsf.ts:266:22
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:270:4
  (set_local $7
   ;;@ (lib)/allocator/tlsf.ts:270:15
   (i32.load offset=4
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:271:4
  (set_local $8
   ;;@ (lib)/allocator/tlsf.ts:271:15
   (i32.load offset=8
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:272:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:272:8
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:272:14
   (i32.store offset=8
    (get_local $7)
    ;;@ (lib)/allocator/tlsf.ts:272:26
    (get_local $8)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:273:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:273:8
   (get_local $8)
   ;;@ (lib)/allocator/tlsf.ts:273:14
   (i32.store offset=4
    (get_local $8)
    ;;@ (lib)/allocator/tlsf.ts:273:26
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
       ;;@ (lib)/allocator/tlsf.ts:285:20
       (i32.store
        (get_local $0)
        (i32.and
         (i32.load
          (get_local $0)
         )
         ;;@ (lib)/allocator/tlsf.ts:285:34
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:285:35
          (i32.shl
           ;;@ (lib)/allocator/tlsf.ts:285:36
           (i32.const 1)
           ;;@ (lib)/allocator/tlsf.ts:285:41
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
  ;;@ (lib)/allocator/tlsf.ts:77:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:77:11
    (i32.and
     (i32.load
      (get_local $0)
     )
     ;;@ (lib)/allocator/tlsf.ts:77:23
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 77)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:80:4
  (return
   ;;@ (lib)/allocator/tlsf.ts:78:11
   (if (result i32)
    (i32.eqz
     (tee_local $1
      ;;@ (lib)/allocator/tlsf.ts:79:6
      (i32.load
       ;;@ (lib)/allocator/tlsf.ts:79:18
       (i32.sub
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:79:44
        (i32.const 4)
       )
      )
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 78)
      (i32.const 11)
     )
     (unreachable)
    )
    (get_local $1)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/Root#setJump" (; 11 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/allocator/tlsf.ts:330:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:330:11
    (i32.and
     (i32.load
      (get_local $1)
     )
     ;;@ (lib)/allocator/tlsf.ts:330:23
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 330)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:331:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:331:11
    (i32.eq
     (call "$(lib)/allocator/tlsf/Block#get:right"
      (get_local $1)
     )
     ;;@ (lib)/allocator/tlsf.ts:331:25
     (get_local $2)
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
    (i32.and
     (i32.load
      (get_local $2)
     )
     ;;@ (lib)/allocator/tlsf.ts:332:24
     (i32.const 2)
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
  (i32.store
   ;;@ (lib)/allocator/tlsf.ts:334:6
   (i32.sub
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:334:33
    (i32.const 4)
   )
   ;;@ (lib)/allocator/tlsf.ts:335:6
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
  ;;@ (lib)/allocator/tlsf.ts:185:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:185:11
    (get_local $1)
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
  (set_local $2
   ;;@ (lib)/allocator/tlsf.ts:186:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:187:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:187:11
    (i32.and
     (get_local $2)
     ;;@ (lib)/allocator/tlsf.ts:187:23
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
  ;;@ (lib)/allocator/tlsf.ts:188:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:189:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:190:6
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.ge_u
        (tee_local $3
         ;;@ (lib)/allocator/tlsf.ts:190:14
         (i32.and
          (i32.load
           (get_local $1)
          )
          ;;@ (lib)/allocator/tlsf.ts:190:27
          (i32.xor
           ;;@ (lib)/allocator/tlsf.ts:190:28
           (i32.const 3)
           (i32.const -1)
          )
         )
        )
        ;;@ (lib)/allocator/tlsf.ts:190:37
        (i32.const 16)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:190:55
      (i32.lt_u
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:190:62
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
     (i32.const 189)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:193:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:193:23
   (if (result i32)
    (i32.eqz
     (tee_local $4
      ;;@ (lib)/allocator/tlsf.ts:193:30
      (call "$(lib)/allocator/tlsf/Block#get:right"
       (get_local $1)
      )
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 193)
      (i32.const 23)
     )
     (unreachable)
    )
    (get_local $4)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:194:4
  (set_local $6
   ;;@ (lib)/allocator/tlsf.ts:194:20
   (i32.load
    (get_local $5)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:197:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:197:8
   (i32.and
    (get_local $6)
    ;;@ (lib)/allocator/tlsf.ts:197:20
    (i32.const 1)
   )
   ;;@ (lib)/allocator/tlsf.ts:197:26
   (block
    ;;@ (lib)/allocator/tlsf.ts:198:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:198:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:198:18
     (get_local $5)
    )
    ;;@ (lib)/allocator/tlsf.ts:199:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:199:19
     (tee_local $2
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:199:20
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:199:33
       (i32.add
        (i32.const 8)
        ;;@ (lib)/allocator/tlsf.ts:199:46
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:199:47
         (get_local $6)
         ;;@ (lib)/allocator/tlsf.ts:199:59
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:199:60
          (i32.const 3)
          (i32.const -1)
         )
        )
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:200:6
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:200:14
     (call "$(lib)/allocator/tlsf/Block#get:right"
      (get_local $1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:201:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:201:18
     (i32.load
      (get_local $5)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:206:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:206:8
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:206:20
    (i32.const 2)
   )
   ;;@ (lib)/allocator/tlsf.ts:206:31
   (block
    ;;@ (lib)/allocator/tlsf.ts:207:6
    (set_local $7
     ;;@ (lib)/allocator/tlsf.ts:207:24
     (if (result i32)
      (i32.eqz
       (tee_local $4
        ;;@ (lib)/allocator/tlsf.ts:207:31
        (call "$(lib)/allocator/tlsf/Block#get:left"
         (get_local $1)
        )
       )
      )
      (block
       (call $abort
        (i32.const 0)
        (i32.const 4)
        (i32.const 207)
        (i32.const 24)
       )
       (unreachable)
      )
      (get_local $4)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:208:6
    (set_local $8
     ;;@ (lib)/allocator/tlsf.ts:208:21
     (i32.load
      (get_local $7)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:209:6
    (if
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:209:13
      (i32.and
       (get_local $8)
       ;;@ (lib)/allocator/tlsf.ts:209:24
       (i32.const 1)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 209)
       (i32.const 6)
      )
      (unreachable)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:210:11
    (call "$(lib)/allocator/tlsf/Root#remove"
     ;;@ (lib)/allocator/tlsf.ts:210:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:210:18
     (get_local $7)
    )
    ;;@ (lib)/allocator/tlsf.ts:211:6
    (i32.store
     (get_local $7)
     ;;@ (lib)/allocator/tlsf.ts:211:18
     (tee_local $8
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:211:19
       (get_local $8)
       ;;@ (lib)/allocator/tlsf.ts:211:31
       (i32.add
        (i32.const 8)
        ;;@ (lib)/allocator/tlsf.ts:211:44
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:211:45
         (get_local $2)
         ;;@ (lib)/allocator/tlsf.ts:211:57
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:211:58
          (i32.const 3)
          (i32.const -1)
         )
        )
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:212:6
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:212:14
     (get_local $7)
    )
    ;;@ (lib)/allocator/tlsf.ts:213:6
    (set_local $2
     ;;@ (lib)/allocator/tlsf.ts:213:18
     (get_local $8)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:217:4
  (i32.store
   (get_local $5)
   ;;@ (lib)/allocator/tlsf.ts:217:17
   (i32.or
    (get_local $6)
    ;;@ (lib)/allocator/tlsf.ts:217:29
    (i32.const 2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:218:9
  (call "$(lib)/allocator/tlsf/Root#setJump"
   ;;@ (lib)/allocator/tlsf.ts:218:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:218:17
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:218:24
   (get_local $5)
  )
  ;;@ (lib)/allocator/tlsf.ts:221:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:221:11
   (i32.and
    (get_local $2)
    ;;@ (lib)/allocator/tlsf.ts:221:23
    (i32.xor
     ;;@ (lib)/allocator/tlsf.ts:221:24
     (i32.const 3)
     (i32.const -1)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:222:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:222:11
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.ge_u
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:222:19
        (i32.const 16)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:222:37
      (i32.lt_u
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:222:44
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
     (i32.const 222)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:225:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:226:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:226:8
   (i32.lt_u
    (get_local $3)
    ;;@ (lib)/allocator/tlsf.ts:226:15
    (i32.const 256)
   )
   ;;@ (lib)/allocator/tlsf.ts:226:24
   (block
    ;;@ (lib)/allocator/tlsf.ts:227:6
    (set_local $9
     ;;@ (lib)/allocator/tlsf.ts:227:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:228:6
    (set_local $10
     ;;@ (lib)/allocator/tlsf.ts:228:11
     (i32.div_u
      ;;@ (lib)/allocator/tlsf.ts:228:17
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:228:24
      (i32.const 8)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:229:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:230:6
    (set_local $9
     ;;@ (lib)/allocator/tlsf.ts:230:11
     (call "$(lib)/allocator/tlsf/fls<usize>"
      ;;@ (lib)/allocator/tlsf.ts:230:22
      (get_local $3)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:231:6
    (set_local $10
     ;;@ (lib)/allocator/tlsf.ts:231:11
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:231:17
      (i32.shr_u
       ;;@ (lib)/allocator/tlsf.ts:231:18
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:231:26
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:231:27
        (get_local $9)
        ;;@ (lib)/allocator/tlsf.ts:231:32
        (i32.const 5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:231:44
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:231:45
       (i32.const 1)
       ;;@ (lib)/allocator/tlsf.ts:231:50
       (i32.const 5)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:232:6
    (set_local $9
     (i32.sub
      (get_local $9)
      ;;@ (lib)/allocator/tlsf.ts:232:12
      (i32.sub
       (i32.const 8)
       ;;@ (lib)/allocator/tlsf.ts:232:22
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:236:4
  (set_local $11
   ;;@ (lib)/allocator/tlsf.ts:236:20
   (call "$(lib)/allocator/tlsf/Root#getHead"
    ;;@ (lib)/allocator/tlsf.ts:236:15
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:236:28
    (get_local $9)
    ;;@ (lib)/allocator/tlsf.ts:236:32
    (get_local $10)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:237:4
  (i32.store offset=4
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:237:17
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:238:4
  (i32.store offset=8
   (get_local $1)
   ;;@ (lib)/allocator/tlsf.ts:238:17
   (get_local $11)
  )
  ;;@ (lib)/allocator/tlsf.ts:239:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:239:8
   (get_local $11)
   ;;@ (lib)/allocator/tlsf.ts:239:14
   (i32.store offset=4
    (get_local $11)
    ;;@ (lib)/allocator/tlsf.ts:239:26
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:240:9
  (call "$(lib)/allocator/tlsf/Root#setHead"
   ;;@ (lib)/allocator/tlsf.ts:240:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:240:17
   (get_local $9)
   ;;@ (lib)/allocator/tlsf.ts:240:21
   (get_local $10)
   ;;@ (lib)/allocator/tlsf.ts:240:25
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:243:4
  (i32.store
   (get_local $0)
   (i32.or
    (i32.load
     (get_local $0)
    )
    ;;@ (lib)/allocator/tlsf.ts:243:18
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:243:19
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:243:24
     (get_local $9)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:244:9
  (call "$(lib)/allocator/tlsf/Root#setSLMap"
   ;;@ (lib)/allocator/tlsf.ts:244:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:244:18
   (get_local $9)
   ;;@ (lib)/allocator/tlsf.ts:244:22
   (i32.or
    ;;@ (lib)/allocator/tlsf.ts:244:27
    (call "$(lib)/allocator/tlsf/Root#getSLMap"
     ;;@ (lib)/allocator/tlsf.ts:244:22
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:244:36
     (get_local $9)
    )
    ;;@ (lib)/allocator/tlsf.ts:244:42
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:244:43
     (i32.const 1)
     ;;@ (lib)/allocator/tlsf.ts:244:48
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
  ;;@ (lib)/allocator/tlsf.ts:373:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:373:11
    (i32.le_u
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:373:20
     (get_local $2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 373)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:374:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:374:11
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:374:12
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:374:13
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:374:21
      (i32.const 7)
     )
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
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:375:19
      (i32.const 7)
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
  ;;@ (lib)/allocator/tlsf.ts:377:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:377:18
   (call "$(lib)/allocator/tlsf/Root#get:tailRef"
    (get_local $0)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:378:4
  (set_local $4
   ;;@ (lib)/allocator/tlsf.ts:378:26
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:379:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:379:8
   (get_local $3)
   ;;@ (lib)/allocator/tlsf.ts:379:17
   (block
    ;;@ (lib)/allocator/tlsf.ts:380:6
    (if
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:380:13
      (i32.ge_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:380:22
       (i32.add
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:380:32
        (i32.const 4)
       )
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 380)
       (i32.const 6)
      )
      (unreachable)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:383:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:383:10
     (i32.eq
      (i32.sub
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:383:18
       (i32.const 8)
      )
      ;;@ (lib)/allocator/tlsf.ts:383:32
      (get_local $3)
     )
     ;;@ (lib)/allocator/tlsf.ts:383:41
     (block
      ;;@ (lib)/allocator/tlsf.ts:384:8
      (set_local $1
       (i32.sub
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:384:17
        (i32.const 8)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:385:8
      (set_local $4
       ;;@ (lib)/allocator/tlsf.ts:385:19
       (i32.load
        (get_local $3)
       )
      )
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:389:6
   (if
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:389:13
     (i32.ge_u
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:389:22
      (i32.add
       (get_local $0)
       ;;@ (lib)/allocator/tlsf.ts:389:48
       (i32.const 2916)
      )
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 389)
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
      (i32.const 8)
      ;;@ (lib)/allocator/tlsf.ts:394:28
      (i32.const 16)
     )
     ;;@ (lib)/allocator/tlsf.ts:394:45
     (i32.const 8)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:395:13
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:399:4
  (set_local $6
   ;;@ (lib)/allocator/tlsf.ts:399:19
   (i32.sub
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:399:26
    (i32.mul
     (i32.const 2)
     ;;@ (lib)/allocator/tlsf.ts:399:30
     (i32.const 8)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:400:4
  (set_local $7
   ;;@ (lib)/allocator/tlsf.ts:400:15
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:401:4
  (i32.store
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:401:16
   (i32.or
    (i32.or
     (get_local $6)
     ;;@ (lib)/allocator/tlsf.ts:401:27
     (i32.const 1)
    )
    ;;@ (lib)/allocator/tlsf.ts:401:34
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:401:35
     (get_local $4)
     ;;@ (lib)/allocator/tlsf.ts:401:46
     (i32.const 2)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:402:4
  (i32.store offset=4
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:402:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:403:4
  (i32.store offset=8
   (get_local $7)
   ;;@ (lib)/allocator/tlsf.ts:403:16
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:406:4
  (set_local $8
   ;;@ (lib)/allocator/tlsf.ts:406:15
   (i32.sub
    ;;@ (lib)/allocator/tlsf.ts:406:33
    (i32.add
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:406:41
     (get_local $5)
    )
    ;;@ (lib)/allocator/tlsf.ts:406:48
    (i32.const 8)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:407:4
  (i32.store
   (get_local $8)
   ;;@ (lib)/allocator/tlsf.ts:407:16
   (i32.or
    (i32.const 0)
    ;;@ (lib)/allocator/tlsf.ts:407:20
    (i32.const 2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:408:4
  (call "$(lib)/allocator/tlsf/Root#set:tailRef"
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:408:19
   (get_local $8)
  )
  ;;@ (lib)/allocator/tlsf.ts:410:9
  (call "$(lib)/allocator/tlsf/Root#insert"
   ;;@ (lib)/allocator/tlsf.ts:410:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:410:16
   (get_local $7)
  )
  ;;@ (lib)/allocator/tlsf.ts:412:11
  (return
   (i32.const 1)
  )
 )
 (func "$(lib)/allocator/tlsf/ffs<usize>" (; 14 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:418:2
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:418:9
    (i32.ne
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:418:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 418)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:419:20
  (return
   ;;@ (lib)/allocator/tlsf.ts:419:9
   (i32.ctz
    ;;@ (lib)/allocator/tlsf.ts:419:16
    (get_local $0)
   )
  )
 )
 (func "$(lib)/allocator/tlsf/ffs<u32>" (; 15 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ (lib)/allocator/tlsf.ts:418:2
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:418:9
    (i32.ne
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:418:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 418)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:419:20
  (return
   ;;@ (lib)/allocator/tlsf.ts:419:9
   (i32.ctz
    ;;@ (lib)/allocator/tlsf.ts:419:16
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
  ;;@ (lib)/allocator/tlsf.ts:292:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:292:11
    (i32.and
     (if (result i32)
      (tee_local $2
       (i32.ge_u
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:292:19
        (i32.const 16)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:292:37
      (i32.lt_u
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:292:44
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
     (i32.const 292)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:295:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:296:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:296:8
   (i32.lt_u
    (get_local $1)
    ;;@ (lib)/allocator/tlsf.ts:296:15
    (i32.const 256)
   )
   ;;@ (lib)/allocator/tlsf.ts:296:24
   (block
    ;;@ (lib)/allocator/tlsf.ts:297:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:297:11
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:298:6
    (set_local $4
     ;;@ (lib)/allocator/tlsf.ts:298:11
     (i32.div_u
      ;;@ (lib)/allocator/tlsf.ts:298:17
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:298:24
      (i32.const 8)
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:299:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:301:6
    (set_local $3
     ;;@ (lib)/allocator/tlsf.ts:301:11
     (call "$(lib)/allocator/tlsf/fls<usize>"
      ;;@ (lib)/allocator/tlsf.ts:301:22
      (get_local $1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:302:6
    (set_local $4
     ;;@ (lib)/allocator/tlsf.ts:302:11
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:302:17
      (i32.shr_u
       ;;@ (lib)/allocator/tlsf.ts:302:18
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:302:26
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:302:27
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:302:32
        (i32.const 5)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:302:44
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:302:45
       (i32.const 1)
       ;;@ (lib)/allocator/tlsf.ts:302:50
       (i32.const 5)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:303:6
    (set_local $3
     (i32.sub
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:303:12
      (i32.sub
       (i32.const 8)
       ;;@ (lib)/allocator/tlsf.ts:303:22
       (i32.const 1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:305:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:305:10
     (i32.lt_u
      (get_local $4)
      ;;@ (lib)/allocator/tlsf.ts:305:15
      (i32.sub
       (i32.const 32)
       ;;@ (lib)/allocator/tlsf.ts:305:25
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:305:28
     (set_local $4
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:305:30
       (get_local $4)
       (i32.const 1)
      )
     )
     ;;@ (lib)/allocator/tlsf.ts:306:11
     (block
      (set_local $3
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:306:13
        (get_local $3)
        (i32.const 1)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:306:17
      (set_local $4
       ;;@ (lib)/allocator/tlsf.ts:306:22
       (i32.const 0)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:310:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:310:16
   (i32.and
    ;;@ (lib)/allocator/tlsf.ts:310:21
    (call "$(lib)/allocator/tlsf/Root#getSLMap"
     ;;@ (lib)/allocator/tlsf.ts:310:16
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:310:30
     (get_local $3)
    )
    ;;@ (lib)/allocator/tlsf.ts:310:36
    (i32.shl
     ;;@ (lib)/allocator/tlsf.ts:310:37
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:310:38
      (i32.const 0)
      (i32.const -1)
     )
     ;;@ (lib)/allocator/tlsf.ts:310:43
     (get_local $4)
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:311:4
  (nop)
  ;;@ (lib)/allocator/tlsf.ts:312:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:312:8
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:312:9
    (get_local $5)
   )
   ;;@ (lib)/allocator/tlsf.ts:312:16
   (block
    ;;@ (lib)/allocator/tlsf.ts:314:6
    (set_local $7
     ;;@ (lib)/allocator/tlsf.ts:314:18
     (i32.and
      (i32.load
       (get_local $0)
      )
      ;;@ (lib)/allocator/tlsf.ts:314:31
      (i32.shl
       ;;@ (lib)/allocator/tlsf.ts:314:32
       (i32.xor
        ;;@ (lib)/allocator/tlsf.ts:314:33
        (i32.const 0)
        (i32.const -1)
       )
       ;;@ (lib)/allocator/tlsf.ts:314:38
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:314:39
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:314:44
        (i32.const 1)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:315:6
    (if
     ;;@ (lib)/allocator/tlsf.ts:315:10
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:315:11
      (get_local $7)
     )
     ;;@ (lib)/allocator/tlsf.ts:316:8
     (set_local $6
      ;;@ (lib)/allocator/tlsf.ts:316:15
      (i32.const 0)
     )
     ;;@ (lib)/allocator/tlsf.ts:317:13
     (block
      ;;@ (lib)/allocator/tlsf.ts:318:8
      (set_local $3
       ;;@ (lib)/allocator/tlsf.ts:318:13
       (call "$(lib)/allocator/tlsf/ffs<usize>"
        ;;@ (lib)/allocator/tlsf.ts:318:24
        (get_local $7)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:319:8
      (set_local $5
       ;;@ (lib)/allocator/tlsf.ts:319:16
       (if (result i32)
        (i32.eqz
         (tee_local $2
          ;;@ (lib)/allocator/tlsf.ts:319:28
          (call "$(lib)/allocator/tlsf/Root#getSLMap"
           ;;@ (lib)/allocator/tlsf.ts:319:23
           (get_local $0)
           ;;@ (lib)/allocator/tlsf.ts:319:37
           (get_local $3)
          )
         )
        )
        (block
         (call $abort
          (i32.const 0)
          (i32.const 4)
          (i32.const 319)
          (i32.const 16)
         )
         (unreachable)
        )
        (get_local $2)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:320:8
      (set_local $6
       ;;@ (lib)/allocator/tlsf.ts:320:20
       (call "$(lib)/allocator/tlsf/Root#getHead"
        ;;@ (lib)/allocator/tlsf.ts:320:15
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:320:28
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:320:32
        (call "$(lib)/allocator/tlsf/ffs<u32>"
         ;;@ (lib)/allocator/tlsf.ts:320:41
         (get_local $5)
        )
       )
      )
     )
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:323:6
   (set_local $6
    ;;@ (lib)/allocator/tlsf.ts:323:18
    (call "$(lib)/allocator/tlsf/Root#getHead"
     ;;@ (lib)/allocator/tlsf.ts:323:13
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:323:26
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:323:30
     (call "$(lib)/allocator/tlsf/ffs<u32>"
      ;;@ (lib)/allocator/tlsf.ts:323:39
      (get_local $5)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:325:11
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
  ;;@ (lib)/allocator/tlsf.ts:343:4
  (set_local $3
   ;;@ (lib)/allocator/tlsf.ts:343:20
   (i32.load
    (get_local $1)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:344:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:344:11
    (i32.and
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:344:23
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 344)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:345:4
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:345:11
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.ge_u
        (get_local $2)
        ;;@ (lib)/allocator/tlsf.ts:345:19
        (i32.const 16)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:345:37
      (i32.lt_u
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:345:44
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
    (i32.eqz
     ;;@ (lib)/allocator/tlsf.ts:346:12
     (i32.and
      ;;@ (lib)/allocator/tlsf.ts:346:13
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:346:20
      (i32.const 7)
     )
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
  ;;@ (lib)/allocator/tlsf.ts:348:9
  (call "$(lib)/allocator/tlsf/Root#remove"
   ;;@ (lib)/allocator/tlsf.ts:348:4
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:348:16
   (get_local $1)
  )
  ;;@ (lib)/allocator/tlsf.ts:351:4
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:351:20
   (i32.sub
    (i32.and
     ;;@ (lib)/allocator/tlsf.ts:351:21
     (get_local $3)
     ;;@ (lib)/allocator/tlsf.ts:351:33
     (i32.xor
      ;;@ (lib)/allocator/tlsf.ts:351:34
      (i32.const 3)
      (i32.const -1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:351:42
    (get_local $2)
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:352:4
  (if
   ;;@ (lib)/allocator/tlsf.ts:352:8
   (i32.ge_u
    (get_local $5)
    ;;@ (lib)/allocator/tlsf.ts:352:21
    (i32.add
     (i32.const 8)
     ;;@ (lib)/allocator/tlsf.ts:352:34
     (i32.const 16)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:352:50
   (block
    ;;@ (lib)/allocator/tlsf.ts:353:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:353:19
     (i32.or
      (get_local $2)
      ;;@ (lib)/allocator/tlsf.ts:353:26
      (i32.and
       ;;@ (lib)/allocator/tlsf.ts:353:27
       (get_local $3)
       ;;@ (lib)/allocator/tlsf.ts:353:39
       (i32.const 2)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:355:6
    (set_local $6
     ;;@ (lib)/allocator/tlsf.ts:355:18
     (i32.add
      ;;@ (lib)/allocator/tlsf.ts:356:8
      (i32.add
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:356:35
       (i32.const 8)
      )
      ;;@ (lib)/allocator/tlsf.ts:356:48
      (get_local $2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:358:6
    (i32.store
     (get_local $6)
     ;;@ (lib)/allocator/tlsf.ts:358:19
     (i32.or
      (i32.sub
       ;;@ (lib)/allocator/tlsf.ts:358:20
       (get_local $5)
       ;;@ (lib)/allocator/tlsf.ts:358:32
       (i32.const 8)
      )
      ;;@ (lib)/allocator/tlsf.ts:358:46
      (i32.const 1)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:359:11
    (call "$(lib)/allocator/tlsf/Root#insert"
     ;;@ (lib)/allocator/tlsf.ts:359:6
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:359:18
     (get_local $6)
    )
   )
   ;;@ (lib)/allocator/tlsf.ts:362:11
   (block
    ;;@ (lib)/allocator/tlsf.ts:363:6
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:363:19
     (i32.and
      (get_local $3)
      ;;@ (lib)/allocator/tlsf.ts:363:31
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:363:32
       (i32.const 1)
       (i32.const -1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:364:6
    (set_local $7
     ;;@ (lib)/allocator/tlsf.ts:364:25
     (if (result i32)
      (i32.eqz
       (tee_local $4
        ;;@ (lib)/allocator/tlsf.ts:364:32
        (call "$(lib)/allocator/tlsf/Block#get:right"
         (get_local $1)
        )
       )
      )
      (block
       (call $abort
        (i32.const 0)
        (i32.const 4)
        (i32.const 364)
        (i32.const 25)
       )
       (unreachable)
      )
      (get_local $4)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:365:6
    (i32.store
     (get_local $7)
     (i32.and
      (i32.load
       (get_local $7)
      )
      ;;@ (lib)/allocator/tlsf.ts:365:20
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:365:21
       (i32.const 2)
       (i32.const -1)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:368:44
  (return
   ;;@ (lib)/allocator/tlsf.ts:368:11
   (i32.add
    (get_local $1)
    ;;@ (lib)/allocator/tlsf.ts:368:38
    (i32.const 8)
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
  ;;@ (lib)/allocator/tlsf.ts:439:2
  (set_local $1
   ;;@ (lib)/allocator/tlsf.ts:439:13
   (get_global "$(lib)/allocator/tlsf/ROOT")
  )
  ;;@ (lib)/allocator/tlsf.ts:440:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:440:6
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:440:7
    (get_local $1)
   )
   ;;@ (lib)/allocator/tlsf.ts:440:13
   (block
    ;;@ (lib)/allocator/tlsf.ts:441:4
    (set_local $2
     ;;@ (lib)/allocator/tlsf.ts:441:21
     (i32.and
      (i32.add
       ;;@ (lib)/allocator/tlsf.ts:441:22
       (get_global $HEAP_BASE)
       ;;@ (lib)/allocator/tlsf.ts:441:34
       (i32.const 7)
      )
      ;;@ (lib)/allocator/tlsf.ts:441:45
      (i32.xor
       ;;@ (lib)/allocator/tlsf.ts:441:46
       (i32.const 7)
       (i32.const -1)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:442:4
    (set_global "$(lib)/allocator/tlsf/ROOT"
     ;;@ (lib)/allocator/tlsf.ts:442:11
     (tee_local $1
      ;;@ (lib)/allocator/tlsf.ts:442:18
      (get_local $2)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:443:4
    (call "$(lib)/allocator/tlsf/Root#set:tailRef"
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:443:19
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:444:4
    (i32.store
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:444:17
     (i32.const 0)
    )
    ;;@ (lib)/allocator/tlsf.ts:445:4
    (block $break|0
     ;;@ (lib)/allocator/tlsf.ts:445:9
     (set_local $3
      ;;@ (lib)/allocator/tlsf.ts:445:25
      (i32.const 0)
     )
     (loop $continue|0
      (if
       ;;@ (lib)/allocator/tlsf.ts:445:28
       (i32.lt_u
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:445:33
        (i32.const 22)
       )
       (block
        (block
         ;;@ (lib)/allocator/tlsf.ts:446:11
         (call "$(lib)/allocator/tlsf/Root#setSLMap"
          ;;@ (lib)/allocator/tlsf.ts:446:6
          (get_local $1)
          ;;@ (lib)/allocator/tlsf.ts:446:20
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:446:24
          (i32.const 0)
         )
         ;;@ (lib)/allocator/tlsf.ts:447:6
         (block $break|1
          ;;@ (lib)/allocator/tlsf.ts:447:11
          (set_local $4
           ;;@ (lib)/allocator/tlsf.ts:447:25
           (i32.const 0)
          )
          (loop $continue|1
           (if
            ;;@ (lib)/allocator/tlsf.ts:447:28
            (i32.lt_u
             (get_local $4)
             ;;@ (lib)/allocator/tlsf.ts:447:33
             (i32.const 32)
            )
            (block
             (block
              ;;@ (lib)/allocator/tlsf.ts:448:13
              (call "$(lib)/allocator/tlsf/Root#setHead"
               ;;@ (lib)/allocator/tlsf.ts:448:8
               (get_local $1)
               ;;@ (lib)/allocator/tlsf.ts:448:21
               (get_local $3)
               ;;@ (lib)/allocator/tlsf.ts:448:25
               (get_local $4)
               ;;@ (lib)/allocator/tlsf.ts:448:29
               (i32.const 0)
              )
             )
             ;;@ (lib)/allocator/tlsf.ts:447:42
             (set_local $4
              (i32.add
               ;;@ (lib)/allocator/tlsf.ts:447:44
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
        ;;@ (lib)/allocator/tlsf.ts:445:42
        (set_local $3
         (i32.add
          ;;@ (lib)/allocator/tlsf.ts:445:44
          (get_local $3)
          (i32.const 1)
         )
        )
        (br $continue|0)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:451:9
    (drop
     (call "$(lib)/allocator/tlsf/Root#addMemory"
      ;;@ (lib)/allocator/tlsf.ts:451:4
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:451:19
      (i32.and
       (i32.add
        ;;@ (lib)/allocator/tlsf.ts:451:20
        (i32.add
         (get_local $2)
         ;;@ (lib)/allocator/tlsf.ts:451:33
         (i32.const 2916)
        )
        ;;@ (lib)/allocator/tlsf.ts:451:45
        (i32.const 7)
       )
       ;;@ (lib)/allocator/tlsf.ts:451:56
       (i32.xor
        ;;@ (lib)/allocator/tlsf.ts:451:57
        (i32.const 7)
        (i32.const -1)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:451:66
      (i32.shl
       (current_memory)
       ;;@ (lib)/allocator/tlsf.ts:451:86
       (i32.const 16)
      )
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:455:2
  (set_local $5
   ;;@ (lib)/allocator/tlsf.ts:455:20
   (i32.const 0)
  )
  ;;@ (lib)/allocator/tlsf.ts:456:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:456:6
   (if (result i32)
    (get_local $0)
    ;;@ (lib)/allocator/tlsf.ts:456:14
    (i32.lt_u
     (get_local $0)
     ;;@ (lib)/allocator/tlsf.ts:456:21
     (i32.const 1073741824)
    )
    (get_local $0)
   )
   ;;@ (lib)/allocator/tlsf.ts:456:37
   (block
    ;;@ (lib)/allocator/tlsf.ts:457:4
    (set_local $0
     ;;@ (lib)/allocator/tlsf.ts:457:11
     (select
      (tee_local $6
       ;;@ (lib)/allocator/tlsf.ts:457:22
       (i32.and
        (i32.add
         ;;@ (lib)/allocator/tlsf.ts:457:23
         (get_local $0)
         ;;@ (lib)/allocator/tlsf.ts:457:30
         (i32.const 7)
        )
        ;;@ (lib)/allocator/tlsf.ts:457:41
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:457:42
         (i32.const 7)
         (i32.const -1)
        )
       )
      )
      (tee_local $7
       ;;@ (lib)/allocator/tlsf.ts:457:51
       (i32.const 16)
      )
      (i32.gt_u
       (get_local $6)
       (get_local $7)
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:459:4
    (set_local $8
     ;;@ (lib)/allocator/tlsf.ts:459:21
     (call "$(lib)/allocator/tlsf/Root#search"
      ;;@ (lib)/allocator/tlsf.ts:459:16
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:459:28
      (get_local $0)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:460:4
    (if
     ;;@ (lib)/allocator/tlsf.ts:460:8
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:460:9
      (get_local $8)
     )
     ;;@ (lib)/allocator/tlsf.ts:460:16
     (block
      ;;@ (lib)/allocator/tlsf.ts:463:6
      (set_local $9
       ;;@ (lib)/allocator/tlsf.ts:463:24
       (current_memory)
      )
      ;;@ (lib)/allocator/tlsf.ts:464:6
      (set_local $10
       ;;@ (lib)/allocator/tlsf.ts:464:24
       (i32.shr_u
        (i32.and
         ;;@ (lib)/allocator/tlsf.ts:464:25
         (i32.add
          ;;@ (lib)/allocator/tlsf.ts:464:26
          (get_local $0)
          ;;@ (lib)/allocator/tlsf.ts:464:33
          (i32.const 65535)
         )
         ;;@ (lib)/allocator/tlsf.ts:464:43
         (i32.xor
          ;;@ (lib)/allocator/tlsf.ts:464:44
          (i32.const 65535)
          (i32.const -1)
         )
        )
        ;;@ (lib)/allocator/tlsf.ts:464:56
        (i32.const 16)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:465:6
      (set_local $11
       ;;@ (lib)/allocator/tlsf.ts:465:24
       (select
        (tee_local $6
         ;;@ (lib)/allocator/tlsf.ts:465:28
         (get_local $9)
        )
        (tee_local $7
         ;;@ (lib)/allocator/tlsf.ts:465:41
         (get_local $10)
        )
        (i32.gt_s
         (get_local $6)
         (get_local $7)
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:466:6
      (if
       ;;@ (lib)/allocator/tlsf.ts:466:10
       (i32.lt_s
        (grow_memory
         ;;@ (lib)/allocator/tlsf.ts:466:22
         (get_local $11)
        )
        ;;@ (lib)/allocator/tlsf.ts:466:37
        (i32.const 0)
       )
       ;;@ (lib)/allocator/tlsf.ts:467:8
       (if
        ;;@ (lib)/allocator/tlsf.ts:467:12
        (i32.lt_s
         (grow_memory
          ;;@ (lib)/allocator/tlsf.ts:467:24
          (get_local $10)
         )
         ;;@ (lib)/allocator/tlsf.ts:467:39
         (i32.const 0)
        )
        ;;@ (lib)/allocator/tlsf.ts:468:10
        (unreachable)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:471:6
      (set_local $12
       ;;@ (lib)/allocator/tlsf.ts:471:23
       (current_memory)
      )
      ;;@ (lib)/allocator/tlsf.ts:472:11
      (drop
       (call "$(lib)/allocator/tlsf/Root#addMemory"
        ;;@ (lib)/allocator/tlsf.ts:472:6
        (get_local $1)
        ;;@ (lib)/allocator/tlsf.ts:472:21
        (i32.shl
         (get_local $9)
         ;;@ (lib)/allocator/tlsf.ts:472:43
         (i32.const 16)
        )
        ;;@ (lib)/allocator/tlsf.ts:472:47
        (i32.shl
         (get_local $12)
         ;;@ (lib)/allocator/tlsf.ts:472:68
         (i32.const 16)
        )
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:473:6
      (set_local $8
       ;;@ (lib)/allocator/tlsf.ts:473:14
       (if (result i32)
        (i32.eqz
         (tee_local $6
          ;;@ (lib)/allocator/tlsf.ts:473:26
          (call "$(lib)/allocator/tlsf/Root#search"
           ;;@ (lib)/allocator/tlsf.ts:473:21
           (get_local $1)
           ;;@ (lib)/allocator/tlsf.ts:473:33
           (get_local $0)
          )
         )
        )
        (block
         (call $abort
          (i32.const 0)
          (i32.const 4)
          (i32.const 473)
          (i32.const 14)
         )
         (unreachable)
        )
        (get_local $6)
       )
      )
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:476:4
    (if
     (i32.eqz
      ;;@ (lib)/allocator/tlsf.ts:476:11
      (i32.ge_u
       (i32.and
        ;;@ (lib)/allocator/tlsf.ts:476:12
        (i32.load
         (get_local $8)
        )
        ;;@ (lib)/allocator/tlsf.ts:476:25
        (i32.xor
         ;;@ (lib)/allocator/tlsf.ts:476:26
         (i32.const 3)
         (i32.const -1)
        )
       )
       ;;@ (lib)/allocator/tlsf.ts:476:35
       (get_local $0)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 476)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ (lib)/allocator/tlsf.ts:477:4
    (set_local $5
     ;;@ (lib)/allocator/tlsf.ts:477:16
     (call "$(lib)/allocator/tlsf/Root#use"
      ;;@ (lib)/allocator/tlsf.ts:477:11
      (get_local $1)
      ;;@ (lib)/allocator/tlsf.ts:477:20
      (get_local $8)
      ;;@ (lib)/allocator/tlsf.ts:477:27
      (get_local $0)
     )
    )
   )
  )
  ;;@ (lib)/allocator/tlsf.ts:480:9
  (return
   (get_local $5)
  )
 )
 (func "$(lib)/allocator/tlsf/free_memory" (; 19 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ (lib)/allocator/tlsf.ts:486:2
  (if
   ;;@ (lib)/allocator/tlsf.ts:486:6
   (get_local $0)
   ;;@ (lib)/allocator/tlsf.ts:486:12
   (block
    ;;@ (lib)/allocator/tlsf.ts:487:4
    (set_local $1
     ;;@ (lib)/allocator/tlsf.ts:487:15
     (get_global "$(lib)/allocator/tlsf/ROOT")
    )
    ;;@ (lib)/allocator/tlsf.ts:488:4
    (if
     ;;@ (lib)/allocator/tlsf.ts:488:8
     (get_local $1)
     ;;@ (lib)/allocator/tlsf.ts:488:14
     (block
      ;;@ (lib)/allocator/tlsf.ts:489:6
      (set_local $2
       ;;@ (lib)/allocator/tlsf.ts:489:18
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:489:36
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:489:43
        (i32.const 8)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:490:6
      (set_local $3
       ;;@ (lib)/allocator/tlsf.ts:490:22
       (i32.load
        (get_local $2)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:491:6
      (if
       (i32.eqz
        ;;@ (lib)/allocator/tlsf.ts:491:13
        (i32.eqz
         ;;@ (lib)/allocator/tlsf.ts:491:14
         (i32.and
          ;;@ (lib)/allocator/tlsf.ts:491:15
          (get_local $3)
          ;;@ (lib)/allocator/tlsf.ts:491:27
          (i32.const 1)
         )
        )
       )
       (block
        (call $abort
         (i32.const 0)
         (i32.const 4)
         (i32.const 491)
         (i32.const 6)
        )
        (unreachable)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:492:6
      (i32.store
       (get_local $2)
       ;;@ (lib)/allocator/tlsf.ts:492:19
       (i32.or
        (get_local $3)
        ;;@ (lib)/allocator/tlsf.ts:492:31
        (i32.const 1)
       )
      )
      ;;@ (lib)/allocator/tlsf.ts:493:11
      (call "$(lib)/allocator/tlsf/Root#insert"
       ;;@ (lib)/allocator/tlsf.ts:493:6
       (get_local $1)
       ;;@ (lib)/allocator/tlsf.ts:493:18
       (i32.sub
        ;;@ (lib)/allocator/tlsf.ts:493:36
        (get_local $0)
        ;;@ (lib)/allocator/tlsf.ts:493:43
        (i32.const 8)
       )
      )
     )
    )
   )
  )
 )
 (func $start (; 20 ;) (type $v)
  ;;@ (lib)/allocator/tlsf.ts:118:0
  (if
   (i32.eqz
    ;;@ (lib)/allocator/tlsf.ts:118:7
    (i32.le_s
     (i32.shl
      ;;@ (lib)/allocator/tlsf.ts:118:8
      (i32.const 1)
      ;;@ (lib)/allocator/tlsf.ts:118:13
      (i32.const 5)
     )
     ;;@ (lib)/allocator/tlsf.ts:118:25
     (i32.const 32)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 118)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
