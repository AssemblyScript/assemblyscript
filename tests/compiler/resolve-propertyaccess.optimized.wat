(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "|\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 1164) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 1228) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 1260) "\\\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 1356) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\001")
 (data (i32.const 1388) "L\00\00\00\01\00\00\00\00\00\00\00\01\00\00\002\00\00\00r\00e\00s\00o\00l\00v\00e\00-\00p\00r\00o\00p\00e\00r\00t\00y\00a\00c\00c\00e\00s\00s\00.\00t\00s")
 (data (i32.const 1468) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\001\001")
 (data (i32.const 1500) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\002")
 (data (i32.const 1532) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\002\002")
 (data (i32.const 1564) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\003")
 (data (i32.const 1596) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\003\003")
 (data (i32.const 1628) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\004")
 (data (i32.const 1660) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\005")
 (data (i32.const 1692) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\005\005")
 (data (i32.const 1724) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\007")
 (data (i32.const 1756) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\006")
 (data (i32.const 1788) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\008")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $4
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $7
  i32.add
  local.tee $2
  memory.size
  local.tee $5
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $3
  i32.gt_u
  if
   local.get $5
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $3
   local.get $5
   i32.lt_s
   select
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
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $7
  i32.store
  local.get $4
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $4
  i32.const 16
  i32.add
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1248
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  local.tee $2
  select
  local.tee $0
  i32.const 10
  i32.ge_u
  i32.const 1
  i32.add
  local.get $0
  i32.const 10000
  i32.ge_u
  i32.const 3
  i32.add
  local.get $0
  i32.const 1000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 100
  i32.lt_u
  select
  local.get $0
  i32.const 1000000
  i32.ge_u
  i32.const 6
  i32.add
  local.get $0
  i32.const 1000000000
  i32.ge_u
  i32.const 8
  i32.add
  local.get $0
  i32.const 100000000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
  local.get $2
  i32.add
  local.tee $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $3
  local.set $4
  loop $do-continue|0
   local.get $4
   local.get $1
   i32.const 1
   i32.sub
   local.tee $1
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store16
   local.get $0
   i32.const 10
   i32.div_u
   local.tee $0
   br_if $do-continue|0
  end
  local.get $2
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
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
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
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
   br_if $folding-inner0
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
   return
  end
  i32.const 0
 )
 (func $start:resolve-propertyaccess
  (local $0 i32)
  i32.const 1820
  global.set $~lib/rt/stub/offset
  i32.const 1
  call $~lib/util/number/itoa32
  i32.const 1376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 11
  call $~lib/util/number/itoa32
  i32.const 1488
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/util/number/itoa32
  i32.const 1520
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 22
  call $~lib/util/number/itoa32
  i32.const 1552
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 30
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/util/number/itoa32
  i32.const 1584
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 33
  call $~lib/util/number/itoa32
  i32.const 1616
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  call $~lib/util/number/itoa32
  i32.const 1648
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 58
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  call $~lib/util/number/itoa32
  i32.const 1680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 72
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 55
  call $~lib/util/number/itoa32
  i32.const 1712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 78
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7
  call $~lib/util/number/itoa32
  i32.const 1744
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 84
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 3
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 6
  i32.store
  local.get $0
  i32.load
  call $~lib/util/number/itoa32
  i32.const 1776
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 92
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  call $~lib/util/number/itoa32
  i32.const 1808
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 97
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:resolve-propertyaccess
 )
)
