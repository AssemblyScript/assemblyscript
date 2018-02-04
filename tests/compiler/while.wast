(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $while/n (mut i32) (i32.const 10))
 (global $while/m (mut i32) (i32.const 0))
 (global $while/o (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 28))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00w\00h\00i\00l\00e\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  ;;@ while.ts:4:0
  (block $break|0
   (loop $continue|0
    (if
     ;;@ while.ts:4:7
     (get_global $while/n)
     (block
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
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ while.ts:8:0
  (if
   (i32.eqz
    ;;@ while.ts:8:7
    (i32.eq
     (get_global $while/n)
     ;;@ while.ts:8:12
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ while.ts:9:0
  (if
   (i32.eqz
    ;;@ while.ts:9:7
    (i32.eq
     (get_global $while/m)
     ;;@ while.ts:9:12
     (i32.const 10)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
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
  ;;@ while.ts:14:0
  (block $break|1
   (loop $continue|1
    (if
     ;;@ while.ts:14:7
     (get_global $while/n)
     (block
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
       ;;@ while.ts:17:2
       (block $break|2
        (loop $continue|2
         (if
          ;;@ while.ts:17:9
          (get_global $while/n)
          (block
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
           )
           (br $continue|2)
          )
         )
        )
       )
       ;;@ while.ts:21:2
       (if
        (i32.eqz
         ;;@ while.ts:21:9
         (i32.eq
          (get_global $while/n)
          ;;@ while.ts:21:14
          (i32.const 0)
         )
        )
        (block
         (call $abort
          (i32.const 0)
          (i32.const 8)
          (i32.const 21)
          (i32.const 2)
         )
         (unreachable)
        )
       )
       ;;@ while.ts:22:2
       (if
        (i32.eqz
         ;;@ while.ts:22:9
         (i32.eq
          (get_global $while/o)
          ;;@ while.ts:22:14
          (i32.const 9)
         )
        )
        (block
         (call $abort
          (i32.const 0)
          (i32.const 8)
          (i32.const 22)
          (i32.const 2)
         )
         (unreachable)
        )
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  ;;@ while.ts:24:0
  (if
   (i32.eqz
    ;;@ while.ts:24:7
    (i32.eq
     (get_global $while/n)
     ;;@ while.ts:24:12
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ while.ts:25:0
  (if
   (i32.eqz
    ;;@ while.ts:25:7
    (i32.eq
     (get_global $while/m)
     ;;@ while.ts:25:12
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ while.ts:26:0
  (if
   (i32.eqz
    ;;@ while.ts:26:7
    (i32.eq
     (get_global $while/o)
     ;;@ while.ts:26:12
     (i32.const 9)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
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
  ;;@ while.ts:30:0
  (block $break|3
   (loop $continue|3
    (if
     ;;@ while.ts:30:7
     (if (result i32)
      (i32.ne
       (tee_local $0
        (block (result i32)
         (set_local $0
          (get_global $while/n)
         )
         (set_global $while/n
          (i32.sub
           (get_local $0)
           (i32.const 1)
          )
         )
         (get_local $0)
        )
       )
       (i32.const 0)
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
     (block
      ;;@ while.ts:30:18
      (nop)
      (br $continue|3)
     )
    )
   )
  )
  ;;@ while.ts:31:0
  (if
   (i32.eqz
    ;;@ while.ts:31:7
    (i32.eq
     (get_global $while/n)
     ;;@ while.ts:31:12
     (i32.sub
      (i32.const 0)
      ;;@ while.ts:31:13
      (i32.const 1)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ while.ts:32:0
  (if
   (i32.eqz
    ;;@ while.ts:32:7
    (i32.eq
     (get_global $while/m)
     ;;@ while.ts:32:12
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 32)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
