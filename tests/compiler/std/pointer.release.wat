(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32)))
 (type $2 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $std/pointer/one (mut i32) (i32.const 0))
 (global $std/pointer/two (mut i32) (i32.const 0))
 (global $std/pointer/add (mut i32) (i32.const 0))
 (global $std/pointer/sub (mut i32) (i32.const 0))
 (global $std/pointer/nextOne (mut i32) (i32.const 0))
 (global $std/pointer/dst (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33852))
 (memory $0 1)
 (data $0 (i32.const 1036) ",")
 (data $0.1 (i32.const 1048) "\02\00\00\00\1c\00\00\00s\00t\00d\00/\00p\00o\00i\00n\00t\00e\00r\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1084
  i32.lt_s
  if
   i32.const 33872
   i32.const 33920
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
  call $start:std/pointer
 )
 (func $start:std/pointer
  (local $0 i32)
  (local $1 i32)
  i32.const 8
  global.set $std/pointer/one
  i32.const 24
  global.set $std/pointer/two
  i32.const 8
  i32.const 1
  i32.store
  i32.const 12
  i32.const 2
  i32.store
  i32.const 8
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  global.get $std/pointer/two
  i32.add
  global.set $std/pointer/add
  global.get $std/pointer/add
  i32.const 32
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  global.get $std/pointer/one
  i32.sub
  global.set $std/pointer/sub
  global.get $std/pointer/sub
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.const 8
  i32.add
  global.set $std/pointer/one
  global.get $std/pointer/one
  global.set $std/pointer/nextOne
  global.get $std/pointer/nextOne
  global.get $std/pointer/one
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.const 24
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.const 8
  i32.sub
  global.set $std/pointer/two
  global.get $std/pointer/two
  i32.const 8
  i32.sub
  global.set $std/pointer/two
  global.get $std/pointer/two
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 33
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 34
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 35
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  local.set $0
  global.get $std/pointer/two
  local.tee $1
  if
   local.get $0
   local.get $1
   i64.load align=1
   i64.store align=1
  else
   local.get $0
   i64.const 0
   i64.store align=1
  end
  global.get $std/pointer/one
  global.get $std/pointer/two
  i32.eq
  if
   i32.const 0
   i32.const 1056
   i32.const 38
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.const 1.100000023841858
  f32.store
  i32.const 4
  f32.const 1.2000000476837158
  f32.store
  i32.const 0
  f32.load
  f32.const 1.100000023841858
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  f32.load
  f32.const 1.2000000476837158
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.load
  f32.const 1.100000023841858
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 49
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  f32.load
  f32.const 1.2000000476837158
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 50
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.load
  f32.const 1.100000023841858
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 52
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  f32.load
  f32.const 1.2000000476837158
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 53
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  f32.const 1.2999999523162842
  f32.store
  i32.const 8
  f32.load
  f32.const 1.2999999523162842
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  f32.load
  f32.const 1.2999999523162842
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  f32.load
  f32.const 1.2999999523162842
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 58
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.const 1.399999976158142
  f32.store
  i32.const 0
  f32.load
  f32.const 1.399999976158142
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.load
  f32.const 1.399999976158142
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 62
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 69
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 73
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  global.get $std/pointer/two
  i32.eq
  if
   i32.const 0
   i32.const 1056
   i32.const 74
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 100
  i32.const 10
  i32.store
  i32.const 104
  i32.const 20
  i32.store
  i32.const 108
  i32.const 30
  i32.store
  i32.const 200
  global.set $std/pointer/dst
  i32.const 200
  i32.const 100
  i32.const 12
  memory.copy
  i32.const 200
  i32.load
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 84
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/dst
  i32.load offset=4
  i32.const 20
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 85
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/dst
  i32.load offset=8
  i32.const 30
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 86
   call $~lib/builtins/abort
   unreachable
  end
 )
)
