(module
 (type $v (func))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (loop $continue|0
   (if
    ;;@ scoped.ts:5:45
    (i32.lt_s
     (get_local $0)
     ;;@ scoped.ts:5:73
     (i32.const 1)
    )
    (block
     ;;@ scoped.ts:5:76
     (set_local $0
      (i32.add
       ;;@ scoped.ts:5:78
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ scoped.ts:6:5
  (set_local $0
   ;;@ scoped.ts:6:43
   (i32.const 0)
  )
  (loop $continue|1
   (if
    ;;@ scoped.ts:6:46
    (i32.lt_s
     (get_local $0)
     ;;@ scoped.ts:6:56
     (i32.const 1)
    )
    (block
     ;;@ scoped.ts:6:59
     (set_local $0
      (i32.add
       ;;@ scoped.ts:6:61
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|1)
    )
   )
  )
 )
)
