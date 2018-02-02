(module
 (type $v (func))
 (global $do/n (mut i32) (i32.const 10))
 (global $do/m (mut i32) (i32.const 0))
 (global $do/o (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (loop $continue|0
   ;;@ do.ts:4:2
   (set_global $do/n
    (i32.sub
     (get_global $do/n)
     (i32.const 1)
    )
   )
   ;;@ do.ts:5:2
   (set_global $do/m
    (i32.add
     (get_global $do/m)
     (i32.const 1)
    )
   )
   (br_if $continue|0
    ;;@ do.ts:6:9
    (get_global $do/n)
   )
  )
  ;;@ do.ts:7:0
  (if
   ;;@ do.ts:7:7
   (get_global $do/n)
   (unreachable)
  )
  ;;@ do.ts:8:0
  (if
   ;;@ do.ts:8:7
   (i32.ne
    (get_global $do/m)
    ;;@ do.ts:8:12
    (i32.const 10)
   )
   (unreachable)
  )
  ;;@ do.ts:10:0
  (set_global $do/n
   ;;@ do.ts:10:4
   (i32.const 10)
  )
  (loop $continue|1
   (set_global $do/n
    (i32.sub
     (tee_local $0
      ;;@ do.ts:11:10
      (get_global $do/n)
     )
     (i32.const 1)
    )
   )
   (br_if $continue|1
    (get_local $0)
   )
  )
  ;;@ do.ts:12:0
  (if
   ;;@ do.ts:12:7
   (i32.ne
    (get_global $do/n)
    (i32.const -1)
   )
   (unreachable)
  )
  ;;@ do.ts:14:0
  (set_global $do/n
   ;;@ do.ts:14:4
   (i32.const 10)
  )
  ;;@ do.ts:15:0
  (set_global $do/m
   ;;@ do.ts:15:4
   (i32.const 0)
  )
  (loop $continue|2
   ;;@ do.ts:18:2
   (set_global $do/n
    (i32.sub
     (get_global $do/n)
     (i32.const 1)
    )
   )
   ;;@ do.ts:19:2
   (set_global $do/m
    (i32.add
     (get_global $do/m)
     (i32.const 1)
    )
   )
   (loop $continue|3
    ;;@ do.ts:21:4
    (set_global $do/n
     (i32.sub
      (get_global $do/n)
      (i32.const 1)
     )
    )
    ;;@ do.ts:22:4
    (set_global $do/o
     (i32.add
      (get_global $do/o)
      (i32.const 1)
     )
    )
    (br_if $continue|3
     ;;@ do.ts:23:11
     (get_global $do/n)
    )
   )
   ;;@ do.ts:24:2
   (if
    ;;@ do.ts:24:9
    (get_global $do/n)
    (unreachable)
   )
   ;;@ do.ts:25:2
   (if
    ;;@ do.ts:25:9
    (i32.ne
     (get_global $do/o)
     ;;@ do.ts:25:14
     (i32.const 9)
    )
    (unreachable)
   )
   (br_if $continue|2
    ;;@ do.ts:26:9
    (get_global $do/n)
   )
  )
  ;;@ do.ts:27:0
  (if
   ;;@ do.ts:27:7
   (get_global $do/n)
   (unreachable)
  )
  ;;@ do.ts:28:0
  (if
   ;;@ do.ts:28:7
   (i32.ne
    (get_global $do/m)
    ;;@ do.ts:28:12
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ do.ts:29:0
  (if
   ;;@ do.ts:29:7
   (i32.ne
    (get_global $do/o)
    ;;@ do.ts:29:12
    (i32.const 9)
   )
   (unreachable)
  )
 )
)
