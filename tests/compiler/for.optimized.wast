(module
 (type $v (func))
 (global $for/i (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  ;;@ for.ts:2:5
  (set_global $for/i
   ;;@ for.ts:2:9
   (i32.const 0)
  )
  (loop $continue|0
   (if
    ;;@ for.ts:2:12
    (i32.lt_s
     (get_global $for/i)
     ;;@ for.ts:2:16
     (i32.const 10)
    )
    (block
     ;;@ for.ts:2:20
     (set_global $for/i
      (i32.add
       ;;@ for.ts:2:22
       (get_global $for/i)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ for.ts:5:0
  (if
   ;;@ for.ts:5:7
   (i32.ne
    (get_global $for/i)
    ;;@ for.ts:5:12
    (i32.const 10)
   )
   (unreachable)
  )
  (loop $continue|1
   (if
    ;;@ for.ts:7:21
    (i32.lt_s
     (get_local $0)
     ;;@ for.ts:7:25
     (i32.const 10)
    )
    (block
     ;;@ for.ts:7:29
     (set_local $0
      (i32.add
       ;;@ for.ts:7:31
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|1)
    )
   )
  )
  (loop $continue|2
   (if
    ;;@ for.ts:11:7
    (i32.gt_s
     (get_global $for/i)
     ;;@ for.ts:11:11
     (i32.const 0)
    )
    (block
     ;;@ for.ts:11:14
     (set_global $for/i
      (i32.sub
       ;;@ for.ts:11:16
       (get_global $for/i)
       (i32.const 1)
      )
     )
     (br $continue|2)
    )
   )
  )
  ;;@ for.ts:12:0
  (if
   ;;@ for.ts:12:7
   (get_global $for/i)
   (unreachable)
  )
  ;;@ for.ts:14:0
  (block $break|3
   (loop $continue|3
    ;;@ for.ts:16:4
    (br_if $break|3
     ;;@ for.ts:15:6
     (i32.eq
      (get_global $for/i)
      ;;@ for.ts:15:11
      (i32.const 10)
     )
    )
    ;;@ for.ts:14:8
    (set_global $for/i
     (i32.add
      ;;@ for.ts:14:10
      (get_global $for/i)
      (i32.const 1)
     )
    )
    (br $continue|3)
   )
  )
  (loop $continue|4
   (set_global $for/i
    (i32.sub
     ;;@ for.ts:19:8
     (get_global $for/i)
     (i32.const 1)
    )
   )
   ;;@ for.ts:20:4
   (br_if $continue|4
    (get_global $for/i)
   )
  )
 )
)
