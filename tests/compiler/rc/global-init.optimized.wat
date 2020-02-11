(module
 (type $none_=>_none (func))
 (memory $0 1)
 (data (i32.const 1028) "\01\00\00\00\01")
 (data (i32.const 1040) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1088) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (global $rc/global-init/a (mut i32) (i32.const 0))
 (global $rc/global-init/b (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:rc/global-init (; 0 ;)
  i32.const 1040
  global.set $rc/global-init/a
  i32.const 1040
  global.set $rc/global-init/b
  i32.const 0
  global.set $rc/global-init/a
  i32.const 0
  global.set $rc/global-init/b
 )
 (func $~start (; 1 ;)
  call $start:rc/global-init
 )
)
