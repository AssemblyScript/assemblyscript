(module
 (type $v (func))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (import "env" "externalConstant" (global $declare/externalConstant i32))
 (import "env" "externalFunction" (func $declare/externalFunction))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (import "my" "externalFunction" (func $declare/my.externalFunction))
 (import "my" "externalConstant" (global $declare/my.externalConstant i32))
 (global $HEAP_BASE i32 (i32.const 28))
 (memory $0 1)
 (data (i32.const 4) "\n\00\00\00d\00e\00c\00l\00a\00r\00e\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 3 ;) (type $v)
  (call $declare/externalFunction)
  (if
   (i32.eqz
    (i32.eq
     (get_global $declare/externalConstant)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $declare/my.externalFunction)
  (if
   (i32.eqz
    (i32.eq
     (get_global $declare/my.externalConstant)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
