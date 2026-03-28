(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $memory/ptr (mut i32) (i32.const 1088))
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
 (data $25 (i32.const 1217) ":)")
 (data $26 (i32.const 1220) "\f0\9f\90\8c")
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
   i32.const 1
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
   i32.const 1
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
   i32.const 1
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
   i32.const 1
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
   i32.const 1
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
   i32.const 1
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
   i32.const 1
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
   i32.const 1
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
  i32.const 1217
  global.set $memory/ptr
  i32.const 1217
  i32.load8_u
  i32.const 58
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 66
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.load8_u offset=1
  i32.const 41
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 67
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.load8_u offset=2
  if
   i32.const 0
   i32.const 1056
   i32.const 68
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1220
  global.set $memory/ptr
  i32.const 1220
  i32.load8_u
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 71
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.load8_u offset=1
  i32.const 159
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 72
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.load8_u offset=2
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 73
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.load8_u offset=3
  i32.const 140
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.load8_u offset=4
  if
   i32.const 0
   i32.const 1056
   i32.const 75
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:memory
 )
)
