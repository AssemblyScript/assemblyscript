(module
 (type $none_=>_i32 (func (result i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "exported" (func $abi/exported))
 (export "exportedExported" (func $abi/exported))
 (export "exportedInternal" (func $abi/exported))
 (func $abi/exported (result i32)
  i32.const -128
 )
)
