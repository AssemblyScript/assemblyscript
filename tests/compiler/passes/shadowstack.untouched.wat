(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00f\00o\00o\00(\001\00,\00 \002\00,\00 \00t\00r\00u\00e\00)\00:\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 76) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00 \00 \000\00\00\00\00\00\00\00")
 (data (i32.const 108) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00 \00 \004\00\00\00\00\00\00\00")
 (data (i32.const 140) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00 \00 \008\00\00\00\00\00\00\00")
 (data (i32.const 172) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00 \001\002\00\00\00\00\00\00\00")
 (data (i32.const 204) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00 \001\006\00\00\00\00\00\00\00")
 (data (i32.const 236) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00p\00a\00s\00s\00e\00s\00/\00s\00h\00a\00d\00o\00w\00s\00t\00a\00c\00k\00.\00t\00s\00\00\00")
 (data (i32.const 300) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00f\00o\00o\00(\001\00,\00 \002\00,\00 \00f\00a\00l\00s\00e\00)\00:\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 364) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00b\00a\00r\00(\007\00)\00:\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/__stackptr (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/rt/__managed (param $0 i32) (result i32)
  local.get $0
 )
 (func $passes/shadowstack/bar (param $0 i32)
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  i32.const 0
  i32.store
  global.get $~lib/rt/__stackptr
  local.get $0
  local.tee $0
  i32.store
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.add
  global.set $~lib/rt/__stackptr
 )
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
  (local $0 i32)
  i32.const 20
  global.set $~lib/rt/__stackptr
  i32.const 1
  local.set $0
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  local.get $0
  i32.store
  local.get $0
  i32.const 2
  local.set $0
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  local.get $0
  i32.store
  local.get $0
  i32.const 1
  call $passes/shadowstack/foo
  local.set $0
  global.get $~lib/rt/__stackptr
  i32.const 8
  i32.add
  global.set $~lib/rt/__stackptr
  local.get $0
  drop
  i32.const 32
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 96
  i32.const 1
  i32.const 0
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 128
  i32.const 1
  i32.const 4
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 160
  i32.const 1
  i32.const 8
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 192
  i32.const 1
  i32.const 12
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 224
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 256
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.set $0
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  local.get $0
  i32.store
  local.get $0
  i32.const 2
  local.set $0
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $passes/shadowstack/foo
  local.set $0
  global.get $~lib/rt/__stackptr
  i32.const 8
  i32.add
  global.set $~lib/rt/__stackptr
  local.get $0
  drop
  i32.const 320
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 96
  i32.const 1
  i32.const 0
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 128
  i32.const 1
  i32.const 4
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 160
  i32.const 1
  i32.const 8
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 192
  i32.const 1
  i32.const 12
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 224
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 256
   i32.const 40
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7
  local.set $0
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.sub
  global.set $~lib/rt/__stackptr
  global.get $~lib/rt/__stackptr
  local.get $0
  i32.store
  local.get $0
  call $passes/shadowstack/bar
  global.get $~lib/rt/__stackptr
  i32.const 4
  i32.add
  global.set $~lib/rt/__stackptr
  i32.const 384
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 96
  i32.const 1
  i32.const 0
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 128
  i32.const 1
  i32.const 4
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 160
  i32.const 1
  i32.const 8
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 192
  i32.const 1
  i32.const 12
  i32.load
  f64.convert_i32_s
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 224
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 256
   i32.const 51
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $passes/shadowstack/foo (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  local.tee $3
  i32.store
  global.get $~lib/rt/__stackptr
  i32.const 4
  local.tee $4
  i32.store offset=4
  local.get $2
  if
   global.get $~lib/rt/__stackptr
   i32.const 5
   local.tee $5
   i32.store offset=8
  else
   global.get $~lib/rt/__stackptr
   i32.const 6
   local.tee $5
   i32.store offset=8
  end
  local.get $1
  local.set $6
  global.get $~lib/rt/__stackptr
  i32.const 12
  i32.add
  global.set $~lib/rt/__stackptr
  local.get $6
 )
)
