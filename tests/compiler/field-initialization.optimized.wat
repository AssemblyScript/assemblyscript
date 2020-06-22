(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00f\00i\00e\00l\00d\00-\00i\00n\00i\00t\00i\00a\00l\00i\00z\00a\00t\00i\00o\00n\00.\00t\00s")
 (data (i32.const 1088) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1136) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
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
 (func $field-initialization/Inherit_Base#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 18
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__alloc
  i32.store
  local.get $0
 )
 (func $start:field-initialization
  (local $0 i32)
  (local $1 i32)
  i32.const 1200
  global.set $~lib/rt/stub/offset
  i32.const 4
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 8
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1040
   i32.const 16
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 5
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__alloc
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 24
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 6
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__alloc
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 7
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1040
   i32.const 40
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 8
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1040
   i32.const 52
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 9
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 10
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 73
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 11
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__alloc
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 12
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 94
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $0
  i32.const 4
  i32.const 13
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.load
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 104
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 14
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1040
   i32.const 114
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 15
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__alloc
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 124
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 16
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 135
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 17
  call $~lib/rt/stub/__alloc
  call $field-initialization/Inherit_Base#constructor
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 147
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 19
  call $~lib/rt/stub/__alloc
  call $field-initialization/Inherit_Base#constructor
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 153
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 20
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 170
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:field-initialization
 )
)
