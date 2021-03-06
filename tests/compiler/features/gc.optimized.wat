(module
 (type $none_=>_none (func))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00g\00c\00.\00t\00s")
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
 )
)
