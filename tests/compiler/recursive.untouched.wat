(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "fib" (func $recursive/fib))
 (func $recursive/fib (; 0 ;) (param $0 i32) (result i32)
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
 (func $null (; 1 ;)
  unreachable
 )
)
