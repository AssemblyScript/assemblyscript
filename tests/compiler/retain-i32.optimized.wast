(module
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (global $retain-i32/si (mut i32) (i32.const 0))
 (global $retain-i32/ui (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $retain-i32/test (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
  )
 )
 (func $start (; 1 ;) (type $v)
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
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.const -1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -1)
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.const -2)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -2)
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.const -128)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -128)
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.const -128)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -128)
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.const -127)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -127)
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.const -128)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const -128)
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.const 0)
  )
  (if
   (get_global $retain-i32/si)
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/si)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.const 255)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 255)
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.const 255)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 255)
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.const 254)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 254)
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $retain-i32/ui)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.const 0)
  )
  (if
   (get_global $retain-i32/ui)
   (unreachable)
  )
 )
)
