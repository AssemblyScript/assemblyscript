(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\03\00\00\00\00\00\00\00\10\00\00\00s\00t\00d\00/\00g\00c\00-\00b\00a\00s\00i\00c\00s\00.\00t\00s")
 (table $0 4 funcref)
 (elem (i32.const 0) $null $std/gc-basics/MyObject_visit $~lib/collector/itcm/__gc_mark $~lib/string/String~gc)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $std/gc-basics/obj (mut i32) (i32.const 0))
 (global $std/gc-basics/obj2 (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc-basics/main))
 (func $std/gc-basics/MyObject_visit (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/collector/itcm/ManagedObjectList#push (; 3 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  local.get $1
  i32.load
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $2
  i32.load
  i32.const 3
  i32.and
  local.get $1
  i32.or
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/collector/itcm/iter
  local.get $0
  i32.eq
  if
   local.get $0
   i32.load offset=4
   global.set $~lib/collector/itcm/iter
  end
  local.get $0
  i32.load
  i32.const -4
  i32.and
  local.tee $2
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $1
  local.get $1
  i32.load
  i32.const 3
  i32.and
  local.get $2
  i32.or
  i32.store
  global.get $~lib/collector/itcm/toSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
  local.get $0
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.const 2
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/__gc_mark (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   global.get $~lib/collector/itcm/white
   local.get $0
   i32.const 16
   i32.sub
   local.tee $0
   i32.load
   i32.const 3
   i32.and
   i32.eq
   if
    local.get $0
    call $~lib/collector/itcm/ManagedObject#makeGray
   end
  end
 )
 (func $~lib/collector/itcm/step (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      global.get $~lib/collector/itcm/state
      local.tee $0
      if
       local.get $0
       i32.const 1
       i32.sub
       br_table $case1|0 $case2|0 $case3|0 $break|0
      end
      i32.const 16
      call $~lib/allocator/arena/__memory_allocate
      global.set $~lib/collector/itcm/fromSpace
      global.get $~lib/collector/itcm/fromSpace
      local.tee $0
      i32.const -1
      i32.store offset=8
      local.get $0
      local.get $0
      i32.store
      local.get $0
      local.get $0
      i32.store offset=4
      i32.const 16
      call $~lib/allocator/arena/__memory_allocate
      global.set $~lib/collector/itcm/toSpace
      global.get $~lib/collector/itcm/toSpace
      local.tee $0
      i32.const -1
      i32.store offset=8
      local.get $0
      local.get $0
      i32.store
      local.get $0
      local.get $0
      i32.store offset=4
      global.get $~lib/collector/itcm/toSpace
      global.set $~lib/collector/itcm/iter
      i32.const 1
      global.set $~lib/collector/itcm/state
     end
     global.get $std/gc-basics/obj
     i32.const 2
     call_indirect (type $FUNCSIG$vi)
     global.get $std/gc-basics/obj2
     i32.const 2
     call_indirect (type $FUNCSIG$vi)
     i32.const 2
     global.set $~lib/collector/itcm/state
     br $break|0
    end
    global.get $~lib/collector/itcm/iter
    i32.load
    i32.const -4
    i32.and
    local.tee $0
    global.get $~lib/collector/itcm/toSpace
    i32.ne
    if
     local.get $0
     global.set $~lib/collector/itcm/iter
     local.get $0
     global.get $~lib/collector/itcm/white
     i32.eqz
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.or
     i32.store
     i32.const 1
     global.set $~lib/argc
     local.get $0
     i32.const 16
     i32.add
     local.get $0
     i32.load offset=8
     call_indirect (type $FUNCSIG$vi)
    else     
     global.get $std/gc-basics/obj
     i32.const 2
     call_indirect (type $FUNCSIG$vi)
     global.get $std/gc-basics/obj2
     i32.const 2
     call_indirect (type $FUNCSIG$vi)
     global.get $~lib/collector/itcm/toSpace
     global.get $~lib/collector/itcm/iter
     i32.load
     i32.const -4
     i32.and
     i32.eq
     if
      global.get $~lib/collector/itcm/fromSpace
      local.set $0
      global.get $~lib/collector/itcm/toSpace
      global.set $~lib/collector/itcm/fromSpace
      local.get $0
      global.set $~lib/collector/itcm/toSpace
      global.get $~lib/collector/itcm/white
      i32.eqz
      global.set $~lib/collector/itcm/white
      local.get $0
      i32.load
      i32.const -4
      i32.and
      global.set $~lib/collector/itcm/iter
      i32.const 3
      global.set $~lib/collector/itcm/state
     end
    end
    br $break|0
   end
   global.get $~lib/collector/itcm/iter
   local.tee $0
   global.get $~lib/collector/itcm/toSpace
   i32.ne
   if
    local.get $0
    i32.load
    i32.const -4
    i32.and
    global.set $~lib/collector/itcm/iter
   else    
    global.get $~lib/collector/itcm/toSpace
    local.tee $0
    local.get $0
    i32.store
    local.get $0
    local.get $0
    i32.store offset=4
    i32.const 1
    global.set $~lib/collector/itcm/state
   end
  end
 )
 (func $~lib/collector/itcm/__gc_allocate (; 7 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  call $~lib/collector/itcm/step
  i32.const 20
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  i32.const 1
  i32.store offset=8
  local.get $0
  global.get $~lib/collector/itcm/white
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.or
  i32.store
  global.get $~lib/collector/itcm/fromSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/string/String~gc (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  call $~lib/collector/itcm/__gc_mark
 )
 (func $~lib/collector/itcm/__gc_collect (; 9 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case1|0
    global.get $~lib/collector/itcm/state
    local.tee $0
    i32.eqz
    br_if $case1|0
    local.get $0
    i32.const 1
    i32.eq
    br_if $case1|0
    br $break|0
   end
   call $~lib/collector/itcm/step
  end
  loop $continue|1
   global.get $~lib/collector/itcm/state
   i32.const 1
   i32.ne
   if
    call $~lib/collector/itcm/step
    br $continue|1
   end
  end
 )
 (func $start:std/gc-basics (; 10 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 64
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $~lib/collector/itcm/__gc_allocate
  global.set $std/gc-basics/obj
  global.get $std/gc-basics/obj
  local.tee $0
  i32.const 123
  i32.store
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  i32.load offset=4
  local.set $2
  block (result i32)
   local.get $0
   i32.load
   i32.const -4
   i32.and
   local.tee $3
   i32.const 0
   i32.ne
   local.tee $1
   if
    local.get $2
    i32.const 0
    i32.ne
    local.set $1
   end
   local.get $1
  end
  if (result i32)
   local.get $2
   local.get $3
   i32.eq
  else   
   local.get $1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 19
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 21
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=16
  i32.const 123
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 25
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  call $~lib/collector/itcm/__gc_collect
  i32.const 0
  global.set $std/gc-basics/obj
  call $~lib/collector/itcm/__gc_collect
 )
 (func $std/gc-basics/main (; 11 ;) (type $FUNCSIG$i) (result i32)
  global.get $~lib/started
  i32.eqz
  if
   call $start:std/gc-basics
   i32.const 1
   global.set $~lib/started
  end
  i32.const 0
 )
 (func $null (; 12 ;) (type $FUNCSIG$v)
  nop
 )
)
