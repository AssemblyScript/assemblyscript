(module
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (global $function-inline-regressions/struct i32 (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "baz" (func $function-inline-regressions/baz))
 (export "foo" (func $function-inline-regressions/foo))
 (export "memory" (memory $0))
 (func $function-inline-regressions/baz (type $i32_=>_none) (param $v i32)
  local.get $v
  if
   unreachable
  end
 )
 (func $function-inline-regressions/loadX (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  i32.const 2
  local.get $a
  i32.mul
  local.get $b
  i32.add
  i32.load $0
 )
 (func $function-inline-regressions/loadZ (type $none_=>_i32) (result i32)
  i32.const 16
  i32.load $0
 )
 (func $function-inline-regressions/Struct#set:v0 (type $i32_i32_=>_none) (param $this i32) (param $v0 i32)
  local.get $this
  local.get $v0
  i32.store $0
 )
 (func $function-inline-regressions/Struct#set:v1 (type $i32_i32_=>_none) (param $this i32) (param $v1 i32)
  local.get $this
  local.get $v1
  i32.store $0 offset=4
 )
 (func $function-inline-regressions/Struct#set:v2 (type $i32_i32_=>_none) (param $this i32) (param $v2 i32)
  local.get $this
  local.get $v2
  i32.store $0 offset=8
 )
 (func $function-inline-regressions/foo (type $i32_i32_i32_=>_i32) (param $v0 i32) (param $v1 i32) (param $v2 i32) (result i32)
  (local $x i32)
  (local $y i32)
  (local $z i32)
  local.get $v0
  i32.const 0
  call $function-inline-regressions/loadX
  local.set $x
  local.get $v0
  i32.const 1
  call $function-inline-regressions/loadX
  local.set $y
  call $function-inline-regressions/loadZ
  local.set $z
  local.get $z
  local.get $x
  i32.add
  local.get $y
  i32.add
  call $function-inline-regressions/baz
  global.get $function-inline-regressions/struct
  local.get $v0
  call $function-inline-regressions/Struct#set:v0
  global.get $function-inline-regressions/struct
  local.get $v1
  call $function-inline-regressions/Struct#set:v1
  global.get $function-inline-regressions/struct
  local.get $v2
  call $function-inline-regressions/Struct#set:v2
  local.get $z
 )
)
