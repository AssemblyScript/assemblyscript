(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $retain-i32/si (mut i32) (i32.const 0))
 (global $retain-i32/ui (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 36))
 (memory $0 1)
 (data (i32.const 4) "\0d\00\00\00r\00e\00t\00a\00i\00n\00-\00i\003\002\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $retain-i32/test (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ retain-i32.ts:4:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:4:9
    (i32.eq
     (i32.shr_s
      (i32.shl
       ;;@ retain-i32.ts:4:14
       (i32.add
        (get_local $0)
        ;;@ retain-i32.ts:4:18
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     ;;@ retain-i32.ts:4:24
     (i32.shr_s
      (i32.shl
       (i32.add
        ;;@ retain-i32.ts:4:29
        (i32.shr_s
         (i32.shl
          (get_local $0)
          (i32.const 24)
         )
         (i32.const 24)
        )
        ;;@ retain-i32.ts:4:37
        (i32.shr_s
         (i32.shl
          (get_local $1)
          (i32.const 24)
         )
         (i32.const 24)
        )
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 4)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:5:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:5:9
    (i32.eq
     (i32.shr_s
      (i32.shl
       ;;@ retain-i32.ts:5:14
       (i32.sub
        (get_local $0)
        ;;@ retain-i32.ts:5:18
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     ;;@ retain-i32.ts:5:24
     (i32.shr_s
      (i32.shl
       (i32.sub
        ;;@ retain-i32.ts:5:29
        (i32.shr_s
         (i32.shl
          (get_local $0)
          (i32.const 24)
         )
         (i32.const 24)
        )
        ;;@ retain-i32.ts:5:37
        (i32.shr_s
         (i32.shl
          (get_local $1)
          (i32.const 24)
         )
         (i32.const 24)
        )
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 5)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:6:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:6:9
    (i32.eq
     (i32.shr_s
      (i32.shl
       ;;@ retain-i32.ts:6:14
       (i32.mul
        (get_local $0)
        ;;@ retain-i32.ts:6:18
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     ;;@ retain-i32.ts:6:24
     (i32.shr_s
      (i32.shl
       (i32.mul
        ;;@ retain-i32.ts:6:29
        (i32.shr_s
         (i32.shl
          (get_local $0)
          (i32.const 24)
         )
         (i32.const 24)
        )
        ;;@ retain-i32.ts:6:37
        (i32.shr_s
         (i32.shl
          (get_local $1)
          (i32.const 24)
         )
         (i32.const 24)
        )
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 6)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:7:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:7:9
    (i32.eq
     (i32.shr_s
      (i32.shl
       ;;@ retain-i32.ts:7:14
       (i32.and
        (get_local $0)
        ;;@ retain-i32.ts:7:18
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     ;;@ retain-i32.ts:7:24
     (i32.shr_s
      (i32.shl
       (i32.and
        ;;@ retain-i32.ts:7:29
        (i32.shr_s
         (i32.shl
          (get_local $0)
          (i32.const 24)
         )
         (i32.const 24)
        )
        ;;@ retain-i32.ts:7:37
        (i32.shr_s
         (i32.shl
          (get_local $1)
          (i32.const 24)
         )
         (i32.const 24)
        )
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 7)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:8:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:8:9
    (i32.eq
     (i32.shr_s
      (i32.shl
       ;;@ retain-i32.ts:8:14
       (i32.or
        (get_local $0)
        ;;@ retain-i32.ts:8:18
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     ;;@ retain-i32.ts:8:24
     (i32.shr_s
      (i32.shl
       (i32.or
        ;;@ retain-i32.ts:8:29
        (i32.shr_s
         (i32.shl
          (get_local $0)
          (i32.const 24)
         )
         (i32.const 24)
        )
        ;;@ retain-i32.ts:8:37
        (i32.shr_s
         (i32.shl
          (get_local $1)
          (i32.const 24)
         )
         (i32.const 24)
        )
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 8)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:9:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:9:9
    (i32.eq
     (i32.shr_s
      (i32.shl
       ;;@ retain-i32.ts:9:14
       (i32.xor
        (get_local $0)
        ;;@ retain-i32.ts:9:18
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     ;;@ retain-i32.ts:9:24
     (i32.shr_s
      (i32.shl
       (i32.xor
        ;;@ retain-i32.ts:9:29
        (i32.shr_s
         (i32.shl
          (get_local $0)
          (i32.const 24)
         )
         (i32.const 24)
        )
        ;;@ retain-i32.ts:9:37
        (i32.shr_s
         (i32.shl
          (get_local $1)
          (i32.const 24)
         )
         (i32.const 24)
        )
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 9)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:10:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:10:9
    (i32.eq
     (i32.shr_s
      (i32.shl
       ;;@ retain-i32.ts:10:14
       (i32.shl
        (get_local $0)
        ;;@ retain-i32.ts:10:19
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     ;;@ retain-i32.ts:10:25
     (i32.shr_s
      (i32.shl
       (i32.shl
        ;;@ retain-i32.ts:10:30
        (i32.shr_s
         (i32.shl
          (get_local $0)
          (i32.const 24)
         )
         (i32.const 24)
        )
        ;;@ retain-i32.ts:10:39
        (i32.shr_s
         (i32.shl
          (get_local $1)
          (i32.const 24)
         )
         (i32.const 24)
        )
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 10)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:13:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:13:9
    (i32.eq
     (i32.and
      ;;@ retain-i32.ts:13:14
      (i32.add
       (get_local $0)
       ;;@ retain-i32.ts:13:18
       (get_local $1)
      )
      (i32.const 255)
     )
     ;;@ retain-i32.ts:13:24
     (i32.and
      (i32.add
       ;;@ retain-i32.ts:13:29
       (i32.and
        (get_local $0)
        (i32.const 255)
       )
       ;;@ retain-i32.ts:13:37
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
      (i32.const 255)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:14:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:14:9
    (i32.eq
     (i32.and
      ;;@ retain-i32.ts:14:14
      (i32.sub
       (get_local $0)
       ;;@ retain-i32.ts:14:18
       (get_local $1)
      )
      (i32.const 255)
     )
     ;;@ retain-i32.ts:14:24
     (i32.and
      (i32.sub
       ;;@ retain-i32.ts:14:29
       (i32.and
        (get_local $0)
        (i32.const 255)
       )
       ;;@ retain-i32.ts:14:37
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
      (i32.const 255)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 14)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:15:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:15:9
    (i32.eq
     (i32.and
      ;;@ retain-i32.ts:15:14
      (i32.mul
       (get_local $0)
       ;;@ retain-i32.ts:15:18
       (get_local $1)
      )
      (i32.const 255)
     )
     ;;@ retain-i32.ts:15:24
     (i32.and
      (i32.mul
       ;;@ retain-i32.ts:15:29
       (i32.and
        (get_local $0)
        (i32.const 255)
       )
       ;;@ retain-i32.ts:15:37
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
      (i32.const 255)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 15)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:16:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:16:9
    (i32.eq
     (i32.and
      ;;@ retain-i32.ts:16:14
      (i32.and
       (get_local $0)
       ;;@ retain-i32.ts:16:18
       (get_local $1)
      )
      (i32.const 255)
     )
     ;;@ retain-i32.ts:16:24
     (i32.and
      (i32.and
       ;;@ retain-i32.ts:16:29
       (i32.and
        (get_local $0)
        (i32.const 255)
       )
       ;;@ retain-i32.ts:16:37
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
      (i32.const 255)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 16)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:17:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:17:9
    (i32.eq
     (i32.and
      ;;@ retain-i32.ts:17:14
      (i32.or
       (get_local $0)
       ;;@ retain-i32.ts:17:18
       (get_local $1)
      )
      (i32.const 255)
     )
     ;;@ retain-i32.ts:17:24
     (i32.and
      (i32.or
       ;;@ retain-i32.ts:17:29
       (i32.and
        (get_local $0)
        (i32.const 255)
       )
       ;;@ retain-i32.ts:17:37
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
      (i32.const 255)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 17)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:18:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:18:9
    (i32.eq
     (i32.and
      ;;@ retain-i32.ts:18:14
      (i32.xor
       (get_local $0)
       ;;@ retain-i32.ts:18:18
       (get_local $1)
      )
      (i32.const 255)
     )
     ;;@ retain-i32.ts:18:24
     (i32.and
      (i32.xor
       ;;@ retain-i32.ts:18:29
       (i32.and
        (get_local $0)
        (i32.const 255)
       )
       ;;@ retain-i32.ts:18:37
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
      (i32.const 255)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 18)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:19:2
  (if
   (i32.eqz
    ;;@ retain-i32.ts:19:9
    (i32.eq
     (i32.and
      ;;@ retain-i32.ts:19:14
      (i32.shl
       (get_local $0)
       ;;@ retain-i32.ts:19:19
       (get_local $1)
      )
      (i32.const 255)
     )
     ;;@ retain-i32.ts:19:25
     (i32.and
      (i32.shl
       ;;@ retain-i32.ts:19:30
       (i32.and
        (get_local $0)
        (i32.const 255)
       )
       ;;@ retain-i32.ts:19:39
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
      (i32.const 255)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 19)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 2 ;) (type $v)
  (local $0 i32)
  ;;@ retain-i32.ts:23:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:23:5
   (i32.const 0)
   ;;@ retain-i32.ts:23:8
   (i32.const 127)
  )
  ;;@ retain-i32.ts:24:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:24:5
   (i32.const 127)
   ;;@ retain-i32.ts:24:19
   (i32.const 0)
  )
  ;;@ retain-i32.ts:26:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:26:5
   (i32.const 1)
   ;;@ retain-i32.ts:26:8
   (i32.const 127)
  )
  ;;@ retain-i32.ts:27:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:27:5
   (i32.const 127)
   ;;@ retain-i32.ts:27:19
   (i32.const 1)
  )
  ;;@ retain-i32.ts:29:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:29:5
   (i32.const -1)
   ;;@ retain-i32.ts:29:9
   (i32.const 127)
  )
  ;;@ retain-i32.ts:30:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:30:5
   (i32.const 127)
   ;;@ retain-i32.ts:30:19
   (i32.const -1)
  )
  ;;@ retain-i32.ts:32:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:32:5
   (i32.const 0)
   ;;@ retain-i32.ts:32:8
   (i32.const -128)
  )
  ;;@ retain-i32.ts:33:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:33:5
   (i32.const -128)
   ;;@ retain-i32.ts:33:19
   (i32.const 0)
  )
  ;;@ retain-i32.ts:35:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:35:5
   (i32.const 1)
   ;;@ retain-i32.ts:35:8
   (i32.const -128)
  )
  ;;@ retain-i32.ts:36:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:36:5
   (i32.const -128)
   ;;@ retain-i32.ts:36:19
   (i32.const 1)
  )
  ;;@ retain-i32.ts:38:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:38:5
   (i32.const -1)
   ;;@ retain-i32.ts:38:9
   (i32.const -128)
  )
  ;;@ retain-i32.ts:39:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:39:5
   (i32.const -128)
   ;;@ retain-i32.ts:39:19
   (i32.const -1)
  )
  ;;@ retain-i32.ts:41:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:41:5
   (i32.const 127)
   ;;@ retain-i32.ts:41:19
   (i32.const 127)
  )
  ;;@ retain-i32.ts:42:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:42:5
   (i32.const -128)
   ;;@ retain-i32.ts:42:19
   (i32.const -128)
  )
  ;;@ retain-i32.ts:43:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:43:5
   (i32.const 127)
   ;;@ retain-i32.ts:43:19
   (i32.const -128)
  )
  ;;@ retain-i32.ts:44:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:44:5
   (i32.const -128)
   ;;@ retain-i32.ts:44:19
   (i32.const 127)
  )
  ;;@ retain-i32.ts:47:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:47:5
   (i32.const 0)
   ;;@ retain-i32.ts:47:8
   (i32.const 255)
  )
  ;;@ retain-i32.ts:48:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:48:5
   (i32.const 255)
   ;;@ retain-i32.ts:48:19
   (i32.const 0)
  )
  ;;@ retain-i32.ts:50:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:50:5
   (i32.const 1)
   ;;@ retain-i32.ts:50:8
   (i32.const 255)
  )
  ;;@ retain-i32.ts:51:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:51:5
   (i32.const 255)
   ;;@ retain-i32.ts:51:19
   (i32.const 1)
  )
  ;;@ retain-i32.ts:53:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:53:5
   (i32.const -1)
   ;;@ retain-i32.ts:53:9
   (i32.const 255)
  )
  ;;@ retain-i32.ts:54:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:54:5
   (i32.const 255)
   ;;@ retain-i32.ts:54:19
   (i32.const -1)
  )
  ;;@ retain-i32.ts:56:0
  (call $retain-i32/test
   ;;@ retain-i32.ts:56:5
   (i32.const 255)
   ;;@ retain-i32.ts:56:19
   (i32.const 255)
  )
  ;;@ retain-i32.ts:59:0
  (block $break|0
   ;;@ retain-i32.ts:59:5
   (set_local $0
    ;;@ retain-i32.ts:59:18
    (i32.const -128)
   )
   (loop $continue|0
    (if
     ;;@ retain-i32.ts:59:32
     (i32.le_s
      (get_local $0)
      ;;@ retain-i32.ts:59:37
      (i32.const 255)
     )
     (block
      (block
       ;;@ retain-i32.ts:60:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:60:7
        (i32.const 0)
        ;;@ retain-i32.ts:60:10
        (get_local $0)
       )
       ;;@ retain-i32.ts:61:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:61:7
        (i32.const 1)
        ;;@ retain-i32.ts:61:10
        (get_local $0)
       )
       ;;@ retain-i32.ts:62:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:62:7
        (i32.const -1)
        ;;@ retain-i32.ts:62:11
        (get_local $0)
       )
       ;;@ retain-i32.ts:63:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:63:7
        (i32.const -128)
        ;;@ retain-i32.ts:63:21
        (get_local $0)
       )
       ;;@ retain-i32.ts:64:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:64:7
        (i32.const 127)
        ;;@ retain-i32.ts:64:21
        (get_local $0)
       )
       ;;@ retain-i32.ts:65:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:65:7
        (i32.const 255)
        ;;@ retain-i32.ts:65:21
        (get_local $0)
       )
       ;;@ retain-i32.ts:66:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:66:7
        (i32.const -32768)
        ;;@ retain-i32.ts:66:22
        (get_local $0)
       )
       ;;@ retain-i32.ts:67:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:67:7
        (i32.const 32767)
        ;;@ retain-i32.ts:67:22
        (get_local $0)
       )
       ;;@ retain-i32.ts:68:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:68:7
        (i32.const 65535)
        ;;@ retain-i32.ts:68:22
        (get_local $0)
       )
       ;;@ retain-i32.ts:69:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:69:7
        (i32.const 2147483647)
        ;;@ retain-i32.ts:69:22
        (get_local $0)
       )
       ;;@ retain-i32.ts:70:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:70:7
        (i32.const -2147483648)
        ;;@ retain-i32.ts:70:22
        (get_local $0)
       )
       ;;@ retain-i32.ts:71:2
       (call $retain-i32/test
        ;;@ retain-i32.ts:71:7
        (i32.const -1)
        ;;@ retain-i32.ts:71:22
        (get_local $0)
       )
      )
      ;;@ retain-i32.ts:59:51
      (set_local $0
       (i32.add
        ;;@ retain-i32.ts:59:53
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ retain-i32.ts:77:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:77:5
   (i32.shr_s
    (i32.shl
     (i32.add
      (i32.add
       (i32.const 127)
       ;;@ retain-i32.ts:77:11
       (i32.const 127)
      )
      ;;@ retain-i32.ts:77:17
      (i32.const 1)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ retain-i32.ts:78:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:78:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:78:13
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 78)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:80:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:80:5
   (i32.shr_s
    (i32.shl
     (i32.sub
      (i32.sub
       (i32.const 127)
       ;;@ retain-i32.ts:80:11
       (i32.const 1)
      )
      ;;@ retain-i32.ts:80:15
      (i32.const 127)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ retain-i32.ts:81:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:81:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:81:13
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 81)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:83:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:83:5
   (i32.shr_s
    (i32.shl
     (i32.mul
      (i32.const 127)
      ;;@ retain-i32.ts:83:11
      (i32.const 2)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ retain-i32.ts:84:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:84:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:84:13
     (i32.const -2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 84)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:86:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:86:5
   (i32.shr_s
    (i32.shl
     (i32.sub
      (i32.const 0)
      ;;@ retain-i32.ts:86:6
      (i32.const -128)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ retain-i32.ts:87:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:87:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:87:13
     (i32.const -128)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 87)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:89:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:89:5
   (i32.shr_s
    (i32.shl
     (i32.mul
      (i32.const -128)
      ;;@ retain-i32.ts:89:12
      (i32.const -1)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ retain-i32.ts:90:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:90:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:90:13
     (i32.const -128)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 90)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:92:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:92:5
   (i32.shr_s
    (i32.shl
     (i32.div_s
      (i32.const 127)
      ;;@ retain-i32.ts:92:11
      (i32.const -1)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ retain-i32.ts:93:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:93:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:93:13
     (i32.const -127)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 93)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:95:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:95:5
   (i32.shr_s
    (i32.shl
     (i32.div_s
      (i32.const -128)
      ;;@ retain-i32.ts:95:12
      (i32.const -1)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ retain-i32.ts:96:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:96:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:96:13
     (i32.const -128)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 96)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:98:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:98:5
   (i32.rem_s
    (i32.const 127)
    ;;@ retain-i32.ts:98:11
    (i32.const 2)
   )
  )
  ;;@ retain-i32.ts:99:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:99:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:99:13
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 99)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:101:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:101:5
   (i32.rem_s
    (i32.const 1)
    ;;@ retain-i32.ts:101:9
    (i32.const 127)
   )
  )
  ;;@ retain-i32.ts:102:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:102:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:102:13
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 102)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:104:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:104:5
   (i32.rem_s
    (i32.const -128)
    ;;@ retain-i32.ts:104:12
    (i32.const 2)
   )
  )
  ;;@ retain-i32.ts:105:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:105:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:105:13
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 105)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:107:0
  (set_global $retain-i32/si
   ;;@ retain-i32.ts:107:5
   (i32.rem_s
    (i32.const 1)
    ;;@ retain-i32.ts:107:9
    (i32.const -128)
   )
  )
  ;;@ retain-i32.ts:108:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:108:7
    (i32.eq
     (get_global $retain-i32/si)
     ;;@ retain-i32.ts:108:13
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 108)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:112:0
  (set_global $retain-i32/ui
   ;;@ retain-i32.ts:112:5
   (i32.and
    (i32.add
     (i32.add
      (i32.const 255)
      ;;@ retain-i32.ts:112:11
      (i32.const 255)
     )
     ;;@ retain-i32.ts:112:17
     (i32.const 1)
    )
    (i32.const 255)
   )
  )
  ;;@ retain-i32.ts:113:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:113:7
    (i32.eq
     (get_global $retain-i32/ui)
     ;;@ retain-i32.ts:113:13
     (i32.const 255)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 113)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:115:0
  (set_global $retain-i32/ui
   ;;@ retain-i32.ts:115:5
   (i32.and
    (i32.sub
     (i32.sub
      (i32.const 255)
      ;;@ retain-i32.ts:115:11
      (i32.const 1)
     )
     ;;@ retain-i32.ts:115:15
     (i32.const 255)
    )
    (i32.const 255)
   )
  )
  ;;@ retain-i32.ts:116:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:116:7
    (i32.eq
     (get_global $retain-i32/ui)
     ;;@ retain-i32.ts:116:13
     (i32.const 255)
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
  ;;@ retain-i32.ts:118:0
  (set_global $retain-i32/ui
   ;;@ retain-i32.ts:118:5
   (i32.and
    (i32.mul
     (i32.const 255)
     ;;@ retain-i32.ts:118:11
     (i32.const 2)
    )
    (i32.const 255)
   )
  )
  ;;@ retain-i32.ts:119:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:119:7
    (i32.eq
     (get_global $retain-i32/ui)
     ;;@ retain-i32.ts:119:13
     (i32.const 254)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 119)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:121:0
  (set_global $retain-i32/ui
   ;;@ retain-i32.ts:121:5
   (i32.and
    (i32.mul
     (i32.const 255)
     ;;@ retain-i32.ts:121:11
     (i32.const 255)
    )
    (i32.const 255)
   )
  )
  ;;@ retain-i32.ts:122:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:122:7
    (i32.eq
     (get_global $retain-i32/ui)
     ;;@ retain-i32.ts:122:13
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 122)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:124:0
  (set_global $retain-i32/ui
   ;;@ retain-i32.ts:124:5
   (i32.and
    (i32.div_u
     (i32.const 255)
     ;;@ retain-i32.ts:124:11
     (i32.const 255)
    )
    (i32.const 255)
   )
  )
  ;;@ retain-i32.ts:125:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:125:7
    (i32.eq
     (get_global $retain-i32/ui)
     ;;@ retain-i32.ts:125:13
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 125)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:127:0
  (set_global $retain-i32/ui
   ;;@ retain-i32.ts:127:5
   (i32.rem_u
    (i32.const 255)
    ;;@ retain-i32.ts:127:11
    (i32.const 2)
   )
  )
  ;;@ retain-i32.ts:128:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:128:7
    (i32.eq
     (get_global $retain-i32/ui)
     ;;@ retain-i32.ts:128:13
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 128)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ retain-i32.ts:130:0
  (set_global $retain-i32/ui
   ;;@ retain-i32.ts:130:5
   (i32.rem_u
    (i32.const 255)
    ;;@ retain-i32.ts:130:11
    (i32.const 255)
   )
  )
  ;;@ retain-i32.ts:131:0
  (if
   (i32.eqz
    ;;@ retain-i32.ts:131:7
    (i32.eq
     (get_global $retain-i32/ui)
     ;;@ retain-i32.ts:131:13
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 131)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
