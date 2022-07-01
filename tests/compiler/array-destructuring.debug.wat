(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__data_end i32 (i32.const 76))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16460))
 (global $~lib/memory/__heap_base i32 (i32.const 16460))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00,\00\00\00a\00r\00r\00a\00y\00-\00d\00e\00s\00t\00r\00u\00c\00t\00u\00r\00i\00n\00g\00.\00t\00s\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:array-destructuring
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 1
  local.set $4
  i32.const 2
  local.set $5
  i32.const 3
  local.set $6
  i32.const 5
  local.set $7
  local.get $4
  local.set $0
  local.get $5
  local.set $1
  local.get $6
  local.set $2
  local.get $7
  local.set $3
  local.get $0
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:array-destructuring
 )
)
