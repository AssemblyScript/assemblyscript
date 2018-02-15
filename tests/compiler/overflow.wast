(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 4) "\0b\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ overflow.ts:5:0
  (block
   ;;@ overflow.ts:6:2
   (set_local $0
    ;;@ overflow.ts:6:16
    (i32.const 127)
   )
   ;;@ overflow.ts:7:2
   (nop)
   ;;@ overflow.ts:9:2
   (set_local $0
    (i32.shr_s
     (i32.shl
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 24)
     )
     (i32.const 24)
    )
   )
   ;;@ overflow.ts:10:2
   (if
    (i32.eqz
     ;;@ overflow.ts:10:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:10:16
      (i32.const -128)
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
   ;;@ overflow.ts:12:2
   (set_local $0
    (i32.shr_s
     (i32.shl
      (i32.sub
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 24)
     )
     (i32.const 24)
    )
   )
   ;;@ overflow.ts:13:2
   (if
    (i32.eqz
     ;;@ overflow.ts:13:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:13:16
      (i32.const 127)
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
   ;;@ overflow.ts:15:2
   (set_local $1
    ;;@ overflow.ts:15:8
    (block (result i32)
     (set_local $2
      (get_local $0)
     )
     (set_local $0
      (i32.shr_s
       (i32.shl
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
        (i32.const 24)
       )
       (i32.const 24)
      )
     )
     (get_local $2)
    )
   )
   ;;@ overflow.ts:16:2
   (if
    (i32.eqz
     ;;@ overflow.ts:16:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:16:16
      (i32.const -128)
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
   ;;@ overflow.ts:18:2
   (set_local $1
    ;;@ overflow.ts:18:8
    (block (result i32)
     (set_local $2
      (get_local $0)
     )
     (set_local $0
      (i32.shr_s
       (i32.shl
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
        (i32.const 24)
       )
       (i32.const 24)
      )
     )
     (get_local $2)
    )
   )
   ;;@ overflow.ts:19:2
   (if
    (i32.eqz
     ;;@ overflow.ts:19:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:19:16
      (i32.const 127)
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
   ;;@ overflow.ts:21:2
   (set_local $0
    (i32.shr_s
     (i32.shl
      (i32.add
       ;;@ overflow.ts:21:4
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 24)
     )
     (i32.const 24)
    )
   )
   ;;@ overflow.ts:22:2
   (if
    (i32.eqz
     ;;@ overflow.ts:22:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:22:16
      (i32.const -128)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 22)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:24:2
   (set_local $0
    (i32.shr_s
     (i32.shl
      (i32.sub
       ;;@ overflow.ts:24:4
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 24)
     )
     (i32.const 24)
    )
   )
   ;;@ overflow.ts:25:2
   (if
    (i32.eqz
     ;;@ overflow.ts:25:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:25:16
      (i32.const 127)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 25)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:27:2
   (set_local $1
    ;;@ overflow.ts:27:8
    (tee_local $0
     (i32.shr_s
      (i32.shl
       (i32.add
        ;;@ overflow.ts:27:10
        (get_local $0)
        (i32.const 1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   ;;@ overflow.ts:28:2
   (if
    (i32.eqz
     ;;@ overflow.ts:28:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:28:16
      (i32.const -128)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 28)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:30:2
   (set_local $1
    ;;@ overflow.ts:30:8
    (tee_local $0
     (i32.shr_s
      (i32.shl
       (i32.sub
        ;;@ overflow.ts:30:10
        (get_local $0)
        (i32.const 1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   ;;@ overflow.ts:31:2
   (if
    (i32.eqz
     ;;@ overflow.ts:31:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:31:16
      (i32.const 127)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 31)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:33:2
   (if
    (i32.eqz
     ;;@ overflow.ts:33:9
     (i32.eq
      (i32.shr_s
       (i32.shl
        (i32.add
         (get_local $0)
         ;;@ overflow.ts:33:15
         (i32.const 1)
        )
        (i32.const 24)
       )
       (i32.const 24)
      )
      ;;@ overflow.ts:33:20
      (i32.const -128)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 33)
      (i32.const 2)
     )
     (unreachable)
    )
   )
  )
  ;;@ overflow.ts:37:0
  (block
   ;;@ overflow.ts:38:2
   (set_local $1
    ;;@ overflow.ts:38:17
    (i32.const 32767)
   )
   ;;@ overflow.ts:39:2
   (nop)
   ;;@ overflow.ts:41:2
   (set_local $1
    (i32.shr_s
     (i32.shl
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 16)
     )
     (i32.const 16)
    )
   )
   ;;@ overflow.ts:42:2
   (if
    (i32.eqz
     ;;@ overflow.ts:42:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:42:16
      (i32.const -32768)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 42)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:44:2
   (set_local $1
    (i32.shr_s
     (i32.shl
      (i32.sub
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 16)
     )
     (i32.const 16)
    )
   )
   ;;@ overflow.ts:45:2
   (if
    (i32.eqz
     ;;@ overflow.ts:45:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:45:16
      (i32.const 32767)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 45)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:47:2
   (set_local $0
    ;;@ overflow.ts:47:8
    (block (result i32)
     (set_local $2
      (get_local $1)
     )
     (set_local $1
      (i32.shr_s
       (i32.shl
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
        (i32.const 16)
       )
       (i32.const 16)
      )
     )
     (get_local $2)
    )
   )
   ;;@ overflow.ts:48:2
   (if
    (i32.eqz
     ;;@ overflow.ts:48:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:48:16
      (i32.const -32768)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 48)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:50:2
   (set_local $0
    ;;@ overflow.ts:50:8
    (block (result i32)
     (set_local $2
      (get_local $1)
     )
     (set_local $1
      (i32.shr_s
       (i32.shl
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
        (i32.const 16)
       )
       (i32.const 16)
      )
     )
     (get_local $2)
    )
   )
   ;;@ overflow.ts:51:2
   (if
    (i32.eqz
     ;;@ overflow.ts:51:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:51:16
      (i32.const 32767)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 51)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:53:2
   (set_local $1
    (i32.shr_s
     (i32.shl
      (i32.add
       ;;@ overflow.ts:53:4
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 16)
     )
     (i32.const 16)
    )
   )
   ;;@ overflow.ts:54:2
   (if
    (i32.eqz
     ;;@ overflow.ts:54:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:54:16
      (i32.const -32768)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 54)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:56:2
   (set_local $1
    (i32.shr_s
     (i32.shl
      (i32.sub
       ;;@ overflow.ts:56:4
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 16)
     )
     (i32.const 16)
    )
   )
   ;;@ overflow.ts:57:2
   (if
    (i32.eqz
     ;;@ overflow.ts:57:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:57:16
      (i32.const 32767)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 57)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:59:2
   (set_local $0
    ;;@ overflow.ts:59:8
    (tee_local $1
     (i32.shr_s
      (i32.shl
       (i32.add
        ;;@ overflow.ts:59:10
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 16)
      )
      (i32.const 16)
     )
    )
   )
   ;;@ overflow.ts:60:2
   (if
    (i32.eqz
     ;;@ overflow.ts:60:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:60:16
      (i32.const -32768)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 60)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:62:2
   (set_local $0
    ;;@ overflow.ts:62:8
    (tee_local $1
     (i32.shr_s
      (i32.shl
       (i32.sub
        ;;@ overflow.ts:62:10
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 16)
      )
      (i32.const 16)
     )
    )
   )
   ;;@ overflow.ts:63:2
   (if
    (i32.eqz
     ;;@ overflow.ts:63:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:63:16
      (i32.const 32767)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 63)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:65:2
   (if
    (i32.eqz
     ;;@ overflow.ts:65:9
     (i32.eq
      (i32.shr_s
       (i32.shl
        (i32.add
         (get_local $1)
         ;;@ overflow.ts:65:15
         (i32.const 1)
        )
        (i32.const 16)
       )
       (i32.const 16)
      )
      ;;@ overflow.ts:65:20
      (i32.const -32768)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 65)
      (i32.const 2)
     )
     (unreachable)
    )
   )
  )
  ;;@ overflow.ts:69:0
  (block
   ;;@ overflow.ts:70:2
   (set_local $0
    ;;@ overflow.ts:70:16
    (i32.const 0)
   )
   ;;@ overflow.ts:71:2
   (nop)
   ;;@ overflow.ts:73:2
   (set_local $0
    (i32.and
     (i32.sub
      (get_local $0)
      (i32.const 1)
     )
     (i32.const 255)
    )
   )
   ;;@ overflow.ts:74:2
   (if
    (i32.eqz
     ;;@ overflow.ts:74:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:74:16
      (i32.const 255)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 74)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:76:2
   (set_local $0
    (i32.and
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
     (i32.const 255)
    )
   )
   ;;@ overflow.ts:77:2
   (if
    (i32.eqz
     ;;@ overflow.ts:77:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:77:16
      (i32.const 0)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 77)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:79:2
   (set_local $1
    ;;@ overflow.ts:79:8
    (block (result i32)
     (set_local $2
      (get_local $0)
     )
     (set_local $0
      (i32.and
       (i32.sub
        (get_local $2)
        (i32.const 1)
       )
       (i32.const 255)
      )
     )
     (get_local $2)
    )
   )
   ;;@ overflow.ts:80:2
   (if
    (i32.eqz
     ;;@ overflow.ts:80:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:80:16
      (i32.const 255)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 80)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:82:2
   (set_local $1
    ;;@ overflow.ts:82:8
    (block (result i32)
     (set_local $2
      (get_local $0)
     )
     (set_local $0
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
       (i32.const 255)
      )
     )
     (get_local $2)
    )
   )
   ;;@ overflow.ts:83:2
   (if
    (i32.eqz
     ;;@ overflow.ts:83:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:83:16
      (i32.const 0)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 83)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:85:2
   (set_local $0
    (i32.and
     (i32.sub
      ;;@ overflow.ts:85:4
      (get_local $0)
      (i32.const 1)
     )
     (i32.const 255)
    )
   )
   ;;@ overflow.ts:86:2
   (if
    (i32.eqz
     ;;@ overflow.ts:86:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:86:16
      (i32.const 255)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 86)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:88:2
   (set_local $0
    (i32.and
     (i32.add
      ;;@ overflow.ts:88:4
      (get_local $0)
      (i32.const 1)
     )
     (i32.const 255)
    )
   )
   ;;@ overflow.ts:89:2
   (if
    (i32.eqz
     ;;@ overflow.ts:89:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:89:16
      (i32.const 0)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 89)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:91:2
   (set_local $1
    ;;@ overflow.ts:91:8
    (tee_local $0
     (i32.and
      (i32.sub
       ;;@ overflow.ts:91:10
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 255)
     )
    )
   )
   ;;@ overflow.ts:92:2
   (if
    (i32.eqz
     ;;@ overflow.ts:92:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:92:16
      (i32.const 255)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 92)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:94:2
   (set_local $1
    ;;@ overflow.ts:94:8
    (tee_local $0
     (i32.and
      (i32.add
       ;;@ overflow.ts:94:10
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 255)
     )
    )
   )
   ;;@ overflow.ts:95:2
   (if
    (i32.eqz
     ;;@ overflow.ts:95:9
     (i32.eq
      (get_local $0)
      ;;@ overflow.ts:95:16
      (i32.const 0)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 95)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:97:2
   (if
    (i32.eqz
     ;;@ overflow.ts:97:9
     (i32.eq
      (i32.and
       (i32.sub
        (get_local $0)
        ;;@ overflow.ts:97:15
        (i32.const 1)
       )
       (i32.const 255)
      )
      ;;@ overflow.ts:97:20
      (i32.const 255)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 97)
      (i32.const 2)
     )
     (unreachable)
    )
   )
  )
  ;;@ overflow.ts:101:0
  (block
   ;;@ overflow.ts:102:2
   (set_local $1
    ;;@ overflow.ts:102:17
    (i32.const 0)
   )
   ;;@ overflow.ts:103:2
   (nop)
   ;;@ overflow.ts:105:2
   (set_local $1
    (i32.and
     (i32.sub
      (get_local $1)
      (i32.const 1)
     )
     (i32.const 65535)
    )
   )
   ;;@ overflow.ts:106:2
   (if
    (i32.eqz
     ;;@ overflow.ts:106:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:106:16
      (i32.const 65535)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 106)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:108:2
   (set_local $1
    (i32.and
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
     (i32.const 65535)
    )
   )
   ;;@ overflow.ts:109:2
   (if
    (i32.eqz
     ;;@ overflow.ts:109:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:109:16
      (i32.const 0)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 109)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:111:2
   (set_local $0
    ;;@ overflow.ts:111:8
    (block (result i32)
     (set_local $2
      (get_local $1)
     )
     (set_local $1
      (i32.and
       (i32.sub
        (get_local $2)
        (i32.const 1)
       )
       (i32.const 65535)
      )
     )
     (get_local $2)
    )
   )
   ;;@ overflow.ts:112:2
   (if
    (i32.eqz
     ;;@ overflow.ts:112:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:112:16
      (i32.const 65535)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 112)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:114:2
   (set_local $0
    ;;@ overflow.ts:114:8
    (block (result i32)
     (set_local $2
      (get_local $1)
     )
     (set_local $1
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
       (i32.const 65535)
      )
     )
     (get_local $2)
    )
   )
   ;;@ overflow.ts:115:2
   (if
    (i32.eqz
     ;;@ overflow.ts:115:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:115:16
      (i32.const 0)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 115)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:117:2
   (set_local $1
    (i32.and
     (i32.sub
      ;;@ overflow.ts:117:4
      (get_local $1)
      (i32.const 1)
     )
     (i32.const 65535)
    )
   )
   ;;@ overflow.ts:118:2
   (if
    (i32.eqz
     ;;@ overflow.ts:118:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:118:16
      (i32.const 65535)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 118)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:120:2
   (set_local $1
    (i32.and
     (i32.add
      ;;@ overflow.ts:120:4
      (get_local $1)
      (i32.const 1)
     )
     (i32.const 65535)
    )
   )
   ;;@ overflow.ts:121:2
   (if
    (i32.eqz
     ;;@ overflow.ts:121:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:121:16
      (i32.const 0)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 121)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:123:2
   (set_local $0
    ;;@ overflow.ts:123:8
    (tee_local $1
     (i32.and
      (i32.sub
       ;;@ overflow.ts:123:10
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 65535)
     )
    )
   )
   ;;@ overflow.ts:124:2
   (if
    (i32.eqz
     ;;@ overflow.ts:124:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:124:16
      (i32.const 65535)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 124)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:126:2
   (set_local $0
    ;;@ overflow.ts:126:8
    (tee_local $1
     (i32.and
      (i32.add
       ;;@ overflow.ts:126:10
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 65535)
     )
    )
   )
   ;;@ overflow.ts:127:2
   (if
    (i32.eqz
     ;;@ overflow.ts:127:9
     (i32.eq
      (get_local $1)
      ;;@ overflow.ts:127:16
      (i32.const 0)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 127)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   ;;@ overflow.ts:129:2
   (if
    (i32.eqz
     ;;@ overflow.ts:129:9
     (i32.eq
      (i32.and
       (i32.sub
        (get_local $1)
        ;;@ overflow.ts:129:15
        (i32.const 1)
       )
       (i32.const 65535)
      )
      ;;@ overflow.ts:129:20
      (i32.const 65535)
     )
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 129)
      (i32.const 2)
     )
     (unreachable)
    )
   )
  )
 )
)
