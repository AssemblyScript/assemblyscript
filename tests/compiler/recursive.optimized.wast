(module
 (type $ii (func (param i32) (result i32)))
 (memory $0 1)
 (export "fib" (func $recursive/fib))
 (export "memory" (memory $0))
 (func $recursive/fib (; 0 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ recursive.ts:2:2
  (if
   ;;@ recursive.ts:2:6
   (i32.le_s
    (get_local $0)
    ;;@ recursive.ts:2:11
    (i32.const 1)
   )
   ;;@ recursive.ts:2:21
   (return
    (i32.const 1)
   )
  )
  ;;@ recursive.ts:3:9
  (i32.add
   (call $recursive/fib
    ;;@ recursive.ts:3:13
    (i32.sub
     (get_local $0)
     ;;@ recursive.ts:3:17
     (i32.const 1)
    )
   )
   ;;@ recursive.ts:3:22
   (call $recursive/fib
    ;;@ recursive.ts:3:26
    (i32.sub
     (get_local $0)
     ;;@ recursive.ts:3:30
     (i32.const 2)
    )
   )
  )
 )
)
