(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 1)
 (data (i32.const 1024) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00c\00l\00a\00s\00s\00-\00s\00t\00a\00t\00i\00c\00-\00f\00u\00n\00c\00t\00i\00o\00n\00.\00t\00s")
 (global $~argumentsLength (mut i32) (i32.const 0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "memory" (memory $0))
 (start $~start)
 (func $~setArgumentsLength (; 0 ;) (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start (; 1 ;)
  i32.const 0
  global.set $~argumentsLength
 )
)
