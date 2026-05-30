(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (type $2 (func (result i64)))
 (import "bigint-integration" "externalValue" (global $bigint-integration/externalValue i64))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (import "bigint-integration" "getExternalValue" (func $bigint-integration/getExternalValue (result i64)))
 (global $~lib/native/ASC_FEATURE_EXCEPTION_HANDLING i32 (i32.const 0))
 (global $bigint-integration/internalValue i64 (i64.const 9007199254740991))
 (global $~lib/memory/__data_end i32 (i32.const 76))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32844))
 (global $~lib/memory/__heap_base i32 (i32.const 32844))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00b\00i\00g\00i\00n\00t\00-\00i\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n\00.\00t\00s\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "internalValue" (global $bigint-integration/internalValue))
 (export "getInternalValue" (func $bigint-integration/getInternalValue))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $start:bigint-integration
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
 (func $bigint-integration/getInternalValue (result i64)
  global.get $bigint-integration/internalValue
  return
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:bigint-integration
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 32864
   i32.const 32912
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/builtins/abort (param $message i32) (param $fileName i32) (param $lineNumber i32) (param $columnNumber i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  local.get $message
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $fileName
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $lineNumber
  local.get $columnNumber
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
