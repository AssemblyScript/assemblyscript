(module
 (type $none_=>_none (func))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 1024) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00i\00m\00p\00l\00i\00c\00i\00t")
 (data (i32.const 1072) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00e\00x\00p\00l\00i\00c\00i\00t")
 (data (i32.const 1120) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00o\00n\00e\00_\00i\00n\00t")
 (data (i32.const 1152) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00w\00o\00_\00i\00n\00t")
 (data (i32.const 1184) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00t\00h\00r\00e\00e\00_\00i\00n\00t")
 (data (i32.const 1232) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00o\00u\00r\00_\00i\00n\00t")
 (data (i32.const 1264) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00i\00v\00e\00_\00i\00n\00t")
 (data (i32.const 1296) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00i\00v\00e\00_\00d\00b\00l")
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  i32.const 1040
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1088
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1136
  i32.const 1
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1168
  i32.const 2
  f64.const 1
  f64.const 2
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1200
  i32.const 3
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1248
  i32.const 4
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 0
  call $~lib/builtins/trace
  i32.const 1280
  i32.const 5
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  call $~lib/builtins/trace
  i32.const 1312
  i32.const 5
  f64.const 1.1
  f64.const 2.2
  f64.const 3.3
  f64.const 4.4
  f64.const 5.5
  call $~lib/builtins/trace
 )
)
