(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00N\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d")
 (data (i32.const 56) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00m\00e\00m\00o\00r\00y\00.\00t\00s")
 (global $assembly/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $assembly/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $assembly/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $assembly/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $assembly/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (global $assembly/buddy/base_ptr (mut i32) (i32.const 0))
 (global $assembly/buddy/max_ptr (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "memory.copy" (func $~lib/memory/memory.copy))
 (export "memory.init" (func $~lib/memory/memory.init))
 (export "memory.drop" (func $~lib/memory/memory.drop))
 (export "memory.repeat" (func $~lib/memory/memory.repeat))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "__alloc" (func $assembly/buddy/__mem_allocate))
 (export "__free" (func $assembly/buddy/__mem_free))
 (start $start)
 (func $~lib/memory/memory.init (; 1 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  i32.const 24
  i32.const 72
  i32.const 35
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/memory/memory.drop (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 24
  i32.const 72
  i32.const 42
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/memory/memory.copy (; 3 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
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
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
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
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
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
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/memory/memory.repeat (; 4 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $2
  local.get $3
  i32.mul
  local.set $3
  loop $continue|0
   local.get $4
   local.get $3
   i32.lt_u
   if
    local.get $0
    local.get $4
    i32.add
    local.get $1
    local.get $2
    call $~lib/memory/memory.copy
    local.get $2
    local.get $4
    i32.add
    local.set $4
    br $continue|0
   end
  end
 )
 (func $~lib/memory/memory.compare (; 5 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  i32.eq
  if (result i32)
   i32.const 0
  else   
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $0
     i32.load8_u
     local.get $1
     i32.load8_u
     i32.eq
    else     
     i32.const 0
    end
    if
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $continue|0
    end
   end
   local.get $2
   if (result i32)
    local.get $0
    i32.load8_u
    local.get $1
    i32.load8_u
    i32.sub
   else    
    i32.const 0
   end
  end
 )
 (func $assembly/buddy/update_max_ptr (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $assembly/buddy/max_ptr
  i32.gt_u
  if
   local.get $0
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   memory.size
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    return
   end
   local.get $0
   i32.const 16
   i32.shl
   global.set $assembly/buddy/max_ptr
  end
  i32.const 1
 )
 (func $assembly/buddy/buckets$get (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  global.get $assembly/buddy/BUCKETS_START
  local.get $0
  i32.const 3
  i32.shl
  i32.add
 )
 (func $assembly/buddy/list_init (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.store offset=4
 )
 (func $assembly/buddy/list_push (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
 )
 (func $assembly/buddy/bucket_for_request (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 26
  local.set $1
  i32.const 16
  local.set $2
  loop $continue|0
   local.get $2
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    local.get $2
    i32.const 1
    i32.shl
    local.set $2
    br $continue|0
   end
  end
  local.get $1
 )
 (func $assembly/buddy/node_for_ptr (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 1
  local.get $1
  i32.shl
  local.get $0
  global.get $assembly/buddy/base_ptr
  i32.sub
  i32.const 30
  local.get $1
  i32.sub
  i32.shr_u
  i32.add
  i32.const 1
  i32.sub
 )
 (func $assembly/buddy/node_is_split$get (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  global.get $assembly/buddy/NODE_IS_SPLIT_START
  local.get $0
  i32.add
  i32.load8_u
 )
 (func $assembly/buddy/parent_is_split (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_u
  local.tee $0
  i32.const 8
  i32.div_u
  call $assembly/buddy/node_is_split$get
  local.get $0
  i32.const 7
  i32.and
  i32.shr_u
  i32.const 1
  i32.and
  i32.const 1
  i32.eq
 )
 (func $assembly/buddy/list_remove (; 14 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
 )
 (func $assembly/buddy/ptr_for_node (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $assembly/buddy/base_ptr
  local.get $0
  i32.const 1
  local.get $1
  i32.shl
  i32.sub
  i32.const 1
  i32.add
  i32.const 30
  local.get $1
  i32.sub
  i32.shl
  i32.add
 )
 (func $assembly/buddy/flip_parent_is_split (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_u
  local.tee $0
  i32.const 8
  i32.div_u
  local.tee $1
  call $assembly/buddy/node_is_split$get
  i32.const 1
  local.get $0
  i32.const 7
  i32.and
  i32.shl
  i32.xor
  local.set $0
  global.get $assembly/buddy/NODE_IS_SPLIT_START
  local.get $1
  i32.add
  local.get $0
  i32.store8
 )
 (func $assembly/buddy/lower_bucket_limit (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  loop $continue|0
   local.get $0
   global.get $assembly/buddy/bucket_limit
   i32.lt_u
   if
    global.get $assembly/buddy/base_ptr
    global.get $assembly/buddy/bucket_limit
    call $assembly/buddy/node_for_ptr
    local.tee $1
    call $assembly/buddy/parent_is_split
    i32.eqz
    if
     global.get $assembly/buddy/base_ptr
     call $assembly/buddy/list_remove
     global.get $assembly/buddy/bucket_limit
     i32.const 1
     i32.sub
     global.set $assembly/buddy/bucket_limit
     global.get $assembly/buddy/bucket_limit
     call $assembly/buddy/buckets$get
     call $assembly/buddy/list_init
     global.get $assembly/buddy/bucket_limit
     call $assembly/buddy/buckets$get
     global.get $assembly/buddy/base_ptr
     call $assembly/buddy/list_push
     br $continue|0
    end
    local.get $1
    i32.const 1
    i32.add
    global.get $assembly/buddy/bucket_limit
    call $assembly/buddy/ptr_for_node
    local.tee $2
    i32.const 8
    i32.add
    call $assembly/buddy/update_max_ptr
    i32.eqz
    if
     i32.const 0
     return
    end
    global.get $assembly/buddy/bucket_limit
    call $assembly/buddy/buckets$get
    local.get $2
    call $assembly/buddy/list_push
    global.get $assembly/buddy/bucket_limit
    i32.const 1
    i32.sub
    global.set $assembly/buddy/bucket_limit
    global.get $assembly/buddy/bucket_limit
    call $assembly/buddy/buckets$get
    call $assembly/buddy/list_init
    local.get $1
    i32.const 1
    i32.sub
    i32.const 2
    i32.div_u
    local.tee $1
    if
     local.get $1
     call $assembly/buddy/flip_parent_is_split
    end
    br $continue|0
   end
  end
  i32.const 1
 )
 (func $assembly/buddy/list_pop (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  local.tee $0
  i32.eq
  if
   i32.const 0
   return
  end
  local.get $0
  call $assembly/buddy/list_remove
  local.get $0
 )
 (func $assembly/buddy/__mem_allocate (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   unreachable
  end
  global.get $assembly/buddy/base_ptr
  i32.eqz
  if
   global.get $assembly/buddy/NODE_IS_SPLIT_END
   i32.const 7
   i32.add
   i32.const -8
   i32.and
   global.set $assembly/buddy/base_ptr
   memory.size
   i32.const 16
   i32.shl
   global.set $assembly/buddy/max_ptr
   i32.const 26
   global.set $assembly/buddy/bucket_limit
   global.get $assembly/buddy/base_ptr
   i32.const 8
   i32.add
   call $assembly/buddy/update_max_ptr
   i32.eqz
   if
    i32.const 0
    return
   end
   i32.const 26
   call $assembly/buddy/buckets$get
   call $assembly/buddy/list_init
   i32.const 26
   call $assembly/buddy/buckets$get
   global.get $assembly/buddy/base_ptr
   call $assembly/buddy/list_push
  end
  local.get $0
  i32.const 8
  i32.add
  call $assembly/buddy/bucket_for_request
  local.tee $1
  local.set $4
  loop $continue|0
   local.get $1
   i32.const -1
   i32.ne
   if
    local.get $1
    call $assembly/buddy/lower_bucket_limit
    i32.eqz
    if
     i32.const 0
     return
    end
    local.get $1
    call $assembly/buddy/buckets$get
    call $assembly/buddy/list_pop
    local.tee $3
    i32.eqz
    if
     i32.const 1
     local.get $1
     i32.eqz
     global.get $assembly/buddy/bucket_limit
     local.get $1
     i32.ne
     select
     if
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $continue|0
     end
     local.get $1
     i32.const 1
     i32.sub
     call $assembly/buddy/lower_bucket_limit
     i32.eqz
     if
      i32.const 0
      return
     end
     local.get $1
     call $assembly/buddy/buckets$get
     call $assembly/buddy/list_pop
     local.set $3
    end
    i32.const 1
    i32.const 30
    local.get $1
    i32.sub
    i32.shl
    local.set $2
    local.get $1
    local.get $4
    i32.lt_u
    if
     local.get $2
     i32.const 2
     i32.div_u
     i32.const 8
     i32.add
     local.set $2
    end
    local.get $2
    local.get $3
    i32.add
    call $assembly/buddy/update_max_ptr
    i32.eqz
    if
     local.get $1
     call $assembly/buddy/buckets$get
     local.get $3
     call $assembly/buddy/list_push
     i32.const 0
     return
    end
    local.get $3
    local.get $1
    call $assembly/buddy/node_for_ptr
    local.tee $2
    if
     local.get $2
     call $assembly/buddy/flip_parent_is_split
    end
    loop $continue|1
     local.get $1
     local.get $4
     i32.lt_u
     if
      local.get $2
      i32.const 1
      i32.shl
      i32.const 1
      i32.add
      local.tee $2
      call $assembly/buddy/flip_parent_is_split
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      call $assembly/buddy/buckets$get
      local.get $2
      i32.const 1
      i32.add
      local.get $1
      call $assembly/buddy/ptr_for_node
      call $assembly/buddy/list_push
      br $continue|1
     end
    end
    local.get $3
    local.get $0
    i32.store
    local.get $3
    i32.const 8
    i32.add
    return
   end
  end
  i32.const 0
 )
 (func $assembly/buddy/__mem_free (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 8
  i32.sub
  local.tee $1
  i32.load
  i32.const 8
  i32.add
  call $assembly/buddy/bucket_for_request
  local.set $0
  local.get $1
  local.get $0
  call $assembly/buddy/node_for_ptr
  local.set $1
  loop $continue|0
   local.get $1
   if
    block $break|0
     local.get $1
     call $assembly/buddy/flip_parent_is_split
     local.get $1
     call $assembly/buddy/parent_is_split
     if (result i32)
      i32.const 1
     else      
      global.get $assembly/buddy/bucket_limit
      local.get $0
      i32.eq
     end
     br_if $break|0
     local.get $1
     i32.const 1
     i32.sub
     local.tee $1
     i32.const 1
     i32.xor
     i32.const 1
     i32.add
     local.get $0
     call $assembly/buddy/ptr_for_node
     call $assembly/buddy/list_remove
     local.get $1
     i32.const 2
     i32.div_u
     local.set $1
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $continue|0
    end
   end
  end
  local.get $0
  call $assembly/buddy/buckets$get
  local.get $1
  local.get $0
  call $assembly/buddy/ptr_for_node
  call $assembly/buddy/list_push
 )
 (func $start (; 21 ;) (type $FUNCSIG$v)
  i32.const 100
  global.set $assembly/buddy/BUCKETS_START
  global.get $assembly/buddy/BUCKETS_START
  i32.const 216
  i32.add
  global.set $assembly/buddy/BUCKETS_END
  global.get $assembly/buddy/BUCKETS_END
  global.set $assembly/buddy/NODE_IS_SPLIT_START
  global.get $assembly/buddy/NODE_IS_SPLIT_START
  i32.const 8388608
  i32.add
  global.set $assembly/buddy/NODE_IS_SPLIT_END
 )
 (func $null (; 22 ;) (type $FUNCSIG$v)
  nop
 )
)
