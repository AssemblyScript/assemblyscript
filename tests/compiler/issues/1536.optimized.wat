(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d")
 (data (i32.const 1100) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\001\005\003\006\00.\00t\00s")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $issues/1536/instance (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__new (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $3
  i32.const 28
  i32.add
  local.tee $1
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.gt_u
  if
   local.get $4
   local.get $1
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $2
   local.get $4
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $1
  global.set $~lib/rt/stub/offset
  i32.const 28
  i32.store
  local.get $3
  i32.const 4
  i32.sub
  local.tee $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~start
  (local $0 i32)
  i32.const 1148
  global.set $~lib/rt/stub/offset
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $0
  if (result i32)
   local.get $0
  else
   i32.const 3
   call $~lib/rt/stub/__new
  end
  global.set $issues/1536/instance
  block $__inlined_func$issues/1536/Base#run@virtual
   global.get $issues/1536/instance
   i32.const 8
   i32.sub
   i32.load
   i32.const 4
   i32.eq
   if
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee $0
    if (result i32)
     local.get $0
    else
     i32.const 6
     call $~lib/rt/stub/__new
    end
    i32.const 8
    i32.sub
    i32.load
    i32.const 5
    i32.eq
    br_if $__inlined_func$issues/1536/Base#run@virtual
    i32.const 1056
    i32.const 1120
    i32.const 6
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   i32.const 1120
   i32.const 18
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
)
