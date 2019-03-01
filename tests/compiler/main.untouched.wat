(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $main/code (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $main/main))
 (func $start:main (; 0 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $main/code
 )
 (func $main/main (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/started
  i32.eqz
  if
   call $start
   i32.const 1
   global.set $~lib/started
  end
  global.get $main/code
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:main
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
