(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1072) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00s\00i\00m\00d\00.\00t\00s")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $features/simd/test_v128 (; 1 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $1
  i32.const -64
  i32.sub
  local.tee $2
  memory.size
  local.tee $3
  i32.const 16
  i32.shl
  local.tee $0
  i32.gt_u
  if
   local.get $3
   local.get $2
   local.get $0
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $3
   local.get $0
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $0
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
  local.get $1
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 64
  i32.store
  local.get $0
  i32.const 1
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 64
  i32.store offset=12
  local.get $1
  local.get $1
  v128.load offset=16
  v128.store offset=32
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 72
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $1
  local.get $0
  i32.load
  i32.add
  i32.eq
  if
   local.get $0
   global.set $~lib/rt/stub/offset
  end
 )
 (func $~start (; 2 ;)
  i32.const 1120
  global.set $~lib/rt/stub/startOffset
  i32.const 1120
  global.set $~lib/rt/stub/offset
  call $features/simd/test_v128
 )
)
