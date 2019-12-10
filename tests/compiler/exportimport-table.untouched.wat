(module
 (type $FUNCSIG$v (func))
 (import "env" "table" (table $0 2 funcref))
 (elem (i32.const 0) $null $start:exportimport-table~anonymous|0)
 (memory $0 0)
 (global $exportimport-table/f (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:exportimport-table~anonymous|0 (; 0 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start:exportimport-table (; 1 ;) (type $FUNCSIG$v)
  global.get $exportimport-table/f
  drop
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:exportimport-table
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  unreachable
 )
)
