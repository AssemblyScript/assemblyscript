(module
 (type $iiiiiiII (func (param i32 i32 i32 i32 i32 i32 i64) (result i64)))
 (type $iiiiiiFF (func (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $I (func (result i64)))
 (type $F (func (result f64)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iII (func (param i32 i64) (result i64)))
 (type $v (func))
 (import "Date" "UTC" (func $~lib/bindings/Date/UTC (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/date/creationTime (mut i64) (i64.const 0))
 (global $std/date/date (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 36))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/date/Date.UTC (; 3 ;) (type $iiiiiiII) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i64) (result i64)
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
 )
 (func $~lib/date/Date.now (; 4 ;) (type $I) (result i64)
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
 )
 (func $~lib/allocator/arena/__memory_allocate (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  global.get $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 6 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/date/Date#constructor (; 7 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
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
 (func $~lib/date/Date#getTime (; 8 ;) (type $iI) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/date/Date#setTime (; 9 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  local.get $0
  local.get $1
  i64.store
  local.get $1
 )
 (func $start (; 10 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i64)
  global.get $HEAP_BASE
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  block $__inlined_func$~lib/date/Date.UTC (result i64)
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
   i32.const 8
   i32.const 3
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$~lib/date/Date.UTC0 (result i64)
   i32.const 1970
   local.set $7
   i32.const 0
   local.set $8
   i32.const 1
   local.set $9
   i32.const 0
   local.set $10
   i32.const 0
   local.set $11
   i32.const 0
   local.set $12
   i64.const 0
   local.set $13
   local.get $7
   local.get $8
   local.get $9
   local.get $10
   local.get $11
   local.get $12
   local.get $13
   f64.convert_i64_s
   call $~lib/bindings/Date/UTC
   i64.trunc_f64_s
  end
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$~lib/date/Date.UTC1 (result i64)
   i32.const 2018
   local.set $14
   i32.const 10
   local.set $15
   i32.const 10
   local.set $16
   i32.const 11
   local.set $17
   i32.const 0
   local.set $18
   i32.const 0
   local.set $19
   i64.const 1
   local.set $20
   local.get $14
   local.get $15
   local.get $16
   local.get $17
   local.get $18
   local.get $19
   local.get $20
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
   i32.const 8
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$~lib/date/Date.now (result i64)
   call $~lib/bindings/Date/now
   i64.trunc_f64_s
  end
  global.get $std/date/creationTime
  i64.gt_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
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
   i32.const 8
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
   i32.const 8
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 11 ;) (type $v)
 )
)
