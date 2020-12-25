(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00 \00\00\00f\00o\00o\00(\001\00,\00 \002\00,\00 \00t\00r\00u\00e\00)\00:")
 (data (i32.const 1100) "\1c")
 (data (i32.const 1112) "\01\00\00\00\06\00\00\00 \00 \000")
 (data (i32.const 1132) "\1c")
 (data (i32.const 1144) "\01\00\00\00\06\00\00\00 \00 \004")
 (data (i32.const 1164) "\1c")
 (data (i32.const 1176) "\01\00\00\00\06\00\00\00 \00 \008")
 (data (i32.const 1196) "\1c")
 (data (i32.const 1208) "\01\00\00\00\06\00\00\00 \001\002")
 (data (i32.const 1228) "\1c")
 (data (i32.const 1240) "\01\00\00\00\06\00\00\00 \001\006")
 (data (i32.const 1260) "<")
 (data (i32.const 1272) "\01\00\00\00*\00\00\00p\00a\00s\00s\00e\00s\00/\00s\00h\00a\00d\00o\00w\00s\00t\00a\00c\00k\00.\00t\00s")
 (data (i32.const 1324) "<")
 (data (i32.const 1336) "\01\00\00\00\"\00\00\00f\00o\00o\00(\001\00,\00 \002\00,\00 \00f\00a\00l\00s\00e\00)\00:")
 (data (i32.const 1388) ",")
 (data (i32.const 1400) "\01\00\00\00\0e\00\00\00b\00a\00r\00(\007\00)\00:")
 (global $~lib/rt/__stackptr (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:passes/shadowstack
 )
 (func $start:passes/shadowstack
  i32.const 20
  global.set $~lib/rt/__stackptr
  i32.const 16
  global.set $~lib/rt/__stackptr
  i32.const 16
  i32.const 1
  i32.store
  i32.const 12
  global.set $~lib/rt/__stackptr
  i32.const 12
  i32.const 2
  i32.store
  i32.const 1
  call $passes/shadowstack/foo
  global.get $~lib/rt/__stackptr
  i32.const 8
  i32.add
  global.set $~lib/rt/__stackptr
  i32.const 1056
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1120
  i32.const 1
  i32.const 0
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1152
  i32.const 1
  i32.const 4
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1184
  i32.const 1
  i32.const 8
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1216
  i32.const 1
  i32.const 12
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1248
  i32.const 1
  i32.const 16
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stackptr
  i32.const 20
  i32.ne
  if
   i32.const 0
   i32.const 1280
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  i32.const 1
  i32.store
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  i32.const 2
  i32.store
  i32.const 0
  call $passes/shadowstack/foo
  global.get $~lib/rt/__stackptr
  i32.const 8
  i32.add
  global.set $~lib/rt/__stackptr
  i32.const 1344
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1120
  i32.const 1
  i32.const 0
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1152
  i32.const 1
  i32.const 4
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1184
  i32.const 1
  i32.const 8
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1216
  i32.const 1
  i32.const 12
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1248
  i32.const 1
  i32.const 16
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stackptr
  i32.const 20
  i32.ne
  if
   i32.const 0
   i32.const 1280
   i32.const 40
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  i32.const 7
  i32.store
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  i32.const 0
  i32.store
  global.get $~lib/rt/__stackptr
  i32.const 7
  i32.store
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.add
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.add
  global.set $~lib/rt/__stackptr
  i32.const 1408
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1120
  i32.const 1
  i32.const 0
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1152
  i32.const 1
  i32.const 4
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1184
  i32.const 1
  i32.const 8
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1216
  i32.const 1
  i32.const 12
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1248
  i32.const 1
  i32.const 16
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stackptr
  i32.const 20
  i32.ne
  if
   i32.const 0
   i32.const 1280
   i32.const 51
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $passes/shadowstack/foo (param $0 i32)
  global.get $~lib/rt/__stackptr
  i32.const 12
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  i64.const 0
  i64.store
  global.get $~lib/rt/__stackptr
  i32.const 0
  i32.store offset=8
  global.get $~lib/rt/__stackptr
  i32.const 3
  i32.store
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.store offset=4
  local.get $0
  if
   global.get $~lib/rt/__stackptr
   i32.const 5
   i32.store offset=8
  else
   global.get $~lib/rt/__stackptr
   i32.const 6
   i32.store offset=8
  end
  global.get $~lib/rt/__stackptr
  i32.const 12
  i32.add
  global.set $~lib/rt/__stackptr
 )
)
