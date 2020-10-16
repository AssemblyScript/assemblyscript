(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 1028) "\01\00\00\00\01")
 (data (i32.const 1040) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 1072) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data (i32.const 1120) "\08\00\00\00\01\00\00\00\06\00\00\00\08\00\00\00\01")
 (data (i32.const 1152) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00(\00)\00 \00{\00 \00[\00n\00a\00t\00i\00v\00e\00 \00c\00o\00d\00e\00]\00 \00}")
 (data (i32.const 1232) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00i\00g\00n\00a\00t\00u\00r\00e\00s")
 (data (i32.const 1280) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00e\00s\00t\00i\00n\00g")
 (data (i32.const 1312) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00F\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 1344) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00C")
 (data (i32.const 1376) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
 (data (i32.const 1408) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l")
 (data (i32.const 1440) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00i\008")
 (data (i32.const 1472) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00u\008")
 (data (i32.const 1504) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\001\006")
 (data (i32.const 1536) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\001\006")
 (data (i32.const 1568) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\003\002")
 (data (i32.const 1600) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\003\002")
 (data (i32.const 1632) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\003\002")
 (data (i32.const 1664) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\006\004")
 (data (i32.const 1696) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\006\004")
 (data (i32.const 1728) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\006\004")
 (data (i32.const 1760) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00i\00s\00i\00z\00e")
 (data (i32.const 1792) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00u\00s\00i\00z\00e")
 (data (i32.const 1824) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00v\00o\00i\00d")
 (data (i32.const 1856) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00o\00m\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 1904) "\08\00\00\00\01\00\00\00\0b\00\00\00\08\00\00\00\02")
 (data (i32.const 1936) "\08\00\00\00\01\00\00\00\0c\00\00\00\08\00\00\00\03")
 (table $0 4 funcref)
 (elem (i32.const 1) $start:builtins~anonymous|0 $start:builtins~anonymous|1 $start:builtins~anonymous|2)
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "test" (func $start:builtins~anonymous|1))
 (start $~start)
 (func $start:builtins~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $2
   local.tee $3
   i32.const 1
   i32.sub
   local.set $2
   local.get $3
   if
    local.get $0
    i32.load16_u
    local.tee $3
    local.get $1
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $3
     local.get $4
     i32.sub
     return
    end
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   i32.const 16
   i32.sub
   i32.load offset=12
   i32.const 1
   i32.shr_u
   local.tee $2
   local.get $1
   i32.const 16
   i32.sub
   i32.load offset=12
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $~lib/atomics/Atomics.isLockFree (param $0 i32) (result i32)
  i32.const 1
  local.get $0
  i32.const 4
  i32.eq
  i32.const 1
  local.get $0
  i32.const 2
  i32.eq
  local.get $0
  i32.const 1
  i32.eq
  select
  select
 )
 (func $start:builtins~anonymous|1
  nop
 )
 (func $start:builtins~anonymous|2 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  nop
 )
 (func $start:builtins
  i32.const 31
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 2
  global.set $builtins/i
  i32.const -2147483648
  global.set $builtins/i
  i32.const 42
  global.set $builtins/i
  i32.const 2
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 3
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 6
  global.set $builtins/i
  i32.const 3
  global.set $builtins/i
  i64.const 63
  global.set $builtins/I
  i64.const 0
  global.set $builtins/I
  i64.const 1
  global.set $builtins/I
  i64.const 2
  global.set $builtins/I
  i64.const -9223372036854775808
  global.set $builtins/I
  i64.const 42
  global.set $builtins/I
  i64.const 2
  global.set $builtins/I
  i64.const 1
  global.set $builtins/I
  i64.const 3
  global.set $builtins/I
  i64.const 1
  global.set $builtins/I
  i64.const 6
  global.set $builtins/I
  i64.const 3
  global.set $builtins/I
  f32.const nan:0x400000
  global.set $builtins/f
  f32.const inf
  global.set $builtins/f
  f32.const 1.25
  global.set $builtins/f
  f32.const 2
  global.set $builtins/f
  f32.const 1.25
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  f32.const 4
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  f32.const 3
  global.set $builtins/f
  f32.const 3
  global.set $builtins/f
  f32.const 2.5
  global.set $builtins/f
  f32.const 1.25
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  f32.const 1.1180340051651
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  f64.const nan:0x8000000000000
  global.set $builtins/F
  f64.const inf
  global.set $builtins/F
  f64.const 1.25
  global.set $builtins/F
  f64.const 2
  global.set $builtins/F
  f64.const 1.25
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  f64.const 4
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  f64.const 3
  global.set $builtins/F
  f64.const 3
  global.set $builtins/F
  f64.const 2.5
  global.set $builtins/F
  f64.const 1.25
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  f64.const 1.118033988749895
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  f64.const 0
  global.set $builtins/F
  f32.const 1
  global.set $builtins/f
  f64.const 1.5
  global.set $builtins/F
  f32.const 1
  global.set $builtins/f
  f64.const 1
  global.set $builtins/F
  f32.const 1
  global.set $builtins/f
  f64.const 2
  global.set $builtins/F
  f32.const 2
  global.set $builtins/f
  f64.const 2
  global.set $builtins/F
  f32.const 1
  global.set $builtins/f
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  global.get $builtins/i
  i32.store
  i32.const 8
  i32.const 8
  i32.load
  i32.store
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  global.get $builtins/I
  i64.store
  i32.const 8
  i32.const 8
  i64.load
  i64.store
  i32.const 8
  f32.load
  global.set $builtins/f
  i32.const 8
  global.get $builtins/f
  f32.store
  i32.const 8
  i32.const 8
  f32.load
  f32.store
  i32.const 8
  f64.load
  global.set $builtins/F
  i32.const 8
  global.get $builtins/F
  f64.store
  i32.const 8
  i32.const 8
  f64.load
  f64.store
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  global.get $builtins/i
  i32.store
  i32.const 8
  i32.const 8
  i32.load
  i32.store
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  global.get $builtins/I
  i64.store
  i32.const 8
  i32.const 8
  i64.load
  i64.store
  i32.const 8
  f32.load
  global.set $builtins/f
  i32.const 8
  global.get $builtins/f
  f32.store
  i32.const 8
  i32.const 8
  f32.load
  f32.store
  i32.const 8
  f64.load
  global.set $builtins/F
  i32.const 8
  global.get $builtins/F
  f64.store
  i32.const 8
  i32.const 8
  f64.load
  f64.store
  i32.const 8
  i32.load8_s
  global.set $builtins/i
  i32.const 8
  i32.load16_s
  global.set $builtins/i
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  i32.load8_u
  global.set $builtins/i
  i32.const 8
  i32.load16_u
  global.set $builtins/i
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  i32.load8_u
  drop
  i32.const 8
  i32.load16_u
  drop
  i32.const 8
  i32.load
  drop
  i32.const 8
  i32.load8_s
  drop
  i32.const 8
  i32.load16_s
  drop
  i32.const 8
  i32.load
  drop
  i32.const 8
  i64.load8_s
  global.set $builtins/I
  i32.const 8
  i64.load16_s
  global.set $builtins/I
  i32.const 8
  i64.load32_s
  global.set $builtins/I
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  i64.load8_u
  drop
  i32.const 8
  i64.load16_u
  drop
  i32.const 8
  i64.load32_u
  drop
  i32.const 8
  i64.load
  drop
  i32.const 8
  i32.const 1
  i32.store8
  i32.const 8
  i32.const 1
  i32.store16
  i32.const 8
  i32.const 1
  i32.store
  i32.const 8
  i64.const 1
  i64.store8
  i32.const 8
  i64.const 1
  i64.store16
  i32.const 8
  i64.const 1
  i64.store32
  i32.const 8
  i64.const 1
  i64.store
  i32.const 8
  i64.const 1
  i64.store
  i32.const 1067450368
  global.set $builtins/i
  f32.const 3.5032461608120427e-44
  global.set $builtins/f
  i64.const 4608308318706860032
  global.set $builtins/I
  f64.const 1.24e-322
  global.set $builtins/F
  memory.size
  drop
  i32.const 1
  memory.grow
  drop
  memory.size
  drop
  i32.const 1
  memory.grow
  drop
  i32.const 10
  global.set $builtins/i
  i64.const 200
  global.set $builtins/I
  f32.const 1.25
  global.set $builtins/f
  f64.const 25
  global.set $builtins/F
  i32.const 1
  i32.const 2
  i32.const 1136
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 307
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 3
  i32.const 1136
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 308
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 309
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  i32.const 1168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 312
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.load8_s
  drop
  i32.const 8
  i32.load8_u
  drop
  i32.const 8
  i32.load16_s
  drop
  i32.const 8
  i32.load16_u
  drop
  i32.const 8
  i32.load
  drop
  i32.const 8
  i64.load8_s
  drop
  i32.const 8
  i64.load8_u
  drop
  i32.const 8
  i64.load16_s
  drop
  i32.const 8
  i64.load16_u
  drop
  i32.const 8
  i64.load32_s
  drop
  i32.const 8
  i64.load32_u
  drop
  i32.const 8
  i64.load
  drop
  i32.const 8
  f32.load
  drop
  i32.const 8
  f64.load
  drop
  i32.const 8
  i32.const 1
  i32.store8
  i32.const 8
  i32.const 1
  i32.store16
  i32.const 8
  i32.const 1
  i32.store
  i32.const 8
  i64.const 1
  i64.store8
  i32.const 8
  i64.const 1
  i64.store16
  i32.const 8
  i64.const 1
  i64.store32
  i32.const 8
  i64.const 1
  i64.store
  i32.const 8
  f32.const 1
  f32.store
  i32.const 8
  f64.const 1
  f64.store
  i32.const 0
  call $~lib/atomics/Atomics.isLockFree
  if
   i32.const 0
   i32.const 1088
   i32.const 494
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/atomics/Atomics.isLockFree
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 495
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/atomics/Atomics.isLockFree
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 496
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/atomics/Atomics.isLockFree
  if
   i32.const 0
   i32.const 1088
   i32.const 497
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  call $~lib/atomics/Atomics.isLockFree
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 498
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  call $~lib/atomics/Atomics.isLockFree
  if
   i32.const 0
   i32.const 1088
   i32.const 499
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  call $~lib/atomics/Atomics.isLockFree
  if
   i32.const 0
   i32.const 1088
   i32.const 500
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1248
  i32.const 5
  f64.const 0
  f64.const 0
  f64.const 25
  f64.const 26
  f64.const 26
  call $~lib/builtins/trace
  i32.const 1328
  i32.const 1328
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 517
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1328
  i32.const 1328
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 518
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1360
  i32.const 1360
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 519
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1392
  i32.const 1392
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 520
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1424
  i32.const 1424
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 521
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1456
  i32.const 1456
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 522
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1488
  i32.const 1488
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 523
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1520
  i32.const 1520
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 524
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1552
  i32.const 1552
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 525
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1584
  i32.const 1584
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 526
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1616
  i32.const 1616
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 527
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1648
  i32.const 1648
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 528
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1680
  i32.const 1680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1712
  i32.const 1712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1744
  i32.const 1744
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1776
  i32.const 1776
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1808
  i32.const 1808
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 533
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1840
  i32.const 1840
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 534
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1392
  i32.const 1392
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 535
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1328
  i32.const 1328
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 536
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:builtins
 )
)
