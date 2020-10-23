(module
 (type $none_=>_none (func))
 (memory $0 1)
 (data (i32.const 1024) "\00")
 (table $0 1 funcref)
 (global $memorybase/staticData i32 (i32.const 1024))
 (global $~lib/ASC_MEMORY_BASE i32 (i32.const 1024))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:memorybase
  i32.const 1024
  i32.const 1024
  i32.eq
  drop
  global.get $memorybase/staticData
  i32.const 1024
  i32.eq
  drop
 )
 (func $~start
  call $start:memorybase
 )
)
