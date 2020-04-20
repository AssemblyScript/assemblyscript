(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 1028) "\01\00\00\00\01")
 (data (i32.const 1040) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 1072) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data (i32.const 1120) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00i\00g\00n\00a\00t\00u\00r\00e\00s")
 (data (i32.const 1168) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00e\00s\00t\00i\00n\00g")
 (data (i32.const 1200) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00F\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 1232) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00C")
 (data (i32.const 1264) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
 (data (i32.const 1296) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l")
 (data (i32.const 1328) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00i\008")
 (data (i32.const 1360) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00u\008")
 (data (i32.const 1392) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\001\006")
 (data (i32.const 1424) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\001\006")
 (data (i32.const 1456) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\003\002")
 (data (i32.const 1488) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\003\002")
 (data (i32.const 1520) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\003\002")
 (data (i32.const 1552) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\006\004")
 (data (i32.const 1584) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\006\004")
 (data (i32.const 1616) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\006\004")
 (data (i32.const 1648) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00i\00s\00i\00z\00e")
 (data (i32.const 1680) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00u\00s\00i\00z\00e")
 (data (i32.const 1712) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00v\00o\00i\00d")
 (data (i32.const 1744) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00o\00m\00e\00 \00v\00a\00l\00u\00e")
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "test" (func $start:builtins~anonymous|0~nonClosure))
 (start $~start)
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
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
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
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
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
 (func $start:builtins~anonymous|0~nonClosure
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
   i32.const 424
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
   i32.const 425
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
   i32.const 426
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/atomics/Atomics.isLockFree
  if
   i32.const 0
   i32.const 1088
   i32.const 427
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
   i32.const 428
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  call $~lib/atomics/Atomics.isLockFree
  if
   i32.const 0
   i32.const 1088
   i32.const 429
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  call $~lib/atomics/Atomics.isLockFree
  if
   i32.const 0
   i32.const 1088
   i32.const 430
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1136
  i32.const 5
  f64.const 0
  f64.const 0
  f64.const 15
  f64.const 16
  f64.const 16
  call $~lib/builtins/trace
  i32.const 1216
  i32.const 1216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 447
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1216
  i32.const 1216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 448
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1248
  i32.const 1248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 449
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1280
  i32.const 1280
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 450
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1312
  i32.const 1312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 451
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1344
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 452
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1376
  i32.const 1376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 453
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1408
  i32.const 1408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 454
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1440
  i32.const 1440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 455
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1472
  i32.const 1472
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 456
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1504
  i32.const 1504
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 457
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1536
  i32.const 1536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 458
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1568
  i32.const 1568
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 459
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1600
  i32.const 1600
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 460
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1632
  i32.const 1632
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 461
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1664
  i32.const 1664
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 462
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1696
  i32.const 1696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 463
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1728
  i32.const 1728
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 464
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1280
  i32.const 1280
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 465
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1216
  i32.const 1216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 466
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:builtins
 )
)
