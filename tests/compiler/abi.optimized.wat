(module
 (type $none_=>_i32 (func (result i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\0c\00\00\00a\00b\00i\00.\00t\00s")
 (export "exported" (func $abi/exported))
 (export "exportedExported" (func $abi/exported))
 (export "exportedInternal" (func $abi/exported))
 (export "memory" (memory $0))
 (func $abi/exported (result i32)
  i32.const -128
 )
)
