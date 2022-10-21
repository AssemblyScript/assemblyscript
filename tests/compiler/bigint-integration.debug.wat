(module
 (type $none_=>_i64 (func_subtype (result i64) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "bigint-integration" "externalValue" (global $bigint-integration/externalValue i64))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "bigint-integration" "getExternalValue" (func $bigint-integration/getExternalValue (result i64)))
 (global $bigint-integration/internalValue i64 (i64.const 9007199254740991))
 (global $~lib/memory/__data_end i32 (i32.const 76))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16460))
 (global $~lib/memory/__heap_base i32 (i32.const 16460))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00b\00i\00g\00i\00n\00t\00-\00i\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n\00.\00t\00s\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "internalValue" (global $bigint-integration/internalValue))
 (export "getInternalValue" (func $bigint-integration/getInternalValue))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $start:bigint-integration (type $none_=>_none)
  global.get $bigint-integration/externalValue
  i64.const 9007199254740991
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $bigint-integration/getExternalValue
  global.get $bigint-integration/externalValue
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $bigint-integration/getInternalValue (type $none_=>_i64) (result i64)
  global.get $bigint-integration/internalValue
 )
 (func $~start (type $none_=>_none)
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:bigint-integration
 )
)
