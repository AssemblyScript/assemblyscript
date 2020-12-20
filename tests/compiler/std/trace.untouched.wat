(module
 (type $none_=>_none (func))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00i\00m\00p\00l\00i\00c\00i\00t\00\00\00")
 (data (i32.const 60) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00e\00x\00p\00l\00i\00c\00i\00t\00\00\00")
 (data (i32.const 108) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00o\00n\00e\00_\00i\00n\00t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 156) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00t\00w\00o\00_\00i\00n\00t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 204) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00t\00h\00r\00e\00e\00_\00i\00n\00t\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 252) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00f\00o\00u\00r\00_\00i\00n\00t\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 300) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00f\00i\00v\00e\00_\00i\00n\00t\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 348) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00f\00i\00v\00e\00_\00d\00b\00l\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $start:std/trace
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
  i32.const 176
  i32.const 2
  f64.const 1
  f64.const 2
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 224
  i32.const 3
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 272
  i32.const 4
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 0
  call $~lib/builtins/trace
  i32.const 320
  i32.const 5
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  call $~lib/builtins/trace
  i32.const 368
  i32.const 5
  f64.const 1.1
  f64.const 2.2
  f64.const 3.3
  f64.const 4.4
  f64.const 5.5
  call $~lib/builtins/trace
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:std/trace
 )
)
