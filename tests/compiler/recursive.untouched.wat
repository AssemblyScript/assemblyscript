(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "fib" (func $recursive/fib))
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
 (func $null (; 1 ;) (type $v)
 )
)
