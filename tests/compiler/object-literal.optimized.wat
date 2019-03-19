(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d")
 (data (i32.const 40) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 80) "\01\00\00\00\"\00\00\00o\00b\00j\00e\00c\00t\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/memory/memory.allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/doAllocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/memory/memory.allocate
  local.tee $1
  i32.const -1520547049
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 8
  i32.add
 )
 (func $~lib/runtime/assertUnregistered (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 124
  i32.le_u
  if
   i32.const 0
   i32.const 48
   i32.const 192
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 193
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/runtime/doRegister (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/runtime/assertUnregistered
  local.get $0
  i32.const 8
  i32.sub
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/util/string/compareImpl (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  local.set $2
  loop $continue|0
   local.get $1
   if (result i32)
    local.get $0
    i32.load16_u
    local.get $2
    i32.load16_u
    i32.sub
    local.tee $3
    i32.eqz
   else    
    local.get $1
   end
   if
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $3
 )
 (func $~lib/string/String.__eq (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 16
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.eqz
  local.tee $1
  i32.eqz
  if
   i32.const 0
   local.set $1
  end
  local.get $1
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $1
  i32.const 12
  i32.load
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $object-literal/bar (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 88
   i32.const 9
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 10
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start:object-literal (; 8 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 128
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 8
  call $~lib/runtime/doAllocate
  i32.const 2
  call $~lib/runtime/doRegister
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  i32.const 16
  i32.store offset=4
  local.get $0
  call $object-literal/bar
  i32.const 4
  call $~lib/runtime/doAllocate
  i32.const 3
  call $~lib/runtime/doRegister
  local.tee $0
  i32.const 2
  i32.store
  local.get $0
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 88
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  call $~lib/runtime/doAllocate
  i32.const 3
  call $~lib/runtime/doRegister
  local.tee $0
  i32.const 3
  i32.store
  local.get $0
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 88
   i32.const 21
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 9 ;) (type $FUNCSIG$v)
  call $start:object-literal
 )
 (func $null (; 10 ;) (type $FUNCSIG$v)
  nop
 )
)
