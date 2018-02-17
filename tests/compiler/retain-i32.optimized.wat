(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $retain-i32/si (mut i32) (i32.const 0))
 (global $retain-i32/ui (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 4) "\0d\00\00\00r\00e\00t\00a\00i\00n\00-\00i\003\002\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $retain-i32/test (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.ne
    (i32.and
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.add
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 24)
       )
       (i32.const 24)
      )
     )
     (i32.const 255)
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
  (if
   (i32.ne
    (i32.and
     (i32.sub
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.sub
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 24)
       )
       (i32.const 24)
      )
     )
     (i32.const 255)
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
  (if
   (i32.ne
    (i32.and
     (i32.mul
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.mul
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 24)
       )
       (i32.const 24)
      )
     )
     (i32.const 255)
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
  (if
   (i32.ne
    (i32.and
     (i32.and
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.and
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 24)
       )
       (i32.const 24)
      )
     )
     (i32.const 255)
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
  (if
   (i32.ne
    (i32.and
     (i32.or
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.or
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 24)
       )
       (i32.const 24)
      )
     )
     (i32.const 255)
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
  (if
   (i32.ne
    (i32.and
     (i32.xor
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.xor
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 24)
       )
       (i32.const 24)
      )
     )
     (i32.const 255)
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
  (if
   (i32.ne
    (i32.and
     (i32.shl
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.shl
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 24)
       )
       (i32.const 24)
      )
     )
     (i32.const 255)
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
  (if
   (i32.ne
    (i32.and
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.add
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.and
       (get_local $1)
       (i32.const 255)
      )
     )
     (i32.const 255)
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
  (if
   (i32.ne
    (i32.and
     (i32.sub
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.sub
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.and
       (get_local $1)
       (i32.const 255)
      )
     )
     (i32.const 255)
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
  (if
   (i32.ne
    (i32.and
     (i32.mul
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.mul
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.and
       (get_local $1)
       (i32.const 255)
      )
     )
     (i32.const 255)
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
  (if
   (i32.ne
    (i32.and
     (i32.and
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.and
      (get_local $1)
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
  (if
   (i32.ne
    (i32.and
     (i32.or
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.or
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.and
      (get_local $1)
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
  (if
   (i32.ne
    (i32.and
     (i32.xor
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.xor
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.and
      (get_local $1)
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
  (if
   (i32.ne
    (i32.and
     (i32.shl
      (get_local $0)
      (get_local $1)
     )
     (i32.const 255)
    )
    (i32.and
     (i32.shl
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.and
       (get_local $1)
       (i32.const 255)
      )
     )
     (i32.const 255)
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
  (call $retain-i32/test
   (i32.const 0)
   (i32.const 127)
  )
  (call $retain-i32/test
   (i32.const 127)
   (i32.const 0)
  )
  (call $retain-i32/test
   (i32.const 1)
   (i32.const 127)
  )
  (call $retain-i32/test
   (i32.const 127)
   (i32.const 1)
  )
  (call $retain-i32/test
   (i32.const -1)
   (i32.const 127)
  )
  (call $retain-i32/test
   (i32.const 127)
   (i32.const -1)
  )
  (call $retain-i32/test
   (i32.const 0)
   (i32.const -128)
  )
  (call $retain-i32/test
   (i32.const -128)
   (i32.const 0)
  )
  (call $retain-i32/test
   (i32.const 1)
   (i32.const -128)
  )
  (call $retain-i32/test
   (i32.const -128)
   (i32.const 1)
  )
  (call $retain-i32/test
   (i32.const -1)
   (i32.const -128)
  )
  (call $retain-i32/test
   (i32.const -128)
   (i32.const -1)
  )
  (call $retain-i32/test
   (i32.const 127)
   (i32.const 127)
  )
  (call $retain-i32/test
   (i32.const -128)
   (i32.const -128)
  )
  (call $retain-i32/test
   (i32.const 127)
   (i32.const -128)
  )
  (call $retain-i32/test
   (i32.const -128)
   (i32.const 127)
  )
  (call $retain-i32/test
   (i32.const 0)
   (i32.const 255)
  )
  (call $retain-i32/test
   (i32.const 255)
   (i32.const 0)
  )
  (call $retain-i32/test
   (i32.const 1)
   (i32.const 255)
  )
  (call $retain-i32/test
   (i32.const 255)
   (i32.const 1)
  )
  (call $retain-i32/test
   (i32.const -1)
   (i32.const 255)
  )
  (call $retain-i32/test
   (i32.const 255)
   (i32.const -1)
  )
  (call $retain-i32/test
   (i32.const 255)
   (i32.const 255)
  )
  (set_local $0
   (i32.const -128)
  )
  (loop $continue|0
   (if
    (i32.le_s
     (get_local $0)
     (i32.const 255)
    )
    (block
     (call $retain-i32/test
      (i32.const 0)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const 1)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const -1)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const -128)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const 127)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const 255)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const -32768)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const 32767)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const 65535)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const 2147483647)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const -2147483648)
      (get_local $0)
     )
     (call $retain-i32/test
      (i32.const -1)
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (set_global $retain-i32/si
   (i32.const -1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -1)
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
  (set_global $retain-i32/si
   (i32.const -1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -1)
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
  (set_global $retain-i32/si
   (i32.const -2)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -2)
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
  (set_global $retain-i32/si
   (i32.const -128)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -128)
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
  (set_global $retain-i32/si
   (i32.const -128)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -128)
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
  (set_global $retain-i32/si
   (i32.const -127)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -127)
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
  (set_global $retain-i32/si
   (i32.const -128)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -128)
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
  (set_global $retain-i32/si
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const 1)
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
  (set_global $retain-i32/si
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const 1)
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
  (set_global $retain-i32/si
   (i32.const 0)
  )
  (if
   (get_global $retain-i32/si)
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
  (set_global $retain-i32/si
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const 1)
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
  (set_global $retain-i32/ui
   (i32.const 255)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 255)
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
  (set_global $retain-i32/ui
   (i32.const 255)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 255)
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
  (set_global $retain-i32/ui
   (i32.const 254)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 254)
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
  (set_global $retain-i32/ui
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 1)
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
  (set_global $retain-i32/ui
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 1)
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
  (set_global $retain-i32/ui
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 1)
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
  (set_global $retain-i32/ui
   (i32.const 0)
  )
  (if
   (get_global $retain-i32/ui)
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
