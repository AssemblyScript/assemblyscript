(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (start $~start)
 (func $start:assert
  i32.const 1
  i32.eqz
  drop
 )
 (func $~start
  call $start:assert
 )
)
