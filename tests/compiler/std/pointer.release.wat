(module
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $std/pointer/one (mut i32) (i32.const 0))
 (global $std/pointer/two (mut i32) (i32.const 0))
 (global $std/pointer/add (mut i32) (i32.const 0))
 (global $std/pointer/sub (mut i32) (i32.const 0))
 (global $std/pointer/nextOne (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\02\00\00\00\1c\00\00\00s\00t\00d\00/\00p\00o\00i\00n\00t\00e\00r\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $start:std/pointer (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  i32.const 8
  global.set $std/pointer/one
  i32.const 24
  global.set $std/pointer/two
  i32.const 8
  i32.const 1
  i32.store $0
  i32.const 12
  i32.const 2
  i32.store $0
  i32.const 8
  i32.load $0
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 83
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.load $0 offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 84
   i32.const 1
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
   i32.const 87
   i32.const 1
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
   i32.const 90
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.const 8
  i32.add
  global.set $std/pointer/one
  global.get $std/pointer/one
  local.tee $0
  global.set $std/pointer/nextOne
  local.get $0
  global.get $std/pointer/nextOne
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.const 24
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 97
   i32.const 1
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
   i32.const 100
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.load $0
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 101
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.load $0 offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 102
   i32.const 1
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
   i64.load $0 align=1
   i64.store $0 align=1
  else
   local.get $0
   i64.const 0
   i64.store $0 align=1
  end
  global.get $std/pointer/one
  global.get $std/pointer/two
  i32.eq
  if
   i32.const 0
   i32.const 1056
   i32.const 105
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.load $0
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 106
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.load $0 offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 107
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.const 1.100000023841858
  f32.store $0
  i32.const 4
  f32.const 1.2000000476837158
  f32.store $0
  i32.const 0
  f32.load $0
  f32.const 1.100000023841858
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 113
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  f32.load $0
  f32.const 1.2000000476837158
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 114
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.load $0
  f32.const 1.100000023841858
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 116
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  f32.load $0
  f32.const 1.2000000476837158
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 117
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.load $0
  f32.const 1.100000023841858
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 119
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  f32.load $0
  f32.const 1.2000000476837158
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 120
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  f32.const 1.2999999523162842
  f32.store $0
  i32.const 8
  f32.load $0
  f32.const 1.2999999523162842
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 123
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  f32.load $0
  f32.const 1.2999999523162842
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 124
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  f32.load $0
  f32.const 1.2999999523162842
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 125
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.const 1.399999976158142
  f32.store $0
  i32.const 0
  f32.load $0
  f32.const 1.399999976158142
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 128
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.load $0
  f32.const 1.399999976158142
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 129
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (type $none_=>_none)
  call $start:std/pointer
 )
)
