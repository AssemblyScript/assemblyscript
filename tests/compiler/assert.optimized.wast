(module
 (type $v (func))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  ;;@ assert.ts:10:0
  (if
   ;;@ assert.ts:10:4
   (i32.eqz
    ;;@ assert.ts:10:5
    (if (result i32)
     (tee_local $0
      ;;@ assert.ts:10:12
      (i32.const 1)
     )
     (get_local $0)
     (unreachable)
    )
   )
   ;;@ assert.ts:11:2
   (unreachable)
  )
 )
)
