(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (global $function-inline-regressions/struct i32 (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "baz" (func $function-inline-regressions/baz))
 (export "foo" (func $function-inline-regressions/foo))
 (export "memory" (memory $0))
 (func $function-inline-regressions/baz (param $0 i32)
  local.get $0
  if
   unreachable
  end
 )
 (func $function-inline-regressions/loadX (param $0 i32) (param $1 i32) (result i32)
  i32.const 2
  local.get $0
  i32.mul
  local.get $1
  i32.add
  i32.load
 )
 (func $function-inline-regressions/loadZ (result i32)
  i32.const 16
  i32.load
 )
 (func $function-inline-regressions/Struct#set:v0 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $function-inline-regressions/Struct#set:v1 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $function-inline-regressions/Struct#set:v2 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $function-inline-regressions/foo (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 0
  call $function-inline-regressions/loadX
  local.set $3
  local.get $0
  i32.const 1
  call $function-inline-regressions/loadX
  local.set $4
  call $function-inline-regressions/loadZ
  local.set $5
  local.get $5
  local.get $3
  i32.add
  local.get $4
  i32.add
  call $function-inline-regressions/baz
  global.get $function-inline-regressions/struct
  local.get $0
  call $function-inline-regressions/Struct#set:v0
  global.get $function-inline-regressions/struct
  local.get $1
  call $function-inline-regressions/Struct#set:v1
  global.get $function-inline-regressions/struct
  local.get $2
  call $function-inline-regressions/Struct#set:v2
  local.get $5
 )
)
