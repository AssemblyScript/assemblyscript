(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (start $~start)
 (func $start:ReturnType
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  i32.const 1
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 1
  drop
  i32.const 16
  i32.const 16
  i32.eq
  drop
 )
 (func $~start
  call $start:ReturnType
 )
)
