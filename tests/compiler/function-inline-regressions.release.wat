(module
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (memory $0 0)
 (export "baz" (func $function-inline-regressions/baz))
 (export "foo" (func $function-inline-regressions/foo))
 (export "memory" (memory $0))
 (func $function-inline-regressions/baz (type $i32_=>_none) (param $0 i32)
  local.get $0
  if
   unreachable
  end
 )
 (func $function-inline-regressions/foo (type $i32_i32_i32_=>_i32) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.const 1
  i32.shl
  local.tee $3
  i32.load $0 offset=1
  local.get $3
  i32.load $0
  i32.const 16
  i32.load $0
  local.tee $3
  i32.add
  i32.add
  if
   unreachable
  end
  i32.const 0
  local.get $0
  i32.store $0
  i32.const 4
  local.get $1
  i32.store $0
  i32.const 8
  local.get $2
  i32.store $0
  local.get $3
 )
)
