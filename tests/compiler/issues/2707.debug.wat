(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (global $issues/2707/func (mut i32) (i32.const 32))
 (global $~lib/memory/__data_end i32 (i32.const 44))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32812))
 (global $~lib/memory/__heap_base i32 (i32.const 32812))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $start:issues/2707~anonymous|0)
 (export "memory" (memory $0))
 (func $start:issues/2707~anonymous|0 (param $args i32) (result i32)
  i32.const 1
  return
 )
)
