(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 1)
 (data (i32.const 16) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00c\00a\00l\00l\00-\00i\00n\00f\00e\00r\00r\00e\00d\00.\00t\00s")
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
