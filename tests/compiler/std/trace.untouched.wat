(module
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$v (func))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00i\00m\00p\00l\00i\00c\00i\00t\00")
 (data (i32.const 48) "\10\00\00\00\1a\00\00\00z\00e\00r\00o\00_\00e\00x\00p\00l\00i\00c\00i\00t\00")
 (data (i32.const 88) "\10\00\00\00\0e\00\00\00o\00n\00e\00_\00i\00n\00t\00")
 (data (i32.const 112) "\10\00\00\00\0e\00\00\00t\00w\00o\00_\00i\00n\00t\00")
 (data (i32.const 136) "\10\00\00\00\12\00\00\00t\00h\00r\00e\00e\00_\00i\00n\00t\00")
 (data (i32.const 168) "\10\00\00\00\10\00\00\00f\00o\00u\00r\00_\00i\00n\00t\00")
 (data (i32.const 192) "\10\00\00\00\10\00\00\00f\00i\00v\00e\00_\00i\00n\00t\00")
 (data (i32.const 216) "\10\00\00\00\10\00\00\00f\00i\00v\00e\00_\00d\00b\00l\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "main" (func $std/trace/main))
 (func $start:std/trace (; 1 ;) (type $FUNCSIG$v)
  i32.const 16
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 56
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 96
  i32.const 1
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 120
  i32.const 2
  f64.const 1
  f64.const 2
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 144
  i32.const 3
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 176
  i32.const 4
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 0
  call $~lib/builtins/trace
  i32.const 200
  i32.const 5
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  call $~lib/builtins/trace
  i32.const 224
  i32.const 5
  f64.const 1.1
  f64.const 2.2
  f64.const 3.3
  f64.const 4.4
  f64.const 5.5
  call $~lib/builtins/trace
 )
 (func $std/trace/main (; 2 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $start (; 3 ;) (type $FUNCSIG$v)
  call $start:std/trace
 )
 (func $null (; 4 ;) (type $FUNCSIG$v)
 )
)
