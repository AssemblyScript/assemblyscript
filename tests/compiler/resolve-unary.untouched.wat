(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "|\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data (i32.const 140) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 204) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 236) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 636) "\1c\04\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1692) "\\\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data (i32.const 1788) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00-\001\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1820) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00 \00\00\00r\00e\00s\00o\00l\00v\00e\00-\00u\00n\00a\00r\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1884) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\001\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1916) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\002\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1948) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00\00\00\00\00")
 (data (i32.const 1980) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00\00\00")
 (data (i32.const 2012) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00-\002\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2044) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00+\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2076) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00-\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2108) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00!\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2140) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00~\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2172) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00+\00+\00i\00\00\00\00\00\00\00")
 (data (i32.const 2204) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00-\00-\00i\00\00\00\00\00\00\00")
 (data (i32.const 2236) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00i\00+\00+\00\00\00\00\00\00\00")
 (data (i32.const 2268) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00i\00-\00-\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $resolve-unary/a (mut i32) (i32.const 1))
 (global $resolve-unary/b (mut i32) (i32.const 1))
 (global $resolve-unary/foo (mut i32) (i32.const 0))
 (global $resolve-unary/bar (mut i32) (i32.const 0))
 (global $~lib/memory/__heap_base i32 (i32.const 2300))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $0
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/rt/stub/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.set $1
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/stub/computeSize
  local.set $3
  local.get $2
  local.get $3
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $1
  local.get $3
  i32.store
  local.get $2
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   unreachable
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  i32.const 4
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $3
  local.get $0
  i32.store offset=16
  local.get $2
  i32.const 16
  i32.add
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    i32.const 236
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    i32.const 236
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $3
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $10
   local.get $3
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 236
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 236
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $2
   i32.const 2
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 656
    local.get $1
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $1
    i64.const 8
    i64.shr_u
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   i32.const 656
   local.get $1
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  local.get $1
  local.set $2
  local.get $2
  i32.popcnt
  i32.const 1
  i32.eq
  if
   i32.const 63
   local.get $0
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i64.extend_i32_s
  local.set $3
  local.get $3
  local.set $4
  i32.const 1
  local.set $5
  loop $while-continue|0
   local.get $0
   local.get $4
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $4
    i64.div_u
    local.set $0
    local.get $4
    local.get $4
    i64.mul
    local.set $4
    local.get $5
    i32.const 1
    i32.shl
    local.set $5
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $0
   i64.const 1
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $3
    i64.div_u
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|1
   end
  end
  local.get $5
  i32.const 1
  i32.sub
 )
 (func $~lib/util/number/utoa64_any_core (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  local.get $3
  i64.extend_i32_s
  local.set $4
  local.get $3
  local.get $3
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $3
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $5
   local.get $4
   i64.const 1
   i64.sub
   local.set $6
   loop $do-continue|0
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 1712
    local.get $1
    local.get $6
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $1
    local.get $5
    i64.shr_u
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    local.set $7
    local.get $7
    br_if $do-continue|0
   end
  else
   loop $do-continue|1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    local.get $4
    i64.div_u
    local.set $6
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 1712
    local.get $1
    local.get $6
    local.get $4
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $6
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    local.set $7
    local.get $7
    br_if $do-continue|1
   end
  end
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 32
   i32.const 160
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 224
   return
  end
  local.get $0
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $2
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  i32.const 0
  local.set $3
  local.get $1
  i32.const 10
  i32.eq
  if
   local.get $0
   call $~lib/util/number/decimalCount32
   local.get $2
   i32.add
   local.set $4
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__new
   local.set $3
   local.get $3
   local.set $7
   local.get $0
   local.set $6
   local.get $4
   local.set $5
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $7
   local.get $6
   local.get $5
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $1
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $0
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.get $2
    i32.add
    local.set $4
    local.get $4
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.set $3
    local.get $3
    local.set $7
    local.get $0
    local.set $6
    local.get $4
    local.set $5
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $7
    local.get $6
    i64.extend_i32_u
    local.get $5
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $0
    local.set $4
    local.get $4
    i64.extend_i32_u
    local.get $1
    call $~lib/util/number/ulog_base
    local.get $2
    i32.add
    local.set $7
    local.get $7
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.set $3
    local.get $3
    local.get $4
    i64.extend_i32_u
    local.get $7
    local.get $1
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $2
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  call $~lib/rt/stub/__retain
 )
 (func $~lib/number/I32#toString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/util/number/itoa32
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
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
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/number/Bool#toString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   i32.const 1968
  else
   i32.const 2000
  end
 )
 (func $resolve-unary/Foo#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $resolve-unary/Foo#plus (param $0 i32) (result i32)
  i32.const 2064
 )
 (func $~lib/string/String#toString (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Foo#minus (param $0 i32) (result i32)
  i32.const 2096
 )
 (func $resolve-unary/Foo#prefix_inc (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Foo#self (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Foo#prefix_dec (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Foo#not (param $0 i32) (result i32)
  i32.const 2128
 )
 (func $resolve-unary/Foo#bitwise_not (param $0 i32) (result i32)
  i32.const 2160
 )
 (func $resolve-unary/Foo#postfix_inc (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Foo#postfix_dec (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Bar#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $resolve-unary/Bar.prefix_inc (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 2192
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $resolve-unary/Bar.prefix_dec (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 2224
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $resolve-unary/Bar.postfix_inc (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 2256
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $resolve-unary/Bar.postfix_dec (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 2288
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $start:resolve-unary
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
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  global.get $~lib/memory/__heap_base
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const -1
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $0
  i32.const 1808
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 2
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $1
  i32.const 1904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const 1
  i32.add
  global.set $resolve-unary/a
  global.get $resolve-unary/a
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $2
  i32.const 1936
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const 1
  i32.sub
  global.set $resolve-unary/a
  global.get $resolve-unary/a
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $3
  i32.const 1904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.eqz
  i32.const 0
  call $~lib/number/Bool#toString
  local.tee $4
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.eqz
  i32.eqz
  i32.const 0
  call $~lib/number/Bool#toString
  local.tee $5
  i32.const 1968
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const -1
  i32.xor
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $6
  i32.const 2032
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 33
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/b
  local.tee $7
  i32.const 1
  i32.add
  global.set $resolve-unary/b
  local.get $7
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $7
  i32.const 1904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/b
  local.tee $8
  i32.const 1
  i32.sub
  global.set $resolve-unary/b
  local.get $8
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $8
  i32.const 1936
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $resolve-unary/Foo#constructor
  global.set $resolve-unary/foo
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#plus
  local.tee $9
  call $~lib/string/String#toString
  local.tee $10
  i32.const 2064
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 91
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#minus
  local.tee $11
  call $~lib/string/String#toString
  local.tee $12
  i32.const 2096
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 96
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#prefix_inc
  local.tee $13
  local.tee $14
  global.get $resolve-unary/foo
  local.tee $15
  i32.ne
  if
   local.get $14
   call $~lib/rt/stub/__retain
   local.set $14
   local.get $15
   call $~lib/rt/stub/__release
  end
  local.get $14
  global.set $resolve-unary/foo
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#self
  local.tee $14
  global.get $resolve-unary/foo
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 101
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#prefix_dec
  local.tee $15
  local.tee $16
  global.get $resolve-unary/foo
  local.tee $17
  i32.ne
  if
   local.get $16
   call $~lib/rt/stub/__retain
   local.set $16
   local.get $17
   call $~lib/rt/stub/__release
  end
  local.get $16
  global.set $resolve-unary/foo
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#self
  local.tee $16
  global.get $resolve-unary/foo
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 106
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#not
  local.tee $17
  call $~lib/string/String#toString
  local.tee $18
  i32.const 2128
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 111
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#bitwise_not
  local.tee $19
  call $~lib/string/String#toString
  local.tee $20
  i32.const 2160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 116
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  local.tee $21
  call $resolve-unary/Foo#postfix_inc
  local.tee $22
  local.tee $23
  global.get $resolve-unary/foo
  local.tee $24
  i32.ne
  if
   local.get $23
   call $~lib/rt/stub/__retain
   local.set $23
   local.get $24
   call $~lib/rt/stub/__release
  end
  local.get $23
  global.set $resolve-unary/foo
  local.get $21
  call $resolve-unary/Foo#self
  local.tee $21
  global.get $resolve-unary/foo
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 121
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  local.tee $23
  call $resolve-unary/Foo#postfix_dec
  local.tee $24
  local.tee $25
  global.get $resolve-unary/foo
  local.tee $26
  i32.ne
  if
   local.get $25
   call $~lib/rt/stub/__retain
   local.set $25
   local.get $26
   call $~lib/rt/stub/__release
  end
  local.get $25
  global.set $resolve-unary/foo
  local.get $23
  call $resolve-unary/Foo#self
  local.tee $23
  global.get $resolve-unary/foo
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 126
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $resolve-unary/Bar#constructor
  global.set $resolve-unary/bar
  global.get $resolve-unary/bar
  call $resolve-unary/Bar.prefix_inc
  local.tee $25
  call $~lib/string/String#toString
  local.tee $26
  i32.const 2192
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/bar
  call $resolve-unary/Bar.prefix_dec
  local.tee $27
  call $~lib/string/String#toString
  local.tee $28
  i32.const 2224
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 156
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/bar
  call $resolve-unary/Bar.postfix_inc
  local.tee $29
  call $~lib/string/String#toString
  local.tee $30
  i32.const 2256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 161
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/bar
  call $resolve-unary/Bar.postfix_dec
  local.tee $31
  call $~lib/string/String#toString
  local.tee $32
  i32.const 2288
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 166
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $12
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $15
  call $~lib/rt/stub/__release
  local.get $16
  call $~lib/rt/stub/__release
  local.get $17
  call $~lib/rt/stub/__release
  local.get $18
  call $~lib/rt/stub/__release
  local.get $19
  call $~lib/rt/stub/__release
  local.get $20
  call $~lib/rt/stub/__release
  local.get $21
  call $~lib/rt/stub/__release
  local.get $22
  call $~lib/rt/stub/__release
  local.get $23
  call $~lib/rt/stub/__release
  local.get $24
  call $~lib/rt/stub/__release
  local.get $25
  call $~lib/rt/stub/__release
  local.get $26
  call $~lib/rt/stub/__release
  local.get $27
  call $~lib/rt/stub/__release
  local.get $28
  call $~lib/rt/stub/__release
  local.get $29
  call $~lib/rt/stub/__release
  local.get $30
  call $~lib/rt/stub/__release
  local.get $31
  call $~lib/rt/stub/__release
  local.get $32
  call $~lib/rt/stub/__release
 )
 (func $~start
  call $start:resolve-unary
 )
)
