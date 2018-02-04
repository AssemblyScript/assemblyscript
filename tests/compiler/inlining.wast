(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $inlining/constantGlobal i32 (i32.const 1))
 (global $HEAP_BASE i32 (i32.const 36))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s\00")
 (export "test" (func $inlining/test))
 (export "memory" (memory $0))
 (start $start)
 (func $inlining/test (; 1 ;) (type $i) (result i32)
  ;;@ inlining.ts:4:2
  (nop)
  ;;@ inlining.ts:5:26
  (return
   ;;@ inlining.ts:5:9
   (i32.add
    (i32.const 1)
    ;;@ inlining.ts:5:26
    (i32.const 2)
   )
  )
 )
 (func $start (; 2 ;) (type $v)
  ;;@ inlining.ts:8:0
  (if
   (i32.eqz
    ;;@ inlining.ts:8:7
    (i32.eq
     (call $inlining/test)
     ;;@ inlining.ts:8:17
     (i32.const 3)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
