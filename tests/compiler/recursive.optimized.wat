(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "fib" (func $recursive/fib))
 (func $recursive/fib (; 0 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.le_s
    (get_local $0)
    (i32.const 1)
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $1
   (call $recursive/fib
    (i32.sub
     (get_local $0)
     (i32.const 1)
    )
   )
  )
  (set_local $0
   (call $recursive/fib
    (i32.sub
     (get_local $0)
     (i32.const 2)
    )
   )
  )
  (i32.add
   (get_local $1)
   (get_local $0)
  )
 )
 (func $null (; 1 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
