(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00N\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d\00")
 (data (i32.const 76) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00m\00e\00m\00o\00r\00y\00.\00t\00s\00")
 (data (i32.const 124) "\"\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00b\00u\00d\00d\00y\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $assembly/buddy/HEADER_SIZE i32 (i32.const 8))
 (global $assembly/buddy/MIN_ALLOC_LOG2 i32 (i32.const 4))
 (global $assembly/buddy/MIN_ALLOC i32 (i32.const 16))
 (global $assembly/buddy/MAX_ALLOC_LOG2 i32 (i32.const 30))
 (global $assembly/buddy/MAX_ALLOC i32 (i32.const 1073741824))
 (global $assembly/buddy/BUCKET_COUNT i32 (i32.const 27))
 (global $assembly/buddy/List.SIZE i32 (i32.const 8))
 (global $assembly/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $assembly/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $assembly/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $assembly/buddy/SPLIT_COUNT i32 (i32.const 8388608))
 (global $assembly/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $assembly/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (global $assembly/buddy/base_ptr (mut i32) (i32.const 0))
 (global $assembly/buddy/max_ptr (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 180))
 (export "memory" (memory $0))
 (export "memory.init" (func $~lib/memory/memory.init))
 (export "memory.drop" (func $~lib/memory/memory.drop))
 (export "memory.repeat" (func $~lib/memory/memory.repeat))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "__alloc" (func $assembly/buddy/__mem_allocate))
 (export "__free" (func $assembly/buddy/__mem_free))
 (start $~start)
 (func $start:assembly/buddy
  global.get $~lib/heap/__heap_base
  global.set $assembly/buddy/BUCKETS_START
  global.get $assembly/buddy/BUCKETS_START
  global.get $assembly/buddy/BUCKET_COUNT
  global.get $assembly/buddy/List.SIZE
  i32.mul
  i32.add
  global.set $assembly/buddy/BUCKETS_END
  global.get $assembly/buddy/BUCKETS_END
  global.set $assembly/buddy/NODE_IS_SPLIT_START
  global.get $assembly/buddy/NODE_IS_SPLIT_START
  global.get $assembly/buddy/SPLIT_COUNT
  i32.const 1
  i32.mul
  i32.add
  global.set $assembly/buddy/NODE_IS_SPLIT_END
 )
 (func $start:assembly/index
  call $start:assembly/buddy
 )
 (func $~lib/memory/memory.init (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  i32.const 32
  i32.const 96
  i32.const 35
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/memory/memory.drop (param $0 i32)
  i32.const 32
  i32.const 96
  i32.const 42
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $4
   local.get $5
   i32.sub
   local.get $3
   i32.sub
   i32.const 0
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/memory/memory.repeat (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  local.set $4
  local.get $2
  local.get $3
  i32.mul
  local.set $5
  loop $while-continue|0
   local.get $4
   local.get $5
   i32.lt_u
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $4
    i32.add
    local.get $1
    local.get $2
    call $~lib/memory/memory.copy
    local.get $4
    local.get $2
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
 )
 (func $~lib/memory/memory.compare (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/util/memory/memcmp|inlined.0 (result i32)
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    i32.const 0
    br $~lib/util/memory/memcmp|inlined.0
   end
   i32.const 0
   i32.const 2
   i32.lt_s
   drop
   local.get $5
   i32.const 7
   i32.and
   local.get $4
   i32.const 7
   i32.and
   i32.eq
   if
    loop $while-continue|0
     local.get $5
     i32.const 7
     i32.and
     local.set $6
     local.get $6
     if
      local.get $3
      i32.eqz
      if
       i32.const 0
       br $~lib/util/memory/memcmp|inlined.0
      end
      local.get $5
      i32.load8_u
      local.set $7
      local.get $4
      i32.load8_u
      local.set $8
      local.get $7
      local.get $8
      i32.ne
      if
       local.get $7
       local.get $8
       i32.sub
       br $~lib/util/memory/memcmp|inlined.0
      end
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $while-continue|0
     end
    end
    block $while-break|1
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       i64.load
       local.get $4
       i64.load
       i64.ne
       if
        br $while-break|1
       end
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       br $while-continue|1
      end
     end
    end
   end
   loop $while-continue|2
    local.get $3
    local.tee $6
    i32.const 1
    i32.sub
    local.set $3
    local.get $6
    local.set $6
    local.get $6
    if
     local.get $5
     i32.load8_u
     local.set $9
     local.get $4
     i32.load8_u
     local.set $10
     local.get $9
     local.get $10
     i32.ne
     if
      local.get $9
      local.get $10
      i32.sub
      br $~lib/util/memory/memcmp|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
   i32.const 0
  end
 )
 (func $assembly/buddy/update_max_ptr (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  global.get $assembly/buddy/max_ptr
  i32.gt_u
  if
   memory.size
   local.set $1
   local.get $0
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $2
   local.get $1
   i32.gt_s
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 176
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    return
   end
   local.get $2
   i32.const 16
   i32.shl
   global.set $assembly/buddy/max_ptr
  end
  i32.const 1
 )
 (func $assembly/buddy/buckets$get (param $0 i32) (result i32)
  local.get $0
  global.get $assembly/buddy/BUCKET_COUNT
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 96
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/buddy/BUCKETS_START
  local.get $0
  global.get $assembly/buddy/List.SIZE
  i32.mul
  i32.add
 )
 (func $assembly/buddy/list_init (param $0 i32)
  local.get $0
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.store offset=4
 )
 (func $assembly/buddy/list_push (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
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
 (func $assembly/buddy/bucket_for_request (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $assembly/buddy/BUCKET_COUNT
  i32.const 1
  i32.sub
  local.set $1
  global.get $assembly/buddy/MIN_ALLOC
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $0
   i32.lt_u
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    local.get $2
    i32.const 2
    i32.mul
    local.set $2
    br $while-continue|0
   end
  end
  local.get $1
 )
 (func $assembly/buddy/node_for_ptr (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  global.get $assembly/buddy/base_ptr
  i32.sub
  global.get $assembly/buddy/MAX_ALLOC_LOG2
  local.get $1
  i32.sub
  i32.shr_u
  i32.const 1
  local.get $1
  i32.shl
  i32.add
  i32.const 1
  i32.sub
 )
 (func $assembly/buddy/node_is_split$get (param $0 i32) (result i32)
  local.get $0
  global.get $assembly/buddy/SPLIT_COUNT
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 142
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/buddy/NODE_IS_SPLIT_START
  local.get $0
  i32.add
  i32.load8_u
 )
 (func $assembly/buddy/parent_is_split (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_u
  local.set $0
  local.get $0
  i32.const 8
  i32.div_u
  call $assembly/buddy/node_is_split$get
  local.get $0
  i32.const 8
  i32.rem_u
  i32.shr_u
  i32.const 1
  i32.and
  i32.const 1
  i32.eq
 )
 (func $assembly/buddy/list_remove (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store
 )
 (func $assembly/buddy/ptr_for_node (param $0 i32) (param $1 i32) (result i32)
  global.get $assembly/buddy/base_ptr
  local.get $0
  i32.const 1
  local.get $1
  i32.shl
  i32.sub
  i32.const 1
  i32.add
  global.get $assembly/buddy/MAX_ALLOC_LOG2
  local.get $1
  i32.sub
  i32.shl
  i32.add
 )
 (func $assembly/buddy/node_is_split$set (param $0 i32) (param $1 i32)
  local.get $0
  global.get $assembly/buddy/SPLIT_COUNT
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 147
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/buddy/NODE_IS_SPLIT_START
  local.get $0
  i32.add
  local.get $1
  i32.store8
 )
 (func $assembly/buddy/flip_parent_is_split (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_u
  local.set $0
  local.get $0
  i32.const 8
  i32.div_u
  local.set $1
  local.get $1
  local.get $1
  call $assembly/buddy/node_is_split$get
  i32.const 1
  local.get $0
  i32.const 8
  i32.rem_u
  i32.shl
  i32.xor
  call $assembly/buddy/node_is_split$set
 )
 (func $assembly/buddy/lower_bucket_limit (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $0
   global.get $assembly/buddy/bucket_limit
   i32.lt_u
   local.set $1
   local.get $1
   if
    global.get $assembly/buddy/base_ptr
    global.get $assembly/buddy/bucket_limit
    call $assembly/buddy/node_for_ptr
    local.set $2
    local.get $2
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
     br $while-continue|0
    end
    local.get $2
    i32.const 1
    i32.add
    global.get $assembly/buddy/bucket_limit
    call $assembly/buddy/ptr_for_node
    local.set $3
    local.get $3
    global.get $assembly/buddy/List.SIZE
    i32.add
    call $assembly/buddy/update_max_ptr
    i32.eqz
    if
     i32.const 0
     return
    end
    global.get $assembly/buddy/bucket_limit
    call $assembly/buddy/buckets$get
    local.get $3
    call $assembly/buddy/list_push
    global.get $assembly/buddy/bucket_limit
    i32.const 1
    i32.sub
    global.set $assembly/buddy/bucket_limit
    global.get $assembly/buddy/bucket_limit
    call $assembly/buddy/buckets$get
    call $assembly/buddy/list_init
    local.get $2
    i32.const 1
    i32.sub
    i32.const 2
    i32.div_u
    local.set $2
    local.get $2
    i32.const 0
    i32.ne
    if
     local.get $2
     call $assembly/buddy/flip_parent_is_split
    end
    br $while-continue|0
   end
  end
  i32.const 1
 )
 (func $assembly/buddy/list_pop (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.set $1
  local.get $1
  local.get $0
  i32.eq
  if
   i32.const 0
   return
  end
  local.get $1
  call $assembly/buddy/list_remove
  local.get $1
 )
 (func $assembly/buddy/__mem_allocate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  global.get $assembly/buddy/MAX_ALLOC
  global.get $assembly/buddy/HEADER_SIZE
  i32.sub
  i32.gt_u
  if
   unreachable
  end
  global.get $assembly/buddy/base_ptr
  i32.const 0
  i32.eq
  if
   global.get $assembly/buddy/NODE_IS_SPLIT_END
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   global.set $assembly/buddy/base_ptr
   memory.size
   i32.const 16
   i32.shl
   global.set $assembly/buddy/max_ptr
   global.get $assembly/buddy/BUCKET_COUNT
   i32.const 1
   i32.sub
   global.set $assembly/buddy/bucket_limit
   global.get $assembly/buddy/base_ptr
   global.get $assembly/buddy/List.SIZE
   i32.add
   call $assembly/buddy/update_max_ptr
   i32.eqz
   if
    i32.const 0
    return
   end
   global.get $assembly/buddy/BUCKET_COUNT
   i32.const 1
   i32.sub
   call $assembly/buddy/buckets$get
   call $assembly/buddy/list_init
   global.get $assembly/buddy/BUCKET_COUNT
   i32.const 1
   i32.sub
   call $assembly/buddy/buckets$get
   global.get $assembly/buddy/base_ptr
   call $assembly/buddy/list_push
  end
  local.get $0
  global.get $assembly/buddy/HEADER_SIZE
  i32.add
  call $assembly/buddy/bucket_for_request
  local.set $2
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $2
   i32.const 1
   i32.add
   i32.const 0
   i32.ne
   local.set $3
   local.get $3
   if
    local.get $2
    call $assembly/buddy/lower_bucket_limit
    i32.eqz
    if
     i32.const 0
     return
    end
    local.get $2
    call $assembly/buddy/buckets$get
    call $assembly/buddy/list_pop
    local.set $7
    local.get $7
    i32.eqz
    if
     local.get $2
     global.get $assembly/buddy/bucket_limit
     i32.ne
     if (result i32)
      i32.const 1
     else
      local.get $2
      i32.const 0
      i32.eq
     end
     if
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $while-continue|0
     end
     local.get $2
     i32.const 1
     i32.sub
     call $assembly/buddy/lower_bucket_limit
     i32.eqz
     if
      i32.const 0
      return
     end
     local.get $2
     call $assembly/buddy/buckets$get
     call $assembly/buddy/list_pop
     local.set $7
    end
    i32.const 1
    global.get $assembly/buddy/MAX_ALLOC_LOG2
    local.get $2
    i32.sub
    i32.shl
    local.set $4
    local.get $2
    local.get $1
    i32.lt_u
    if (result i32)
     local.get $4
     i32.const 2
     i32.div_u
     global.get $assembly/buddy/List.SIZE
     i32.add
    else
     local.get $4
    end
    local.set $5
    local.get $7
    local.get $5
    i32.add
    call $assembly/buddy/update_max_ptr
    i32.eqz
    if
     local.get $2
     call $assembly/buddy/buckets$get
     local.get $7
     call $assembly/buddy/list_push
     i32.const 0
     return
    end
    local.get $7
    local.get $2
    call $assembly/buddy/node_for_ptr
    local.set $6
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $6
     call $assembly/buddy/flip_parent_is_split
    end
    loop $while-continue|1
     local.get $2
     local.get $1
     i32.lt_u
     local.set $8
     local.get $8
     if
      local.get $6
      i32.const 2
      i32.mul
      i32.const 1
      i32.add
      local.set $6
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      local.get $6
      call $assembly/buddy/flip_parent_is_split
      local.get $2
      call $assembly/buddy/buckets$get
      local.get $6
      i32.const 1
      i32.add
      local.get $2
      call $assembly/buddy/ptr_for_node
      call $assembly/buddy/list_push
      br $while-continue|1
     end
    end
    local.get $7
    local.get $0
    i32.store
    local.get $7
    global.get $assembly/buddy/HEADER_SIZE
    i32.add
    return
   end
  end
  i32.const 0
 )
 (func $assembly/buddy/__mem_free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  global.get $assembly/buddy/HEADER_SIZE
  i32.sub
  local.set $0
  local.get $0
  i32.load
  global.get $assembly/buddy/HEADER_SIZE
  i32.add
  call $assembly/buddy/bucket_for_request
  local.set $1
  local.get $0
  local.get $1
  call $assembly/buddy/node_for_ptr
  local.set $2
  block $while-break|0
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ne
    local.set $3
    local.get $3
    if
     local.get $2
     call $assembly/buddy/flip_parent_is_split
     local.get $2
     call $assembly/buddy/parent_is_split
     if (result i32)
      i32.const 1
     else
      local.get $1
      global.get $assembly/buddy/bucket_limit
      i32.eq
     end
     if
      br $while-break|0
     end
     local.get $2
     i32.const 1
     i32.sub
     i32.const 1
     i32.xor
     i32.const 1
     i32.add
     local.get $1
     call $assembly/buddy/ptr_for_node
     call $assembly/buddy/list_remove
     local.get $2
     i32.const 1
     i32.sub
     i32.const 2
     i32.div_u
     local.set $2
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $1
  call $assembly/buddy/buckets$get
  local.get $2
  local.get $1
  call $assembly/buddy/ptr_for_node
  call $assembly/buddy/list_push
 )
 (func $~start
  call $start:assembly/index
 )
)
