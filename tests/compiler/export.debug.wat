(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "add" (func $export/add))
 (export "sub" (func $export/sub))
 (export "renamed_mul" (func $export/mul))
 (export "a" (global $export/a))
 (export "b" (global $export/b))
 (export "renamed_c" (global $export/c))
 (export "memory" (memory $0))
 (func $export/add (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.add
  return
 )
 (func $export/sub (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.sub
  return
 )
 (func $export/mul (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.mul
  return
 )
)
