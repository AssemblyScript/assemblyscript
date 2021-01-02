(module
 (type $none_=>_none (func))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 44) ",\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\10\00\00\00 \00\00\00 \00\00\00\0c\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $exports-lazy/lazyGlobalUsed i32 (i32.const 64))
 (export "memory" (memory $0))
 (export "lazyGlobalUsed" (global $exports-lazy/lazyGlobalUsed))
 (export "lazyFuncUsed" (func $exports-lazy/lazyFuncUsed))
 (start $~start)
 (func $start:exports-lazy
  (local $0 i32)
  (local $1 i32)
  global.get $exports-lazy/lazyGlobalUsed
  drop
  call $exports-lazy/lazyFuncUsed
 )
 (func $exports-lazy/lazyFuncUsed
  nop
 )
 (func $~start
  call $start:exports-lazy
 )
)
