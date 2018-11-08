(module
 (type $i (func (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $void/anInt (; 0 ;) (type $i) (result i32)
  i32.const 2
 )
 (func $start (; 1 ;) (type $v)
  call $void/anInt
  drop
 )
 (func $null (; 2 ;) (type $v)
  nop
 )
)
