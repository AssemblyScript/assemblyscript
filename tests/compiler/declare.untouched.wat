(module
 (type $v (func))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00d\00e\00c\00l\00a\00r\00e\00.\00t\00s\00")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "declare" "externalConstant" (global $declare/externalConstant i32))
 (import "declare" "my.externalConstant" (global $declare/my.externalConstant i32))
 (import "declare" "externalFunction" (func $declare/externalFunction))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "declare" "my.externalFunction" (func $declare/my.externalFunction))
 (global $HEAP_BASE i32 (i32.const 32))
 (export "memory" (memory $0))
 (export "table" (table $0))
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
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
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
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
 (func $null (; 4 ;) (type $v)
 )
)
