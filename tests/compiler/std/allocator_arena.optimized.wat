(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00,\00\00\00s\00t\00d\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00_\00a\00r\00e\00n\00a\00.\00t\00s")
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/allocator_arena/ptr1 (mut i32) (i32.const 0))
 (global $std/allocator_arena/ptr2 (mut i32) (i32.const 0))
 (global $std/allocator_arena/i (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/__mem_allocate (; 1 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/allocator/arena/offset
  local.tee $0
  i32.const 49
  i32.add
  i32.const -8
  i32.and
  local.tee $1
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $2
   local.get $1
   local.get $0
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
  local.get $1
  global.set $~lib/allocator/arena/offset
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 18
   i32.store8
   local.get $0
   i32.const 42
   i32.add
   local.tee $1
   i32.const 1
   i32.sub
   i32.const 18
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   i32.const 18
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   i32.const 18
   i32.store8
   local.get $1
   i32.const 2
   i32.sub
   i32.const 18
   i32.store8
   local.get $1
   i32.const 3
   i32.sub
   i32.const 18
   i32.store8
   local.get $0
   i32.const 3
   i32.add
   i32.const 18
   i32.store8
   local.get $1
   i32.const 4
   i32.sub
   i32.const 18
   i32.store8
   i32.const 42
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $1
   i32.sub
   local.set $2
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 303174162
   i32.store
   local.get $2
   i32.const -4
   i32.and
   local.tee $1
   local.get $0
   i32.add
   i32.const 4
   i32.sub
   i32.const 303174162
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 4
   i32.add
   i32.const 303174162
   i32.store
   local.get $0
   i32.const 8
   i32.add
   i32.const 303174162
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 12
   i32.sub
   i32.const 303174162
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 303174162
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 12
   i32.add
   i32.const 303174162
   i32.store
   local.get $0
   i32.const 16
   i32.add
   i32.const 303174162
   i32.store
   local.get $0
   i32.const 20
   i32.add
   i32.const 303174162
   i32.store
   local.get $0
   i32.const 24
   i32.add
   i32.const 303174162
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 28
   i32.sub
   i32.const 303174162
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 303174162
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 303174162
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 303174162
   i32.store
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   local.get $0
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 1302123111085380114
     i64.store
     local.get $0
     i32.const 8
     i32.add
     i64.const 1302123111085380114
     i64.store
     local.get $0
     i32.const 16
     i32.add
     i64.const 1302123111085380114
     i64.store
     local.get $0
     i32.const 24
     i32.add
     i64.const 1302123111085380114
     i64.store
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $continue|0
    end
   end
  end
 )
 (func $~lib/memory/memory.copy (; 3 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 42
  local.set $2
  block $~lib/util/memory/memmove|inlined.0
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
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.tee $3
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $3
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $2
       i32.const 8
       i32.sub
       local.set $2
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $2
     if
      local.get $0
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $continue|2
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
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $2
       i32.const 8
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $2
     if
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      local.get $0
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $start:std/allocator_arena (; 4 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 64
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $~lib/allocator/arena/__mem_allocate
  global.set $std/allocator_arena/ptr1
  call $~lib/allocator/arena/__mem_allocate
  global.set $std/allocator_arena/ptr2
  global.get $std/allocator_arena/ptr1
  global.get $std/allocator_arena/ptr2
  i32.eq
  if
   i32.const 0
   i32.const 16
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/allocator_arena/ptr1
  call $~lib/memory/memory.fill
  i32.const 0
  global.set $std/allocator_arena/i
  loop $repeat|0
   global.get $std/allocator_arena/i
   i32.const 42
   i32.lt_u
   if
    global.get $std/allocator_arena/ptr1
    global.get $std/allocator_arena/i
    i32.add
    i32.load8_u
    i32.const 18
    i32.ne
    if
     i32.const 0
     i32.const 16
     i32.const 12
     i32.const 27
     call $~lib/builtins/abort
     unreachable
    else     
     global.get $std/allocator_arena/i
     i32.const 1
     i32.add
     global.set $std/allocator_arena/i
     br $repeat|0
    end
    unreachable
   end
  end
  global.get $std/allocator_arena/ptr2
  global.get $std/allocator_arena/ptr1
  call $~lib/memory/memory.copy
  i32.const 0
  global.set $std/allocator_arena/i
  loop $repeat|1
   global.get $std/allocator_arena/i
   i32.const 42
   i32.lt_u
   if
    global.get $std/allocator_arena/ptr2
    global.get $std/allocator_arena/i
    i32.add
    i32.load8_u
    i32.const 18
    i32.ne
    if
     i32.const 0
     i32.const 16
     i32.const 16
     i32.const 27
     call $~lib/builtins/abort
     unreachable
    else     
     global.get $std/allocator_arena/i
     i32.const 1
     i32.add
     global.set $std/allocator_arena/i
     br $repeat|1
    end
    unreachable
   end
  end
  block $~lib/util/memory/memcmp|inlined.0 (result i32)
   i32.const 42
   local.set $0
   i32.const 0
   global.get $std/allocator_arena/ptr2
   local.tee $1
   global.get $std/allocator_arena/ptr1
   local.tee $2
   i32.eq
   br_if $~lib/util/memory/memcmp|inlined.0
   drop
   loop $continue|2
    local.get $0
    i32.const 0
    i32.ne
    local.tee $3
    if
     local.get $2
     i32.load8_u
     local.get $1
     i32.load8_u
     i32.eq
     local.set $3
    end
    local.get $3
    if
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $continue|2
    end
   end
   local.get $0
   if (result i32)
    local.get $2
    i32.load8_u
    local.get $1
    i32.load8_u
    i32.sub
   else    
    i32.const 0
   end
  end
  if
   i32.const 0
   i32.const 16
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $~lib/allocator/arena/__mem_allocate
  global.set $std/allocator_arena/ptr1
  global.get $std/allocator_arena/ptr1
  i32.const 64
  i32.ne
  if
   i32.const 0
   i32.const 16
   i32.const 25
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 5 ;) (type $FUNCSIG$v)
  call $start:std/allocator_arena
 )
 (func $null (; 6 ;) (type $FUNCSIG$v)
  nop
 )
)
