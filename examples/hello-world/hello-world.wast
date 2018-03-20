(module
 (type $iv (func (param i32)))
 (type $v (func))
 (import "console" "log_int" (func $hello-world/console.log_int (param i32)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (call $hello-world/console.log_int
   (i32.const 42)
  )
 )
)
