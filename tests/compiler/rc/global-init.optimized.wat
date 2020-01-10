(module
 (type $none_=>_none (func))
 (memory $0 1)
 (data (i32.const 20) "\01\00\00\00\01")
 (data (i32.const 32) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 80) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 128) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 192) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 240) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 304) "\03\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10")
 (global $rc/global-init/a (mut i32) (i32.const 0))
 (global $rc/global-init/b (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:rc/global-init (; 0 ;)
  i32.const 32
  global.set $rc/global-init/a
  i32.const 32
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
