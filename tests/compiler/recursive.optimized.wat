(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "fib" (func $recursive/fib))
 (func $recursive/fib (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.le_s
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 1
  i32.sub
  call $recursive/fib
  local.get $0
  i32.const 2
  i32.sub
  call $recursive/fib
  i32.add
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
