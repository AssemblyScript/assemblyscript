(module
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $features/gc/globalFunc funcref (ref.null nofunc))
 (global $features/gc/globalExtern externref (ref.null noextern))
 (global $features/gc/globalAny anyref (ref.null none))
 (global $features/gc/globalEq eqref (ref.null none))
 (global $features/gc/globalI31 i31ref (ref.null none))
 (global $features/gc/globalData dataref (ref.null none))
 (global $features/gc/globalArray arrayref (ref.null none))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16444))
 (global $~lib/memory/__heap_base i32 (i32.const 16444))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00g\00c\00.\00t\00s\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "globalFunc" (global $features/gc/globalFunc))
 (export "globalExtern" (global $features/gc/globalExtern))
 (export "globalAny" (global $features/gc/globalAny))
 (export "globalEq" (global $features/gc/globalEq))
 (export "globalI31" (global $features/gc/globalI31))
 (export "globalData" (global $features/gc/globalData))
 (export "globalArray" (global $features/gc/globalArray))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $features/gc/test_i31 (type $none_=>_none)
  (local $ref i31ref)
  (local $val i32)
  (local $uval i32)
  i32.const 123
  i31.new
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
 (func $start:features/gc (type $none_=>_none)
  call $features/gc/test_i31
 )
 (func $~start (type $none_=>_none)
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:features/gc
 )
)
