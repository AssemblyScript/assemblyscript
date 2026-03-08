(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (type $1) (param i32 i32 i32 i32)))
 (global $~lib/native/ASC_FEATURE_EXCEPTION_HANDLING i32 (i32.const 0))
 (global $features/gc/globalFunc funcref (ref.null nofunc))
 (global $features/gc/globalExtern externref (ref.null noextern))
 (global $features/gc/globalAny anyref (ref.null none))
 (global $features/gc/globalEq eqref (ref.null none))
 (global $features/gc/globalI31 i31ref (ref.null none))
 (global $features/gc/globalStruct structref (ref.null none))
 (global $features/gc/globalArray arrayref (ref.null none))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data $0 (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00g\00c\00.\00t\00s\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "globalFunc" (global $features/gc/globalFunc))
 (export "globalExtern" (global $features/gc/globalExtern))
 (export "globalAny" (global $features/gc/globalAny))
 (export "globalEq" (global $features/gc/globalEq))
 (export "globalI31" (global $features/gc/globalI31))
 (export "globalStruct" (global $features/gc/globalStruct))
 (export "globalArray" (global $features/gc/globalArray))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $features/gc/test_i31 (type $0)
  (local $ref (ref i31))
  (local $val i32)
  (local $uval i32)
  i32.const 123
  ref.i31
  local.set $ref
  local.get $ref
  ref.is_null
  if
   i32.const 0
   i32.const 32
   i32.const 3
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ref
  i31.get_s
  local.set $val
  local.get $ref
  i31.get_u
  local.set $uval
 )
 (func $start:features/gc (type $0)
  call $features/gc/test_i31
 )
 (func $~start (type $0)
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:features/gc
 )
 (func $~stack_check (type $0)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 32848
   i32.const 32896
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/builtins/abort (type $1) (param $message i32) (param $fileName i32) (param $lineNumber i32) (param $columnNumber i32)
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
