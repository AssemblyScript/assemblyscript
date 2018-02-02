(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $v (func))
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memcpy" (func $memcpy/memcpy))
 (export "memory" (memory $0))
 (start $start)
 (func $memcpy/memcpy (; 0 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ memcpy.ts:2:2
  (set_local $3
   ;;@ memcpy.ts:2:12
   (get_local $0)
  )
  ;;@ memcpy.ts:3:2
  (nop)
  ;;@ memcpy.ts:6:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ memcpy.ts:6:9
     (if (result i32)
      (i32.ne
       (get_local $2)
       (i32.const 0)
      )
      ;;@ memcpy.ts:6:14
      (i32.rem_u
       (get_local $1)
       ;;@ memcpy.ts:6:20
       (i32.const 4)
      )
      (get_local $2)
     )
     (block
      (block
       ;;@ memcpy.ts:7:4
       (i32.store8
        ;;@ memcpy.ts:7:14
        (block (result i32)
         (set_local $6
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
        ;;@ memcpy.ts:7:22
        (i32.load8_u
         ;;@ memcpy.ts:7:31
         (block (result i32)
          (set_local $6
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $6)
            (i32.const 1)
           )
          )
          (get_local $6)
         )
        )
       )
       ;;@ memcpy.ts:8:4
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ memcpy.ts:12:2
  (if
   ;;@ memcpy.ts:12:6
   (i32.eq
    (i32.rem_u
     (get_local $0)
     ;;@ memcpy.ts:12:13
     (i32.const 4)
    )
    ;;@ memcpy.ts:12:18
    (i32.const 0)
   )
   ;;@ memcpy.ts:12:21
   (block
    (block $break|1
     (loop $continue|1
      (if
       ;;@ memcpy.ts:13:11
       (i32.ge_u
        (get_local $2)
        ;;@ memcpy.ts:13:16
        (i32.const 16)
       )
       (block
        (block
         ;;@ memcpy.ts:14:6
         (i32.store
          ;;@ memcpy.ts:14:17
          (get_local $0)
          ;;@ memcpy.ts:14:28
          (i32.load
           ;;@ memcpy.ts:14:38
           (get_local $1)
          )
         )
         ;;@ memcpy.ts:15:6
         (i32.store
          ;;@ memcpy.ts:15:17
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:15:25
           (i32.const 4)
          )
          ;;@ memcpy.ts:15:28
          (i32.load
           ;;@ memcpy.ts:15:38
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:15:45
            (i32.const 4)
           )
          )
         )
         ;;@ memcpy.ts:16:6
         (i32.store
          ;;@ memcpy.ts:16:17
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:16:25
           (i32.const 8)
          )
          ;;@ memcpy.ts:16:28
          (i32.load
           ;;@ memcpy.ts:16:38
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:16:45
            (i32.const 8)
           )
          )
         )
         ;;@ memcpy.ts:17:6
         (i32.store
          ;;@ memcpy.ts:17:17
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:17:24
           (i32.const 12)
          )
          ;;@ memcpy.ts:17:28
          (i32.load
           ;;@ memcpy.ts:17:38
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:17:44
            (i32.const 12)
           )
          )
         )
         ;;@ memcpy.ts:18:6
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ memcpy.ts:18:13
           (i32.const 16)
          )
         )
         ;;@ memcpy.ts:18:17
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:18:25
           (i32.const 16)
          )
         )
         ;;@ memcpy.ts:18:29
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ memcpy.ts:18:34
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ memcpy.ts:20:4
    (if
     ;;@ memcpy.ts:20:8
     (i32.and
      (get_local $2)
      ;;@ memcpy.ts:20:12
      (i32.const 8)
     )
     ;;@ memcpy.ts:20:15
     (block
      ;;@ memcpy.ts:21:6
      (i32.store
       ;;@ memcpy.ts:21:17
       (get_local $0)
       ;;@ memcpy.ts:21:27
       (i32.load
        ;;@ memcpy.ts:21:37
        (get_local $1)
       )
      )
      ;;@ memcpy.ts:22:6
      (i32.store
       ;;@ memcpy.ts:22:17
       (i32.add
        (get_local $0)
        ;;@ memcpy.ts:22:24
        (i32.const 4)
       )
       ;;@ memcpy.ts:22:27
       (i32.load
        ;;@ memcpy.ts:22:37
        (i32.add
         (get_local $1)
         ;;@ memcpy.ts:22:43
         (i32.const 4)
        )
       )
      )
      ;;@ memcpy.ts:23:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ memcpy.ts:23:14
        (i32.const 8)
       )
      )
      ;;@ memcpy.ts:23:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ memcpy.ts:23:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ memcpy.ts:25:4
    (if
     ;;@ memcpy.ts:25:8
     (i32.and
      (get_local $2)
      ;;@ memcpy.ts:25:12
      (i32.const 4)
     )
     ;;@ memcpy.ts:25:15
     (block
      ;;@ memcpy.ts:26:6
      (i32.store
       ;;@ memcpy.ts:26:17
       (get_local $0)
       ;;@ memcpy.ts:26:23
       (i32.load
        ;;@ memcpy.ts:26:33
        (get_local $1)
       )
      )
      ;;@ memcpy.ts:27:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ memcpy.ts:27:14
        (i32.const 4)
       )
      )
      ;;@ memcpy.ts:27:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ memcpy.ts:27:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ memcpy.ts:29:4
    (if
     ;;@ memcpy.ts:29:8
     (i32.and
      (get_local $2)
      ;;@ memcpy.ts:29:12
      (i32.const 2)
     )
     ;;@ memcpy.ts:29:15
     (block
      ;;@ memcpy.ts:30:6
      (i32.store16
       ;;@ memcpy.ts:30:17
       (get_local $0)
       ;;@ memcpy.ts:30:23
       (i32.load16_u
        ;;@ memcpy.ts:30:33
        (get_local $1)
       )
      )
      ;;@ memcpy.ts:31:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ memcpy.ts:31:14
        (i32.const 2)
       )
      )
      ;;@ memcpy.ts:31:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ memcpy.ts:31:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ memcpy.ts:33:4
    (if
     ;;@ memcpy.ts:33:8
     (i32.and
      (get_local $2)
      ;;@ memcpy.ts:33:12
      (i32.const 1)
     )
     ;;@ memcpy.ts:34:6
     (i32.store8
      ;;@ memcpy.ts:34:16
      (block (result i32)
       (set_local $6
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      ;;@ memcpy.ts:34:24
      (i32.load8_u
       ;;@ memcpy.ts:34:33
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
    )
    ;;@ memcpy.ts:36:11
    (return
     (get_local $3)
    )
   )
  )
  ;;@ memcpy.ts:41:2
  (if
   ;;@ memcpy.ts:41:6
   (i32.ge_u
    (get_local $2)
    ;;@ memcpy.ts:41:11
    (i32.const 32)
   )
   ;;@ memcpy.ts:42:4
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $6
        ;;@ memcpy.ts:42:12
        (i32.rem_u
         (get_local $0)
         ;;@ memcpy.ts:42:19
         (i32.const 4)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $6)
         ;;@ memcpy.ts:44:11
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $6)
         ;;@ memcpy.ts:62:11
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $6)
         ;;@ memcpy.ts:79:11
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      ;;@ memcpy.ts:45:8
      (set_local $4
       ;;@ memcpy.ts:45:12
       (i32.load
        ;;@ memcpy.ts:45:22
        (get_local $1)
       )
      )
      ;;@ memcpy.ts:46:8
      (i32.store8
       ;;@ memcpy.ts:46:18
       (block (result i32)
        (set_local $6
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       ;;@ memcpy.ts:46:26
       (i32.load8_u
        ;;@ memcpy.ts:46:35
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
       )
      )
      ;;@ memcpy.ts:47:8
      (i32.store8
       ;;@ memcpy.ts:47:18
       (block (result i32)
        (set_local $6
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       ;;@ memcpy.ts:47:26
       (i32.load8_u
        ;;@ memcpy.ts:47:35
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
       )
      )
      ;;@ memcpy.ts:48:8
      (i32.store8
       ;;@ memcpy.ts:48:18
       (block (result i32)
        (set_local $6
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       ;;@ memcpy.ts:48:26
       (i32.load8_u
        ;;@ memcpy.ts:48:35
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
       )
      )
      ;;@ memcpy.ts:49:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ memcpy.ts:49:13
        (i32.const 3)
       )
      )
      ;;@ memcpy.ts:50:8
      (block $break|3
       (loop $continue|3
        (if
         ;;@ memcpy.ts:50:15
         (i32.ge_u
          (get_local $2)
          ;;@ memcpy.ts:50:20
          (i32.const 17)
         )
         (block
          (block
           ;;@ memcpy.ts:51:10
           (set_local $5
            ;;@ memcpy.ts:51:14
            (i32.load
             ;;@ memcpy.ts:51:24
             (i32.add
              (get_local $1)
              ;;@ memcpy.ts:51:30
              (i32.const 1)
             )
            )
           )
           ;;@ memcpy.ts:52:10
           (i32.store
            ;;@ memcpy.ts:52:21
            (get_local $0)
            ;;@ memcpy.ts:52:27
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ memcpy.ts:52:32
              (i32.const 24)
             )
             ;;@ memcpy.ts:52:37
             (i32.shl
              (get_local $5)
              ;;@ memcpy.ts:52:42
              (i32.const 8)
             )
            )
           )
           ;;@ memcpy.ts:53:10
           (set_local $4
            ;;@ memcpy.ts:53:14
            (i32.load
             ;;@ memcpy.ts:53:24
             (i32.add
              (get_local $1)
              ;;@ memcpy.ts:53:30
              (i32.const 5)
             )
            )
           )
           ;;@ memcpy.ts:54:10
           (i32.store
            ;;@ memcpy.ts:54:21
            (i32.add
             (get_local $0)
             ;;@ memcpy.ts:54:28
             (i32.const 4)
            )
            ;;@ memcpy.ts:54:31
            (i32.or
             (i32.shr_u
              (get_local $5)
              ;;@ memcpy.ts:54:36
              (i32.const 24)
             )
             ;;@ memcpy.ts:54:41
             (i32.shl
              (get_local $4)
              ;;@ memcpy.ts:54:46
              (i32.const 8)
             )
            )
           )
           ;;@ memcpy.ts:55:10
           (set_local $5
            ;;@ memcpy.ts:55:14
            (i32.load
             ;;@ memcpy.ts:55:24
             (i32.add
              (get_local $1)
              ;;@ memcpy.ts:55:30
              (i32.const 9)
             )
            )
           )
           ;;@ memcpy.ts:56:10
           (i32.store
            ;;@ memcpy.ts:56:21
            (i32.add
             (get_local $0)
             ;;@ memcpy.ts:56:28
             (i32.const 8)
            )
            ;;@ memcpy.ts:56:31
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ memcpy.ts:56:36
              (i32.const 24)
             )
             ;;@ memcpy.ts:56:41
             (i32.shl
              (get_local $5)
              ;;@ memcpy.ts:56:46
              (i32.const 8)
             )
            )
           )
           ;;@ memcpy.ts:57:10
           (set_local $4
            ;;@ memcpy.ts:57:14
            (i32.load
             ;;@ memcpy.ts:57:24
             (i32.add
              (get_local $1)
              ;;@ memcpy.ts:57:30
              (i32.const 13)
             )
            )
           )
           ;;@ memcpy.ts:58:10
           (i32.store
            ;;@ memcpy.ts:58:21
            (i32.add
             (get_local $0)
             ;;@ memcpy.ts:58:28
             (i32.const 12)
            )
            ;;@ memcpy.ts:58:32
            (i32.or
             (i32.shr_u
              (get_local $5)
              ;;@ memcpy.ts:58:37
              (i32.const 24)
             )
             ;;@ memcpy.ts:58:42
             (i32.shl
              (get_local $4)
              ;;@ memcpy.ts:58:47
              (i32.const 8)
             )
            )
           )
           ;;@ memcpy.ts:59:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ memcpy.ts:59:17
             (i32.const 16)
            )
           )
           ;;@ memcpy.ts:59:21
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ memcpy.ts:59:29
             (i32.const 16)
            )
           )
           ;;@ memcpy.ts:59:33
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ memcpy.ts:59:38
             (i32.const 16)
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      ;;@ memcpy.ts:61:8
      (br $break|2)
     )
     ;;@ memcpy.ts:63:8
     (set_local $4
      ;;@ memcpy.ts:63:12
      (i32.load
       ;;@ memcpy.ts:63:22
       (get_local $1)
      )
     )
     ;;@ memcpy.ts:64:8
     (i32.store8
      ;;@ memcpy.ts:64:18
      (block (result i32)
       (set_local $6
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      ;;@ memcpy.ts:64:26
      (i32.load8_u
       ;;@ memcpy.ts:64:35
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
     ;;@ memcpy.ts:65:8
     (i32.store8
      ;;@ memcpy.ts:65:18
      (block (result i32)
       (set_local $6
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      ;;@ memcpy.ts:65:26
      (i32.load8_u
       ;;@ memcpy.ts:65:35
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
     ;;@ memcpy.ts:66:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ memcpy.ts:66:13
       (i32.const 2)
      )
     )
     ;;@ memcpy.ts:67:8
     (block $break|4
      (loop $continue|4
       (if
        ;;@ memcpy.ts:67:15
        (i32.ge_u
         (get_local $2)
         ;;@ memcpy.ts:67:20
         (i32.const 18)
        )
        (block
         (block
          ;;@ memcpy.ts:68:10
          (set_local $5
           ;;@ memcpy.ts:68:14
           (i32.load
            ;;@ memcpy.ts:68:24
            (i32.add
             (get_local $1)
             ;;@ memcpy.ts:68:30
             (i32.const 2)
            )
           )
          )
          ;;@ memcpy.ts:69:10
          (i32.store
           ;;@ memcpy.ts:69:21
           (get_local $0)
           ;;@ memcpy.ts:69:27
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ memcpy.ts:69:32
             (i32.const 16)
            )
            ;;@ memcpy.ts:69:37
            (i32.shl
             (get_local $5)
             ;;@ memcpy.ts:69:42
             (i32.const 16)
            )
           )
          )
          ;;@ memcpy.ts:70:10
          (set_local $4
           ;;@ memcpy.ts:70:14
           (i32.load
            ;;@ memcpy.ts:70:24
            (i32.add
             (get_local $1)
             ;;@ memcpy.ts:70:30
             (i32.const 6)
            )
           )
          )
          ;;@ memcpy.ts:71:10
          (i32.store
           ;;@ memcpy.ts:71:21
           (i32.add
            (get_local $0)
            ;;@ memcpy.ts:71:28
            (i32.const 4)
           )
           ;;@ memcpy.ts:71:31
           (i32.or
            (i32.shr_u
             (get_local $5)
             ;;@ memcpy.ts:71:36
             (i32.const 16)
            )
            ;;@ memcpy.ts:71:41
            (i32.shl
             (get_local $4)
             ;;@ memcpy.ts:71:46
             (i32.const 16)
            )
           )
          )
          ;;@ memcpy.ts:72:10
          (set_local $5
           ;;@ memcpy.ts:72:14
           (i32.load
            ;;@ memcpy.ts:72:24
            (i32.add
             (get_local $1)
             ;;@ memcpy.ts:72:30
             (i32.const 10)
            )
           )
          )
          ;;@ memcpy.ts:73:10
          (i32.store
           ;;@ memcpy.ts:73:21
           (i32.add
            (get_local $0)
            ;;@ memcpy.ts:73:28
            (i32.const 8)
           )
           ;;@ memcpy.ts:73:31
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ memcpy.ts:73:36
             (i32.const 16)
            )
            ;;@ memcpy.ts:73:41
            (i32.shl
             (get_local $5)
             ;;@ memcpy.ts:73:46
             (i32.const 16)
            )
           )
          )
          ;;@ memcpy.ts:74:10
          (set_local $4
           ;;@ memcpy.ts:74:14
           (i32.load
            ;;@ memcpy.ts:74:24
            (i32.add
             (get_local $1)
             ;;@ memcpy.ts:74:30
             (i32.const 14)
            )
           )
          )
          ;;@ memcpy.ts:75:10
          (i32.store
           ;;@ memcpy.ts:75:21
           (i32.add
            (get_local $0)
            ;;@ memcpy.ts:75:28
            (i32.const 12)
           )
           ;;@ memcpy.ts:75:32
           (i32.or
            (i32.shr_u
             (get_local $5)
             ;;@ memcpy.ts:75:37
             (i32.const 16)
            )
            ;;@ memcpy.ts:75:42
            (i32.shl
             (get_local $4)
             ;;@ memcpy.ts:75:47
             (i32.const 16)
            )
           )
          )
          ;;@ memcpy.ts:76:10
          (set_local $1
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:76:17
            (i32.const 16)
           )
          )
          ;;@ memcpy.ts:76:21
          (set_local $0
           (i32.add
            (get_local $0)
            ;;@ memcpy.ts:76:29
            (i32.const 16)
           )
          )
          ;;@ memcpy.ts:76:33
          (set_local $2
           (i32.sub
            (get_local $2)
            ;;@ memcpy.ts:76:38
            (i32.const 16)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
     ;;@ memcpy.ts:78:8
     (br $break|2)
    )
    ;;@ memcpy.ts:80:8
    (set_local $4
     ;;@ memcpy.ts:80:12
     (i32.load
      ;;@ memcpy.ts:80:22
      (get_local $1)
     )
    )
    ;;@ memcpy.ts:81:8
    (i32.store8
     ;;@ memcpy.ts:81:18
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:81:26
     (i32.load8_u
      ;;@ memcpy.ts:81:35
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:82:8
    (set_local $2
     (i32.sub
      (get_local $2)
      ;;@ memcpy.ts:82:13
      (i32.const 1)
     )
    )
    ;;@ memcpy.ts:83:8
    (block $break|5
     (loop $continue|5
      (if
       ;;@ memcpy.ts:83:15
       (i32.ge_u
        (get_local $2)
        ;;@ memcpy.ts:83:20
        (i32.const 19)
       )
       (block
        (block
         ;;@ memcpy.ts:84:10
         (set_local $5
          ;;@ memcpy.ts:84:14
          (i32.load
           ;;@ memcpy.ts:84:24
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:84:30
            (i32.const 3)
           )
          )
         )
         ;;@ memcpy.ts:85:10
         (i32.store
          ;;@ memcpy.ts:85:21
          (get_local $0)
          ;;@ memcpy.ts:85:27
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ memcpy.ts:85:32
            (i32.const 8)
           )
           ;;@ memcpy.ts:85:36
           (i32.shl
            (get_local $5)
            ;;@ memcpy.ts:85:41
            (i32.const 24)
           )
          )
         )
         ;;@ memcpy.ts:86:10
         (set_local $4
          ;;@ memcpy.ts:86:14
          (i32.load
           ;;@ memcpy.ts:86:24
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:86:30
            (i32.const 7)
           )
          )
         )
         ;;@ memcpy.ts:87:10
         (i32.store
          ;;@ memcpy.ts:87:21
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:87:28
           (i32.const 4)
          )
          ;;@ memcpy.ts:87:31
          (i32.or
           (i32.shr_u
            (get_local $5)
            ;;@ memcpy.ts:87:36
            (i32.const 8)
           )
           ;;@ memcpy.ts:87:40
           (i32.shl
            (get_local $4)
            ;;@ memcpy.ts:87:45
            (i32.const 24)
           )
          )
         )
         ;;@ memcpy.ts:88:10
         (set_local $5
          ;;@ memcpy.ts:88:14
          (i32.load
           ;;@ memcpy.ts:88:24
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:88:30
            (i32.const 11)
           )
          )
         )
         ;;@ memcpy.ts:89:10
         (i32.store
          ;;@ memcpy.ts:89:21
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:89:28
           (i32.const 8)
          )
          ;;@ memcpy.ts:89:31
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ memcpy.ts:89:36
            (i32.const 8)
           )
           ;;@ memcpy.ts:89:40
           (i32.shl
            (get_local $5)
            ;;@ memcpy.ts:89:45
            (i32.const 24)
           )
          )
         )
         ;;@ memcpy.ts:90:10
         (set_local $4
          ;;@ memcpy.ts:90:14
          (i32.load
           ;;@ memcpy.ts:90:24
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:90:30
            (i32.const 15)
           )
          )
         )
         ;;@ memcpy.ts:91:10
         (i32.store
          ;;@ memcpy.ts:91:21
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:91:28
           (i32.const 12)
          )
          ;;@ memcpy.ts:91:32
          (i32.or
           (i32.shr_u
            (get_local $5)
            ;;@ memcpy.ts:91:37
            (i32.const 8)
           )
           ;;@ memcpy.ts:91:41
           (i32.shl
            (get_local $4)
            ;;@ memcpy.ts:91:46
            (i32.const 24)
           )
          )
         )
         ;;@ memcpy.ts:92:10
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ memcpy.ts:92:17
           (i32.const 16)
          )
         )
         ;;@ memcpy.ts:92:21
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:92:29
           (i32.const 16)
          )
         )
         ;;@ memcpy.ts:92:33
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ memcpy.ts:92:38
           (i32.const 16)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
    ;;@ memcpy.ts:94:8
    (br $break|2)
   )
  )
  ;;@ memcpy.ts:99:2
  (if
   ;;@ memcpy.ts:99:6
   (i32.and
    (get_local $2)
    ;;@ memcpy.ts:99:10
    (i32.const 16)
   )
   ;;@ memcpy.ts:99:14
   (block
    ;;@ memcpy.ts:100:4
    (i32.store8
     ;;@ memcpy.ts:100:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:100:22
     (i32.load8_u
      ;;@ memcpy.ts:100:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:101:4
    (i32.store8
     ;;@ memcpy.ts:101:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:101:22
     (i32.load8_u
      ;;@ memcpy.ts:101:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:102:4
    (i32.store8
     ;;@ memcpy.ts:102:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:102:22
     (i32.load8_u
      ;;@ memcpy.ts:102:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:103:4
    (i32.store8
     ;;@ memcpy.ts:103:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:103:22
     (i32.load8_u
      ;;@ memcpy.ts:103:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:104:4
    (i32.store8
     ;;@ memcpy.ts:104:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:104:22
     (i32.load8_u
      ;;@ memcpy.ts:104:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:105:4
    (i32.store8
     ;;@ memcpy.ts:105:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:105:22
     (i32.load8_u
      ;;@ memcpy.ts:105:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:106:4
    (i32.store8
     ;;@ memcpy.ts:106:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:106:22
     (i32.load8_u
      ;;@ memcpy.ts:106:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:107:4
    (i32.store8
     ;;@ memcpy.ts:107:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:107:22
     (i32.load8_u
      ;;@ memcpy.ts:107:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:108:4
    (i32.store8
     ;;@ memcpy.ts:108:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:108:22
     (i32.load8_u
      ;;@ memcpy.ts:108:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:109:4
    (i32.store8
     ;;@ memcpy.ts:109:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:109:22
     (i32.load8_u
      ;;@ memcpy.ts:109:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:110:4
    (i32.store8
     ;;@ memcpy.ts:110:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:110:22
     (i32.load8_u
      ;;@ memcpy.ts:110:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:111:4
    (i32.store8
     ;;@ memcpy.ts:111:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:111:22
     (i32.load8_u
      ;;@ memcpy.ts:111:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:112:4
    (i32.store8
     ;;@ memcpy.ts:112:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:112:22
     (i32.load8_u
      ;;@ memcpy.ts:112:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:113:4
    (i32.store8
     ;;@ memcpy.ts:113:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:113:22
     (i32.load8_u
      ;;@ memcpy.ts:113:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:114:4
    (i32.store8
     ;;@ memcpy.ts:114:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:114:22
     (i32.load8_u
      ;;@ memcpy.ts:114:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:115:4
    (i32.store8
     ;;@ memcpy.ts:115:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:115:22
     (i32.load8_u
      ;;@ memcpy.ts:115:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
   )
  )
  ;;@ memcpy.ts:117:2
  (if
   ;;@ memcpy.ts:117:6
   (i32.and
    (get_local $2)
    ;;@ memcpy.ts:117:10
    (i32.const 8)
   )
   ;;@ memcpy.ts:117:13
   (block
    ;;@ memcpy.ts:118:4
    (i32.store8
     ;;@ memcpy.ts:118:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:118:22
     (i32.load8_u
      ;;@ memcpy.ts:118:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:119:4
    (i32.store8
     ;;@ memcpy.ts:119:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:119:22
     (i32.load8_u
      ;;@ memcpy.ts:119:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:120:4
    (i32.store8
     ;;@ memcpy.ts:120:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:120:22
     (i32.load8_u
      ;;@ memcpy.ts:120:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:121:4
    (i32.store8
     ;;@ memcpy.ts:121:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:121:22
     (i32.load8_u
      ;;@ memcpy.ts:121:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:122:4
    (i32.store8
     ;;@ memcpy.ts:122:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:122:22
     (i32.load8_u
      ;;@ memcpy.ts:122:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:123:4
    (i32.store8
     ;;@ memcpy.ts:123:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:123:22
     (i32.load8_u
      ;;@ memcpy.ts:123:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:124:4
    (i32.store8
     ;;@ memcpy.ts:124:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:124:22
     (i32.load8_u
      ;;@ memcpy.ts:124:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:125:4
    (i32.store8
     ;;@ memcpy.ts:125:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:125:22
     (i32.load8_u
      ;;@ memcpy.ts:125:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
   )
  )
  ;;@ memcpy.ts:127:2
  (if
   ;;@ memcpy.ts:127:6
   (i32.and
    (get_local $2)
    ;;@ memcpy.ts:127:10
    (i32.const 4)
   )
   ;;@ memcpy.ts:127:13
   (block
    ;;@ memcpy.ts:128:4
    (i32.store8
     ;;@ memcpy.ts:128:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:128:22
     (i32.load8_u
      ;;@ memcpy.ts:128:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:129:4
    (i32.store8
     ;;@ memcpy.ts:129:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:129:22
     (i32.load8_u
      ;;@ memcpy.ts:129:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:130:4
    (i32.store8
     ;;@ memcpy.ts:130:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:130:22
     (i32.load8_u
      ;;@ memcpy.ts:130:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:131:4
    (i32.store8
     ;;@ memcpy.ts:131:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:131:22
     (i32.load8_u
      ;;@ memcpy.ts:131:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
   )
  )
  ;;@ memcpy.ts:133:2
  (if
   ;;@ memcpy.ts:133:6
   (i32.and
    (get_local $2)
    ;;@ memcpy.ts:133:10
    (i32.const 2)
   )
   ;;@ memcpy.ts:133:13
   (block
    ;;@ memcpy.ts:134:4
    (i32.store8
     ;;@ memcpy.ts:134:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:134:22
     (i32.load8_u
      ;;@ memcpy.ts:134:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:135:4
    (i32.store8
     ;;@ memcpy.ts:135:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:135:22
     (i32.load8_u
      ;;@ memcpy.ts:135:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
   )
  )
  ;;@ memcpy.ts:137:2
  (if
   ;;@ memcpy.ts:137:6
   (i32.and
    (get_local $2)
    ;;@ memcpy.ts:137:10
    (i32.const 1)
   )
   ;;@ memcpy.ts:138:4
   (i32.store8
    ;;@ memcpy.ts:138:14
    (block (result i32)
     (set_local $6
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $6)
       (i32.const 1)
      )
     )
     (get_local $6)
    )
    ;;@ memcpy.ts:138:22
    (i32.load8_u
     ;;@ memcpy.ts:138:31
     (block (result i32)
      (set_local $6
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
    )
   )
  )
  ;;@ memcpy.ts:140:9
  (return
   (get_local $3)
  )
 )
 (func $start (; 1 ;) (type $v)
  ;;@ memcpy.ts:144:0
  (i64.store
   ;;@ memcpy.ts:144:11
   (i32.const 8)
   ;;@ memcpy.ts:144:22
   (i64.const 1229782938247303441)
  )
  ;;@ memcpy.ts:145:0
  (i64.store
   ;;@ memcpy.ts:145:11
   (i32.add
    (i32.const 8)
    ;;@ memcpy.ts:145:18
    (i32.const 8)
   )
   ;;@ memcpy.ts:145:22
   (i64.const 2459565876494606882)
  )
  ;;@ memcpy.ts:146:0
  (i64.store
   ;;@ memcpy.ts:146:11
   (i32.add
    (i32.const 8)
    ;;@ memcpy.ts:146:18
    (i32.const 16)
   )
   ;;@ memcpy.ts:146:22
   (i64.const 3689348814741910323)
  )
  ;;@ memcpy.ts:147:0
  (i64.store
   ;;@ memcpy.ts:147:11
   (i32.add
    (i32.const 8)
    ;;@ memcpy.ts:147:18
    (i32.const 24)
   )
   ;;@ memcpy.ts:147:22
   (i64.const 4919131752989213764)
  )
  ;;@ memcpy.ts:150:0
  (set_global $memcpy/dest
   ;;@ memcpy.ts:150:7
   (call $memcpy/memcpy
    ;;@ memcpy.ts:150:14
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:150:21
     (i32.const 1)
    )
    ;;@ memcpy.ts:150:24
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:150:31
     (i32.const 16)
    )
    ;;@ memcpy.ts:150:35
    (i32.const 4)
   )
  )
  ;;@ memcpy.ts:151:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:151:7
    (i32.eq
     (get_global $memcpy/dest)
     ;;@ memcpy.ts:151:15
     (i32.add
      (i32.const 8)
      ;;@ memcpy.ts:151:22
      (i32.const 1)
     )
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:152:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:152:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:152:17
      (i32.const 8)
     )
     ;;@ memcpy.ts:152:26
     (i64.const 1229783084848853777)
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:154:0
  (set_global $memcpy/dest
   ;;@ memcpy.ts:154:7
   (call $memcpy/memcpy
    ;;@ memcpy.ts:154:14
    (i32.const 8)
    ;;@ memcpy.ts:154:20
    (i32.const 8)
    ;;@ memcpy.ts:154:26
    (i32.const 32)
   )
  )
  ;;@ memcpy.ts:155:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:155:7
    (i32.eq
     (get_global $memcpy/dest)
     ;;@ memcpy.ts:155:15
     (i32.const 8)
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:156:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:156:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:156:17
      (i32.const 8)
     )
     ;;@ memcpy.ts:156:26
     (i64.const 1229783084848853777)
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:157:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:157:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:157:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:157:24
       (i32.const 8)
      )
     )
     ;;@ memcpy.ts:157:30
     (i64.const 2459565876494606882)
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:158:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:158:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:158:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:158:24
       (i32.const 16)
      )
     )
     ;;@ memcpy.ts:158:31
     (i64.const 3689348814741910323)
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:159:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:159:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:159:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:159:24
       (i32.const 24)
      )
     )
     ;;@ memcpy.ts:159:31
     (i64.const 4919131752989213764)
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:161:0
  (set_global $memcpy/dest
   ;;@ memcpy.ts:161:7
   (call $memcpy/memcpy
    ;;@ memcpy.ts:161:14
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:161:21
     (i32.const 5)
    )
    ;;@ memcpy.ts:161:24
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:161:31
     (i32.const 28)
    )
    ;;@ memcpy.ts:161:35
    (i32.const 3)
   )
  )
  ;;@ memcpy.ts:162:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:162:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:162:17
      (i32.const 8)
     )
     ;;@ memcpy.ts:162:26
     (i64.const 4919131679688438545)
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:164:0
  (set_global $memcpy/dest
   ;;@ memcpy.ts:164:7
   (call $memcpy/memcpy
    ;;@ memcpy.ts:164:14
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:164:21
     (i32.const 8)
    )
    ;;@ memcpy.ts:164:24
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:164:31
     (i32.const 16)
    )
    ;;@ memcpy.ts:164:35
    (i32.const 15)
   )
  )
  ;;@ memcpy.ts:165:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:165:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:165:17
      (i32.const 8)
     )
     ;;@ memcpy.ts:165:26
     (i64.const 4919131679688438545)
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:166:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:166:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:166:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:166:24
       (i32.const 8)
      )
     )
     ;;@ memcpy.ts:166:30
     (i64.const 3689348814741910323)
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:167:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:167:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:167:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:167:24
       (i32.const 16)
      )
     )
     ;;@ memcpy.ts:167:31
     (i64.const 3694152654344438852)
    )
   )
   (unreachable)
  )
  ;;@ memcpy.ts:168:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:168:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:168:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:168:24
       (i32.const 24)
      )
     )
     ;;@ memcpy.ts:168:31
     (i64.const 4919131752989213764)
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
  FUNCTION_PROTOTYPE: abort
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
  FUNCTION_PROTOTYPE: memcpy/memcpy
  GLOBAL: memcpy/base
  GLOBAL: memcpy/dest
[program.exports]
  FUNCTION_PROTOTYPE: memcpy/memcpy
;)
