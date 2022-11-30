(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $i32_i32_i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32 i32 i32) (result i32) func))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func_subtype (param i32 i32 f64 f64 f64 f64 f64) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/l (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/v (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $~lib/builtins/f32.NaN f32 (f32.const nan:0x400000))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $~lib/builtins/f64.NaN f64 (f64.const nan:0x8000000000000))
 (global $builtins/constantOffset i32 (i32.const 8))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (global $builtins/fn (mut i32) (i32.const 144))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/builtins/i8.MIN_VALUE i32 (i32.const -128))
 (global $~lib/builtins/i8.MAX_VALUE i32 (i32.const 127))
 (global $~lib/builtins/i16.MIN_VALUE i32 (i32.const -32768))
 (global $~lib/builtins/i16.MAX_VALUE i32 (i32.const 32767))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/builtins/i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/builtins/u8.MIN_VALUE i32 (i32.const 0))
 (global $~lib/builtins/u8.MAX_VALUE i32 (i32.const 255))
 (global $~lib/builtins/u16.MIN_VALUE i32 (i32.const 0))
 (global $~lib/builtins/u16.MAX_VALUE i32 (i32.const 65535))
 (global $~lib/builtins/u32.MIN_VALUE i32 (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u64.MIN_VALUE i64 (i64.const 0))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/builtins/bool.MIN_VALUE i32 (i32.const 0))
 (global $~lib/builtins/bool.MAX_VALUE i32 (i32.const 1))
 (global $~lib/builtins/f32.MIN_NORMAL_VALUE f32 (f32.const 1.1754943508222875e-38))
 (global $~lib/builtins/f32.MIN_VALUE f32 (f32.const 1.401298464324817e-45))
 (global $~lib/builtins/f32.MAX_VALUE f32 (f32.const 3402823466385288598117041e14))
 (global $~lib/builtins/f32.MIN_SAFE_INTEGER f32 (f32.const -16777215))
 (global $~lib/builtins/f32.MAX_SAFE_INTEGER f32 (f32.const 16777215))
 (global $~lib/builtins/f32.EPSILON f32 (f32.const 1.1920928955078125e-07))
 (global $~lib/builtins/f64.MIN_NORMAL_VALUE f64 (f64.const 2.2250738585072014e-308))
 (global $~lib/builtins/f64.MIN_VALUE f64 (f64.const 5e-324))
 (global $~lib/builtins/f64.MAX_VALUE f64 (f64.const 1797693134862315708145274e284))
 (global $~lib/builtins/f64.MIN_SAFE_INTEGER f64 (f64.const -9007199254740991))
 (global $~lib/builtins/f64.MAX_SAFE_INTEGER f64 (f64.const 9007199254740991))
 (global $~lib/builtins/f64.EPSILON f64 (f64.const 2.220446049250313e-16))
 (global $~lib/memory/__data_end i32 (i32.const 1004))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33772))
 (global $~lib/memory/__heap_base i32 (i32.const 33772))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00a\00b\00c\00\00\00\00\00\00\00")
 (data (i32.const 76) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 124) "\1c\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 156) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\008\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00(\00)\00 \00{\00 \00[\00n\00a\00t\00i\00v\00e\00 \00c\00o\00d\00e\00]\00 \00}\00\00\00\00\00")
 (data (i32.const 236) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00s\00i\00g\00n\00a\00t\00u\00r\00e\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 284) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00t\00e\00s\00t\00i\00n\00g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 332) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\10\00\00\00F\00u\00n\00c\00t\00i\00o\00n\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 380) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00C\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 412) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g\00")
 (data (i32.const 444) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00b\00o\00o\00l\00\00\00\00\00")
 (data (i32.const 476) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00i\008\00\00\00\00\00\00\00\00\00")
 (data (i32.const 508) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00u\008\00\00\00\00\00\00\00\00\00")
 (data (i32.const 540) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00i\001\006\00\00\00\00\00\00\00")
 (data (i32.const 572) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00u\001\006\00\00\00\00\00\00\00")
 (data (i32.const 604) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00i\003\002\00\00\00\00\00\00\00")
 (data (i32.const 636) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00u\003\002\00\00\00\00\00\00\00")
 (data (i32.const 668) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00f\003\002\00\00\00\00\00\00\00")
 (data (i32.const 700) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00i\006\004\00\00\00\00\00\00\00")
 (data (i32.const 732) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00u\006\004\00\00\00\00\00\00\00")
 (data (i32.const 764) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00f\006\004\00\00\00\00\00\00\00")
 (data (i32.const 796) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00i\00s\00i\00z\00e\00\00\00")
 (data (i32.const 828) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00u\00s\00i\00z\00e\00\00\00")
 (data (i32.const 860) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00v\00o\00i\00d\00\00\00\00\00")
 (data (i32.const 892) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00s\00o\00m\00e\00 \00v\00a\00l\00u\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 940) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 972) "\1c\00\00\00\00\00\00\00\00\00\00\00\r\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 4 4 funcref)
 (elem $0 (i32.const 1) $start:builtins~anonymous|0 $start:builtins~anonymous|1 $start:builtins~anonymous|2)
 (export "test" (func $builtins/test))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:builtins~anonymous|0 (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.add
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:index (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:name (type $i32_=>_i32) (param $this i32) (result i32)
  i32.const 32
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=16
 )
 (func $~lib/string/String#get:length (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (type $i32_i32_i32_i32_i32_=>_i32) (param $str1 i32) (param $index1 i32) (param $str2 i32) (param $index2 i32) (param $len i32) (result i32)
  (local $ptr1 i32)
  (local $ptr2 i32)
  (local $7 i32)
  (local $8 i32)
  (local $a i32)
  (local $b i32)
  local.get $str1
  local.get $index1
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr1
  local.get $str2
  local.get $index2
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr2
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $len
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $ptr1
   i32.const 7
   i32.and
   local.get $ptr2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $ptr1
     i64.load $0
     local.get $ptr2
     i64.load $0
     i64.ne
     if
      br $do-break|0
     end
     local.get $ptr1
     i32.const 8
     i32.add
     local.set $ptr1
     local.get $ptr2
     i32.const 8
     i32.add
     local.set $ptr2
     local.get $len
     i32.const 4
     i32.sub
     local.set $len
     local.get $len
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $len
   local.tee $7
   i32.const 1
   i32.sub
   local.set $len
   local.get $7
   local.set $8
   local.get $8
   if
    local.get $ptr1
    i32.load16_u $0
    local.set $a
    local.get $ptr2
    i32.load16_u $0
    local.set $b
    local.get $a
    local.get $b
    i32.ne
    if
     local.get $a
     local.get $b
     i32.sub
     return
    end
    local.get $ptr1
    i32.const 2
    i32.add
    local.set $ptr1
    local.get $ptr2
    i32.const 2
    i32.add
    local.set $ptr2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (type $i32_i32_=>_i32) (param $left i32) (param $right i32) (result i32)
  (local $leftLength i32)
  local.get $left
  local.get $right
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $left
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $right
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $left
  call $~lib/string/String#get:length
  local.set $leftLength
  local.get $leftLength
  local.get $right
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $left
  i32.const 0
  local.get $right
  i32.const 0
  local.get $leftLength
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:length (type $i32_=>_i32) (param $this i32) (result i32)
  i32.const 2
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>#toString (type $i32_=>_i32) (param $this i32) (result i32)
  i32.const 176
 )
 (func $~lib/atomics/Atomics.isLockFree (type $i32_=>_i32) (param $size i32) (result i32)
  local.get $size
  i32.const 1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $size
   i32.const 2
   i32.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $size
   i32.const 4
   i32.eq
  end
 )
 (func $start:builtins~anonymous|1 (type $none_=>_none)
  nop
 )
 (func $start:builtins~anonymous|2 (type $i32_i32_i32_i32_=>_none) (param $a i32) (param $b i32) (param $c i32) (param $d i32)
  nop
 )
 (func $builtins/max3 (type $i32_i32_i32_=>_i32) (param $a i32) (param $b i32) (param $c i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $a
  local.tee $5
  local.get $b
  local.tee $3
  local.get $c
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_s
  select
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
 )
 (func $builtins/min3 (type $i32_i32_i32_=>_i32) (param $a i32) (param $b i32) (param $c i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $a
  local.tee $5
  local.get $b
  local.tee $3
  local.get $c
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.tee $6
  local.get $5
  local.get $6
  i32.lt_s
  select
 )
 (func $builtins/rotl3 (type $i32_i32_i32_=>_i32) (param $a i32) (param $b i32) (param $c i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $a
  i32.extend8_s
  local.tee $5
  local.get $b
  i32.extend8_s
  local.tee $3
  local.get $c
  local.tee $4
  i32.const 7
  i32.and
  i32.shl
  local.get $3
  i32.const 0
  local.get $4
  i32.sub
  i32.const 7
  i32.and
  i32.shr_u
  i32.or
  local.tee $6
  i32.const 7
  i32.and
  i32.shl
  local.get $5
  i32.const 0
  local.get $6
  i32.sub
  i32.const 7
  i32.and
  i32.shr_u
  i32.or
  i32.extend8_s
 )
 (func $builtins/rotr3 (type $i32_i32_i32_=>_i32) (param $a i32) (param $b i32) (param $c i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $a
  i32.extend8_s
  local.tee $5
  local.get $b
  i32.extend8_s
  local.tee $3
  local.get $c
  local.tee $4
  i32.const 7
  i32.and
  i32.shr_u
  local.get $3
  i32.const 0
  local.get $4
  i32.sub
  i32.const 7
  i32.and
  i32.shl
  i32.or
  local.tee $6
  i32.const 7
  i32.and
  i32.shr_u
  local.get $5
  i32.const 0
  local.get $6
  i32.sub
  i32.const 7
  i32.and
  i32.shl
  i32.or
  i32.extend8_s
 )
 (func $builtins/test (type $none_=>_none)
  nop
 )
 (func $~start (type $none_=>_none)
  call $start:builtins
 )
 (func $~stack_check (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 33792
   i32.const 33840
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:builtins (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 f32)
  (local $25 f32)
  (local $26 f32)
  (local $27 f32)
  (local $28 f32)
  (local $29 f32)
  (local $30 f32)
  (local $31 f32)
  (local $32 f64)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 f64)
  (local $39 f64)
  (local $40 f32)
  (local $41 f64)
  (local $42 f32)
  (local $43 f32)
  (local $44 f64)
  (local $45 f64)
  (local $46 f32)
  (local $47 f64)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i64)
  (local $58 i64)
  (local $59 i64)
  (local $60 i64)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  i32.const 2
  i32.add
  i32.extend8_s
  global.set $builtins/l
  global.get $builtins/l
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 51
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 1
  i32.sub
  i32.extend8_s
  global.set $builtins/l
  global.get $builtins/l
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 52
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.mul
  global.set $builtins/l
  global.get $builtins/l
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 53
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  i32.const 2
  i32.div_s
  i32.extend8_s
  global.set $builtins/l
  global.get $builtins/l
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 54
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1
  i32.eq
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 55
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 0
  i32.eq
  global.set $builtins/i
  global.get $builtins/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 56
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1
  i32.ne
  global.set $builtins/i
  global.get $builtins/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 57
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 0
  i32.ne
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 58
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 143
  local.tee $0
  i32.const 3
  local.tee $1
  i32.const 7
  i32.and
  i32.shl
  local.get $0
  i32.const 0
  local.get $1
  i32.sub
  i32.const 7
  i32.and
  i32.shr_u
  i32.or
  i32.const 255
  i32.and
  global.set $builtins/v
  global.get $builtins/v
  i32.const 124
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 61
   i32.const 34
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 170
  local.tee $2
  i32.const 1
  local.tee $3
  i32.const 7
  i32.and
  i32.shr_u
  local.get $2
  i32.const 0
  local.get $3
  i32.sub
  i32.const 7
  i32.and
  i32.shl
  i32.or
  i32.const 255
  i32.and
  global.set $builtins/v
  global.get $builtins/v
  i32.const 85
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 62
   i32.const 34
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.clz
  drop
  i32.const 1
  i32.ctz
  drop
  i32.const 1
  i32.popcnt
  drop
  i32.const 1
  i32.const 1
  i32.rotl
  drop
  i32.const 1
  i32.const 1
  i32.rotr
  drop
  i32.const -42
  local.tee $4
  i32.const 31
  i32.shr_s
  local.tee $5
  local.get $4
  i32.add
  local.get $5
  i32.xor
  drop
  i32.const 1
  local.tee $6
  i32.const 2
  local.tee $7
  local.get $6
  local.get $7
  i32.gt_s
  select
  drop
  i32.const 1
  local.tee $8
  i32.const 2
  local.tee $9
  local.get $8
  local.get $9
  i32.lt_s
  select
  drop
  i32.const 1
  i32.const 2
  i32.add
  drop
  i32.const 2
  i32.const 1
  i32.sub
  drop
  i32.const 1
  i32.const 2
  i32.mul
  drop
  i32.const 6
  i32.const 2
  i32.div_s
  drop
  i32.const 1
  i32.const 0
  i32.eq
  drop
  i32.const 1
  i32.const 0
  i32.ne
  drop
  i32.const 1
  i32.clz
  drop
  i32.const 1
  i32.ctz
  drop
  i32.const 1
  i32.popcnt
  drop
  i32.const 1
  i32.const 1
  i32.rotl
  drop
  i32.const 1
  i32.const 1
  i32.rotr
  drop
  i32.const 1
  i32.const 2
  i32.add
  drop
  i32.const 2
  i32.const 1
  i32.sub
  drop
  i32.const 1
  i32.const 2
  i32.mul
  drop
  i32.const 1
  i32.const 0
  i32.eq
  drop
  i32.const 1
  i32.const 0
  i32.ne
  drop
  i32.const 1
  i32.clz
  global.set $builtins/i
  i32.const 1
  i32.ctz
  global.set $builtins/i
  i32.const 1
  i32.popcnt
  global.set $builtins/i
  i32.const 1
  i32.const 1
  i32.rotl
  global.set $builtins/i
  i32.const 1
  i32.const 1
  i32.rotr
  global.set $builtins/i
  i32.const -42
  local.tee $10
  i32.const 31
  i32.shr_s
  local.tee $11
  local.get $10
  i32.add
  local.get $11
  i32.xor
  global.set $builtins/i
  global.get $builtins/i
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 99
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.tee $12
  i32.const 2
  local.tee $13
  local.get $12
  local.get $13
  i32.gt_s
  select
  global.set $builtins/i
  global.get $builtins/i
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 100
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.tee $14
  i32.const 2
  local.tee $15
  local.get $14
  local.get $15
  i32.lt_s
  select
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 101
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.add
  global.set $builtins/i
  global.get $builtins/i
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 102
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 1
  i32.sub
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 103
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 3
  i32.mul
  global.set $builtins/i
  global.get $builtins/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 104
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  i32.const 2
  i32.div_s
  global.set $builtins/i
  global.get $builtins/i
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 105
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1
  i32.eq
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 106
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 0
  i32.eq
  global.set $builtins/i
  global.get $builtins/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 107
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1
  i32.ne
  global.set $builtins/i
  global.get $builtins/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 108
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 0
  i32.ne
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 109
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  i32.rem_s
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 110
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 15
  i32.const 4
  i32.rem_s
  global.set $builtins/i
  global.get $builtins/i
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 111
   i32.const 22
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64.clz
  drop
  i64.const 1
  i64.ctz
  drop
  i64.const 1
  i64.popcnt
  drop
  i64.const 1
  i64.const 1
  i64.rotl
  drop
  i64.const 1
  i64.const 1
  i64.rotr
  drop
  i64.const -42
  local.tee $16
  i64.const 63
  i64.shr_s
  local.tee $17
  local.get $16
  i64.add
  local.get $17
  i64.xor
  drop
  i64.const 1
  i64.const 0
  i64.eq
  drop
  i64.const 1
  i64.const 0
  i64.ne
  drop
  i64.const 1
  i64.clz
  drop
  i64.const 1
  i64.ctz
  drop
  i64.const 1
  i64.popcnt
  drop
  i64.const 1
  i64.const 1
  i64.rotl
  drop
  i64.const 1
  i64.const 1
  i64.rotr
  drop
  i64.const 1
  i64.const 0
  i64.eq
  drop
  i64.const 1
  i64.const 0
  i64.ne
  drop
  i64.const 1
  i64.clz
  global.set $builtins/I
  i64.const 1
  i64.ctz
  global.set $builtins/I
  i64.const 1
  i64.popcnt
  global.set $builtins/I
  i64.const 1
  i64.const 1
  i64.rotl
  global.set $builtins/I
  i64.const 1
  i64.const 1
  i64.rotr
  global.set $builtins/I
  i64.const -42
  local.tee $18
  i64.const 63
  i64.shr_s
  local.tee $19
  local.get $18
  i64.add
  local.get $19
  i64.xor
  global.set $builtins/I
  global.get $builtins/I
  i64.const 42
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 137
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  local.tee $20
  i64.const 2
  local.tee $21
  local.get $20
  local.get $21
  i64.gt_s
  select
  global.set $builtins/I
  global.get $builtins/I
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 138
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  local.tee $22
  i64.const 2
  local.tee $23
  local.get $22
  local.get $23
  i64.lt_s
  select
  global.set $builtins/I
  global.get $builtins/I
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 139
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64.const 2
  i64.add
  global.set $builtins/I
  global.get $builtins/I
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 140
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 2
  i64.const 1
  i64.sub
  global.set $builtins/I
  global.get $builtins/I
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 141
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 2
  i64.const 3
  i64.mul
  global.set $builtins/I
  global.get $builtins/I
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 142
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 6
  i64.const 2
  i64.div_s
  global.set $builtins/I
  global.get $builtins/I
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 143
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64.const 1
  i64.eq
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 144
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64.const 0
  i64.eq
  global.set $builtins/i
  global.get $builtins/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 145
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64.const 1
  i64.ne
  global.set $builtins/i
  global.get $builtins/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 146
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64.const 0
  i64.ne
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 147
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64.const 3
  i64.rem_s
  global.set $builtins/I
  global.get $builtins/I
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 148
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 15
  i64.const 4
  i64.rem_s
  global.set $builtins/I
  global.get $builtins/I
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 149
   i32.const 22
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  drop
  f32.const inf
  drop
  f32.const 1.25
  f32.abs
  drop
  f32.const 1.25
  f32.ceil
  drop
  f32.const 1.25
  f32.const 2.5
  f32.copysign
  drop
  f32.const 1.25
  f32.floor
  drop
  f32.const 1.5
  f32.const 2.5
  f32.add
  drop
  f32.const 2.5
  f32.const 1.5
  f32.sub
  drop
  f32.const 1.5
  f32.const 2
  f32.mul
  drop
  f32.const 1.5
  f32.const 0.5
  f32.div
  drop
  f32.const 1.25
  f32.const 2.5
  f32.max
  drop
  f32.const 1.25
  f32.const 2.5
  f32.min
  drop
  f32.const 1.25
  f32.nearest
  drop
  f32.const 1.25
  f32.sqrt
  drop
  f32.const 1.25
  f32.trunc
  drop
  f32.const 1.5
  f32.const 2.5
  f32.eq
  drop
  f32.const 1.5
  f32.const 2.5
  f32.ne
  drop
  f32.const 1.25
  local.tee $24
  local.get $24
  f32.ne
  i32.const 0
  i32.eq
  drop
  f32.const nan:0x400000
  local.tee $25
  local.get $25
  f32.ne
  i32.const 1
  i32.eq
  drop
  f32.const 1.25
  local.tee $26
  local.get $26
  f32.sub
  f32.const 0
  f32.eq
  i32.const 1
  i32.eq
  drop
  f32.const inf
  local.tee $27
  local.get $27
  f32.sub
  f32.const 0
  f32.eq
  i32.const 0
  i32.eq
  drop
  f32.const inf
  f32.neg
  local.tee $28
  local.get $28
  f32.sub
  f32.const 0
  f32.eq
  i32.const 0
  i32.eq
  drop
  f32.const nan:0x400000
  local.tee $29
  local.get $29
  f32.sub
  f32.const 0
  f32.eq
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/f32.NaN
  drop
  f32.const 1.25
  f32.abs
  drop
  f32.const 1.25
  f32.ceil
  drop
  f32.const 1.25
  f32.const 2.5
  f32.copysign
  drop
  f32.const 1.25
  f32.floor
  drop
  f32.const 1.5
  f32.const 2.5
  f32.add
  drop
  f32.const 2.5
  f32.const 1.5
  f32.sub
  drop
  f32.const 1.5
  f32.const 2
  f32.mul
  drop
  f32.const 1.5
  f32.const 0.5
  f32.div
  drop
  f32.const 1.25
  f32.const 2.5
  f32.max
  drop
  f32.const 1.25
  f32.const 2.5
  f32.min
  drop
  f32.const 1.25
  f32.nearest
  drop
  f32.const 1.25
  f32.sqrt
  drop
  f32.const 1.25
  f32.trunc
  drop
  f32.const 1.5
  f32.const 2.5
  f32.eq
  drop
  f32.const 1.5
  f32.const 2.5
  f32.ne
  drop
  f32.const nan:0x400000
  global.set $builtins/f
  f32.const inf
  global.set $builtins/f
  f32.const 1.25
  f32.abs
  global.set $builtins/f
  f32.const 1.25
  f32.ceil
  global.set $builtins/f
  f32.const 1.25
  f32.const 2.5
  f32.copysign
  global.set $builtins/f
  f32.const 1.25
  f32.floor
  global.set $builtins/f
  f32.const 1.5
  f32.const 2.5
  f32.add
  global.set $builtins/f
  global.get $builtins/f
  f32.const 4
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 201
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 2.5
  f32.const 1.5
  f32.sub
  global.set $builtins/f
  global.get $builtins/f
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 202
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.5
  f32.const 2
  f32.mul
  global.set $builtins/f
  global.get $builtins/f
  f32.const 3
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 203
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.5
  f32.const 0.5
  f32.div
  global.set $builtins/f
  global.get $builtins/f
  f32.const 3
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 204
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.25
  f32.const 2.5
  f32.max
  global.set $builtins/f
  global.get $builtins/f
  f32.const 2.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 205
   i32.const 26
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.25
  f32.const 2.5
  f32.min
  global.set $builtins/f
  f32.const 1.25
  f32.nearest
  global.set $builtins/f
  f32.const 1.25
  f32.sqrt
  global.set $builtins/f
  f32.const 1.25
  f32.trunc
  global.set $builtins/f
  f32.const 1.5
  f32.const 1.5
  f32.eq
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 210
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.5
  f32.const 2.5
  f32.eq
  global.set $builtins/i
  global.get $builtins/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 211
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.5
  f32.const 1.5
  f32.ne
  global.set $builtins/i
  global.get $builtins/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 212
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.5
  f32.const 2.5
  f32.ne
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 213
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.25
  local.tee $30
  local.get $30
  f32.ne
  global.set $builtins/b
  f32.const 1.25
  local.tee $31
  local.get $31
  f32.sub
  f32.const 0
  f32.eq
  global.set $builtins/b
  f64.const nan:0x8000000000000
  drop
  f64.const inf
  drop
  f64.const nan:0x8000000000000
  drop
  f64.const inf
  drop
  f64.const 1.25
  f64.abs
  drop
  f64.const 1.25
  f64.ceil
  drop
  f64.const 1.25
  f64.const 2.5
  f64.copysign
  drop
  f64.const 1.25
  f64.floor
  drop
  f64.const 1.5
  f64.const 2.5
  f64.add
  drop
  f64.const 2.5
  f64.const 1.5
  f64.sub
  drop
  f64.const 1.5
  f64.const 2
  f64.mul
  drop
  f64.const 1.5
  f64.const 0.5
  f64.div
  drop
  f64.const 1.25
  f64.const 2.5
  f64.max
  drop
  f64.const 1.25
  f64.const 2.5
  f64.min
  drop
  f64.const 1.25
  f64.nearest
  drop
  f64.const 1.25
  f64.sqrt
  drop
  f64.const 1.25
  f64.trunc
  drop
  f64.const 1.5
  f64.const 1.5
  f64.eq
  drop
  f64.const 1.5
  f64.const 2.5
  f64.eq
  drop
  f64.const 1.5
  f64.const 1.5
  f64.ne
  drop
  f64.const 1.5
  f64.const 2.5
  f64.ne
  drop
  f64.const 1.25
  local.tee $32
  local.get $32
  f64.ne
  i32.const 0
  i32.eq
  drop
  f64.const nan:0x8000000000000
  local.tee $33
  local.get $33
  f64.ne
  i32.const 1
  i32.eq
  drop
  f64.const 1.25
  local.tee $34
  local.get $34
  f64.sub
  f64.const 0
  f64.eq
  i32.const 1
  i32.eq
  drop
  f64.const inf
  local.tee $35
  local.get $35
  f64.sub
  f64.const 0
  f64.eq
  i32.const 0
  i32.eq
  drop
  f64.const inf
  f64.neg
  local.tee $36
  local.get $36
  f64.sub
  f64.const 0
  f64.eq
  i32.const 0
  i32.eq
  drop
  f64.const nan:0x8000000000000
  local.tee $37
  local.get $37
  f64.sub
  f64.const 0
  f64.eq
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/f64.NaN
  drop
  f64.const 1.25
  f64.abs
  drop
  f64.const 1.25
  f64.ceil
  drop
  f64.const 1.25
  f64.const 2.5
  f64.copysign
  drop
  f64.const 1.25
  f64.floor
  drop
  f64.const 1.5
  f64.const 2.5
  f64.add
  drop
  f64.const 2.5
  f64.const 1.5
  f64.sub
  drop
  f64.const 1.5
  f64.const 2
  f64.mul
  drop
  f64.const 1.5
  f64.const 0.5
  f64.div
  drop
  f64.const 1.25
  f64.const 2.5
  f64.max
  drop
  f64.const 1.25
  f64.const 2.5
  f64.min
  drop
  f64.const 1.25
  f64.nearest
  drop
  f64.const 1.25
  f64.sqrt
  drop
  f64.const 1.25
  f64.trunc
  drop
  f64.const 1.5
  f64.const 2.5
  f64.eq
  drop
  f64.const 1.5
  f64.const 2.5
  f64.ne
  drop
  f64.const nan:0x8000000000000
  global.set $builtins/F
  f64.const inf
  global.set $builtins/F
  f64.const 1.25
  f64.abs
  global.set $builtins/F
  f64.const 1.25
  f64.ceil
  global.set $builtins/F
  f64.const 1.25
  f64.const 2.5
  f64.copysign
  global.set $builtins/F
  f64.const 1.25
  f64.floor
  global.set $builtins/F
  f64.const 1.5
  f64.const 2.5
  f64.add
  global.set $builtins/F
  global.get $builtins/F
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 269
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2.5
  f64.const 1.5
  f64.sub
  global.set $builtins/F
  global.get $builtins/F
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 270
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.5
  f64.const 2
  f64.mul
  global.set $builtins/F
  global.get $builtins/F
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 271
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.5
  f64.const 0.5
  f64.div
  global.set $builtins/F
  global.get $builtins/F
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 272
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.25
  f64.const 2.5
  f64.max
  global.set $builtins/F
  f64.const 1.25
  f64.const 2.5
  f64.min
  global.set $builtins/F
  f64.const 1.25
  f64.nearest
  global.set $builtins/F
  f64.const 1.25
  f64.sqrt
  global.set $builtins/F
  f64.const 1.25
  f64.trunc
  global.set $builtins/F
  f64.const 1.5
  f64.const 1.5
  f64.eq
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 278
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.5
  f64.const 2.5
  f64.eq
  global.set $builtins/i
  global.get $builtins/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 279
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.5
  f64.const 1.5
  f64.ne
  global.set $builtins/i
  global.get $builtins/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 280
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.5
  f64.const 2.5
  f64.ne
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 281
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.25
  local.tee $38
  local.get $38
  f64.ne
  global.set $builtins/b
  f64.const 1.25
  local.tee $39
  local.get $39
  f64.sub
  f64.const 0
  f64.eq
  global.set $builtins/b
  f64.const 0
  f64.const 1
  f64.min
  global.set $builtins/F
  f32.const 0
  global.get $builtins/f
  f32.max
  global.set $builtins/f
  f64.const 0
  f64.const 1.5
  f64.add
  global.set $builtins/F
  f32.const 0
  global.get $builtins/f
  f32.add
  global.set $builtins/f
  f64.const 2
  f64.const 1
  f64.sub
  global.set $builtins/F
  f32.const 2
  global.get $builtins/f
  f32.sub
  global.set $builtins/f
  f64.const 2
  f64.const 1
  f64.mul
  global.set $builtins/F
  f32.const 2
  global.get $builtins/f
  f32.mul
  global.set $builtins/f
  f64.const 2
  f64.const 1
  f64.div
  global.set $builtins/F
  f32.const 2
  global.get $builtins/f
  f32.div
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
  i32.const 0
  i32.load $0 offset=8
  global.set $builtins/i
  i32.const 0
  global.get $builtins/i
  i32.store $0 offset=8
  i32.const 0
  i32.const 0
  i32.load $0 offset=8
  i32.store $0 offset=8
  i32.const 0
  i64.load $0 offset=8
  global.set $builtins/I
  i32.const 0
  global.get $builtins/I
  i64.store $0 offset=8
  i32.const 0
  i32.const 0
  i64.load $0 offset=8
  i64.store $0 offset=8
  i32.const 0
  f32.load $0 offset=8
  global.set $builtins/f
  i32.const 0
  global.get $builtins/f
  f32.store $0 offset=8
  i32.const 0
  i32.const 0
  f32.load $0 offset=8
  f32.store $0 offset=8
  i32.const 0
  f64.load $0 offset=8
  global.set $builtins/F
  i32.const 0
  global.get $builtins/F
  f64.store $0 offset=8
  i32.const 0
  i32.const 0
  f64.load $0 offset=8
  f64.store $0 offset=8
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
  i32.load8_u $0
  global.set $builtins/u
  i32.const 8
  i32.load16_u $0
  global.set $builtins/u
  i32.const 8
  i32.load $0
  global.set $builtins/u
  i32.const 8
  i32.load8_s $0
  global.set $builtins/u
  i32.const 8
  i32.load16_s $0
  global.set $builtins/u
  i32.const 8
  i32.load $0
  global.set $builtins/u
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
  i32.const 15
  i32.const 4
  i32.rem_u
  global.set $builtins/u
  global.get $builtins/u
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 343
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i64.load8_u $0
  global.set $builtins/U
  i32.const 8
  i64.load16_u $0
  global.set $builtins/U
  i32.const 8
  i64.load32_u $0
  global.set $builtins/U
  i32.const 8
  i64.load $0
  global.set $builtins/U
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
  i32.const 1
  i64.extend_i32_s
  i64.store $0
  i64.const 15
  i64.const 4
  i64.rem_u
  global.set $builtins/U
  global.get $builtins/U
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 362
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.25
  i32.reinterpret_f32
  drop
  i32.const 25
  f32.reinterpret_i32
  drop
  f64.const 1.25
  i64.reinterpret_f64
  drop
  i64.const 25
  f64.reinterpret_i64
  drop
  f32.const 1.25
  i32.reinterpret_f32
  global.set $builtins/i
  i32.const 25
  f32.reinterpret_i32
  global.set $builtins/f
  f64.const 1.25
  i64.reinterpret_f64
  global.set $builtins/I
  i64.const 25
  f64.reinterpret_i64
  global.set $builtins/F
  memory.size $0
  drop
  i32.const 1
  memory.grow $0
  drop
  memory.size $0
  global.set $builtins/s
  i32.const 1
  memory.grow $0
  global.set $builtins/s
  i32.const 10
  i32.const 20
  i32.const 1
  select
  drop
  i64.const 100
  i64.const 200
  i32.const 0
  select
  drop
  f32.const 1.25
  f32.const 2.5
  i32.const 1
  select
  drop
  f64.const 12.5
  f64.const 25
  i32.const 0
  select
  drop
  i32.const 10
  i32.const 20
  i32.const 1
  select
  global.set $builtins/i
  i64.const 100
  i64.const 200
  i32.const 0
  select
  global.set $builtins/I
  f32.const 1.25
  f32.const 2.5
  i32.const 1
  select
  global.set $builtins/f
  f64.const 12.5
  f64.const 25
  i32.const 0
  select
  global.set $builtins/F
  global.get $builtins/i
  i32.eqz
  if
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  global.get $builtins/fn
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 401
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  global.get $builtins/fn
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:index
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 402
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $builtins/fn
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=8
  local.get $63
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:name
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 32
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 403
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $builtins/fn
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 404
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $builtins/fn
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 405
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $builtins/fn
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=8
  local.get $63
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#toString
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 176
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 406
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 4
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 4
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  i32.const 3
  i32.const 3
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  f64.ne
  drop
  f32.const nan:0x400000
  local.tee $40
  local.get $40
  f32.ne
  drop
  f64.const nan:0x8000000000000
  local.tee $41
  local.get $41
  f64.ne
  drop
  f32.const nan:0x400000
  local.tee $42
  local.get $42
  f32.sub
  f32.const 0
  f32.eq
  i32.eqz
  drop
  f32.const inf
  local.tee $43
  local.get $43
  f32.sub
  f32.const 0
  f32.eq
  i32.eqz
  drop
  f64.const nan:0x8000000000000
  local.tee $44
  local.get $44
  f64.sub
  f64.const 0
  f64.eq
  i32.eqz
  drop
  f64.const inf
  local.tee $45
  local.get $45
  f64.sub
  f64.const 0
  f64.eq
  i32.eqz
  drop
  f32.const 0
  local.tee $46
  local.get $46
  f32.sub
  f32.const 0
  f32.eq
  drop
  f64.const 0
  local.tee $47
  local.get $47
  f64.sub
  f64.const 0
  f64.eq
  drop
  global.get $~lib/builtins/i8.MIN_VALUE
  i32.const 128
  i32.extend8_s
  i32.eq
  drop
  global.get $~lib/builtins/i8.MAX_VALUE
  i32.const 127
  i32.eq
  drop
  global.get $~lib/builtins/i16.MIN_VALUE
  i32.const 32768
  i32.extend16_s
  i32.eq
  drop
  global.get $~lib/builtins/i16.MAX_VALUE
  i32.const 32767
  i32.eq
  drop
  global.get $~lib/builtins/i32.MIN_VALUE
  i32.const -2147483648
  i32.eq
  drop
  global.get $~lib/builtins/i32.MAX_VALUE
  i32.const 2147483647
  i32.eq
  drop
  global.get $~lib/builtins/i64.MIN_VALUE
  i64.const -9223372036854775808
  i64.eq
  drop
  global.get $~lib/builtins/i64.MAX_VALUE
  i64.const 9223372036854775807
  i64.eq
  drop
  global.get $~lib/builtins/u8.MIN_VALUE
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/u8.MAX_VALUE
  i32.const 255
  i32.eq
  drop
  global.get $~lib/builtins/u16.MIN_VALUE
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/u16.MAX_VALUE
  i32.const 65535
  i32.eq
  drop
  global.get $~lib/builtins/u32.MIN_VALUE
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/u32.MAX_VALUE
  i32.const -1
  i32.eq
  drop
  global.get $~lib/builtins/u64.MIN_VALUE
  i64.const 0
  i64.eq
  drop
  global.get $~lib/builtins/u64.MAX_VALUE
  i64.const -1
  i64.eq
  drop
  global.get $~lib/builtins/bool.MIN_VALUE
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/bool.MIN_VALUE
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/bool.MAX_VALUE
  i32.const 1
  i32.eq
  drop
  global.get $~lib/builtins/bool.MAX_VALUE
  i32.const 1
  i32.eq
  drop
  global.get $~lib/builtins/f32.MIN_NORMAL_VALUE
  f32.const 1.1754943508222875e-38
  f32.eq
  drop
  global.get $~lib/builtins/f32.MIN_VALUE
  f32.const 1.401298464324817e-45
  f32.eq
  drop
  global.get $~lib/builtins/f32.MAX_VALUE
  f32.const 3402823466385288598117041e14
  f32.eq
  drop
  global.get $~lib/builtins/f32.MIN_SAFE_INTEGER
  f32.const -16777215
  f32.eq
  drop
  global.get $~lib/builtins/f32.MAX_SAFE_INTEGER
  f32.const 16777215
  f32.eq
  drop
  global.get $~lib/builtins/f32.EPSILON
  f32.const 1.1920928955078125e-07
  f32.eq
  drop
  global.get $~lib/builtins/f64.MIN_NORMAL_VALUE
  f64.const 2.2250738585072014e-308
  f64.eq
  drop
  global.get $~lib/builtins/f64.MIN_VALUE
  f64.const 5e-324
  f64.eq
  drop
  global.get $~lib/builtins/f64.MAX_VALUE
  f64.const 1797693134862315708145274e284
  f64.eq
  drop
  global.get $~lib/builtins/f64.MIN_SAFE_INTEGER
  f64.const -9007199254740991
  f64.eq
  drop
  global.get $~lib/builtins/f64.MAX_SAFE_INTEGER
  f64.const 9007199254740991
  f64.eq
  drop
  global.get $~lib/builtins/f64.EPSILON
  f64.const 2.220446049250313e-16
  f64.eq
  drop
  f32.const 1
  f32.abs
  drop
  f64.const 1
  f64.abs
  drop
  f32.const 1
  f32.ceil
  drop
  f64.const 1
  f64.ceil
  drop
  i32.const 1
  i32.clz
  drop
  i64.const 1
  i64.clz
  drop
  f32.const 1
  f32.const 2
  f32.copysign
  drop
  f64.const 1
  f64.const 2
  f64.copysign
  drop
  i32.const 1
  i32.ctz
  drop
  i64.const 1
  i64.ctz
  drop
  f32.const 1
  f32.floor
  drop
  f64.const 1
  f64.floor
  drop
  f32.const 1
  f32.nearest
  drop
  f64.const 1
  f64.nearest
  drop
  i32.const 1
  i32.popcnt
  drop
  i64.const 1
  i64.popcnt
  drop
  i32.const 1
  i32.const 2
  i32.add
  drop
  i64.const 1
  i64.const 2
  i64.add
  drop
  i32.const 2
  i32.const 1
  i32.sub
  drop
  i64.const 2
  i64.const 1
  i64.sub
  drop
  i32.const 3
  i32.const 1
  i32.mul
  drop
  i64.const 3
  i64.const 1
  i64.mul
  drop
  i32.const 4
  i32.const 1
  i32.div_s
  drop
  i32.const 4
  i32.const 1
  i32.div_u
  drop
  i64.const 5
  i64.const 1
  i64.div_s
  drop
  i64.const 5
  i64.const 1
  i64.div_u
  drop
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
  f32.const 1
  f32.const 2
  f32.add
  drop
  f64.const 1
  f64.const 2
  f64.add
  drop
  f32.const 2
  f32.const 1
  f32.sub
  drop
  f64.const 2
  f64.const 1
  f64.sub
  drop
  f32.const 1
  f32.const 2
  f32.mul
  drop
  f64.const 1
  f64.const 2
  f64.mul
  drop
  f32.const 1.5
  f32.const 0.5
  f32.div
  drop
  f64.const 1.5
  f64.const 0.5
  f64.div
  drop
  f32.const 1
  f32.const 2
  f32.max
  drop
  f64.const 1
  f64.const 2
  f64.max
  drop
  f32.const 1
  f32.const 2
  f32.min
  drop
  f64.const 1
  f64.const 2
  f64.min
  drop
  f32.const 1
  i32.reinterpret_f32
  drop
  f64.const 1
  i64.reinterpret_f64
  drop
  i32.const 1
  f32.reinterpret_i32
  drop
  i64.const 1
  f64.reinterpret_i64
  drop
  i32.const 1
  i32.const 2
  i32.rotl
  drop
  i64.const 1
  i64.const 2
  i64.rotl
  drop
  i32.const 1
  i32.const 2
  i32.rotr
  drop
  i64.const 1
  i64.const 2
  i64.rotr
  drop
  f32.const 1
  f32.sqrt
  drop
  f64.const 1
  f64.sqrt
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
  f32.const 1
  f32.trunc
  drop
  f64.const 1
  f64.trunc
  drop
  i32.const 0
  call $~lib/atomics/Atomics.isLockFree
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 588
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/atomics/Atomics.isLockFree
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 589
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/atomics/Atomics.isLockFree
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 590
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/atomics/Atomics.isLockFree
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 591
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  call $~lib/atomics/Atomics.isLockFree
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 592
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  call $~lib/atomics/Atomics.isLockFree
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 593
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  call $~lib/atomics/Atomics.isLockFree
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 594
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $48
  i32.const 0
  local.set $49
  i32.const 51
  local.set $50
  i32.const 52
  local.set $51
  i32.const 52
  local.set $52
  i32.const 256
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 5
  local.get $48
  f64.convert_i32_u
  local.get $49
  f64.convert_i32_u
  local.get $50
  f64.convert_i32_u
  local.get $51
  f64.convert_i32_u
  local.get $52
  f64.convert_i32_u
  call $~lib/builtins/trace
  local.get $48
  local.get $49
  i32.eq
  i32.eqz
  if
   i32.const 304
   i32.const 96
   i32.const 604
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $48
  local.get $50
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 605
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $50
  i32.const 51
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 606
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $51
  local.get $52
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 607
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 352
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 352
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 611
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 352
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 352
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 612
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 400
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 400
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 613
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 432
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 432
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 614
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 464
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 464
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 615
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 496
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 496
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 616
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 528
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 528
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 617
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 560
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 560
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 618
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 592
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 592
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 619
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 624
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 624
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 620
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 656
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 656
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 621
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 688
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 688
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 622
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 720
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 623
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 752
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 752
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 624
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 784
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 784
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 625
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 816
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 816
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 626
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 848
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 848
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 627
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 880
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 880
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 628
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 432
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 432
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 629
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 352
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0
  local.get $63
  i32.const 352
  local.set $63
  global.get $~lib/memory/__stack_pointer
  local.get $63
  i32.store $0 offset=4
  local.get $63
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 630
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  i32.const 3
  i32.const 3
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 3
  i32.const 2
  i32.const 1
  call $builtins/max3
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 664
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 3
  call $builtins/min3
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 669
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 1
  call $builtins/rotl3
  i32.const 48
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 674
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 48
  i32.const 8
  i32.const 1
  call $builtins/rotr3
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 679
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 170
  i32.const 170
  i32.eq
  drop
  i32.const 170
  i32.extend8_s
  i32.const 255
  i32.and
  i32.const 170
  i32.eq
  drop
  i32.const 43707
  local.tee $53
  i32.const 8
  i32.shl
  local.get $53
  i32.const 8
  i32.shr_u
  i32.or
  i32.const 65535
  i32.and
  i32.const 48042
  i32.eq
  drop
  i32.const 43707
  i32.extend16_s
  i32.const 65535
  i32.and
  local.tee $54
  i32.const 8
  i32.shl
  local.get $54
  i32.const 8
  i32.shr_u
  i32.or
  i32.const 65535
  i32.and
  i32.const 48042
  i32.eq
  drop
  i32.const -1430532899
  local.tee $55
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $55
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  i32.const -573785174
  i32.eq
  drop
  i32.const -1430532899
  local.tee $56
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $56
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  i32.const -573785174
  i32.eq
  drop
  i64.const 4822679907192029
  local.tee $57
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $57
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $58
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $58
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.const -2464388556401798912
  i64.eq
  drop
  i64.const 4822679907192029
  local.tee $59
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $59
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $60
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $60
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.const -2464388556401798912
  i64.eq
  drop
  i32.const -1430532899
  local.tee $61
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $61
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  i32.const -573785174
  i32.eq
  drop
  i32.const -1430532899
  local.tee $62
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $62
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  i32.const -573785174
  i32.eq
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
