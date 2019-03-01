(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $main/code (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $main/main))
 (func $main/main (; 0 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/started
  i32.eqz
  if
   i32.const 1
   global.set $main/code
   i32.const 1
   global.set $~lib/started
  end
  global.get $main/code
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
