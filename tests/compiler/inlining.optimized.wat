(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $inlining/func_fe~anonymous|0)
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $inlining/test))
 (start $start)
 (func $inlining/test (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
 )
 (func $inlining/func_fe~anonymous|0 (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $inlining/test_funcs (; 3 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $~lib/argc
  i32.const 2
  i32.const 1
  call_indirect (type $FUNCSIG$ii)
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 68
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/allocator/arena/__memory_allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.tee $1
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
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
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $inlining/test_ctor (; 5 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 16
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  i32.eqz
  if
   i32.const 8
   call $~lib/allocator/arena/__memory_allocate
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 2
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 97
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 98
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 99
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 100
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 6 ;) (type $FUNCSIG$v)
  call $inlining/test_funcs
  i32.const 40
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $inlining/test_ctor
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
  nop
 )
)
