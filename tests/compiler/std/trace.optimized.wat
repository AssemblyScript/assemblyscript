(module
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$v (func))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00i\00m\00p\00l\00i\00c\00i\00t")
 (data (i32.const 56) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00e\00x\00p\00l\00i\00c\00i\00t")
 (data (i32.const 104) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00o\00n\00e\00_\00i\00n\00t")
 (data (i32.const 136) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00w\00o\00_\00i\00n\00t")
 (data (i32.const 168) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00t\00h\00r\00e\00e\00_\00i\00n\00t")
 (data (i32.const 208) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00o\00u\00r\00_\00i\00n\00t")
 (data (i32.const 240) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00i\00v\00e\00_\00i\00n\00t")
 (data (i32.const 272) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00i\00v\00e\00_\00d\00b\00l")
 (global $~lib/started (mut i32) (i32.const 0))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $start:std/trace (; 1 ;) (type $FUNCSIG$v)
  i32.const 24
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 72
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 120
  i32.const 1
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 152
  i32.const 2
  f64.const 1
  f64.const 2
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 184
  i32.const 3
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 224
  i32.const 4
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 0
  call $~lib/builtins/trace
  i32.const 256
  i32.const 5
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  call $~lib/builtins/trace
  i32.const 288
  i32.const 5
  f64.const 1.1
  f64.const 2.2
  f64.const 3.3
  f64.const 4.4
  f64.const 5.5
  call $~lib/builtins/trace
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  call $start:std/trace
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
