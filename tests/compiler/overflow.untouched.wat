(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $HEAP_BASE i32 (i32.const 36))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (block
   (set_local $0
    (i32.const 127)
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.const -128)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 10)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (i32.sub
     (get_local $0)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.const 127)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 13)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (block (result i32)
     (set_local $2
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $2)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.const -128)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 16)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (block (result i32)
     (set_local $2
      (get_local $0)
     )
     (set_local $0
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $2)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.const 127)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 19)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.const -128)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 22)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (i32.sub
     (get_local $0)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.const 127)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 25)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (tee_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.const -128)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 28)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (tee_local $0
     (i32.sub
      (get_local $0)
      (i32.const 1)
     )
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.const 127)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 31)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (if
    (i32.eqz
     (i32.eq
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
      (i32.const -128)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 33)
      (i32.const 2)
     )
     (unreachable)
    )
   )
  )
  (block
   (set_local $1
    (i32.const 32767)
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 16)
      )
      (i32.const -32768)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 42)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (i32.sub
     (get_local $1)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 16)
      )
      (i32.const 32767)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 45)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (block (result i32)
     (set_local $2
      (get_local $1)
     )
     (set_local $1
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $2)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 16)
      )
      (i32.const -32768)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 48)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (block (result i32)
     (set_local $2
      (get_local $1)
     )
     (set_local $1
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $2)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 16)
      )
      (i32.const 32767)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 51)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 16)
      )
      (i32.const -32768)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 54)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (i32.sub
     (get_local $1)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 16)
      )
      (i32.const 32767)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 57)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (tee_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 16)
      )
      (i32.const -32768)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 60)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (tee_local $1
     (i32.sub
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 16)
      )
      (i32.const 32767)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 63)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (if
    (i32.eqz
     (i32.eq
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
      (i32.const -32768)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 65)
      (i32.const 2)
     )
     (unreachable)
    )
   )
  )
  (block
   (set_local $0
    (i32.const 0)
   )
   (set_local $0
    (i32.sub
     (get_local $0)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 255)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 74)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 77)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (block (result i32)
     (set_local $2
      (get_local $0)
     )
     (set_local $0
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $2)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 255)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 80)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (block (result i32)
     (set_local $2
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $2)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 83)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (i32.sub
     (get_local $0)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 255)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 86)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 89)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (tee_local $0
     (i32.sub
      (get_local $0)
      (i32.const 1)
     )
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 255)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 92)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (tee_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 95)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
       (i32.const 255)
      )
      (i32.const 255)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 97)
      (i32.const 2)
     )
     (unreachable)
    )
   )
  )
  (block
   (set_local $1
    (i32.const 0)
   )
   (set_local $1
    (i32.sub
     (get_local $1)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 65535)
      )
      (i32.const 65535)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 106)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 65535)
      )
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 109)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (block (result i32)
     (set_local $2
      (get_local $1)
     )
     (set_local $1
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $2)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 65535)
      )
      (i32.const 65535)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 112)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (block (result i32)
     (set_local $2
      (get_local $1)
     )
     (set_local $1
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $2)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 65535)
      )
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 115)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (i32.sub
     (get_local $1)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 65535)
      )
      (i32.const 65535)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 118)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 65535)
      )
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 121)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (tee_local $1
     (i32.sub
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 65535)
      )
      (i32.const 65535)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 124)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $0
    (tee_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 65535)
      )
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 127)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (i32.and
       (i32.sub
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 65535)
      )
      (i32.const 65535)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 129)
      (i32.const 2)
     )
     (unreachable)
    )
   )
  )
 )
)
