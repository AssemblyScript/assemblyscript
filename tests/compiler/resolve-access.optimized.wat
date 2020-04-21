(module
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01")
 (data (i32.const 1056) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1120) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1168) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "arrayAccess" (func $resolve-access/arrayAccess))
 (export "fieldAccess" (func $resolve-access/fieldAccess))
 (export "propertyAccess" (func $resolve-access/propertyAccess))
 (start $~start)
 (func $~lib/rt/stub/__alloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $4
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $6
  i32.add
  local.tee $2
  memory.size
  local.tee $5
  i32.const 16
  i32.shl
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
   local.get $5
   local.get $3
   i32.gt_s
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
  local.get $4
  i32.const 16
  i32.sub
  local.tee $2
  local.get $6
  i32.store
  local.get $2
  i32.const 1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $4
 )
 (func $~lib/memory/memory.copy (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1040
  local.set $1
  i32.const 8
  local.set $4
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   i32.const 1040
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   i32.const 1040
   i32.lt_u
   if
    local.get $0
    i32.const 7
    i32.and
    i32.eqz
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $0
    i32.const 7
    i32.and
    i32.eqz
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       i32.add
       local.get $4
       i32.const 1040
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       i32.add
       local.get $4
       i32.const 1040
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $0
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      i32.add
      local.get $4
      i32.const 1040
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
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
 )
 (func $~lib/util/number/utoa_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $do-continue|0
   local.get $1
   i32.const 10
   i32.rem_u
   local.set $3
   local.get $1
   i32.const 10
   i32.div_u
   local.set $1
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $3
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   br_if $do-continue|0
  end
 )
 (func $~lib/number/U64#toString (param $0 i64) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $__inlined_func$~lib/util/number/utoa64
   local.get $0
   i64.eqz
   if
    i32.const 1184
    local.set $3
    br $__inlined_func$~lib/util/number/utoa64
   end
   local.get $0
   i64.const 4294967295
   i64.le_u
   if
    local.get $0
    i32.wrap_i64
    local.tee $2
    call $~lib/util/number/decimalCount32
    local.tee $4
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__alloc
    local.tee $3
    local.get $2
    local.get $4
    call $~lib/util/number/utoa_simple<u32>
   else
    local.get $0
    i64.const 100000000000
    i64.ge_u
    i32.const 10
    i32.add
    local.get $0
    i64.const 10000000000
    i64.ge_u
    i32.add
    local.get $0
    i64.const 100000000000000
    i64.ge_u
    i32.const 13
    i32.add
    local.get $0
    i64.const 10000000000000
    i64.ge_u
    i32.add
    local.get $0
    i64.const 1000000000000
    i64.lt_u
    select
    local.get $0
    i64.const 10000000000000000
    i64.ge_u
    i32.const 16
    i32.add
    local.get $0
    i64.const -8446744073709551616
    i64.ge_u
    i32.const 18
    i32.add
    local.get $0
    i64.const 1000000000000000000
    i64.ge_u
    i32.add
    local.get $0
    i64.const 100000000000000000
    i64.lt_u
    select
    local.get $0
    i64.const 1000000000000000
    i64.lt_u
    select
    local.tee $2
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__alloc
    local.tee $3
    local.set $4
    loop $do-continue|0
     local.get $0
     i64.const 10
     i64.div_u
     local.get $4
     local.get $2
     i32.const 1
     i32.sub
     local.tee $2
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     i64.const 10
     i64.rem_u
     i32.wrap_i64
     i32.const 48
     i32.add
     i32.store16
     local.tee $0
     i64.const 0
     i64.ne
     br_if $do-continue|0
    end
   end
  end
  local.get $3
 )
 (func $resolve-access/arrayAccess (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.set $0
  i32.const 8
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $1
  call $~lib/memory/memory.copy
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 8
  i32.store offset=8
  local.get $0
  i32.const 1
  i32.store offset=12
  i32.const 0
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1072
   i32.const 1136
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i64.load
  call $~lib/number/U64#toString
 )
 (func $resolve-access/Container#constructor (result i32)
  (local $0 i32)
  i32.const 8
  i32.const 5
  call $~lib/rt/stub/__alloc
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
 )
 (func $resolve-access/fieldAccess (result i32)
  (local $0 i32)
  call $resolve-access/Container#constructor
  local.tee $0
  i64.const 1
  i64.store
  local.get $0
  i64.load
  call $~lib/number/U64#toString
 )
 (func $resolve-access/propertyAccess (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $resolve-access/Container#constructor
  local.tee $0
  i64.const 1
  i64.store
  local.get $0
  i64.load
  i32.wrap_i64
  local.tee $1
  local.set $0
  i32.const 1184
  local.set $2
  local.get $1
  if
   local.get $0
   call $~lib/util/number/decimalCount32
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.tee $2
   local.get $0
   local.get $1
   call $~lib/util/number/utoa_simple<u32>
  end
  local.get $2
 )
 (func $~start
  i32.const 1200
  global.set $~lib/rt/stub/offset
 )
)
