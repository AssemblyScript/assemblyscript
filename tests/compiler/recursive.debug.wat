(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "fib" (func $recursive/fib))
 (export "memory" (memory $0))
 (func $recursive/fib (type $i32_=>_i32) (param $n i32) (result i32)
  local.get $n
  i32.const 1
  i32.le_s
  if
   i32.const 1
   return
  end
  local.get $n
  i32.const 1
  i32.sub
  call $recursive/fib
  local.get $n
  i32.const 2
  i32.sub
  call $recursive/fib
  i32.add
 )
)
