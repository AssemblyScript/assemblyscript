(module
 (type $v (func))
 (global $while/n (mut i32) (i32.const 10))
 (global $while/m (mut i32) (i32.const 0))
 (global $while/o (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (loop $continue|0
   (if
    ;;@ while.ts:4:7
    (get_global $while/n)
    (block
     ;;@ while.ts:5:2
     (set_global $while/n
      (i32.sub
       (get_global $while/n)
       (i32.const 1)
      )
     )
     ;;@ while.ts:6:2
     (set_global $while/m
      (i32.add
       (get_global $while/m)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ while.ts:8:0
  (if
   ;;@ while.ts:8:7
   (get_global $while/n)
   (unreachable)
  )
  ;;@ while.ts:9:0
  (if
   ;;@ while.ts:9:7
   (i32.ne
    (get_global $while/m)
    ;;@ while.ts:9:12
    (i32.const 10)
   )
   (unreachable)
  )
  ;;@ while.ts:11:0
  (set_global $while/n
   ;;@ while.ts:11:4
   (i32.const 10)
  )
  ;;@ while.ts:12:0
  (set_global $while/m
   ;;@ while.ts:12:4
   (i32.const 0)
  )
  (loop $continue|1
   (if
    ;;@ while.ts:14:7
    (get_global $while/n)
    (block
     ;;@ while.ts:15:2
     (set_global $while/n
      (i32.sub
       (get_global $while/n)
       (i32.const 1)
      )
     )
     ;;@ while.ts:16:2
     (set_global $while/m
      (i32.add
       (get_global $while/m)
       (i32.const 1)
      )
     )
     (loop $continue|2
      (if
       ;;@ while.ts:17:9
       (get_global $while/n)
       (block
        ;;@ while.ts:18:4
        (set_global $while/n
         (i32.sub
          (get_global $while/n)
          (i32.const 1)
         )
        )
        ;;@ while.ts:19:4
        (set_global $while/o
         (i32.add
          (get_global $while/o)
          (i32.const 1)
         )
        )
        (br $continue|2)
       )
      )
     )
     ;;@ while.ts:21:2
     (if
      ;;@ while.ts:21:9
      (get_global $while/n)
      (unreachable)
     )
     ;;@ while.ts:22:2
     (if
      ;;@ while.ts:22:9
      (i32.ne
       (get_global $while/o)
       ;;@ while.ts:22:14
       (i32.const 9)
      )
      (unreachable)
     )
     (br $continue|1)
    )
   )
  )
  ;;@ while.ts:24:0
  (if
   ;;@ while.ts:24:7
   (get_global $while/n)
   (unreachable)
  )
  ;;@ while.ts:25:0
  (if
   ;;@ while.ts:25:7
   (i32.ne
    (get_global $while/m)
    ;;@ while.ts:25:12
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ while.ts:26:0
  (if
   ;;@ while.ts:26:7
   (i32.ne
    (get_global $while/o)
    ;;@ while.ts:26:12
    (i32.const 9)
   )
   (unreachable)
  )
  ;;@ while.ts:28:0
  (set_global $while/n
   ;;@ while.ts:28:4
   (i32.const 1)
  )
  ;;@ while.ts:29:0
  (set_global $while/m
   ;;@ while.ts:29:4
   (i32.const 0)
  )
  (loop $continue|3
   (br_if $continue|3
    ;;@ while.ts:30:7
    (if (result i32)
     (block (result i32)
      (set_global $while/n
       (i32.sub
        (tee_local $0
         (get_global $while/n)
        )
        (i32.const 1)
       )
      )
      (get_local $0)
     )
     ;;@ while.ts:30:14
     (block (result i32)
      (set_global $while/m
       (i32.add
        ;;@ while.ts:30:16
        (get_global $while/m)
        (i32.const 1)
       )
      )
      (get_global $while/m)
     )
     (get_local $0)
    )
   )
  )
  ;;@ while.ts:31:0
  (if
   ;;@ while.ts:31:7
   (i32.ne
    (get_global $while/n)
    (i32.const -1)
   )
   (unreachable)
  )
  ;;@ while.ts:32:0
  (if
   ;;@ while.ts:32:7
   (i32.ne
    (get_global $while/m)
    ;;@ while.ts:32:12
    (i32.const 1)
   )
   (unreachable)
  )
 )
)
