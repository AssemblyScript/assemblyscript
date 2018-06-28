(module
 (type $ii (func (param i32) (result i32)))
 (memory $0 0)
 (export "fib" (func $recursive/fib))
 (export "memory" (memory $0))
 (func $recursive/fib (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.le_s
    (get_local $0)
    (i32.const 1)
   )
   (return
    (i32.const 1)
   )
  )
  (i32.add
   (call $recursive/fib
    (i32.sub
     (get_local $0)
     (i32.const 1)
    )
   )
   (call $recursive/fib
    (i32.sub
     (get_local $0)
     (i32.const 2)
    )
   )
  )
 )
)
