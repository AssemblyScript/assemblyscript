(module
 (type $none_=>_none (func))
 (memory $0 1)
 (data (i32.const 1024) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 1056) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\10\04\00\00\10\04\00\00\0c\00\00\00\03")
 (global $exports-lazy/lazyGlobalUsed i32 (i32.const 1072))
 (export "memory" (memory $0))
 (export "lazyGlobalUsed" (global $exports-lazy/lazyGlobalUsed))
 (export "lazyFuncUsed" (func $~start))
 (func $~start
  nop
 )
)
