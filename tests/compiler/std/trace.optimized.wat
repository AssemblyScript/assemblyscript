(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00i\00m\00p\00l\00i\00c\00i\00t")
 (data (i32.const 1084) ",")
 (data (i32.const 1096) "\01\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00e\00x\00p\00l\00i\00c\00i\00t")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\01\00\00\00\0e\00\00\00o\00n\00e\00_\00i\00n\00t")
 (data (i32.const 1180) ",")
 (data (i32.const 1192) "\01\00\00\00\0e\00\00\00t\00w\00o\00_\00i\00n\00t")
 (data (i32.const 1228) ",")
 (data (i32.const 1240) "\01\00\00\00\12\00\00\00t\00h\00r\00e\00e\00_\00i\00n\00t")
 (data (i32.const 1276) ",")
 (data (i32.const 1288) "\01\00\00\00\10\00\00\00f\00o\00u\00r\00_\00i\00n\00t")
 (data (i32.const 1324) ",")
 (data (i32.const 1336) "\01\00\00\00\10\00\00\00f\00i\00v\00e\00_\00i\00n\00t")
 (data (i32.const 1372) ",")
 (data (i32.const 1384) "\01\00\00\00\10\00\00\00f\00i\00v\00e\00_\00d\00b\00l")
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17804))
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:std/trace
 )
 (func $start:std/trace
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1420
  i32.lt_s
  if
   i32.const 17824
   i32.const 17872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  i32.const 1104
  i32.store
  i32.const 1104
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  i32.const 1152
  i32.store
  i32.const 1152
  i32.const 1
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  i32.const 1200
  i32.store
  i32.const 1200
  i32.const 2
  f64.const 1
  f64.const 2
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  i32.const 1248
  i32.store
  i32.const 1248
  i32.const 3
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  i32.const 1296
  i32.store
  i32.const 1296
  i32.const 4
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  i32.const 1344
  i32.store
  i32.const 1344
  i32.const 5
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  i32.const 1392
  i32.store
  i32.const 1392
  i32.const 5
  f64.const 1.1
  f64.const 2.2
  f64.const 3.3
  f64.const 4.4
  f64.const 5.5
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
