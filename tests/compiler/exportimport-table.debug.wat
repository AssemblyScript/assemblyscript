(module
 (type $none_=>_none (func))
 (import "env" "table" (table $0 2 funcref))
 (global $exportimport-table/f (mut i32) (i32.const 32))
 (global $~lib/memory/__data_end i32 (i32.const 44))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32812))
 (global $~lib/memory/__heap_base i32 (i32.const 32812))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (elem $0 (i32.const 1) $start:exportimport-table~anonymous|0)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $~start)
 (func $start:exportimport-table~anonymous|0
  nop
 )
 (func $start:exportimport-table
  global.get $exportimport-table/f
  drop
 )
 (func $~start
  call $start:exportimport-table
 )
)
