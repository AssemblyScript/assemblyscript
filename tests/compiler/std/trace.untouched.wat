(module
 (type $none_=>_none (func))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 16) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00i\00m\00p\00l\00i\00c\00i\00t\00")
 (data (i32.const 64) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00e\00x\00p\00l\00i\00c\00i\00t\00")
 (data (i32.const 112) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00o\00n\00e\00_\00i\00n\00t\00")
 (data (i32.const 144) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00w\00o\00_\00i\00n\00t\00")
 (data (i32.const 176) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00t\00h\00r\00e\00e\00_\00i\00n\00t\00")
 (data (i32.const 224) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00o\00u\00r\00_\00i\00n\00t\00")
 (data (i32.const 256) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00i\00v\00e\00_\00i\00n\00t\00")
 (data (i32.const 288) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00i\00v\00e\00_\00d\00b\00l\00")
 (table $0 1 funcref)
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $start:std/trace (; 1 ;)
  i32.const 32
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 80
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 128
  i32.const 1
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 160
  i32.const 2
  f64.const 1
  f64.const 2
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 192
  i32.const 3
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 240
  i32.const 4
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 0
  call $~lib/builtins/trace
  i32.const 272
  i32.const 5
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  call $~lib/builtins/trace
  i32.const 304
  i32.const 5
  f64.const 1.1
  f64.const 2.2
  f64.const 3.3
  f64.const 4.4
  f64.const 5.5
  call $~lib/builtins/trace
 )
 (func $~start (; 2 ;)
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:std/trace
 )
)
