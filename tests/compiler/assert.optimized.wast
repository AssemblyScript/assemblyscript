(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 4) "\t\00\00\00a\00s\00s\00e\00r\00t\00.\00t\00s")
 (data (i32.const 28) "\0c\00\00\00m\00u\00s\00t\00 \00b\00e\00 \00t\00r\00u\00e")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $0
      (i32.const 1)
     )
     (get_local $0)
     (block
      (call $abort
       (i32.const 28)
       (i32.const 4)
       (i32.const 10)
       (i32.const 5)
      )
      (unreachable)
     )
    )
   )
   (unreachable)
  )
 )
)
