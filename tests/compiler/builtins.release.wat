(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34796))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\06\00\00\00a\00b\00c")
 (data $2 (i32.const 1100) ",")
 (data $2.1 (i32.const 1112) "\02\00\00\00\16\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data $3 (i32.const 1148) "\1c")
 (data $3.1 (i32.const 1160) "\07\00\00\00\08\00\00\00\01")
 (data $4 (i32.const 1180) "L")
 (data $4.1 (i32.const 1192) "\02\00\00\008\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00(\00)\00 \00{\00 \00[\00n\00a\00t\00i\00v\00e\00 \00c\00o\00d\00e\00]\00 \00}")
 (data $5 (i32.const 1260) ",")
 (data $5.1 (i32.const 1272) "\02\00\00\00\14\00\00\00s\00i\00g\00n\00a\00t\00u\00r\00e\00s")
 (data $6 (i32.const 1308) ",")
 (data $6.1 (i32.const 1320) "\02\00\00\00\0e\00\00\00t\00e\00s\00t\00i\00n\00g")
 (data $7 (i32.const 1356) ",")
 (data $7.1 (i32.const 1368) "\02\00\00\00\10\00\00\00F\00u\00n\00c\00t\00i\00o\00n")
 (data $8 (i32.const 1404) "\1c")
 (data $8.1 (i32.const 1416) "\02\00\00\00\02\00\00\00C")
 (data $9 (i32.const 1436) "\1c")
 (data $9.1 (i32.const 1448) "\02\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
 (data $10 (i32.const 1468) "\1c")
 (data $10.1 (i32.const 1480) "\02\00\00\00\08\00\00\00b\00o\00o\00l")
 (data $11 (i32.const 1500) "\1c")
 (data $11.1 (i32.const 1512) "\02\00\00\00\04\00\00\00i\008")
 (data $12 (i32.const 1532) "\1c")
 (data $12.1 (i32.const 1544) "\02\00\00\00\04\00\00\00u\008")
 (data $13 (i32.const 1564) "\1c")
 (data $13.1 (i32.const 1576) "\02\00\00\00\06\00\00\00i\001\006")
 (data $14 (i32.const 1596) "\1c")
 (data $14.1 (i32.const 1608) "\02\00\00\00\06\00\00\00u\001\006")
 (data $15 (i32.const 1628) "\1c")
 (data $15.1 (i32.const 1640) "\02\00\00\00\06\00\00\00i\003\002")
 (data $16 (i32.const 1660) "\1c")
 (data $16.1 (i32.const 1672) "\02\00\00\00\06\00\00\00u\003\002")
 (data $17 (i32.const 1692) "\1c")
 (data $17.1 (i32.const 1704) "\02\00\00\00\06\00\00\00f\003\002")
 (data $18 (i32.const 1724) "\1c")
 (data $18.1 (i32.const 1736) "\02\00\00\00\06\00\00\00i\006\004")
 (data $19 (i32.const 1756) "\1c")
 (data $19.1 (i32.const 1768) "\02\00\00\00\06\00\00\00u\006\004")
 (data $20 (i32.const 1788) "\1c")
 (data $20.1 (i32.const 1800) "\02\00\00\00\06\00\00\00f\006\004")
 (data $21 (i32.const 1820) "\1c")
 (data $21.1 (i32.const 1832) "\02\00\00\00\n\00\00\00i\00s\00i\00z\00e")
 (data $22 (i32.const 1852) "\1c")
 (data $22.1 (i32.const 1864) "\02\00\00\00\n\00\00\00u\00s\00i\00z\00e")
 (data $23 (i32.const 1884) "\1c")
 (data $23.1 (i32.const 1896) "\02\00\00\00\08\00\00\00v\00o\00i\00d")
 (data $24 (i32.const 1916) ",")
 (data $24.1 (i32.const 1928) "\02\00\00\00\14\00\00\00s\00o\00m\00e\00 \00v\00a\00l\00u\00e")
 (data $25 (i32.const 1964) "\1c")
 (data $25.1 (i32.const 1976) "\0c\00\00\00\08\00\00\00\02")
 (data $26 (i32.const 1996) "\1c")
 (data $26.1 (i32.const 2008) "\r\00\00\00\08\00\00\00\03")
 (table $0 4 4 funcref)
 (elem $0 (i32.const 1) $start:builtins~anonymous|0 $start:builtins~anonymous|1 $start:builtins~anonymous|2)
 (export "test" (func $start:builtins~anonymous|1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:builtins~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
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
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2028
  i32.lt_s
  if
   i32.const 34816
   i32.const 34864
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $0
  local.get $1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.set $3
   local.get $2
   local.get $1
   i32.store $0
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $0
   local.tee $2
   i32.const 7
   i32.and
   local.get $1
   i32.const 7
   i32.and
   i32.or
   i32.eqz
   local.get $3
   local.tee $0
   i32.const 4
   i32.ge_u
   i32.and
   if
    loop $do-loop|0
     local.get $2
     i64.load $0
     local.get $1
     i64.load $0
     i64.eq
     if
      local.get $2
      i32.const 8
      i32.add
      local.set $2
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
      br_if $do-loop|0
     end
    end
   end
   block $__inlined_func$~lib/util/string/compareImpl
    loop $while-continue|1
     local.get $0
     local.tee $3
     i32.const 1
     i32.sub
     local.set $0
     local.get $3
     if
      local.get $2
      i32.load16_u $0
      local.tee $5
      local.get $1
      i32.load16_u $0
      local.tee $4
      i32.sub
      local.set $3
      local.get $4
      local.get $5
      i32.ne
      br_if $__inlined_func$~lib/util/string/compareImpl
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    i32.const 0
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.eqz
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $start:builtins
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2028
  i32.lt_s
  if
   i32.const 34816
   i32.const 34864
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  i32.const 1
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
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
  i32.const 1
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 1
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
  i32.const 1
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i64.const 1
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
  i32.const 1
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
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
  i32.const 1
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
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
  i32.load $0
  global.set $builtins/i
  i32.const 8
  global.get $builtins/i
  i32.store $0
  i32.const 8
  i32.const 8
  i32.load $0
  i32.store $0
  i32.const 8
  i64.load $0
  global.set $builtins/I
  i32.const 8
  global.get $builtins/I
  i64.store $0
  i32.const 8
  i32.const 8
  i64.load $0
  i64.store $0
  i32.const 8
  f32.load $0
  global.set $builtins/f
  i32.const 8
  global.get $builtins/f
  f32.store $0
  i32.const 8
  i32.const 8
  f32.load $0
  f32.store $0
  i32.const 8
  f64.load $0
  global.set $builtins/F
  i32.const 8
  global.get $builtins/F
  f64.store $0
  i32.const 8
  i32.const 8
  f64.load $0
  f64.store $0
  i32.const 8
  i32.load $0
  global.set $builtins/i
  i32.const 8
  global.get $builtins/i
  i32.store $0
  i32.const 8
  i32.const 8
  i32.load $0
  i32.store $0
  i32.const 8
  i64.load $0
  global.set $builtins/I
  i32.const 8
  global.get $builtins/I
  i64.store $0
  i32.const 8
  i32.const 8
  i64.load $0
  i64.store $0
  i32.const 8
  f32.load $0
  global.set $builtins/f
  i32.const 8
  global.get $builtins/f
  f32.store $0
  i32.const 8
  i32.const 8
  f32.load $0
  f32.store $0
  i32.const 8
  f64.load $0
  global.set $builtins/F
  i32.const 8
  global.get $builtins/F
  f64.store $0
  i32.const 8
  i32.const 8
  f64.load $0
  f64.store $0
  i32.const 8
  i32.load8_s $0
  global.set $builtins/i
  i32.const 8
  i32.load16_s $0
  global.set $builtins/i
  i32.const 8
  i32.load $0
  global.set $builtins/i
  i32.const 8
  i32.load8_u $0
  global.set $builtins/i
  i32.const 8
  i32.load16_u $0
  global.set $builtins/i
  i32.const 8
  i32.load $0
  global.set $builtins/i
  i32.const 8
  i32.load $0
  drop
  i32.const 8
  i64.load8_s $0
  global.set $builtins/I
  i32.const 8
  i64.load16_s $0
  global.set $builtins/I
  i32.const 8
  i64.load32_s $0
  global.set $builtins/I
  i32.const 8
  i64.load $0
  global.set $builtins/I
  i32.const 8
  i64.load8_u $0
  drop
  i32.const 8
  i64.load16_u $0
  drop
  i32.const 8
  i64.load32_u $0
  drop
  i32.const 8
  i64.load $0
  drop
  i32.const 8
  i32.const 1
  i32.store8 $0
  i32.const 8
  i32.const 1
  i32.store16 $0
  i32.const 8
  i32.const 1
  i32.store $0
  i32.const 8
  i64.const 1
  i64.store8 $0
  i32.const 8
  i64.const 1
  i64.store16 $0
  i32.const 8
  i64.const 1
  i64.store32 $0
  i32.const 8
  i64.const 1
  i64.store $0
  i32.const 8
  i64.const 1
  i64.store $0
  i32.const 1067450368
  global.set $builtins/i
  f32.const 3.5032461608120427e-44
  global.set $builtins/f
  i64.const 4608308318706860032
  global.set $builtins/I
  f64.const 1.24e-322
  global.set $builtins/F
  memory.size $0
  drop
  i32.const 1
  memory.grow $0
  drop
  memory.size $0
  drop
  i32.const 1
  memory.grow $0
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
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 400
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store $0
  i32.const 2
  i32.const 3
  i32.const 1168
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 401
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1168
  i32.store $0 offset=8
  local.get $0
  i32.const 1056
  i32.store $0
  local.get $0
  i32.const 1056
  i32.store $0 offset=4
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 402
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1168
  i32.store $0
  local.get $0
  i32.const 1168
  i32.store $0
  local.get $0
  i32.const 1168
  i32.store $0 offset=8
  local.get $0
  i32.const 1200
  i32.store $0
  local.get $0
  i32.const 1200
  i32.store $0 offset=4
  i32.const 1200
  i32.const 1200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 405
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.load8_s $0
  drop
  i32.const 8
  i32.load8_u $0
  drop
  i32.const 8
  i32.load16_s $0
  drop
  i32.const 8
  i32.load16_u $0
  drop
  i32.const 8
  i32.load $0
  drop
  i32.const 8
  i64.load8_s $0
  drop
  i32.const 8
  i64.load8_u $0
  drop
  i32.const 8
  i64.load16_s $0
  drop
  i32.const 8
  i64.load16_u $0
  drop
  i32.const 8
  i64.load32_s $0
  drop
  i32.const 8
  i64.load32_u $0
  drop
  i32.const 8
  i64.load $0
  drop
  i32.const 8
  f32.load $0
  drop
  i32.const 8
  f64.load $0
  drop
  i32.const 8
  i32.const 1
  i32.store8 $0
  i32.const 8
  i32.const 1
  i32.store16 $0
  i32.const 8
  i32.const 1
  i32.store $0
  i32.const 8
  i64.const 1
  i64.store8 $0
  i32.const 8
  i64.const 1
  i64.store16 $0
  i32.const 8
  i64.const 1
  i64.store32 $0
  i32.const 8
  i64.const 1
  i64.store $0
  i32.const 8
  f32.const 1
  f32.store $0
  i32.const 8
  f64.const 1
  f64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1280
  i32.store $0
  i32.const 1280
  i32.const 5
  f64.const 0
  f64.const 0
  f64.const 51
  f64.const 52
  f64.const 52
  call $~lib/builtins/trace
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1376
  i32.store $0
  local.get $0
  i32.const 1376
  i32.store $0 offset=4
  i32.const 1376
  i32.const 1376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 610
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1376
  i32.store $0
  local.get $0
  i32.const 1376
  i32.store $0 offset=4
  i32.const 1376
  i32.const 1376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 611
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1424
  i32.store $0
  local.get $0
  i32.const 1424
  i32.store $0 offset=4
  i32.const 1424
  i32.const 1424
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 612
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1456
  i32.store $0
  local.get $0
  i32.const 1456
  i32.store $0 offset=4
  i32.const 1456
  i32.const 1456
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 613
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1488
  i32.store $0
  local.get $0
  i32.const 1488
  i32.store $0 offset=4
  i32.const 1488
  i32.const 1488
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 614
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1520
  i32.store $0
  local.get $0
  i32.const 1520
  i32.store $0 offset=4
  i32.const 1520
  i32.const 1520
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 615
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1552
  i32.store $0
  local.get $0
  i32.const 1552
  i32.store $0 offset=4
  i32.const 1552
  i32.const 1552
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 616
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1584
  i32.store $0
  local.get $0
  i32.const 1584
  i32.store $0 offset=4
  i32.const 1584
  i32.const 1584
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 617
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1616
  i32.store $0
  local.get $0
  i32.const 1616
  i32.store $0 offset=4
  i32.const 1616
  i32.const 1616
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 618
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1648
  i32.store $0
  local.get $0
  i32.const 1648
  i32.store $0 offset=4
  i32.const 1648
  i32.const 1648
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 619
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1680
  i32.store $0
  local.get $0
  i32.const 1680
  i32.store $0 offset=4
  i32.const 1680
  i32.const 1680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 620
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1712
  i32.store $0
  local.get $0
  i32.const 1712
  i32.store $0 offset=4
  i32.const 1712
  i32.const 1712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 621
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1744
  i32.store $0
  local.get $0
  i32.const 1744
  i32.store $0 offset=4
  i32.const 1744
  i32.const 1744
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 622
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1776
  i32.store $0
  local.get $0
  i32.const 1776
  i32.store $0 offset=4
  i32.const 1776
  i32.const 1776
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 623
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1808
  i32.store $0
  local.get $0
  i32.const 1808
  i32.store $0 offset=4
  i32.const 1808
  i32.const 1808
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 624
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1840
  i32.store $0
  local.get $0
  i32.const 1840
  i32.store $0 offset=4
  i32.const 1840
  i32.const 1840
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 625
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1872
  i32.store $0
  local.get $0
  i32.const 1872
  i32.store $0 offset=4
  i32.const 1872
  i32.const 1872
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 626
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1904
  i32.store $0
  local.get $0
  i32.const 1904
  i32.store $0 offset=4
  i32.const 1904
  i32.const 1904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 627
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1456
  i32.store $0
  local.get $0
  i32.const 1456
  i32.store $0 offset=4
  i32.const 1456
  i32.const 1456
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 628
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1376
  i32.store $0
  local.get $0
  i32.const 1376
  i32.store $0 offset=4
  i32.const 1376
  i32.const 1376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 629
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
