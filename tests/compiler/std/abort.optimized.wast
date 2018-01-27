(module
 (type $v (func))
 (global $std/abort/abortCalled (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00t\00h\00i\00s\00 \00i\00s\00 \00o\00k")
 (data (i32.const 32) "\0c\00\00\00s\00t\00d\00/\00a\00b\00o\00r\00t\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (set_global $std/abort/abortCalled
   (i32.const 1)
  )
  (if
   (i32.eqz
    (get_global $std/abort/abortCalled)
   )
   (unreachable)
  )
 )
)
