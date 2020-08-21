(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1072) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00s\00i\00m\00d\00.\00t\00s")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:features/simd
  (local $0 i32)
  (local $1 i32)
  i32.const 1120
  global.set $~lib/rt/stub/offset
  i32.const 1200
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  local.tee $0
  i32.gt_u
  if
   local.get $1
   i32.const 66735
   local.get $0
   i32.sub
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $1
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
  i32.const 1200
  global.set $~lib/rt/stub/offset
  i32.const 1120
  i32.const 64
  i32.store
  i32.const 1124
  i32.const 1
  i32.store
  i32.const 1128
  i32.const 0
  i32.store
  i32.const 1132
  i32.const 64
  i32.store
  i32.const 1168
  i32.const 1152
  v128.load
  v128.store
  i32.const 1124
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 70
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 1120
  i32.load
  i32.const 1136
  i32.add
  i32.eq
  if
   i32.const 1120
   global.set $~lib/rt/stub/offset
  end
 )
 (func $~start
  call $start:features/simd
 )
)
