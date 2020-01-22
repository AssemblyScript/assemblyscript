(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 16) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 32) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c\00")
 (data (i32.const 64) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s\00")
 (data (i32.const 112) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00i\00g\00n\00a\00t\00u\00r\00e\00s\00")
 (data (i32.const 160) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00e\00s\00t\00i\00n\00g\00")
 (data (i32.const 192) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00F\00u\00n\00c\00t\00i\00o\00n\00")
 (data (i32.const 224) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00C\00")
 (data (i32.const 256) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g\00")
 (data (i32.const 288) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l\00")
 (data (i32.const 320) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00i\008\00")
 (data (i32.const 352) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00u\008\00")
 (data (i32.const 384) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\001\006\00")
 (data (i32.const 416) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\001\006\00")
 (data (i32.const 448) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\003\002\00")
 (data (i32.const 480) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\003\002\00")
 (data (i32.const 512) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\003\002\00")
 (data (i32.const 544) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\006\004\00")
 (data (i32.const 576) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\006\004\00")
 (data (i32.const 608) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\006\004\00")
 (data (i32.const 640) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00i\00s\00i\00z\00e\00")
 (data (i32.const 672) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00u\00s\00i\00z\00e\00")
 (data (i32.const 704) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00v\00o\00i\00d\00")
 (data (i32.const 736) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00o\00m\00e\00 \00v\00a\00l\00u\00e\00")
 (table $0 3 funcref)
 (elem (i32.const 1) $start:builtins~anonymous|0 $start:builtins~anonymous|1)
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/constantOffset i32 (i32.const 8))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
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
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (export "memory" (memory $0))
 (export "test" (func $builtins/test))
 (start $~start)
 (func $~lib/atomics/Atomics.isLockFree (; 2 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.const 2
   i32.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.const 4
   i32.eq
  end
 )
 (func $~lib/rt/stub/__retain (; 3 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 4 ;) (param $0 i32)
  nop
 )
 (func $~lib/string/String#get:length (; 5 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 6 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     local.set $7
     local.get $7
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $7
   i32.const 1
   i32.sub
   local.set $4
   local.get $7
   local.set $7
   local.get $7
   if
    local.get $5
    i32.load16_u
    local.set $8
    local.get $6
    i32.load16_u
    local.set $9
    local.get $8
    local.get $9
    i32.ne
    if
     local.get $8
     local.get $9
     i32.sub
     local.set $10
     local.get $0
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $10
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $while-continue|1
   end
  end
  i32.const 0
  local.set $7
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $7
 )
 (func $~lib/string/String.__eq (; 7 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $start:builtins~anonymous|0 (; 8 ;)
  nop
 )
 (func $start:builtins~anonymous|1 (; 9 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  nop
 )
 (func $start:builtins (; 10 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 f32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
  local.tee $0
  i32.const 31
  i32.shr_s
  local.tee $1
  local.get $0
  i32.add
  local.get $1
  i32.xor
  drop
  i32.const 1
  local.tee $0
  i32.const 2
  local.tee $1
  local.get $0
  local.get $1
  i32.gt_s
  select
  drop
  i32.const 1
  local.tee $0
  i32.const 2
  local.tee $1
  local.get $0
  local.get $1
  i32.lt_s
  select
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
  local.tee $0
  i32.const 31
  i32.shr_s
  local.tee $1
  local.get $0
  i32.add
  local.get $1
  i32.xor
  global.set $builtins/i
  global.get $builtins/i
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 67
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.tee $0
  i32.const 2
  local.tee $1
  local.get $0
  local.get $1
  i32.gt_s
  select
  global.set $builtins/i
  global.get $builtins/i
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 68
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.tee $0
  i32.const 2
  local.tee $1
  local.get $0
  local.get $1
  i32.lt_s
  select
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 69
   i32.const 20
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
  local.tee $2
  i64.const 63
  i64.shr_s
  local.tee $3
  local.get $2
  i64.add
  local.get $3
  i64.xor
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
  local.tee $2
  i64.const 63
  i64.shr_s
  local.tee $3
  local.get $2
  i64.add
  local.get $3
  i64.xor
  global.set $builtins/I
  global.get $builtins/I
  i64.const 42
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 85
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  local.tee $2
  i64.const 2
  local.tee $3
  local.get $2
  local.get $3
  i64.gt_s
  select
  global.set $builtins/I
  global.get $builtins/I
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 86
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  local.tee $2
  i64.const 2
  local.tee $3
  local.get $2
  local.get $3
  i64.lt_s
  select
  global.set $builtins/I
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 87
   i32.const 20
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
  f32.const 1.25
  local.tee $4
  local.get $4
  f32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 104
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  local.tee $4
  local.get $4
  f32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 105
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.25
  local.tee $4
  local.get $4
  f32.sub
  f32.const 0
  f32.eq
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 106
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  local.tee $4
  local.get $4
  f32.sub
  f32.const 0
  f32.eq
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 107
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  local.tee $4
  local.get $4
  f32.sub
  f32.const 0
  f32.eq
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 108
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  local.tee $4
  local.get $4
  f32.sub
  f32.const 0
  f32.eq
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 109
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
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
  f32.const 1.25
  f32.const 2.5
  f32.max
  global.set $builtins/f
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
  f32.const 1.25
  local.tee $4
  local.get $4
  f32.ne
  global.set $builtins/b
  f32.const 1.25
  local.tee $4
  local.get $4
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
  f64.const 1.25
  local.tee $5
  local.get $5
  f64.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 140
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  local.tee $5
  local.get $5
  f64.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 141
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.25
  local.tee $5
  local.get $5
  f64.sub
  f64.const 0
  f64.eq
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 142
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  local.tee $5
  local.get $5
  f64.sub
  f64.const 0
  f64.eq
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 143
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  local.tee $5
  local.get $5
  f64.sub
  f64.const 0
  f64.eq
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 144
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  local.tee $5
  local.get $5
  f64.sub
  f64.const 0
  f64.eq
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 145
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
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
  f64.const 1.25
  local.tee $5
  local.get $5
  f64.ne
  global.set $builtins/b
  f64.const 1.25
  local.tee $5
  local.get $5
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
  i32.const 0
  i32.load offset=8
  global.set $builtins/i
  i32.const 0
  global.get $builtins/i
  i32.store offset=8
  i32.const 0
  i32.const 0
  i32.load offset=8
  i32.store offset=8
  i32.const 0
  i64.load offset=8
  global.set $builtins/I
  i32.const 0
  global.get $builtins/I
  i64.store offset=8
  i32.const 0
  i32.const 0
  i64.load offset=8
  i64.store offset=8
  i32.const 0
  f32.load offset=8
  global.set $builtins/f
  i32.const 0
  global.get $builtins/f
  f32.store offset=8
  i32.const 0
  i32.const 0
  f32.load offset=8
  f32.store offset=8
  i32.const 0
  f64.load offset=8
  global.set $builtins/F
  i32.const 0
  global.get $builtins/F
  f64.store offset=8
  i32.const 0
  i32.const 0
  f64.load offset=8
  f64.store offset=8
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
  global.set $builtins/u
  i32.const 8
  i32.load16_u
  global.set $builtins/u
  i32.const 8
  i32.load
  global.set $builtins/u
  i32.const 8
  i32.load8_s
  global.set $builtins/u
  i32.const 8
  i32.load16_s
  global.set $builtins/u
  i32.const 8
  i32.load
  global.set $builtins/u
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
  global.set $builtins/U
  i32.const 8
  i64.load16_u
  global.set $builtins/U
  i32.const 8
  i64.load32_u
  global.set $builtins/U
  i32.const 8
  i64.load
  global.set $builtins/U
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
  i32.const 1
  i64.extend_i32_s
  i64.store
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
  memory.size
  drop
  i32.const 1
  memory.grow
  drop
  memory.size
  global.set $builtins/s
  i32.const 1
  memory.grow
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
  i32.const 4
  drop
  i32.const 4
  drop
  f32.const nan:0x400000
  local.tee $4
  local.get $4
  f32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 296
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  local.tee $5
  local.get $5
  f64.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 297
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  local.tee $4
  local.get $4
  f32.sub
  f32.const 0
  f32.eq
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 298
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  local.tee $4
  local.get $4
  f32.sub
  f32.const 0
  f32.eq
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 299
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  local.tee $5
  local.get $5
  f64.sub
  f64.const 0
  f64.eq
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 300
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  local.tee $5
  local.get $5
  f64.sub
  f64.const 0
  f64.eq
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 301
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.tee $4
  local.get $4
  f32.sub
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 302
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.tee $5
  local.get $5
  f64.sub
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 303
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
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
   i32.const 80
   i32.const 424
   i32.const 0
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
   i32.const 80
   i32.const 425
   i32.const 0
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
   i32.const 80
   i32.const 426
   i32.const 0
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
   i32.const 80
   i32.const 427
   i32.const 0
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
   i32.const 80
   i32.const 428
   i32.const 0
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
   i32.const 80
   i32.const 429
   i32.const 0
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
   i32.const 80
   i32.const 430
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  i32.const 0
  local.set $1
  i32.const 12
  local.set $6
  i32.const 23
  local.set $7
  i32.const 23
  local.set $8
  i32.const 128
  i32.const 5
  local.get $0
  f64.convert_i32_u
  local.get $1
  f64.convert_i32_u
  local.get $6
  f64.convert_i32_u
  local.get $7
  f64.convert_i32_u
  local.get $8
  f64.convert_i32_u
  call $~lib/builtins/trace
  local.get $0
  local.get $1
  i32.eq
  i32.eqz
  if
   i32.const 176
   i32.const 80
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $6
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 442
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  local.get $8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 443
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 208
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 447
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 208
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 448
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 240
  i32.const 240
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 449
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 272
  i32.const 272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 450
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 304
  i32.const 304
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 451
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 336
  i32.const 336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 452
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 368
  i32.const 368
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 453
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 400
  i32.const 400
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 454
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 432
  i32.const 432
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 455
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 464
  i32.const 464
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 456
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 496
  i32.const 496
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 457
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 528
  i32.const 528
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 458
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 560
  i32.const 560
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 459
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 592
  i32.const 592
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 460
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 624
  i32.const 624
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 656
  i32.const 656
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 688
  i32.const 688
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  i32.const 720
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 464
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 272
  i32.const 272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 465
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 208
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 466
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $builtins/test (; 11 ;)
  nop
 )
 (func $~start (; 12 ;)
  call $start:builtins
 )
)
