(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (start $start)
 (func $start:assert (; 0 ;)
  i32.const 0
  drop
 )
 (func $start (; 1 ;)
  call $start:assert
 )
)
