(module
 (type $v (func))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (import "env" "externalConstant" (global $declare/externalConstant i32))
 (import "env" "externalFunction" (func $declare/externalFunction))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (import "my" "externalFunction" (func $declare/my.externalFunction))
 (import "my" "externalConstant" (global $declare/my.externalConstant i32))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00d\00e\00c\00l\00a\00r\00e\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 3 ;) (type $v)
  ;;@ declare.ts:4:0
  (call $declare/externalFunction)
  ;;@ declare.ts:5:0
  (if
   (i32.eqz
    ;;@ declare.ts:5:7
    (i32.eq
     (get_global $declare/externalConstant)
     ;;@ declare.ts:5:27
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ declare.ts:12:3
  (call $declare/my.externalFunction)
  ;;@ declare.ts:13:0
  (if
   (i32.eqz
    ;;@ declare.ts:13:7
    (i32.eq
     (get_global $declare/my.externalConstant)
     ;;@ declare.ts:13:30
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
