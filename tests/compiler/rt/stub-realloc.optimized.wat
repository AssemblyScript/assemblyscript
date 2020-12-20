(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1100) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00$\00\00\00r\00t\00/\00s\00t\00u\00b\00-\00r\00e\00a\00l\00l\00o\00c\00.\00t\00s")
 (data (i32.const 1168) "\03\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $rt/stub-realloc/ptr (mut i32) (i32.const 0))
 (global $rt/stub-realloc/originalPtr (mut i32) (i32.const 0))
 (global $rt/stub-realloc/newLastPtr (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1168))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (export "__new" (func $~lib/rt/stub/__new))
 (export "__renew" (func $~lib/rt/stub/__renew))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__reset" (func $~lib/rt/stub/__reset))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (func $~lib/rt/stub/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $1
   local.get $2
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
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
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  call $~lib/rt/stub/computeSize
  local.tee $0
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $0
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
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/__alloc
  local.tee $3
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
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
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
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
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
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
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
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
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
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/stub/__realloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $0
  i32.const 4
  i32.sub
  local.tee $4
  i32.load
  local.tee $3
  i32.add
  i32.eq
  local.set $5
  local.get $1
  call $~lib/rt/stub/computeSize
  local.set $2
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $5
   if
    local.get $1
    i32.const 1073741820
    i32.gt_u
    if
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $4
    local.get $2
    i32.store
   else
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    call $~lib/rt/stub/__alloc
    local.tee $1
    local.get $0
    local.get $3
    call $~lib/memory/memory.copy
    local.get $1
    local.set $0
   end
  else
   local.get $5
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $4
    local.get $2
    i32.store
   end
  end
  local.get $0
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  i32.const 16
  i32.add
  call $~lib/rt/stub/__realloc
  local.tee $0
  i32.const 4
  i32.sub
  local.get $1
  i32.store offset=16
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect
  nop
 )
 (func $~lib/rt/stub/__reset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $start:rt/stub-realloc
  (local $0 i32)
  i32.const 10
  call $~lib/rt/stub/__alloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.set $rt/stub-realloc/originalPtr
  global.get $rt/stub-realloc/ptr
  i32.const 12
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 13
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 33
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 20
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  i32.const 1
  call $~lib/rt/stub/__alloc
  global.set $rt/stub-realloc/newLastPtr
  global.get $rt/stub-realloc/newLastPtr
  global.get $rt/stub-realloc/originalPtr
  i32.const 32
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 24
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 28
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 27
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 29
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.le_u
  if
   i32.const 0
   i32.const 1120
   i32.const 30
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  local.tee $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 89
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $0
  i32.const 4
  i32.sub
  local.tee $0
  i32.load
  i32.add
  i32.eq
  if
   local.get $0
   global.set $~lib/rt/stub/offset
  end
  i32.const 1
  call $~lib/rt/stub/__alloc
  global.get $rt/stub-realloc/ptr
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  i32.const 1196
  global.set $~lib/rt/stub/startOffset
  i32.const 1196
  global.set $~lib/rt/stub/offset
  call $start:rt/stub-realloc
 )
)
