(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (export "fib" (func $recursive/fib))
 (export "memory" (memory $0))
 (func $recursive/fib (param $0 i32) (result i32)
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
