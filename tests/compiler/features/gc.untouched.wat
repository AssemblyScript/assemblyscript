(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00g\00c\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16444))
 (global $~lib/memory/__heap_base i32 (i32.const 16444))
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $features/gc/test_i31
  (local $0 i31ref)
  (local $1 i32)
  (local $2 i32)
  i32.const 123
  i31.new
  local.set $0
  local.get $0
  ref.is_null
  if
   i32.const 0
   i32.const 32
   i32.const 3
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i31.get_s
  local.set $1
  local.get $0
  i31.get_u
  local.set $2
 )
 (func $start:features/gc
  call $features/gc/test_i31
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:features/gc
 )
)
