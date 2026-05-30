(module
 (type $0 (func (param i32 i32 i32 i32)))
 (type $1 (func))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $inlining-blocklocals/b (mut i32) (i32.const 2))
 (global $inlining-blocklocals/theCall_b (mut i32) (i32.const 0))
 (global $inlining-blocklocals/theCall_c (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33884))
 (memory $0 1)
 (data $0 (i32.const 1036) "L")
 (data $0.1 (i32.const 1048) "\02\00\00\00.\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00-\00b\00l\00o\00c\00k\00l\00o\00c\00a\00l\00s\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1116
  i32.lt_s
  if
   i32.const 33904
   i32.const 33952
   i32.const 1
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
  local.get $3
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  (local $0 i32)
  global.get $inlining-blocklocals/b
  local.tee $0
  i32.const 1
  i32.add
  global.set $inlining-blocklocals/b
  local.get $0
  global.set $inlining-blocklocals/theCall_b
  i32.const 3
  global.set $inlining-blocklocals/theCall_c
  global.get $inlining-blocklocals/theCall_b
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 19
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $inlining-blocklocals/theCall_c
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 20
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
)
