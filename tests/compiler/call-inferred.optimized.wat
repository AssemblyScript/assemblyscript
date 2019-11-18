(module
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00c\00a\00l\00l\00-\00i\00n\00f\00e\00r\00r\00e\00d\00.\00t\00s")
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $~lib/argc
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
