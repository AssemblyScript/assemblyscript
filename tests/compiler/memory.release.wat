(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (type $2 (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $memory/ptr (mut i32) (i32.const 1088))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33988))
 (memory $0 1)
 (data $1 (i32.const 1036) ",")
 (data $1.1 (i32.const 1048) "\02\00\00\00\12\00\00\00m\00e\00m\00o\00r\00y\00.\00t\00s")
 (data $16 (i32.const 1169) "\01\02\03")
 (data $17 (i32.const 1174) "\c0?\00\00 @\00\00`@")
 (data $19 (i32.const 1200) "\01")
 (data $20 (i32.const 1208) "\01")
 (data $21 (i32.const 1212) "\01")
 (data $22 (i32.const 1214) "\01")
 (data $23 (i32.const 1215) "\01")
 (data $24 (i32.const 1216) "\01")
 (export "memory" (memory $0))
 (start $~start)
 (func $start:memory
  (local $0 i32)
  i32.const 1024
  i32.const 1024
  i32.load
  local.tee $0
  i32.const 1
  i32.add
  i32.store
  local.get $0
  if
   i32.const 0
   i32.const 1056
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1024
  i32.const 1024
  i32.load
  local.tee $0
  i32.const 1
  i32.add
  i32.store
  local.get $0
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1024
  i32.const 1024
  i32.load
  local.tee $0
  i32.const 1
  i32.add
  i32.store
  local.get $0
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 14
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
  i32.const 1166
  global.set $memory/ptr
  i32.const 1167
  global.set $memory/ptr
  i32.const 1169
  global.set $memory/ptr
  i32.const 1169
  i32.load8_u
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.load8_u offset=1
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.load8_u offset=2
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1172
  global.set $memory/ptr
  i32.const 1172
  f32.load
  f32.const 1.5
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 49
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  f32.load offset=4
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 50
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  f32.load offset=8
  f32.const 3.5
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 51
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1184
  global.set $memory/ptr
  i32.const 1200
  global.set $memory/ptr
  i32.const 1208
  global.set $memory/ptr
  i32.const 1212
  global.set $memory/ptr
  i32.const 1214
  global.set $memory/ptr
  i32.const 1215
  global.set $memory/ptr
 )
 (func $~start
  call $start:memory
 )
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1220
  i32.lt_s
  if
   i32.const 34016
   i32.const 34064
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
)
