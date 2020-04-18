(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1040) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00m\00e\00m\00o\00r\00y\00.\00t\00s")
 (global $memory/ptr (mut i32) (i32.const 1088))
 (export "memory" (memory $0))
 (start $~start)
 (func $memory/test (result i32)
  (local $0 i32)
  i32.const 1024
  i32.const 1024
  i32.load
  local.tee $0
  i32.const 1
  i32.add
  i32.store
  local.get $0
 )
 (func $start:memory
  (local $0 i32)
  call $memory/test
  if
   i32.const 0
   i32.const 1056
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $memory/test
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $memory/test
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 16
  i32.add
  i32.const 1104
  global.set $memory/ptr
  i32.const 1104
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 8
  i32.add
  i32.const 1112
  global.set $memory/ptr
  i32.const 1112
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 4
  i32.add
  i32.const 1116
  global.set $memory/ptr
  i32.const 1116
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 2
  i32.add
  i32.const 1118
  global.set $memory/ptr
  i32.const 1118
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 1
  i32.add
  i32.const 1119
  global.set $memory/ptr
  i32.const 1119
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 1119
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1136
  global.set $memory/ptr
  i32.const 1152
  global.set $memory/ptr
  i32.const 1160
  global.set $memory/ptr
  i32.const 1164
  global.set $memory/ptr
  global.get $memory/ptr
  i32.const 2
  i32.add
  i32.const 1166
  global.set $memory/ptr
  i32.const 1166
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 37
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 1
  i32.add
  i32.const 1167
  global.set $memory/ptr
  i32.const 1167
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 1167
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:memory
 )
)
