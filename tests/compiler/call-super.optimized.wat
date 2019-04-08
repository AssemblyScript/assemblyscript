(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00(")
 (data (i32.const 24) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 64) "\10\00\00\00\1a")
 (data (i32.const 80) "c\00a\00l\00l\00-\00s\00u\00p\00e\00r\00.\00t\00s")
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/__mem_allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/runtime/allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 15
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__mem_allocate
  local.tee $1
  i32.const -1520547049
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 16
  i32.add
 )
 (func $~lib/util/runtime/register (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 108
  i32.le_u
  if
   i32.const 0
   i32.const 24
   i32.const 129
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $call-super/A#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/util/runtime/allocate
   i32.const 17
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 8
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $call-super/B#constructor (; 5 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 8
  call $~lib/util/runtime/allocate
  i32.const 18
  call $~lib/util/runtime/register
  call $call-super/A#constructor
  local.tee $0
  i32.const 2
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 17
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 18
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $call-super/test1 (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  call $call-super/B#constructor
  local.tee $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 24
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 25
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $call-super/D#constructor (; 7 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 8
  call $~lib/util/runtime/allocate
  i32.const 20
  call $~lib/util/runtime/register
  local.tee $0
  i32.eqz
  if
   i32.const 4
   call $~lib/util/runtime/allocate
   i32.const 19
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.const 2
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 40
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 41
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $call-super/test2 (; 8 ;) (type $FUNCSIG$v)
  (local $0 i32)
  call $call-super/D#constructor
  local.tee $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 47
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 48
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $call-super/E#constructor (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/util/runtime/allocate
   i32.const 21
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 58
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $call-super/test3 (; 10 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 8
  call $~lib/util/runtime/allocate
  i32.const 22
  call $~lib/util/runtime/register
  call $call-super/E#constructor
  local.tee $0
  i32.const 2
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 68
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 69
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $call-super/H#constructor (; 11 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 8
  call $~lib/util/runtime/allocate
  i32.const 24
  call $~lib/util/runtime/register
  local.tee $0
  i32.eqz
  if
   i32.const 4
   call $~lib/util/runtime/allocate
   i32.const 23
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.const 2
  i32.store offset=4
  local.get $0
 )
 (func $call-super/test4 (; 12 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block (result i32)
   call $call-super/H#constructor
  end
  local.tee $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 86
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 87
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $call-super/J#constructor (; 13 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 8
  call $~lib/util/runtime/allocate
  i32.const 26
  call $~lib/util/runtime/register
  local.tee $0
  i32.eqz
  if
   i32.const 4
   call $~lib/util/runtime/allocate
   i32.const 25
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.const 2
  i32.store offset=4
  local.get $0
 )
 (func $call-super/test5 (; 14 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block (result i32)
   call $call-super/J#constructor
  end
  local.tee $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 106
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 107
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 15 ;) (type $FUNCSIG$v)
  i32.const 112
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $call-super/test1
  call $call-super/test2
  call $call-super/test3
  call $call-super/test4
  call $call-super/test5
 )
 (func $null (; 16 ;) (type $FUNCSIG$v)
  nop
 )
)
