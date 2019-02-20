(module
 (type $_ (func))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $i_ (func (param i32)))
 (type $ii_ (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/base_ptr (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/max_ptr (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (start $start)
 (func $~lib/internal/memory/memcmp (; 0 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 0
   return
  end
  loop $continue|0
   local.get $2
   i32.const 0
   i32.ne
   local.tee $3
   if (result i32)
    local.get $0
    i32.load8_u
    local.get $1
    i32.load8_u
    i32.eq
   else    
    local.get $3
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
 )
 (func $~lib/memory/memory.compare (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/internal/memory/memcmp
 )
 (func $~lib/allocator/buddy/update_max_ptr (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/allocator/buddy/max_ptr
  i32.gt_u
  if
   local.get $0
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   current_memory
   i32.sub
   grow_memory
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    return
   end
   local.get $1
   i32.const 16
   i32.shl
   global.set $~lib/allocator/buddy/max_ptr
  end
  i32.const 1
 )
 (func $~lib/allocator/buddy/buckets$get (; 3 ;) (type $ii) (param $0 i32) (result i32)
  global.get $~lib/allocator/buddy/BUCKETS_START
  local.get $0
  i32.const 3
  i32.shl
  i32.add
 )
 (func $~lib/allocator/buddy/list_init (; 4 ;) (type $i_) (param $0 i32)
  local.get $0
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.store offset=4
 )
 (func $~lib/allocator/buddy/list_push (; 5 ;) (type $ii_) (param $0 i32) (param $1 i32)
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
 (func $~lib/allocator/buddy/bucket_for_request (; 6 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/allocator/buddy/node_for_ptr (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 1
  local.get $1
  i32.shl
  local.get $0
  global.get $~lib/allocator/buddy/base_ptr
  i32.sub
  i32.const 30
  local.get $1
  i32.sub
  i32.shr_u
  i32.add
  i32.const 1
  i32.sub
 )
 (func $~lib/allocator/buddy/node_is_split$get (; 8 ;) (type $ii) (param $0 i32) (result i32)
  global.get $~lib/allocator/buddy/NODE_IS_SPLIT_START
  local.get $0
  i32.add
  i32.load8_u
 )
 (func $~lib/allocator/buddy/parent_is_split (; 9 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_u
  local.tee $0
  i32.const 8
  i32.div_u
  call $~lib/allocator/buddy/node_is_split$get
  local.get $0
  i32.const 7
  i32.and
  i32.shr_u
  i32.const 1
  i32.and
  i32.const 1
  i32.eq
 )
 (func $~lib/allocator/buddy/list_remove (; 10 ;) (type $i_) (param $0 i32)
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
 (func $~lib/allocator/buddy/ptr_for_node (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/allocator/buddy/base_ptr
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
 (func $~lib/allocator/buddy/flip_parent_is_split (; 12 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_u
  local.tee $0
  i32.const 8
  i32.div_u
  local.tee $1
  local.set $2
  local.get $1
  call $~lib/allocator/buddy/node_is_split$get
  i32.const 1
  local.get $0
  i32.const 7
  i32.and
  i32.shl
  i32.xor
  local.set $0
  global.get $~lib/allocator/buddy/NODE_IS_SPLIT_START
  local.get $2
  i32.add
  local.get $0
  i32.store8
 )
 (func $~lib/allocator/buddy/lower_bucket_limit (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  loop $continue|0
   local.get $0
   global.get $~lib/allocator/buddy/bucket_limit
   i32.lt_u
   if
    global.get $~lib/allocator/buddy/base_ptr
    global.get $~lib/allocator/buddy/bucket_limit
    call $~lib/allocator/buddy/node_for_ptr
    local.tee $1
    call $~lib/allocator/buddy/parent_is_split
    i32.eqz
    if
     global.get $~lib/allocator/buddy/base_ptr
     call $~lib/allocator/buddy/list_remove
     block (result i32)
      global.get $~lib/allocator/buddy/bucket_limit
      i32.const 1
      i32.sub
      global.set $~lib/allocator/buddy/bucket_limit
      global.get $~lib/allocator/buddy/bucket_limit
     end
     call $~lib/allocator/buddy/buckets$get
     call $~lib/allocator/buddy/list_init
     global.get $~lib/allocator/buddy/bucket_limit
     call $~lib/allocator/buddy/buckets$get
     global.get $~lib/allocator/buddy/base_ptr
     call $~lib/allocator/buddy/list_push
     br $continue|0
    end
    local.get $1
    i32.const 1
    i32.add
    global.get $~lib/allocator/buddy/bucket_limit
    call $~lib/allocator/buddy/ptr_for_node
    local.tee $2
    i32.const 8
    i32.add
    call $~lib/allocator/buddy/update_max_ptr
    i32.eqz
    if
     i32.const 0
     return
    end
    global.get $~lib/allocator/buddy/bucket_limit
    call $~lib/allocator/buddy/buckets$get
    local.get $2
    call $~lib/allocator/buddy/list_push
    block (result i32)
     global.get $~lib/allocator/buddy/bucket_limit
     i32.const 1
     i32.sub
     global.set $~lib/allocator/buddy/bucket_limit
     global.get $~lib/allocator/buddy/bucket_limit
    end
    call $~lib/allocator/buddy/buckets$get
    call $~lib/allocator/buddy/list_init
    local.get $1
    i32.const 1
    i32.sub
    i32.const 2
    i32.div_u
    local.tee $1
    if
     local.get $1
     call $~lib/allocator/buddy/flip_parent_is_split
    end
    br $continue|0
   end
  end
  i32.const 1
 )
 (func $~lib/allocator/buddy/list_pop (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  local.get $0
  i32.eq
  if
   i32.const 0
   return
  end
  local.get $1
  call $~lib/allocator/buddy/list_remove
  local.get $1
 )
 (func $~lib/allocator/buddy/__memory_allocate (; 15 ;) (type $ii) (param $0 i32) (result i32)
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
  global.get $~lib/allocator/buddy/base_ptr
  i32.eqz
  if
   global.get $~lib/allocator/buddy/NODE_IS_SPLIT_END
   i32.const 7
   i32.add
   i32.const -8
   i32.and
   global.set $~lib/allocator/buddy/base_ptr
   current_memory
   i32.const 16
   i32.shl
   global.set $~lib/allocator/buddy/max_ptr
   i32.const 26
   global.set $~lib/allocator/buddy/bucket_limit
   global.get $~lib/allocator/buddy/base_ptr
   i32.const 8
   i32.add
   call $~lib/allocator/buddy/update_max_ptr
   i32.eqz
   if
    i32.const 0
    return
   end
   i32.const 26
   call $~lib/allocator/buddy/buckets$get
   call $~lib/allocator/buddy/list_init
   i32.const 26
   call $~lib/allocator/buddy/buckets$get
   global.get $~lib/allocator/buddy/base_ptr
   call $~lib/allocator/buddy/list_push
  end
  local.get $0
  i32.const 8
  i32.add
  call $~lib/allocator/buddy/bucket_for_request
  local.tee $1
  local.set $4
  loop $continue|0
   local.get $1
   i32.const -1
   i32.ne
   if
    local.get $1
    call $~lib/allocator/buddy/lower_bucket_limit
    i32.eqz
    if
     i32.const 0
     return
    end
    local.get $1
    call $~lib/allocator/buddy/buckets$get
    call $~lib/allocator/buddy/list_pop
    local.tee $2
    i32.eqz
    if
     local.get $1
     global.get $~lib/allocator/buddy/bucket_limit
     i32.ne
     local.tee $2
     if (result i32)
      local.get $2
     else      
      local.get $1
      i32.eqz
     end
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
     call $~lib/allocator/buddy/lower_bucket_limit
     i32.eqz
     if
      i32.const 0
      return
     end
     local.get $1
     call $~lib/allocator/buddy/buckets$get
     call $~lib/allocator/buddy/list_pop
     local.set $2
    end
    i32.const 1
    i32.const 30
    local.get $1
    i32.sub
    i32.shl
    local.set $3
    local.get $1
    local.get $4
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 2
     i32.div_u
     i32.const 8
     i32.add
    else     
     local.get $3
    end
    local.get $2
    i32.add
    call $~lib/allocator/buddy/update_max_ptr
    i32.eqz
    if
     local.get $1
     call $~lib/allocator/buddy/buckets$get
     local.get $2
     call $~lib/allocator/buddy/list_push
     i32.const 0
     return
    end
    local.get $2
    local.get $1
    call $~lib/allocator/buddy/node_for_ptr
    local.tee $3
    if
     local.get $3
     call $~lib/allocator/buddy/flip_parent_is_split
    end
    loop $continue|1
     local.get $1
     local.get $4
     i32.lt_u
     if
      local.get $3
      i32.const 1
      i32.shl
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/allocator/buddy/flip_parent_is_split
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      call $~lib/allocator/buddy/buckets$get
      local.get $3
      i32.const 1
      i32.add
      local.get $1
      call $~lib/allocator/buddy/ptr_for_node
      call $~lib/allocator/buddy/list_push
      br $continue|1
     end
    end
    local.get $2
    local.get $0
    i32.store
    local.get $2
    i32.const 8
    i32.add
    return
   end
  end
  i32.const 0
 )
 (func $~lib/memory/memory.allocate (; 16 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/buddy/__memory_allocate
 )
 (func $~lib/allocator/buddy/__memory_free (; 17 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 8
  i32.sub
  local.tee $0
  i32.load
  i32.const 8
  i32.add
  call $~lib/allocator/buddy/bucket_for_request
  local.set $1
  local.get $0
  local.get $1
  call $~lib/allocator/buddy/node_for_ptr
  local.set $0
  loop $continue|0
   local.get $0
   if
    block $break|0
     local.get $0
     call $~lib/allocator/buddy/flip_parent_is_split
     local.get $0
     call $~lib/allocator/buddy/parent_is_split
     local.tee $2
     if (result i32)
      local.get $2
     else      
      local.get $1
      global.get $~lib/allocator/buddy/bucket_limit
      i32.eq
     end
     br_if $break|0
     local.get $0
     i32.const 1
     i32.sub
     i32.const 1
     i32.xor
     i32.const 1
     i32.add
     local.get $1
     call $~lib/allocator/buddy/ptr_for_node
     call $~lib/allocator/buddy/list_remove
     local.get $0
     i32.const 1
     i32.sub
     i32.const 2
     i32.div_u
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $continue|0
    end
   end
  end
  local.get $1
  call $~lib/allocator/buddy/buckets$get
  local.get $0
  local.get $1
  call $~lib/allocator/buddy/ptr_for_node
  call $~lib/allocator/buddy/list_push
 )
 (func $~lib/memory/memory.free (; 18 ;) (type $i_) (param $0 i32)
  local.get $0
  call $~lib/allocator/buddy/__memory_free
 )
 (func $~lib/memory/memory.reset (; 19 ;) (type $_)
  unreachable
 )
 (func $start (; 20 ;) (type $_)
  i32.const 8
  global.set $~lib/allocator/buddy/BUCKETS_START
  global.get $~lib/allocator/buddy/BUCKETS_START
  i32.const 216
  i32.add
  global.set $~lib/allocator/buddy/BUCKETS_END
  global.get $~lib/allocator/buddy/BUCKETS_END
  global.set $~lib/allocator/buddy/NODE_IS_SPLIT_START
  global.get $~lib/allocator/buddy/NODE_IS_SPLIT_START
  i32.const 8388608
  i32.add
  global.set $~lib/allocator/buddy/NODE_IS_SPLIT_END
 )
 (func $null (; 21 ;) (type $_)
  nop
 )
)
