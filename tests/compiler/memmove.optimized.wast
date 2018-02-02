(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $v (func))
 (global $memmove/dest (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $memmove/memmove (; 0 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ memmove.ts:2:2
  (set_local $4
   ;;@ memmove.ts:2:12
   (get_local $0)
  )
  ;;@ memmove.ts:3:2
  (if
   ;;@ memmove.ts:3:6
   (i32.eq
    (get_local $0)
    ;;@ memmove.ts:3:14
    (get_local $1)
   )
   ;;@ memmove.ts:4:11
   (return
    (get_local $4)
   )
  )
  ;;@ memmove.ts:9:2
  (if
   ;;@ memmove.ts:9:6
   (i32.lt_u
    (get_local $0)
    ;;@ memmove.ts:9:13
    (get_local $1)
   )
   ;;@ memmove.ts:9:18
   (block
    ;;@ memmove.ts:10:4
    (if
     ;;@ memmove.ts:10:8
     (i32.eq
      (i32.rem_u
       (get_local $1)
       ;;@ memmove.ts:10:14
       (i32.const 8)
      )
      ;;@ memmove.ts:10:19
      (i32.rem_u
       (get_local $0)
       ;;@ memmove.ts:10:26
       (i32.const 8)
      )
     )
     ;;@ memmove.ts:10:29
     (block
      (loop $continue|0
       (if
        ;;@ memmove.ts:11:13
        (i32.rem_u
         (get_local $0)
         ;;@ memmove.ts:11:20
         (i32.const 8)
        )
        (block
         ;;@ memmove.ts:12:8
         (if
          ;;@ memmove.ts:12:12
          (i32.eqz
           ;;@ memmove.ts:12:13
           (get_local $2)
          )
          ;;@ memmove.ts:13:17
          (return
           (get_local $4)
          )
         )
         ;;@ memmove.ts:14:8
         (set_local $2
          (i32.sub
           ;;@ memmove.ts:14:10
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $0
          (i32.add
           (tee_local $3
            ;;@ memmove.ts:15:18
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         ;;@ memmove.ts:15:8
         (i32.store8
          (get_local $3)
          ;;@ memmove.ts:15:35
          (block (result i32)
           (set_local $1
            (i32.add
             (tee_local $3
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           ;;@ memmove.ts:15:26
           (i32.load8_u
            (get_local $3)
           )
          )
         )
         (br $continue|0)
        )
       )
      )
      (loop $continue|1
       (if
        ;;@ memmove.ts:17:13
        (i32.ge_u
         (get_local $2)
         ;;@ memmove.ts:17:18
         (i32.const 8)
        )
        (block
         ;;@ memmove.ts:18:8
         (i64.store
          ;;@ memmove.ts:18:19
          (get_local $0)
          ;;@ memmove.ts:18:25
          (i64.load
           ;;@ memmove.ts:18:35
           (get_local $1)
          )
         )
         ;;@ memmove.ts:19:8
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ memmove.ts:19:13
           (i32.const 8)
          )
         )
         ;;@ memmove.ts:20:8
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ memmove.ts:20:16
           (i32.const 8)
          )
         )
         ;;@ memmove.ts:21:8
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ memmove.ts:21:15
           (i32.const 8)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
    )
    (loop $continue|2
     (if
      ;;@ memmove.ts:24:11
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          ;;@ memmove.ts:25:16
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       ;;@ memmove.ts:25:6
       (i32.store8
        (get_local $3)
        ;;@ memmove.ts:25:33
        (block (result i32)
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         ;;@ memmove.ts:25:24
         (i32.load8_u
          (get_local $3)
         )
        )
       )
       ;;@ memmove.ts:26:6
       (set_local $2
        (i32.sub
         ;;@ memmove.ts:26:8
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $continue|2)
      )
     )
    )
   )
   ;;@ memmove.ts:28:9
   (block
    ;;@ memmove.ts:29:4
    (if
     ;;@ memmove.ts:29:8
     (i32.eq
      (i32.rem_u
       (get_local $1)
       ;;@ memmove.ts:29:14
       (i32.const 8)
      )
      ;;@ memmove.ts:29:19
      (i32.rem_u
       (get_local $0)
       ;;@ memmove.ts:29:26
       (i32.const 8)
      )
     )
     ;;@ memmove.ts:29:29
     (block
      (loop $continue|3
       (if
        ;;@ memmove.ts:30:13
        (i32.rem_u
         (i32.add
          ;;@ memmove.ts:30:14
          (get_local $0)
          ;;@ memmove.ts:30:21
          (get_local $2)
         )
         ;;@ memmove.ts:30:26
         (i32.const 8)
        )
        (block
         ;;@ memmove.ts:31:8
         (if
          ;;@ memmove.ts:31:12
          (i32.eqz
           ;;@ memmove.ts:31:13
           (get_local $2)
          )
          ;;@ memmove.ts:32:17
          (return
           (get_local $4)
          )
         )
         ;;@ memmove.ts:33:8
         (i32.store8
          ;;@ memmove.ts:33:18
          (i32.add
           (get_local $0)
           ;;@ memmove.ts:33:25
           (tee_local $2
            (i32.sub
             ;;@ memmove.ts:33:27
             (get_local $2)
             (i32.const 1)
            )
           )
          )
          ;;@ memmove.ts:33:30
          (i32.load8_u
           ;;@ memmove.ts:33:39
           (i32.add
            (get_local $1)
            ;;@ memmove.ts:33:45
            (get_local $2)
           )
          )
         )
         (br $continue|3)
        )
       )
      )
      (loop $continue|4
       (if
        ;;@ memmove.ts:35:13
        (i32.ge_u
         (get_local $2)
         ;;@ memmove.ts:35:18
         (i32.const 8)
        )
        (block
         ;;@ memmove.ts:37:8
         (i64.store
          ;;@ memmove.ts:37:19
          (i32.add
           (get_local $0)
           ;;@ memmove.ts:36:8
           (tee_local $2
            (i32.sub
             (get_local $2)
             ;;@ memmove.ts:36:13
             (i32.const 8)
            )
           )
          )
          ;;@ memmove.ts:37:29
          (i64.load
           ;;@ memmove.ts:37:39
           (i32.add
            (get_local $1)
            ;;@ memmove.ts:37:45
            (get_local $2)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (loop $continue|5
     (if
      ;;@ memmove.ts:40:11
      (get_local $2)
      (block
       ;;@ memmove.ts:41:6
       (i32.store8
        ;;@ memmove.ts:41:16
        (i32.add
         (get_local $0)
         ;;@ memmove.ts:41:23
         (tee_local $2
          (i32.sub
           ;;@ memmove.ts:41:25
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        ;;@ memmove.ts:41:28
        (i32.load8_u
         ;;@ memmove.ts:41:37
         (i32.add
          (get_local $1)
          ;;@ memmove.ts:41:43
          (get_local $2)
         )
        )
       )
       (br $continue|5)
      )
     )
    )
   )
  )
  ;;@ memmove.ts:44:9
  (get_local $4)
 )
 (func $start (; 1 ;) (type $v)
  ;;@ memmove.ts:48:0
  (i64.store
   ;;@ memmove.ts:48:11
   (i32.const 8)
   ;;@ memmove.ts:48:22
   (i64.const 1229782938247303441)
  )
  ;;@ memmove.ts:49:0
  (i64.store
   ;;@ memmove.ts:49:18
   (i32.const 16)
   ;;@ memmove.ts:49:22
   (i64.const 2459565876494606882)
  )
  ;;@ memmove.ts:50:0
  (i64.store
   ;;@ memmove.ts:50:18
   (i32.const 24)
   ;;@ memmove.ts:50:22
   (i64.const 3689348814741910323)
  )
  ;;@ memmove.ts:51:0
  (i64.store
   ;;@ memmove.ts:51:18
   (i32.const 32)
   ;;@ memmove.ts:51:22
   (i64.const 4919131752989213764)
  )
  ;;@ memmove.ts:54:0
  (set_global $memmove/dest
   ;;@ memmove.ts:54:7
   (call $memmove/memmove
    ;;@ memmove.ts:54:22
    (i32.const 9)
    ;;@ memmove.ts:54:32
    (i32.const 24)
    ;;@ memmove.ts:54:36
    (i32.const 4)
   )
  )
  ;;@ memmove.ts:55:0
  (if
   ;;@ memmove.ts:55:7
   (i32.ne
    (get_global $memmove/dest)
    ;;@ memmove.ts:55:22
    (i32.const 9)
   )
   (unreachable)
  )
  ;;@ memmove.ts:56:0
  (if
   ;;@ memmove.ts:56:7
   (i64.ne
    (i64.load
     ;;@ memmove.ts:56:17
     (i32.const 8)
    )
    ;;@ memmove.ts:56:26
    (i64.const 1229783084848853777)
   )
   (unreachable)
  )
  ;;@ memmove.ts:58:0
  (set_global $memmove/dest
   ;;@ memmove.ts:58:7
   (call $memmove/memmove
    ;;@ memmove.ts:58:15
    (i32.const 8)
    ;;@ memmove.ts:58:21
    (i32.const 8)
    ;;@ memmove.ts:58:27
    (i32.const 32)
   )
  )
  ;;@ memmove.ts:59:0
  (if
   ;;@ memmove.ts:59:7
   (i32.ne
    (get_global $memmove/dest)
    ;;@ memmove.ts:59:15
    (i32.const 8)
   )
   (unreachable)
  )
  ;;@ memmove.ts:60:0
  (if
   ;;@ memmove.ts:60:7
   (i64.ne
    (i64.load
     ;;@ memmove.ts:60:17
     (i32.const 8)
    )
    ;;@ memmove.ts:60:26
    (i64.const 1229783084848853777)
   )
   (unreachable)
  )
  ;;@ memmove.ts:61:0
  (if
   ;;@ memmove.ts:61:7
   (i64.ne
    (i64.load
     ;;@ memmove.ts:61:24
     (i32.const 16)
    )
    ;;@ memmove.ts:61:30
    (i64.const 2459565876494606882)
   )
   (unreachable)
  )
  ;;@ memmove.ts:62:0
  (if
   ;;@ memmove.ts:62:7
   (i64.ne
    (i64.load
     ;;@ memmove.ts:62:24
     (i32.const 24)
    )
    ;;@ memmove.ts:62:31
    (i64.const 3689348814741910323)
   )
   (unreachable)
  )
  ;;@ memmove.ts:63:0
  (if
   ;;@ memmove.ts:63:7
   (i64.ne
    (i64.load
     ;;@ memmove.ts:63:24
     (i32.const 32)
    )
    ;;@ memmove.ts:63:31
    (i64.const 4919131752989213764)
   )
   (unreachable)
  )
  ;;@ memmove.ts:65:0
  (set_global $memmove/dest
   ;;@ memmove.ts:65:7
   (call $memmove/memmove
    ;;@ memmove.ts:65:22
    (i32.const 13)
    ;;@ memmove.ts:65:32
    (i32.const 36)
    ;;@ memmove.ts:65:36
    (i32.const 3)
   )
  )
  ;;@ memmove.ts:66:0
  (if
   ;;@ memmove.ts:66:7
   (i64.ne
    (i64.load
     ;;@ memmove.ts:66:17
     (i32.const 8)
    )
    ;;@ memmove.ts:66:26
    (i64.const 4919131679688438545)
   )
   (unreachable)
  )
  ;;@ memmove.ts:68:0
  (set_global $memmove/dest
   ;;@ memmove.ts:68:7
   (call $memmove/memmove
    ;;@ memmove.ts:68:22
    (i32.const 16)
    ;;@ memmove.ts:68:32
    (i32.const 24)
    ;;@ memmove.ts:68:36
    (i32.const 15)
   )
  )
  ;;@ memmove.ts:69:0
  (if
   ;;@ memmove.ts:69:7
   (i64.ne
    (i64.load
     ;;@ memmove.ts:69:17
     (i32.const 8)
    )
    ;;@ memmove.ts:69:26
    (i64.const 4919131679688438545)
   )
   (unreachable)
  )
  ;;@ memmove.ts:70:0
  (if
   ;;@ memmove.ts:70:7
   (i64.ne
    (i64.load
     ;;@ memmove.ts:70:24
     (i32.const 16)
    )
    ;;@ memmove.ts:70:30
    (i64.const 3689348814741910323)
   )
   (unreachable)
  )
  ;;@ memmove.ts:71:0
  (if
   ;;@ memmove.ts:71:7
   (i64.ne
    (i64.load
     ;;@ memmove.ts:71:24
     (i32.const 24)
    )
    ;;@ memmove.ts:71:31
    (i64.const 3694152654344438852)
   )
   (unreachable)
  )
  ;;@ memmove.ts:72:0
  (if
   ;;@ memmove.ts:72:7
   (i64.ne
    (i64.load
     ;;@ memmove.ts:72:24
     (i32.const 32)
    )
    ;;@ memmove.ts:72:31
    (i64.const 4919131752989213764)
   )
   (unreachable)
  )
 )
)
