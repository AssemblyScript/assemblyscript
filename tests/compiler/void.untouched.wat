(module
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $void/u8Val1 (mut i32) (i32.const 1))
 (global $void/u8Val2 (mut i32) (i32.const 255))
 (export "memory" (memory $0))
 (start $~start)
 (func $void/anInt (result i32)
  i32.const 2
 )
 (func $start:void
  i32.const 1
  drop
  call $void/anInt
  drop
  global.get $void/u8Val1
  global.get $void/u8Val2
  i32.add
  drop
 )
 (func $~start
  call $start:void
 )
)
