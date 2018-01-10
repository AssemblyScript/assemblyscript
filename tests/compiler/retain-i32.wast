(module
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (global $i8.MAX_VALUE i32 (i32.const 127))
 (global $i8.MIN_VALUE i32 (i32.const -128))
 (global $u8.MAX_VALUE i32 (i32.const 255))
 (global $i16.MIN_VALUE i32 (i32.const -32768))
 (global $i16.MAX_VALUE i32 (i32.const 32767))
 (global $u16.MAX_VALUE i32 (i32.const 65535))
 (global $i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $u32.MAX_VALUE i32 (i32.const -1))
 (global $retain-i32/si (mut i32) (i32.const 0))
 (global $retain-i32/ui (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $retain-i32/test (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.shr_s
      (i32.shl
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
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (i32.sub
        (get_local $0)
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.shr_s
      (i32.shl
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
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (i32.mul
        (get_local $0)
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.shr_s
      (i32.shl
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
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (i32.and
        (get_local $0)
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.shr_s
      (i32.shl
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
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (i32.or
        (get_local $0)
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.shr_s
      (i32.shl
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
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (i32.xor
        (get_local $0)
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.shr_s
      (i32.shl
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
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (i32.shl
        (get_local $0)
        (get_local $1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.shr_s
      (i32.shl
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
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
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
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
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
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
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
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.and
      (i32.and
       (get_local $0)
       (get_local $1)
      )
      (i32.const 255)
     )
     (i32.and
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
      (i32.const 255)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.and
      (i32.or
       (get_local $0)
       (get_local $1)
      )
      (i32.const 255)
     )
     (i32.and
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
      (i32.const 255)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.and
      (i32.xor
       (get_local $0)
       (get_local $1)
      )
      (i32.const 255)
     )
     (i32.and
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
      (i32.const 255)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
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
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
   (i32.const 127)
  )
  (call $retain-i32/test
   (i32.const 127)
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
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
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
   (i32.const -128)
  )
  (call $retain-i32/test
   (i32.const -128)
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
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
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
   (i32.const 255)
  )
  (call $retain-i32/test
   (i32.const 255)
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
  )
  (call $retain-i32/test
   (i32.const 255)
   (i32.const 255)
  )
  (block $break|0
   (block
    (set_local $0
     (i32.const -128)
    )
   )
   (loop $continue|0
    (if
     (i32.le_s
      (get_local $0)
      (i32.const 255)
     )
     (block
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
        (i32.sub
         (i32.const 0)
         (i32.const 1)
        )
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
  )
  (set_global $retain-i32/si
   (i32.shr_s
    (i32.shl
     (i32.add
      (i32.add
       (i32.const 127)
       (i32.const 127)
      )
      (i32.const 1)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.shr_s
      (i32.shl
       (i32.sub
        (i32.const 0)
        (i32.const 1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.shr_s
    (i32.shl
     (i32.sub
      (i32.sub
       (i32.const 127)
       (i32.const 1)
      )
      (i32.const 127)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.shr_s
      (i32.shl
       (i32.sub
        (i32.const 0)
        (i32.const 1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.shr_s
    (i32.shl
     (i32.mul
      (i32.const 127)
      (i32.const 2)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.shr_s
      (i32.shl
       (i32.sub
        (i32.const 0)
        (i32.const 2)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.shr_s
    (i32.shl
     (i32.sub
      (i32.const 0)
      (i32.shr_s
       (i32.shl
        (i32.sub
         (i32.const 0)
         (i32.const -128)
        )
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
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.shr_s
      (i32.shl
       (i32.sub
        (i32.const 0)
        (i32.const -128)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.shr_s
    (i32.shl
     (i32.mul
      (i32.sub
       (i32.const 0)
       (i32.const -128)
      )
      (i32.sub
       (i32.const 0)
       (i32.const 1)
      )
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.shr_s
      (i32.shl
       (i32.sub
        (i32.const 0)
        (i32.const -128)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.shr_s
    (i32.shl
     (i32.div_s
      (i32.const 127)
      (i32.shr_s
       (i32.shl
        (i32.sub
         (i32.const 0)
         (i32.const 1)
        )
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
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.shr_s
      (i32.shl
       (i32.sub
        (i32.const 0)
        (i32.const 127)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.shr_s
    (i32.shl
     (i32.div_s
      (i32.shr_s
       (i32.shl
        (i32.sub
         (i32.const 0)
         (i32.const -128)
        )
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.shr_s
       (i32.shl
        (i32.sub
         (i32.const 0)
         (i32.const 1)
        )
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
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.shr_s
      (i32.shl
       (i32.sub
        (i32.const 0)
        (i32.const -128)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.rem_s
    (i32.const 127)
    (i32.const 2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.rem_s
    (i32.const 1)
    (i32.const 127)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.rem_s
    (i32.shr_s
     (i32.shl
      (i32.sub
       (i32.const 0)
       (i32.const -128)
      )
      (i32.const 24)
     )
     (i32.const 24)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/si
   (i32.rem_s
    (i32.const 1)
    (i32.shr_s
     (i32.shl
      (i32.sub
       (i32.const 0)
       (i32.const -128)
      )
      (i32.const 24)
     )
     (i32.const 24)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/si)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.and
    (i32.add
     (i32.add
      (i32.const 255)
      (i32.const 255)
     )
     (i32.const 1)
    )
    (i32.const 255)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/ui)
     (i32.const 255)
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.and
    (i32.sub
     (i32.sub
      (i32.const 255)
      (i32.const 1)
     )
     (i32.const 255)
    )
    (i32.const 255)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/ui)
     (i32.const 255)
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.and
    (i32.mul
     (i32.const 255)
     (i32.const 2)
    )
    (i32.const 255)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/ui)
     (i32.const 254)
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.and
    (i32.mul
     (i32.const 255)
     (i32.const 255)
    )
    (i32.const 255)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/ui)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.and
    (i32.div_u
     (i32.const 255)
     (i32.const 255)
    )
    (i32.const 255)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/ui)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.rem_u
    (i32.const 255)
    (i32.const 2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/ui)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (set_global $retain-i32/ui
   (i32.rem_u
    (i32.const 255)
    (i32.const 255)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $retain-i32/ui)
     (i32.const 0)
    )
   )
   (unreachable)
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  FUNCTION_PROTOTYPE: retain-i32/test
  GLOBAL: retain-i32/si
  GLOBAL: retain-i32/ui
[program.exports]
  
;)
