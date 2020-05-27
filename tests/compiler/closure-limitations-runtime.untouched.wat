(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00c\00l\00o\00s\00u\00r\00e\00-\00l\00i\00m\00i\00t\00a\00t\00i\00o\00n\00s\00-\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (table $0 2 funcref)
 (elem (i32.const 1) $closure-limitations-runtime/exportedClosureReturns~inner)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 92))
 (export "memory" (memory $0))
 (export "exportedClosureReturns" (func $closure-limitations-runtime/exportedClosureReturns))
 (start $~start)
 (func $closure-limitations-runtime/exportedClosureReturns~inner (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
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
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  i32.const 1
  drop
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $closure-limitations-runtime/exportedClosureReturns (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  local.set $0
  i32.const 8
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  i32.const 1
  i32.store
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  i32.const 4
  i32.shr_s
  i32.const -2147483648
  i32.or
  local.set $3
  local.get $3
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $3
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__retain
  drop
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  local.set $1
  local.get $1
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if
   i32.const 0
   i32.const 32
   i32.const 3
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  else
   nop
  end
  local.get $1
 )
 (func $start:closure-limitations-runtime
  (local $0 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  call $closure-limitations-runtime/exportedClosureReturns
  local.set $0
  local.get $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $0
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__release
 )
 (func $~start
  call $start:closure-limitations-runtime
 )
)
