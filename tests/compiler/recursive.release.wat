(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (memory $0 0)
 (export "fib" (func $recursive/fib))
 (export "memory" (memory $0))
 (func $recursive/fib (type $i32_=>_i32) (param $0 i32) (result i32)
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
)
