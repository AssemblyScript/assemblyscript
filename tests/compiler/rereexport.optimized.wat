(module
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "a" (global $export/a))
 (export "renamed_a" (global $export/a))
 (export "renamed_b" (global $export/b))
 (export "renamed_renamed_b" (global $export/b))
 (start $start)
 (func $export/add (; 0 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
 )
 (func $export/mul (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 12
 )
 (func $start (; 2 ;) (type $v)
  call $export/add
  drop
  call $export/mul
  drop
 )
 (func $null (; 3 ;) (type $v)
  nop
 )
)
