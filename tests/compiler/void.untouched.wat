(module
 (type $i (func (result i32)))
 (type $v (func))
 (memory $0 0 65535)
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $void/u8Val1 (mut i32) (i32.const 1))
 (global $void/u8Val2 (mut i32) (i32.const 255))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $void/anInt (; 0 ;) (; has Stack IR ;) (type $i) (result i32)
  i32.const 2
 )
 (func $start (; 1 ;) (; has Stack IR ;) (type $v)
  i32.const 1
  drop
  call $void/anInt
  drop
  get_global $void/u8Val1
  get_global $void/u8Val2
  i32.add
  drop
 )
 (func $null (; 2 ;) (; has Stack IR ;) (type $v)
 )
)
