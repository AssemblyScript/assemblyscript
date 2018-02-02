(module
 (type $v (func))
 (global $infer-type/ri (mut i32) (i32.const 0))
 (global $infer-type/rI (mut i64) (i64.const 0))
 (global $infer-type/rf (mut f32) (f32.const 0))
 (global $infer-type/rF (mut f64) (f64.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (set_global $infer-type/ri
   (i32.const 0)
  )
  (set_global $infer-type/rI
   (i64.const 0)
  )
  (set_global $infer-type/rf
   (f32.const 0)
  )
  (set_global $infer-type/rF
   (f64.const 0)
  )
  (loop $continue|0
   (if
    ;;@ infer-type.ts:44:24
    (i32.lt_u
     (get_local $0)
     (i32.const 10)
    )
    (block
     ;;@ infer-type.ts:44:31
     (set_local $0
      (i32.add
       ;;@ infer-type.ts:44:33
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
)
