(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00c\00l\00o\00s\00u\00r\00e\00-\00l\00i\00m\00i\00t\00a\00t\00i\00o\00n\00s\00-\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "exportedClosureReturns" (func $closure-limitations-runtime/exportedClosureReturns))
 (start $~start)
 (func $closure-limitations-runtime/exportedClosureReturns (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $0
  i32.const 16
  i32.add
  local.tee $1
  memory.size
  local.tee $3
  i32.const 16
  i32.shl
  local.tee $2
  i32.gt_u
  if
   local.get $3
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
   local.get $3
   local.get $2
   i32.gt_s
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
  local.get $0
  i32.const 16
  i32.sub
  local.tee $1
  i32.const 16
  i32.store
  local.get $1
  i32.const 1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 8
  i32.store offset=12
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 4
  i32.shr_s
  i32.const -2147483648
  i32.or
  local.tee $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if
   i32.const 0
   i32.const 1040
   i32.const 3
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~start
  i32.const 1104
  global.set $~lib/rt/stub/offset
  call $closure-limitations-runtime/exportedClosureReturns
  drop
 )
)
