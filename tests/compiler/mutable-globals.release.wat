(module
 (type $0 (func (param i32 i32 i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32 i32 i32)))
 (import "mutable-globals" "external" (global $mutable-globals/external (mut i32)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $mutable-globals/internal (mut i32) (i32.const 124))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33868))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00$\00\00\00m\00u\00t\00a\00b\00l\00e\00-\00g\00l\00o\00b\00a\00l\00s\00.\00t\00s")
 (export "external" (global $mutable-globals/external))
 (export "internal" (global $mutable-globals/internal))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1100
  i32.lt_s
  if
   i32.const 33888
   i32.const 33936
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  i32.const 1
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  global.get $mutable-globals/external
  i32.const 123
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $mutable-globals/internal
  i32.const 124
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  global.get $mutable-globals/external
  i32.const 10
  i32.add
  global.set $mutable-globals/external
  global.get $mutable-globals/internal
  i32.const 10
  i32.add
  global.set $mutable-globals/internal
  global.get $mutable-globals/external
  i32.const 133
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  end
  global.get $mutable-globals/internal
  i32.const 134
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
 )
)
