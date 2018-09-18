(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "fib" (func $recursive/fib))
 (func $recursive/fib (; 0 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $null (; 1 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
