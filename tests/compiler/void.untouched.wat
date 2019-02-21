(module
 (type $i (func (result i32)))
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $void/u8Val1 (mut i32) (i32.const 1))
 (global $void/u8Val2 (mut i32) (i32.const 255))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $void/anInt (; 0 ;) (type $i) (result i32)
  i32.const 2
 )
 (func $start:void (; 1 ;) (type $_)
  i32.const 1
  drop
  call $void/anInt
  drop
  global.get $void/u8Val1
  global.get $void/u8Val2
  i32.add
  drop
 )
 (func $start (; 2 ;) (type $_)
  call $start:void
 )
 (func $null (; 3 ;) (type $_)
 )
)
