(module
 (type $FUNCSIG$diiiiiid (func (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$jij (func (param i32 i64) (result i64)))
 (type $FUNCSIG$v (func))
 (import "Date" "UTC" (func $~lib/bindings/Date/UTC (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\16\00\00\00s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s\00")
 (data (i32.const 40) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $std/date/creationTime (mut i64) (i64.const 0))
 (global $~lib/runtime/GC_IMPLEMENTED i32 (i32.const 0))
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $std/date/date (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 80))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/runtime/ADJUSTOBLOCK (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/memory/memory.allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/allocator/arena/__memory_allocate|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   i32.const 1073741824
   i32.gt_u
   if
    unreachable
   end
   global.get $~lib/allocator/arena/offset
   local.set $2
   local.get $2
   local.get $1
   local.tee $3
   i32.const 1
   local.tee $4
   local.get $3
   local.get $4
   i32.gt_u
   select
   i32.add
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   local.set $3
   current_memory
   local.set $4
   local.get $3
   local.get $4
   i32.const 16
   i32.shl
   i32.gt_u
   if
    local.get $3
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
    local.set $5
    local.get $4
    local.tee $6
    local.get $5
    local.tee $7
    local.get $6
    local.get $7
    i32.gt_s
    select
    local.set $6
    local.get $6
    grow_memory
    i32.const 0
    i32.lt_s
    if
     local.get $5
     grow_memory
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
   end
   local.get $3
   global.set $~lib/allocator/arena/offset
   local.get $2
  end
  return
 )
 (func $~lib/runtime/doAllocate (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/runtime/ADJUSTOBLOCK
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/runtime/ALLOCATE (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/runtime/doAllocate
 )
 (func $~lib/runtime/assertUnregistered (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 192
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load
  global.get $~lib/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 193
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/runtime/doRegister (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/runtime/assertUnregistered
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/date/Date#constructor (; 9 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Date>|inlined.0 (result i32)
     i32.const 8
     call $~lib/runtime/ALLOCATE
     local.set $2
     local.get $2
     i32.const 2
     call $~lib/runtime/doRegister
    end
    local.set $0
   end
   local.get $0
   i64.const 0
   i64.store
   local.get $0
  end
  local.get $1
  i64.store
  local.get $0
 )
 (func $~lib/date/Date#getTime (; 10 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/date/Date#setTime (; 11 ;) (type $FUNCSIG$jij) (param $0 i32) (param $1 i64) (result i64)
  local.get $0
  local.get $1
  i64.store
  local.get $1
 )
 (func $start:std/date (; 12 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  block $~lib/date/Date.UTC|inlined.0 (result i64)
   i32.const 1970
   local.set $0
   i32.const 0
   local.set $1
   i32.const 1
   local.set $2
   i32.const 0
   local.set $3
   i32.const 0
   local.set $4
   i32.const 0
   local.set $5
   i64.const 0
   local.set $6
   local.get $0
   local.get $1
   local.get $2
   local.get $3
   local.get $4
   local.get $5
   local.get $6
   f64.convert_i64_s
   call $~lib/bindings/Date/UTC
   i64.trunc_f64_s
  end
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 3
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/date/Date.UTC|inlined.1 (result i64)
   i32.const 1970
   local.set $5
   i32.const 0
   local.set $4
   i32.const 1
   local.set $3
   i32.const 0
   local.set $2
   i32.const 0
   local.set $1
   i32.const 0
   local.set $0
   i64.const 0
   local.set $6
   local.get $5
   local.get $4
   local.get $3
   local.get $2
   local.get $1
   local.get $0
   local.get $6
   f64.convert_i64_s
   call $~lib/bindings/Date/UTC
   i64.trunc_f64_s
  end
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/date/Date.UTC|inlined.2 (result i64)
   i32.const 2018
   local.set $0
   i32.const 10
   local.set $1
   i32.const 10
   local.set $2
   i32.const 11
   local.set $3
   i32.const 0
   local.set $4
   i32.const 0
   local.set $5
   i64.const 1
   local.set $6
   local.get $0
   local.get $1
   local.get $2
   local.get $3
   local.get $4
   local.get $5
   local.get $6
   f64.convert_i64_s
   call $~lib/bindings/Date/UTC
   i64.trunc_f64_s
  end
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  i64.const 1541847600001
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/date/Date.now|inlined.0 (result i64)
   call $~lib/bindings/Date/now
   i64.trunc_f64_s
  end
  global.get $std/date/creationTime
  i64.gt_s
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  global.get $std/date/creationTime
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $std/date/date
  call $~lib/date/Date#getTime
  global.get $std/date/creationTime
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/date/date
  global.get $std/date/creationTime
  i64.const 1
  i64.add
  call $~lib/date/Date#setTime
  drop
  global.get $std/date/date
  call $~lib/date/Date#getTime
  global.get $std/date/creationTime
  i64.const 1
  i64.add
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 13 ;) (type $FUNCSIG$v)
  call $start:std/date
 )
 (func $null (; 14 ;) (type $FUNCSIG$v)
 )
)
