(module
 (type $i64_=>_i64 (func_subtype (param i64) (result i64) func))
 (type $none_=>_none (func_subtype func))
 (global $const-folding/x (mut i32) (i32.const 0))
 (memory $0 0)
 (export "x" (global $const-folding/x))
 (export "test" (func $const-folding/test))
 (export "memory" (memory $0))
 (start $~start)
 (func $const-folding/test (type $i64_=>_i64) (param $0 i64) (result i64)
  local.get $0
  i64.const 1
  i64.shl
  local.get $0
  i64.const 63
  i64.shr_u
  i64.add
 )
 (func $~start (type $none_=>_none)
  i32.const 30
  global.set $const-folding/x
 )
)
