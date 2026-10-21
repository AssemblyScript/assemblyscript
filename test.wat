(module
 (type $0 (func (param i32 i32) (result i32 i32)))
 (type $1 (func (param i64 i64) (result i64 i64)))
 (type $2 (func (param i32 i64) (result i32 i64)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "pairI32" (func $test/pairI32))
 (export "swap" (func $test/swap))
 (export "foo" (func $test/foo))
 (export "pairI64" (func $test/pairI64))
 (export "mixI32I64" (func $test/mixI32I64))
 (export "forward" (func $test/forward))
 (export "memory" (memory $0))
 (func $test/pairI32 (param $0 i32) (param $1 i32) (result i32 i32)
  local.get $0
  local.get $1
  tuple.make 2
  return
 )
 (func $test/swap (param $0 i32) (param $1 i32) (result i32 i32)
  local.get $1
  local.get $0
  tuple.make 2
  return
 )
 (func $test/foo (param $0 i32) (param $1 i32) (result i32 i32)
  local.get $0
  local.get $1
  call $test/swap
  return
 )
 (func $test/pairI64 (param $0 i64) (param $1 i64) (result i64 i64)
  local.get $0
  local.get $1
  tuple.make 2
  return
 )
 (func $test/mixI32I64 (param $0 i32) (param $1 i64) (result i32 i64)
  local.get $0
  i32.const 1
  i32.add
  local.get $1
  i64.const 2
  i64.add
  tuple.make 2
  return
 )
 (func $test/forward (param $0 i32) (param $1 i32) (result i32 i32)
  local.get $0
  i32.const 10
  i32.add
  local.get $1
  i32.const 20
  i32.add
  call $test/pairI32
  return
 )
)
