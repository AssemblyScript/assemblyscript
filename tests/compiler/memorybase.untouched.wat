(module
 (type $none_=>_none (func))
 (memory $0 1)
 (data (i32.const 1024) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00")
 (table $0 1 funcref)
 (global $memorybase/staticString i32 (i32.const 1040))
 (global $~lib/ASC_MEMORY_BASE i32 (i32.const 1024))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:memorybase
  i32.const 1024
  i32.const 1024
  i32.eq
  drop
  global.get $memorybase/staticString
  i32.const 16
  i32.sub
  i32.const 1024
  i32.eq
  drop
 )
 (func $~start
  call $start:memorybase
 )
)
