(module
 (type $FUNCSIG$v (func))
 (import "env" "memory" (memory $0 1))
 (data (global.get $__memory_base) "\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\18\00\00\00\18\00\00\00\04\00\00\00\01\00\00\00")
 (import "env" "memory_base" (global $__memory_base i32))
 (global $__memory_size i32 (i32.const 64))
 (global $__table_size i32 (i32.const 1))
 (export "memory" (memory $0))
 (export "__memory_size" (global $__memory_size))
 (export "__table_size" (global $__table_size))
 (func $start (; 0 ;) (type $FUNCSIG$v)
  nop
 )
)
