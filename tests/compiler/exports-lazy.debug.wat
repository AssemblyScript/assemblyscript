(module
 (type $none_=>_none (func_subtype func))
 (global $exports-lazy/lazyGlobalUsed i32 (i32.const 64))
 (global $exports-lazy/lazyGlobalUnused i32 (i32.const 144))
 (global $~lib/memory/__data_end i32 (i32.const 172))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32940))
 (global $~lib/memory/__heap_base i32 (i32.const 32940))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 44) ",\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\10\00\00\00 \00\00\00 \00\00\00\0c\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 92) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 124) ",\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\10\00\00\00p\00\00\00p\00\00\00\0c\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "lazyGlobalUnused" (global $exports-lazy/lazyGlobalUnused))
 (export "lazyGlobalUsed" (global $exports-lazy/lazyGlobalUsed))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:exports-lazy (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  global.get $exports-lazy/lazyGlobalUsed
  drop
  call $exports-lazy/lazyFuncUsed
 )
 (func $exports-lazy/lazyFuncUsed (type $none_=>_none)
  nop
 )
 (func $exports-lazy/lazyFuncUnused (type $none_=>_none)
  nop
 )
 (func $~start (type $none_=>_none)
  call $start:exports-lazy
 )
)
