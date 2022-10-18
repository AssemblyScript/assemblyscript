(module
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $features/gc/a anyref (ref.null none))
 (global $features/gc/b i31ref (ref.null none))
 (global $features/gc/c dataref (ref.null none))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16444))
 (global $~lib/memory/__heap_base i32 (i32.const 16444))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00g\00c\00.\00t\00s\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "a" (global $features/gc/a))
 (export "b" (global $features/gc/b))
 (export "c" (global $features/gc/c))
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
