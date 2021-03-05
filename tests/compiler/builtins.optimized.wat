(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01")
 (data (i32.const 1068) "\1c")
 (data (i32.const 1080) "\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 1100) ",")
 (data (i32.const 1112) "\01\00\00\00\16\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data (i32.const 1148) "\1c")
 (data (i32.const 1160) "\06\00\00\00\08\00\00\00\01")
 (data (i32.const 1180) "L")
 (data (i32.const 1192) "\01\00\00\008\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00(\00)\00 \00{\00 \00[\00n\00a\00t\00i\00v\00e\00 \00c\00o\00d\00e\00]\00 \00}")
 (data (i32.const 1260) ",")
 (data (i32.const 1272) "\01\00\00\00\14\00\00\00s\00i\00g\00n\00a\00t\00u\00r\00e\00s")
 (data (i32.const 1308) ",")
 (data (i32.const 1320) "\01\00\00\00\0e\00\00\00t\00e\00s\00t\00i\00n\00g")
 (data (i32.const 1356) ",")
 (data (i32.const 1368) "\01\00\00\00\10\00\00\00F\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 1404) "\1c")
 (data (i32.const 1416) "\01\00\00\00\02\00\00\00C")
 (data (i32.const 1436) "\1c")
 (data (i32.const 1448) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
 (data (i32.const 1468) "\1c")
 (data (i32.const 1480) "\01\00\00\00\08\00\00\00b\00o\00o\00l")
 (data (i32.const 1500) "\1c")
 (data (i32.const 1512) "\01\00\00\00\04\00\00\00i\008")
 (data (i32.const 1532) "\1c")
 (data (i32.const 1544) "\01\00\00\00\04\00\00\00u\008")
 (data (i32.const 1564) "\1c")
 (data (i32.const 1576) "\01\00\00\00\06\00\00\00i\001\006")
 (data (i32.const 1596) "\1c")
 (data (i32.const 1608) "\01\00\00\00\06\00\00\00u\001\006")
 (data (i32.const 1628) "\1c")
 (data (i32.const 1640) "\01\00\00\00\06\00\00\00i\003\002")
 (data (i32.const 1660) "\1c")
 (data (i32.const 1672) "\01\00\00\00\06\00\00\00u\003\002")
 (data (i32.const 1692) "\1c")
 (data (i32.const 1704) "\01\00\00\00\06\00\00\00f\003\002")
 (data (i32.const 1724) "\1c")
 (data (i32.const 1736) "\01\00\00\00\06\00\00\00i\006\004")
 (data (i32.const 1756) "\1c")
 (data (i32.const 1768) "\01\00\00\00\06\00\00\00u\006\004")
 (data (i32.const 1788) "\1c")
 (data (i32.const 1800) "\01\00\00\00\06\00\00\00f\006\004")
 (data (i32.const 1820) "\1c")
 (data (i32.const 1832) "\01\00\00\00\n\00\00\00i\00s\00i\00z\00e")
 (data (i32.const 1852) "\1c")
 (data (i32.const 1864) "\01\00\00\00\n\00\00\00u\00s\00i\00z\00e")
 (data (i32.const 1884) "\1c")
 (data (i32.const 1896) "\01\00\00\00\08\00\00\00v\00o\00i\00d")
 (data (i32.const 1916) ",")
 (data (i32.const 1928) "\01\00\00\00\14\00\00\00s\00o\00m\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 1964) "\1c")
 (data (i32.const 1976) "\0b\00\00\00\08\00\00\00\02")
 (data (i32.const 1996) "\1c")
 (data (i32.const 2008) "\0c\00\00\00\08\00\00\00\03")
 (table $0 4 funcref)
 (elem (i32.const 1) $start:builtins~anonymous|0 $start:builtins~anonymous|1 $start:builtins~anonymous|2)
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 18412))
 (export "test" (func $start:builtins~anonymous|1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:builtins~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $2
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  block $__inlined_func$~lib/util/string/compareImpl (result i32)
   local.get $0
   local.tee $3
   i32.const 7
   i32.and
   local.get $1
   i32.const 7
   i32.and
   i32.or
   i32.eqz
   i32.const 0
   local.get $2
   local.tee $0
   i32.const 4
   i32.ge_u
   select
   if
    loop $do-continue|0
     local.get $3
     i64.load
     local.get $1
     i64.load
     i64.eq
     if
      local.get $3
      i32.const 8
      i32.add
      local.set $3
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-continue|0
     end
    end
   end
   loop $while-continue|1
    local.get $0
    local.tee $2
    i32.const 1
    i32.sub
    local.set $0
    local.get $2
    if
     local.get $3
     i32.load16_u
     local.tee $2
     local.get $1
     i32.load16_u
     local.tee $4
     i32.ne
     if
      local.get $2
      local.get $4
      i32.sub
      br $__inlined_func$~lib/util/string/compareImpl
     end
     local.get $3
     i32.const 2
     i32.add
     local.set $3
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
  end
  i32.eqz
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
 (func $~start
  call $start:builtins
 )
 (func $start:builtins
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2028
  i32.lt_s
  if
   i32.const 18432
   i32.const 18480
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
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
  i32.const 1168
  i32.load
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 307
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store
  i32.const 2
  i32.const 3
  i32.const 1168
  i32.load
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 308
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store offset=4
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 309
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1200
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1200
  i32.store offset=4
  i32.const 1200
  i32.const 1200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
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
   i32.const 1120
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
   i32.const 1120
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
   i32.const 1120
   i32.const 496
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/atomics/Atomics.isLockFree
  if
   i32.const 0
   i32.const 1120
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
   i32.const 1120
   i32.const 498
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  call $~lib/atomics/Atomics.isLockFree
  if
   i32.const 0
   i32.const 1120
   i32.const 499
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  call $~lib/atomics/Atomics.isLockFree
  if
   i32.const 0
   i32.const 1120
   i32.const 500
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1280
  i32.store
  i32.const 1280
  i32.const 5
  f64.const 0
  f64.const 0
  f64.const 23
  f64.const 24
  f64.const 24
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  i32.const 1376
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1376
  i32.store offset=4
  i32.const 1376
  i32.const 1376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 517
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1376
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1376
  i32.store offset=4
  i32.const 1376
  i32.const 1376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 518
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1424
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1424
  i32.store offset=4
  i32.const 1424
  i32.const 1424
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 519
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1456
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1456
  i32.store offset=4
  i32.const 1456
  i32.const 1456
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 520
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store offset=4
  i32.const 1488
  i32.const 1488
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 521
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store offset=4
  i32.const 1520
  i32.const 1520
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 522
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1552
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1552
  i32.store offset=4
  i32.const 1552
  i32.const 1552
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 523
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1584
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1584
  i32.store offset=4
  i32.const 1584
  i32.const 1584
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 524
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1616
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1616
  i32.store offset=4
  i32.const 1616
  i32.const 1616
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 525
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store offset=4
  i32.const 1648
  i32.const 1648
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 526
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store offset=4
  i32.const 1680
  i32.const 1680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 527
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store offset=4
  i32.const 1712
  i32.const 1712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 528
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store offset=4
  i32.const 1744
  i32.const 1744
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1776
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1776
  i32.store offset=4
  i32.const 1776
  i32.const 1776
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store offset=4
  i32.const 1808
  i32.const 1808
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1840
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1840
  i32.store offset=4
  i32.const 1840
  i32.const 1840
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  i32.store offset=4
  i32.const 1872
  i32.const 1872
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 533
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1904
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1904
  i32.store offset=4
  i32.const 1904
  i32.const 1904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 534
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1456
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1456
  i32.store offset=4
  i32.const 1456
  i32.const 1456
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 535
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1376
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1376
  i32.store offset=4
  i32.const 1376
  i32.const 1376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 536
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
