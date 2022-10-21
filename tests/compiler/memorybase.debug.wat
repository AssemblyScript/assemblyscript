(module
 (type $none_=>_none (func_subtype func))
 (global $memorybase/staticData i32 (i32.const 1024))
 (global $~lib/native/ASC_MEMORY_BASE i32 (i32.const 1024))
 (global $~lib/memory/__data_end i32 (i32.const 1028))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 66564))
 (global $~lib/memory/__heap_base i32 (i32.const 66564))
 (memory $0 2)
 (data (i32.const 1024) "\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:memorybase (type $none_=>_none)
  i32.const 1024
  i32.const 1024
  i32.eq
  drop
  global.get $memorybase/staticData
  i32.const 1024
  i32.eq
  drop
 )
 (func $~start (type $none_=>_none)
  call $start:memorybase
 )
)
