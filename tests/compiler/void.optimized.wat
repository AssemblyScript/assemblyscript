(module
 (type $i (func (result i32)))
 (type $v (func))
 (memory $0 0 65535)
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $void/anInt (; 0 ;) (; has Stack IR ;) (type $i) (result i32)
  i32.const 2
 )
 (func $start (; 1 ;) (; has Stack IR ;) (type $v)
  call $void/anInt
  drop
 )
 (func $null (; 2 ;) (; has Stack IR ;) (type $v)
  nop
 )
)
