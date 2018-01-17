(module
 (type $ii (func (param i32) (result i32)))
 (export "fls" (func $assembly/tlsf/fls<usize>))
 (func $assembly/tlsf/fls<usize> (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.sub
    (i32.sub
     (i32.shl
      (i32.const 4)
      (i32.const 3)
     )
     (i32.clz
      (get_local $0)
     )
    )
    (i32.const 1)
   )
  )
 )
)
