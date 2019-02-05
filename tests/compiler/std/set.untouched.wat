(module
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $iIv (func (param i32 i64)))
 (type $ifi (func (param i32 f32) (result i32)))
 (type $fi (func (param f32) (result i32)))
 (type $ifii (func (param i32 f32 i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $Fi (func (param f64) (result i32)))
 (type $iFii (func (param i32 f64 i32) (result i32)))
 (type $iFv (func (param i32 f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 56) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 120) "\n\00\00\00s\00t\00d\00/\00s\00e\00t\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/set/INITIAL_CAPACITY i32 (i32.const 4))
 (global $~lib/set/BUCKET_SIZE i32 (i32.const 4))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/hash/FNV_OFFSET i32 (i32.const -2128831035))
 (global $~lib/internal/hash/FNV_PRIME i32 (i32.const 16777619))
 (global $~lib/set/EMPTY i32 (i32.const 1))
 (global $~lib/set/FREE_FACTOR f64 (f64.const 0.75))
 (global $~lib/set/FILL_FACTOR f64 (f64.const 2.6666666666666665))
 (global $HEAP_BASE i32 (i32.const 144))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  global.get $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/arraybuffer/computeSize (; 3 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$~lib/memory/memory.allocate (result i32)
   local.get $0
   call $~lib/internal/arraybuffer/computeSize
   local.set $2
   local.get $2
   call $~lib/allocator/arena/__memory_allocate
   br $__inlined_func$~lib/memory/memory.allocate
  end
  local.set $1
  local.get $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $2
  i32.eqz
  if
   return
  end
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 1
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 2
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 1
  i32.add
  local.get $1
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 3
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $2
  i32.const -4
  i32.and
  local.set $2
  i32.const -1
  i32.const 255
  i32.div_u
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  local.set $4
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 12
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 8
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 28
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 24
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 20
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.get $4
  i32.store
  i32.const 24
  local.get $0
  i32.const 4
  i32.and
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $4
  i64.extend_i32_u
  local.get $4
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 32
    i32.ge_u
    if
     block
      local.get $0
      local.get $5
      i64.store
      local.get $0
      i32.const 8
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 16
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 24
      i32.add
      local.get $5
      i64.store
      local.get $2
      i32.const 32
      i32.sub
      local.set $2
      local.get $0
      i32.const 32
      i32.add
      local.set $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/memory/memory.fill (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/internal/memory/memset
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  global.get $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 47
   i32.const 40
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $3
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $1
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $3
 )
 (func $~lib/set/ENTRY_ALIGN<i8> (; 8 ;) (type $i) (result i32)
  i32.const 3
 )
 (func $~lib/set/ENTRY_SIZE<i8> (; 9 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/set/ENTRY_ALIGN<i8> (result i32)
   i32.const 3
  end
  local.set $0
  i32.const 8
  local.get $0
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.and
  local.set $1
  local.get $1
 )
 (func $~lib/set/Set<i8>#clear (; 10 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  i32.const 4
  block $__inlined_func$~lib/set/ENTRY_SIZE<i8> (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   local.set $3
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i8> (result i32)
     i32.const 3
    end
    local.set $2
    i32.const 8
    local.get $2
    i32.add
    local.get $2
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $3
   end
  end
  i32.mul
  local.set $1
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<i8>#constructor (; 11 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/internal/hash/hash8 (; 12 ;) (type $ii) (param $0 i32) (result i32)
  global.get $~lib/internal/hash/FNV_OFFSET
  local.get $0
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
 )
 (func $~lib/internal/hash/HASH<i8> (; 13 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/hash/hash8
  return
 )
 (func $~lib/set/Set<i8>#find (; 14 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load8_s
       local.get $1
       i32.const 24
       i32.shl
       i32.const 24
       i32.shr_s
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i8>#has (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<i8> (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/internal/hash/hash8
   br $__inlined_func$~lib/internal/hash/HASH<i8>
  end
  call $~lib/set/Set<i8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i8>#rehash (; 16 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  global.get $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $__inlined_func$~lib/set/ENTRY_SIZE<i8> (result i32)
   i32.const 0
   local.set $13
   i32.const 0
   local.set $14
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i8> (result i32)
     i32.const 3
    end
    local.set $13
    i32.const 8
    local.get $13
    i32.add
    local.get $13
    i32.const -1
    i32.xor
    i32.and
    local.set $14
    local.get $14
   end
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $__inlined_func$~lib/set/ENTRY_SIZE<i8>0 (result i32)
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i8>1 (result i32)
     i32.const 3
    end
    local.set $15
    i32.const 8
    local.get $15
    i32.add
    local.get $15
    i32.const -1
    i32.xor
    i32.and
    local.set $16
    local.get $16
   end
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load8_s
       i32.store8
       block $__inlined_func$~lib/internal/hash/HASH<i8> (result i32)
        local.get $9
        i32.load8_s
        local.set $17
        local.get $17
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        call $~lib/internal/hash/hash8
        br $__inlined_func$~lib/internal/hash/HASH<i8>
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       global.get $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load offset=8
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store offset=8
       local.get $8
       block $__inlined_func$~lib/set/ENTRY_SIZE<i8>1 (result i32)
        i32.const 0
        local.set $18
        i32.const 0
        local.set $19
        block (result i32)
         block $__inlined_func$~lib/set/ENTRY_ALIGN<i8>2 (result i32)
          i32.const 3
         end
         local.set $18
         i32.const 8
         local.get $18
         i32.add
         local.get $18
         i32.const -1
         i32.xor
         i32.and
         local.set $19
         local.get $19
        end
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $__inlined_func$~lib/set/ENTRY_SIZE<i8>2 (result i32)
       i32.const 0
       local.set $20
       i32.const 0
       local.set $21
       block (result i32)
        block $__inlined_func$~lib/set/ENTRY_ALIGN<i8>3 (result i32)
         i32.const 3
        end
        local.set $20
        i32.const 8
        local.get $20
        i32.add
        local.get $20
        i32.const -1
        i32.xor
        i32.and
        local.set $21
        local.get $21
       end
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i8>#add (; 17 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$~lib/internal/hash/HASH<i8> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/internal/hash/hash8
   br $__inlined_func$~lib/internal/hash/HASH<i8>
  end
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<i8>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    global.get $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $4
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $__inlined_func$~lib/set/ENTRY_SIZE<i8> (result i32)
    i32.const 0
    local.set $7
    i32.const 0
    local.set $8
    block (result i32)
     block $__inlined_func$~lib/set/ENTRY_ALIGN<i8> (result i32)
      i32.const 3
     end
     local.set $7
     i32.const 8
     local.get $7
     i32.add
     local.get $7
     i32.const -1
     i32.xor
     i32.and
     local.set $8
     local.get $8
    end
   end
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   i32.store8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   global.get $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   local.set $5
   local.get $3
   local.get $5
   i32.load offset=8
   i32.store offset=4
   local.get $5
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i8>#get:size (; 18 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i8>#delete (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<i8> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/internal/hash/hash8
   br $__inlined_func$~lib/internal/hash/HASH<i8>
  end
  call $~lib/set/Set<i8>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=4
  global.get $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  global.get $~lib/set/INITIAL_CAPACITY
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   global.get $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $4
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<i8>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i8> (; 20 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<i8>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#clear
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/ENTRY_ALIGN<u8> (; 21 ;) (type $i) (result i32)
  i32.const 3
 )
 (func $~lib/set/ENTRY_SIZE<u8> (; 22 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/set/ENTRY_ALIGN<u8> (result i32)
   i32.const 3
  end
  local.set $0
  i32.const 8
  local.get $0
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.and
  local.set $1
  local.get $1
 )
 (func $~lib/set/Set<u8>#clear (; 23 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  i32.const 4
  block $__inlined_func$~lib/set/ENTRY_SIZE<u8> (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   local.set $3
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u8> (result i32)
     i32.const 3
    end
    local.set $2
    i32.const 8
    local.get $2
    i32.add
    local.get $2
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $3
   end
  end
  i32.mul
  local.set $1
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<u8>#constructor (; 24 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/set/Set<u8>#clear
  local.get $0
 )
 (func $~lib/internal/hash/HASH<u8> (; 25 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  call $~lib/internal/hash/hash8
  return
 )
 (func $~lib/set/Set<u8>#find (; 26 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load8_u
       local.get $1
       i32.const 255
       i32.and
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<u8>#has (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<u8> (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 255
   i32.and
   call $~lib/internal/hash/hash8
   br $__inlined_func$~lib/internal/hash/HASH<u8>
  end
  call $~lib/set/Set<u8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u8>#rehash (; 28 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  global.get $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $__inlined_func$~lib/set/ENTRY_SIZE<u8> (result i32)
   i32.const 0
   local.set $13
   i32.const 0
   local.set $14
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u8> (result i32)
     i32.const 3
    end
    local.set $13
    i32.const 8
    local.get $13
    i32.add
    local.get $13
    i32.const -1
    i32.xor
    i32.and
    local.set $14
    local.get $14
   end
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $__inlined_func$~lib/set/ENTRY_SIZE<u8>0 (result i32)
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u8>1 (result i32)
     i32.const 3
    end
    local.set $15
    i32.const 8
    local.get $15
    i32.add
    local.get $15
    i32.const -1
    i32.xor
    i32.and
    local.set $16
    local.get $16
   end
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load8_u
       i32.store8
       block $__inlined_func$~lib/internal/hash/HASH<u8> (result i32)
        local.get $9
        i32.load8_u
        local.set $17
        local.get $17
        i32.const 255
        i32.and
        call $~lib/internal/hash/hash8
        br $__inlined_func$~lib/internal/hash/HASH<u8>
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       global.get $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load offset=8
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store offset=8
       local.get $8
       block $__inlined_func$~lib/set/ENTRY_SIZE<u8>1 (result i32)
        i32.const 0
        local.set $18
        i32.const 0
        local.set $19
        block (result i32)
         block $__inlined_func$~lib/set/ENTRY_ALIGN<u8>2 (result i32)
          i32.const 3
         end
         local.set $18
         i32.const 8
         local.get $18
         i32.add
         local.get $18
         i32.const -1
         i32.xor
         i32.and
         local.set $19
         local.get $19
        end
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $__inlined_func$~lib/set/ENTRY_SIZE<u8>2 (result i32)
       i32.const 0
       local.set $20
       i32.const 0
       local.set $21
       block (result i32)
        block $__inlined_func$~lib/set/ENTRY_ALIGN<u8>3 (result i32)
         i32.const 3
        end
        local.set $20
        i32.const 8
        local.get $20
        i32.add
        local.get $20
        i32.const -1
        i32.xor
        i32.and
        local.set $21
        local.get $21
       end
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u8>#add (; 29 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$~lib/internal/hash/HASH<u8> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i32.const 255
   i32.and
   call $~lib/internal/hash/hash8
   br $__inlined_func$~lib/internal/hash/HASH<u8>
  end
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<u8>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    global.get $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $4
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $__inlined_func$~lib/set/ENTRY_SIZE<u8> (result i32)
    i32.const 0
    local.set $7
    i32.const 0
    local.set $8
    block (result i32)
     block $__inlined_func$~lib/set/ENTRY_ALIGN<u8> (result i32)
      i32.const 3
     end
     local.set $7
     i32.const 8
     local.get $7
     i32.add
     local.get $7
     i32.const -1
     i32.xor
     i32.and
     local.set $8
     local.get $8
    end
   end
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   i32.store8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   global.get $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   local.set $5
   local.get $3
   local.get $5
   i32.load offset=8
   i32.store offset=4
   local.get $5
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u8>#get:size (; 30 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u8>#delete (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<u8> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i32.const 255
   i32.and
   call $~lib/internal/hash/hash8
   br $__inlined_func$~lib/internal/hash/HASH<u8>
  end
  call $~lib/set/Set<u8>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=4
  global.get $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  global.get $~lib/set/INITIAL_CAPACITY
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   global.get $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $4
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<u8>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u8> (; 32 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<u8>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#clear
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/ENTRY_ALIGN<i16> (; 33 ;) (type $i) (result i32)
  i32.const 3
 )
 (func $~lib/set/ENTRY_SIZE<i16> (; 34 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/set/ENTRY_ALIGN<i16> (result i32)
   i32.const 3
  end
  local.set $0
  i32.const 8
  local.get $0
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.and
  local.set $1
  local.get $1
 )
 (func $~lib/set/Set<i16>#clear (; 35 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  i32.const 4
  block $__inlined_func$~lib/set/ENTRY_SIZE<i16> (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   local.set $3
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i16> (result i32)
     i32.const 3
    end
    local.set $2
    i32.const 8
    local.get $2
    i32.add
    local.get $2
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $3
   end
  end
  i32.mul
  local.set $1
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<i16>#constructor (; 36 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/set/Set<i16>#clear
  local.get $0
 )
 (func $~lib/internal/hash/hash16 (; 37 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/internal/hash/FNV_OFFSET
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/internal/hash/HASH<i16> (; 38 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/internal/hash/hash16
  return
 )
 (func $~lib/set/Set<i16>#find (; 39 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load16_s
       local.get $1
       i32.const 16
       i32.shl
       i32.const 16
       i32.shr_s
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i16>#has (; 40 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<i16> (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/internal/hash/hash16
   br $__inlined_func$~lib/internal/hash/HASH<i16>
  end
  call $~lib/set/Set<i16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i16>#rehash (; 41 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  global.get $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $__inlined_func$~lib/set/ENTRY_SIZE<i16> (result i32)
   i32.const 0
   local.set $13
   i32.const 0
   local.set $14
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i16> (result i32)
     i32.const 3
    end
    local.set $13
    i32.const 8
    local.get $13
    i32.add
    local.get $13
    i32.const -1
    i32.xor
    i32.and
    local.set $14
    local.get $14
   end
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $__inlined_func$~lib/set/ENTRY_SIZE<i16>0 (result i32)
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i16>1 (result i32)
     i32.const 3
    end
    local.set $15
    i32.const 8
    local.get $15
    i32.add
    local.get $15
    i32.const -1
    i32.xor
    i32.and
    local.set $16
    local.get $16
   end
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load16_s
       i32.store16
       block $__inlined_func$~lib/internal/hash/HASH<i16> (result i32)
        local.get $9
        i32.load16_s
        local.set $17
        local.get $17
        i32.const 16
        i32.shl
        i32.const 16
        i32.shr_s
        call $~lib/internal/hash/hash16
        br $__inlined_func$~lib/internal/hash/HASH<i16>
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       global.get $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load offset=8
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store offset=8
       local.get $8
       block $__inlined_func$~lib/set/ENTRY_SIZE<i16>1 (result i32)
        i32.const 0
        local.set $18
        i32.const 0
        local.set $19
        block (result i32)
         block $__inlined_func$~lib/set/ENTRY_ALIGN<i16>2 (result i32)
          i32.const 3
         end
         local.set $18
         i32.const 8
         local.get $18
         i32.add
         local.get $18
         i32.const -1
         i32.xor
         i32.and
         local.set $19
         local.get $19
        end
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $__inlined_func$~lib/set/ENTRY_SIZE<i16>2 (result i32)
       i32.const 0
       local.set $20
       i32.const 0
       local.set $21
       block (result i32)
        block $__inlined_func$~lib/set/ENTRY_ALIGN<i16>3 (result i32)
         i32.const 3
        end
        local.set $20
        i32.const 8
        local.get $20
        i32.add
        local.get $20
        i32.const -1
        i32.xor
        i32.and
        local.set $21
        local.get $21
       end
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i16>#add (; 42 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$~lib/internal/hash/HASH<i16> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/internal/hash/hash16
   br $__inlined_func$~lib/internal/hash/HASH<i16>
  end
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<i16>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    global.get $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $4
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $__inlined_func$~lib/set/ENTRY_SIZE<i16> (result i32)
    i32.const 0
    local.set $7
    i32.const 0
    local.set $8
    block (result i32)
     block $__inlined_func$~lib/set/ENTRY_ALIGN<i16> (result i32)
      i32.const 3
     end
     local.set $7
     i32.const 8
     local.get $7
     i32.add
     local.get $7
     i32.const -1
     i32.xor
     i32.and
     local.set $8
     local.get $8
    end
   end
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   i32.store16
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   global.get $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   local.set $5
   local.get $3
   local.get $5
   i32.load offset=8
   i32.store offset=4
   local.get $5
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i16>#get:size (; 43 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i16>#delete (; 44 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<i16> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/internal/hash/hash16
   br $__inlined_func$~lib/internal/hash/HASH<i16>
  end
  call $~lib/set/Set<i16>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=4
  global.get $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  global.get $~lib/set/INITIAL_CAPACITY
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   global.get $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $4
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<i16>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i16> (; 45 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<i16>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#clear
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/ENTRY_ALIGN<u16> (; 46 ;) (type $i) (result i32)
  i32.const 3
 )
 (func $~lib/set/ENTRY_SIZE<u16> (; 47 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/set/ENTRY_ALIGN<u16> (result i32)
   i32.const 3
  end
  local.set $0
  i32.const 8
  local.get $0
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.and
  local.set $1
  local.get $1
 )
 (func $~lib/set/Set<u16>#clear (; 48 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  i32.const 4
  block $__inlined_func$~lib/set/ENTRY_SIZE<u16> (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   local.set $3
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u16> (result i32)
     i32.const 3
    end
    local.set $2
    i32.const 8
    local.get $2
    i32.add
    local.get $2
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $3
   end
  end
  i32.mul
  local.set $1
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<u16>#constructor (; 49 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/set/Set<u16>#clear
  local.get $0
 )
 (func $~lib/internal/hash/HASH<u16> (; 50 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  call $~lib/internal/hash/hash16
  return
 )
 (func $~lib/set/Set<u16>#find (; 51 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load16_u
       local.get $1
       i32.const 65535
       i32.and
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<u16>#has (; 52 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<u16> (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 65535
   i32.and
   call $~lib/internal/hash/hash16
   br $__inlined_func$~lib/internal/hash/HASH<u16>
  end
  call $~lib/set/Set<u16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u16>#rehash (; 53 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  global.get $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $__inlined_func$~lib/set/ENTRY_SIZE<u16> (result i32)
   i32.const 0
   local.set $13
   i32.const 0
   local.set $14
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u16> (result i32)
     i32.const 3
    end
    local.set $13
    i32.const 8
    local.get $13
    i32.add
    local.get $13
    i32.const -1
    i32.xor
    i32.and
    local.set $14
    local.get $14
   end
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $__inlined_func$~lib/set/ENTRY_SIZE<u16>0 (result i32)
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u16>1 (result i32)
     i32.const 3
    end
    local.set $15
    i32.const 8
    local.get $15
    i32.add
    local.get $15
    i32.const -1
    i32.xor
    i32.and
    local.set $16
    local.get $16
   end
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load16_u
       i32.store16
       block $__inlined_func$~lib/internal/hash/HASH<u16> (result i32)
        local.get $9
        i32.load16_u
        local.set $17
        local.get $17
        i32.const 65535
        i32.and
        call $~lib/internal/hash/hash16
        br $__inlined_func$~lib/internal/hash/HASH<u16>
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       global.get $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load offset=8
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store offset=8
       local.get $8
       block $__inlined_func$~lib/set/ENTRY_SIZE<u16>1 (result i32)
        i32.const 0
        local.set $18
        i32.const 0
        local.set $19
        block (result i32)
         block $__inlined_func$~lib/set/ENTRY_ALIGN<u16>2 (result i32)
          i32.const 3
         end
         local.set $18
         i32.const 8
         local.get $18
         i32.add
         local.get $18
         i32.const -1
         i32.xor
         i32.and
         local.set $19
         local.get $19
        end
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $__inlined_func$~lib/set/ENTRY_SIZE<u16>2 (result i32)
       i32.const 0
       local.set $20
       i32.const 0
       local.set $21
       block (result i32)
        block $__inlined_func$~lib/set/ENTRY_ALIGN<u16>3 (result i32)
         i32.const 3
        end
        local.set $20
        i32.const 8
        local.get $20
        i32.add
        local.get $20
        i32.const -1
        i32.xor
        i32.and
        local.set $21
        local.get $21
       end
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u16>#add (; 54 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$~lib/internal/hash/HASH<u16> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i32.const 65535
   i32.and
   call $~lib/internal/hash/hash16
   br $__inlined_func$~lib/internal/hash/HASH<u16>
  end
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<u16>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    global.get $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $4
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $__inlined_func$~lib/set/ENTRY_SIZE<u16> (result i32)
    i32.const 0
    local.set $7
    i32.const 0
    local.set $8
    block (result i32)
     block $__inlined_func$~lib/set/ENTRY_ALIGN<u16> (result i32)
      i32.const 3
     end
     local.set $7
     i32.const 8
     local.get $7
     i32.add
     local.get $7
     i32.const -1
     i32.xor
     i32.and
     local.set $8
     local.get $8
    end
   end
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   i32.store16
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   global.get $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   local.set $5
   local.get $3
   local.get $5
   i32.load offset=8
   i32.store offset=4
   local.get $5
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u16>#get:size (; 55 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u16>#delete (; 56 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<u16> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i32.const 65535
   i32.and
   call $~lib/internal/hash/hash16
   br $__inlined_func$~lib/internal/hash/HASH<u16>
  end
  call $~lib/set/Set<u16>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=4
  global.get $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  global.get $~lib/set/INITIAL_CAPACITY
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   global.get $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $4
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<u16>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u16> (; 57 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<u16>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#clear
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/ENTRY_ALIGN<i32> (; 58 ;) (type $i) (result i32)
  i32.const 3
 )
 (func $~lib/set/ENTRY_SIZE<i32> (; 59 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/set/ENTRY_ALIGN<i32> (result i32)
   i32.const 3
  end
  local.set $0
  i32.const 8
  local.get $0
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.and
  local.set $1
  local.get $1
 )
 (func $~lib/set/Set<i32>#clear (; 60 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  i32.const 4
  block $__inlined_func$~lib/set/ENTRY_SIZE<i32> (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   local.set $3
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i32> (result i32)
     i32.const 3
    end
    local.set $2
    i32.const 8
    local.get $2
    i32.add
    local.get $2
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $3
   end
  end
  i32.mul
  local.set $1
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<i32>#constructor (; 61 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/set/Set<i32>#clear
  local.get $0
 )
 (func $~lib/internal/hash/hash32 (; 62 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/internal/hash/FNV_OFFSET
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/internal/hash/HASH<i32> (; 63 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/internal/hash/hash32
  return
 )
 (func $~lib/set/Set<i32>#find (; 64 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load
       local.get $1
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i32>#has (; 65 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<i32> (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/internal/hash/hash32
   br $__inlined_func$~lib/internal/hash/HASH<i32>
  end
  call $~lib/set/Set<i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i32>#rehash (; 66 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  global.get $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $__inlined_func$~lib/set/ENTRY_SIZE<i32> (result i32)
   i32.const 0
   local.set $13
   i32.const 0
   local.set $14
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i32> (result i32)
     i32.const 3
    end
    local.set $13
    i32.const 8
    local.get $13
    i32.add
    local.get $13
    i32.const -1
    i32.xor
    i32.and
    local.set $14
    local.get $14
   end
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $__inlined_func$~lib/set/ENTRY_SIZE<i32>0 (result i32)
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i32>1 (result i32)
     i32.const 3
    end
    local.set $15
    i32.const 8
    local.get $15
    i32.add
    local.get $15
    i32.const -1
    i32.xor
    i32.and
    local.set $16
    local.get $16
   end
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load
       i32.store
       block $__inlined_func$~lib/internal/hash/HASH<i32> (result i32)
        local.get $9
        i32.load
        local.set $17
        local.get $17
        call $~lib/internal/hash/hash32
        br $__inlined_func$~lib/internal/hash/HASH<i32>
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       global.get $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load offset=8
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store offset=8
       local.get $8
       block $__inlined_func$~lib/set/ENTRY_SIZE<i32>1 (result i32)
        i32.const 0
        local.set $18
        i32.const 0
        local.set $19
        block (result i32)
         block $__inlined_func$~lib/set/ENTRY_ALIGN<i32>2 (result i32)
          i32.const 3
         end
         local.set $18
         i32.const 8
         local.get $18
         i32.add
         local.get $18
         i32.const -1
         i32.xor
         i32.and
         local.set $19
         local.get $19
        end
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $__inlined_func$~lib/set/ENTRY_SIZE<i32>2 (result i32)
       i32.const 0
       local.set $20
       i32.const 0
       local.set $21
       block (result i32)
        block $__inlined_func$~lib/set/ENTRY_ALIGN<i32>3 (result i32)
         i32.const 3
        end
        local.set $20
        i32.const 8
        local.get $20
        i32.add
        local.get $20
        i32.const -1
        i32.xor
        i32.and
        local.set $21
        local.get $21
       end
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i32>#add (; 67 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$~lib/internal/hash/HASH<i32> (result i32)
   local.get $1
   local.set $6
   local.get $6
   call $~lib/internal/hash/hash32
   br $__inlined_func$~lib/internal/hash/HASH<i32>
  end
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    global.get $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $4
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $__inlined_func$~lib/set/ENTRY_SIZE<i32> (result i32)
    i32.const 0
    local.set $7
    i32.const 0
    local.set $8
    block (result i32)
     block $__inlined_func$~lib/set/ENTRY_ALIGN<i32> (result i32)
      i32.const 3
     end
     local.set $7
     i32.const 8
     local.get $7
     i32.add
     local.get $7
     i32.const -1
     i32.xor
     i32.and
     local.set $8
     local.get $8
    end
   end
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   global.get $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   local.set $5
   local.get $3
   local.get $5
   i32.load offset=8
   i32.store offset=4
   local.get $5
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i32>#get:size (; 68 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i32>#delete (; 69 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<i32> (result i32)
   local.get $1
   local.set $6
   local.get $6
   call $~lib/internal/hash/hash32
   br $__inlined_func$~lib/internal/hash/HASH<i32>
  end
  call $~lib/set/Set<i32>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=4
  global.get $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  global.get $~lib/set/INITIAL_CAPACITY
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   global.get $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $4
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<i32>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i32> (; 70 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<i32>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#clear
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/ENTRY_ALIGN<u32> (; 71 ;) (type $i) (result i32)
  i32.const 3
 )
 (func $~lib/set/ENTRY_SIZE<u32> (; 72 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/set/ENTRY_ALIGN<u32> (result i32)
   i32.const 3
  end
  local.set $0
  i32.const 8
  local.get $0
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.and
  local.set $1
  local.get $1
 )
 (func $~lib/set/Set<u32>#clear (; 73 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  i32.const 4
  block $__inlined_func$~lib/set/ENTRY_SIZE<u32> (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   local.set $3
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u32> (result i32)
     i32.const 3
    end
    local.set $2
    i32.const 8
    local.get $2
    i32.add
    local.get $2
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $3
   end
  end
  i32.mul
  local.set $1
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<u32>#constructor (; 74 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/set/Set<u32>#clear
  local.get $0
 )
 (func $~lib/internal/hash/HASH<u32> (; 75 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/internal/hash/hash32
  return
 )
 (func $~lib/set/Set<u32>#find (; 76 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load
       local.get $1
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<u32>#has (; 77 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<u32> (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/internal/hash/hash32
   br $__inlined_func$~lib/internal/hash/HASH<u32>
  end
  call $~lib/set/Set<u32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u32>#rehash (; 78 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  global.get $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $__inlined_func$~lib/set/ENTRY_SIZE<u32> (result i32)
   i32.const 0
   local.set $13
   i32.const 0
   local.set $14
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u32> (result i32)
     i32.const 3
    end
    local.set $13
    i32.const 8
    local.get $13
    i32.add
    local.get $13
    i32.const -1
    i32.xor
    i32.and
    local.set $14
    local.get $14
   end
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $__inlined_func$~lib/set/ENTRY_SIZE<u32>0 (result i32)
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u32>1 (result i32)
     i32.const 3
    end
    local.set $15
    i32.const 8
    local.get $15
    i32.add
    local.get $15
    i32.const -1
    i32.xor
    i32.and
    local.set $16
    local.get $16
   end
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load
       i32.store
       block $__inlined_func$~lib/internal/hash/HASH<u32> (result i32)
        local.get $9
        i32.load
        local.set $17
        local.get $17
        call $~lib/internal/hash/hash32
        br $__inlined_func$~lib/internal/hash/HASH<u32>
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       global.get $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load offset=8
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store offset=8
       local.get $8
       block $__inlined_func$~lib/set/ENTRY_SIZE<u32>1 (result i32)
        i32.const 0
        local.set $18
        i32.const 0
        local.set $19
        block (result i32)
         block $__inlined_func$~lib/set/ENTRY_ALIGN<u32>2 (result i32)
          i32.const 3
         end
         local.set $18
         i32.const 8
         local.get $18
         i32.add
         local.get $18
         i32.const -1
         i32.xor
         i32.and
         local.set $19
         local.get $19
        end
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $__inlined_func$~lib/set/ENTRY_SIZE<u32>2 (result i32)
       i32.const 0
       local.set $20
       i32.const 0
       local.set $21
       block (result i32)
        block $__inlined_func$~lib/set/ENTRY_ALIGN<u32>3 (result i32)
         i32.const 3
        end
        local.set $20
        i32.const 8
        local.get $20
        i32.add
        local.get $20
        i32.const -1
        i32.xor
        i32.and
        local.set $21
        local.get $21
       end
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u32>#add (; 79 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$~lib/internal/hash/HASH<u32> (result i32)
   local.get $1
   local.set $6
   local.get $6
   call $~lib/internal/hash/hash32
   br $__inlined_func$~lib/internal/hash/HASH<u32>
  end
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<u32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    global.get $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $4
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $__inlined_func$~lib/set/ENTRY_SIZE<u32> (result i32)
    i32.const 0
    local.set $7
    i32.const 0
    local.set $8
    block (result i32)
     block $__inlined_func$~lib/set/ENTRY_ALIGN<u32> (result i32)
      i32.const 3
     end
     local.set $7
     i32.const 8
     local.get $7
     i32.add
     local.get $7
     i32.const -1
     i32.xor
     i32.and
     local.set $8
     local.get $8
    end
   end
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   global.get $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   local.set $5
   local.get $3
   local.get $5
   i32.load offset=8
   i32.store offset=4
   local.get $5
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u32>#get:size (; 80 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u32>#delete (; 81 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<u32> (result i32)
   local.get $1
   local.set $6
   local.get $6
   call $~lib/internal/hash/hash32
   br $__inlined_func$~lib/internal/hash/HASH<u32>
  end
  call $~lib/set/Set<u32>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=4
  global.get $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  global.get $~lib/set/INITIAL_CAPACITY
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   global.get $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $4
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<u32>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u32> (; 82 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<u32>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#clear
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/ENTRY_ALIGN<i64> (; 83 ;) (type $i) (result i32)
  i32.const 7
 )
 (func $~lib/set/ENTRY_SIZE<i64> (; 84 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/set/ENTRY_ALIGN<i64> (result i32)
   i32.const 7
  end
  local.set $0
  i32.const 12
  local.get $0
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.and
  local.set $1
  local.get $1
 )
 (func $~lib/set/Set<i64>#clear (; 85 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  i32.const 4
  block $__inlined_func$~lib/set/ENTRY_SIZE<i64> (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   local.set $3
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i64> (result i32)
     i32.const 7
    end
    local.set $2
    i32.const 12
    local.get $2
    i32.add
    local.get $2
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $3
   end
  end
  i32.mul
  local.set $1
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<i64>#constructor (; 86 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/set/Set<i64>#clear
  local.get $0
 )
 (func $~lib/internal/hash/hash64 (; 87 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  global.get $~lib/internal/hash/FNV_OFFSET
  local.set $3
  local.get $3
  local.get $1
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 24
  i32.shr_u
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
 )
 (func $~lib/internal/hash/HASH<i64> (; 88 ;) (type $Ii) (param $0 i64) (result i32)
  local.get $0
  call $~lib/internal/hash/hash64
  return
 )
 (func $~lib/set/Set<i64>#find (; 89 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=8
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i64.load
       local.get $1
       i64.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=8
      global.get $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i64>#has (; 90 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<i64> (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/internal/hash/hash64
   br $__inlined_func$~lib/internal/hash/HASH<i64>
  end
  call $~lib/set/Set<i64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i64>#rehash (; 91 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i64)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  global.get $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $__inlined_func$~lib/set/ENTRY_SIZE<i64> (result i32)
   i32.const 0
   local.set $13
   i32.const 0
   local.set $14
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i64> (result i32)
     i32.const 7
    end
    local.set $13
    i32.const 12
    local.get $13
    i32.add
    local.get $13
    i32.const -1
    i32.xor
    i32.and
    local.set $14
    local.get $14
   end
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $__inlined_func$~lib/set/ENTRY_SIZE<i64>0 (result i32)
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<i64>1 (result i32)
     i32.const 7
    end
    local.set $15
    i32.const 12
    local.get $15
    i32.add
    local.get $15
    i32.const -1
    i32.xor
    i32.and
    local.set $16
    local.get $16
   end
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=8
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i64.load
       i64.store
       block $__inlined_func$~lib/internal/hash/HASH<i64> (result i32)
        local.get $9
        i64.load
        local.set $17
        local.get $17
        call $~lib/internal/hash/hash64
        br $__inlined_func$~lib/internal/hash/HASH<i64>
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       global.get $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load offset=8
       i32.store offset=8
       local.get $12
       local.get $8
       i32.store offset=8
       local.get $8
       block $__inlined_func$~lib/set/ENTRY_SIZE<i64>1 (result i32)
        i32.const 0
        local.set $18
        i32.const 0
        local.set $19
        block (result i32)
         block $__inlined_func$~lib/set/ENTRY_ALIGN<i64>2 (result i32)
          i32.const 7
         end
         local.set $18
         i32.const 12
         local.get $18
         i32.add
         local.get $18
         i32.const -1
         i32.xor
         i32.and
         local.set $19
         local.get $19
        end
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $__inlined_func$~lib/set/ENTRY_SIZE<i64>2 (result i32)
       i32.const 0
       local.set $20
       i32.const 0
       local.set $21
       block (result i32)
        block $__inlined_func$~lib/set/ENTRY_ALIGN<i64>3 (result i32)
         i32.const 7
        end
        local.set $20
        i32.const 12
        local.get $20
        i32.add
        local.get $20
        i32.const -1
        i32.xor
        i32.and
        local.set $21
        local.get $21
       end
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i64>#add (; 92 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$~lib/internal/hash/HASH<i64> (result i32)
   local.get $1
   local.set $6
   local.get $6
   call $~lib/internal/hash/hash64
   br $__inlined_func$~lib/internal/hash/HASH<i64>
  end
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<i64>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    global.get $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $4
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $__inlined_func$~lib/set/ENTRY_SIZE<i64> (result i32)
    i32.const 0
    local.set $7
    i32.const 0
    local.set $8
    block (result i32)
     block $__inlined_func$~lib/set/ENTRY_ALIGN<i64> (result i32)
      i32.const 7
     end
     local.set $7
     i32.const 12
     local.get $7
     i32.add
     local.get $7
     i32.const -1
     i32.xor
     i32.and
     local.set $8
     local.get $8
    end
   end
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   i64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   global.get $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   local.set $5
   local.get $3
   local.get $5
   i32.load offset=8
   i32.store offset=8
   local.get $5
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i64>#get:size (; 93 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i64>#delete (; 94 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<i64> (result i32)
   local.get $1
   local.set $6
   local.get $6
   call $~lib/internal/hash/hash64
   br $__inlined_func$~lib/internal/hash/HASH<i64>
  end
  call $~lib/set/Set<i64>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=8
  global.get $~lib/set/EMPTY
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  global.get $~lib/set/INITIAL_CAPACITY
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   global.get $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $4
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<i64>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i64> (; 95 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  call $~lib/set/Set<i64>#constructor
  local.set $0
  block $break|0
   i64.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i64.const 100
    i64.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i64.const 50
   local.set $1
   loop $repeat|1
    local.get $1
    i64.const 100
    i64.lt_s
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i64.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i64.const 50
    i64.lt_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i64.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i64.const 50
    i64.lt_s
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#clear
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/ENTRY_ALIGN<u64> (; 96 ;) (type $i) (result i32)
  i32.const 7
 )
 (func $~lib/set/ENTRY_SIZE<u64> (; 97 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/set/ENTRY_ALIGN<u64> (result i32)
   i32.const 7
  end
  local.set $0
  i32.const 12
  local.get $0
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.and
  local.set $1
  local.get $1
 )
 (func $~lib/set/Set<u64>#clear (; 98 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  i32.const 4
  block $__inlined_func$~lib/set/ENTRY_SIZE<u64> (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   local.set $3
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u64> (result i32)
     i32.const 7
    end
    local.set $2
    i32.const 12
    local.get $2
    i32.add
    local.get $2
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $3
   end
  end
  i32.mul
  local.set $1
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<u64>#constructor (; 99 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/set/Set<u64>#clear
  local.get $0
 )
 (func $~lib/internal/hash/HASH<u64> (; 100 ;) (type $Ii) (param $0 i64) (result i32)
  local.get $0
  call $~lib/internal/hash/hash64
  return
 )
 (func $~lib/set/Set<u64>#find (; 101 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=8
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i64.load
       local.get $1
       i64.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=8
      global.get $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<u64>#has (; 102 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<u64> (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/internal/hash/hash64
   br $__inlined_func$~lib/internal/hash/HASH<u64>
  end
  call $~lib/set/Set<u64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u64>#rehash (; 103 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i64)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  global.get $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $__inlined_func$~lib/set/ENTRY_SIZE<u64> (result i32)
   i32.const 0
   local.set $13
   i32.const 0
   local.set $14
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u64> (result i32)
     i32.const 7
    end
    local.set $13
    i32.const 12
    local.get $13
    i32.add
    local.get $13
    i32.const -1
    i32.xor
    i32.and
    local.set $14
    local.get $14
   end
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $__inlined_func$~lib/set/ENTRY_SIZE<u64>0 (result i32)
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<u64>1 (result i32)
     i32.const 7
    end
    local.set $15
    i32.const 12
    local.get $15
    i32.add
    local.get $15
    i32.const -1
    i32.xor
    i32.and
    local.set $16
    local.get $16
   end
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=8
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i64.load
       i64.store
       block $__inlined_func$~lib/internal/hash/HASH<u64> (result i32)
        local.get $9
        i64.load
        local.set $17
        local.get $17
        call $~lib/internal/hash/hash64
        br $__inlined_func$~lib/internal/hash/HASH<u64>
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       global.get $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load offset=8
       i32.store offset=8
       local.get $12
       local.get $8
       i32.store offset=8
       local.get $8
       block $__inlined_func$~lib/set/ENTRY_SIZE<u64>1 (result i32)
        i32.const 0
        local.set $18
        i32.const 0
        local.set $19
        block (result i32)
         block $__inlined_func$~lib/set/ENTRY_ALIGN<u64>2 (result i32)
          i32.const 7
         end
         local.set $18
         i32.const 12
         local.get $18
         i32.add
         local.get $18
         i32.const -1
         i32.xor
         i32.and
         local.set $19
         local.get $19
        end
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $__inlined_func$~lib/set/ENTRY_SIZE<u64>2 (result i32)
       i32.const 0
       local.set $20
       i32.const 0
       local.set $21
       block (result i32)
        block $__inlined_func$~lib/set/ENTRY_ALIGN<u64>3 (result i32)
         i32.const 7
        end
        local.set $20
        i32.const 12
        local.get $20
        i32.add
        local.get $20
        i32.const -1
        i32.xor
        i32.and
        local.set $21
        local.get $21
       end
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u64>#add (; 104 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$~lib/internal/hash/HASH<u64> (result i32)
   local.get $1
   local.set $6
   local.get $6
   call $~lib/internal/hash/hash64
   br $__inlined_func$~lib/internal/hash/HASH<u64>
  end
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<u64>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    global.get $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $4
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $__inlined_func$~lib/set/ENTRY_SIZE<u64> (result i32)
    i32.const 0
    local.set $7
    i32.const 0
    local.set $8
    block (result i32)
     block $__inlined_func$~lib/set/ENTRY_ALIGN<u64> (result i32)
      i32.const 7
     end
     local.set $7
     i32.const 12
     local.get $7
     i32.add
     local.get $7
     i32.const -1
     i32.xor
     i32.and
     local.set $8
     local.get $8
    end
   end
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   i64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   global.get $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   local.set $5
   local.get $3
   local.get $5
   i32.load offset=8
   i32.store offset=8
   local.get $5
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u64>#get:size (; 105 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u64>#delete (; 106 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<u64> (result i32)
   local.get $1
   local.set $6
   local.get $6
   call $~lib/internal/hash/hash64
   br $__inlined_func$~lib/internal/hash/HASH<u64>
  end
  call $~lib/set/Set<u64>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=8
  global.get $~lib/set/EMPTY
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  global.get $~lib/set/INITIAL_CAPACITY
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   global.get $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $4
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<u64>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u64> (; 107 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  call $~lib/set/Set<u64>#constructor
  local.set $0
  block $break|0
   i64.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i64.const 100
    i64.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i64.const 50
   local.set $1
   loop $repeat|1
    local.get $1
    i64.const 100
    i64.lt_u
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i64.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i64.const 50
    i64.lt_u
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i64.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i64.const 50
    i64.lt_u
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#clear
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/ENTRY_ALIGN<f32> (; 108 ;) (type $i) (result i32)
  i32.const 3
 )
 (func $~lib/set/ENTRY_SIZE<f32> (; 109 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/set/ENTRY_ALIGN<f32> (result i32)
   i32.const 3
  end
  local.set $0
  i32.const 8
  local.get $0
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.and
  local.set $1
  local.get $1
 )
 (func $~lib/set/Set<f32>#clear (; 110 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  i32.const 4
  block $__inlined_func$~lib/set/ENTRY_SIZE<f32> (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   local.set $3
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<f32> (result i32)
     i32.const 3
    end
    local.set $2
    i32.const 8
    local.get $2
    i32.add
    local.get $2
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $3
   end
  end
  i32.mul
  local.set $1
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<f32>#constructor (; 111 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/set/Set<f32>#clear
  local.get $0
 )
 (func $~lib/internal/hash/HASH<f32> (; 112 ;) (type $fi) (param $0 f32) (result i32)
  local.get $0
  i32.reinterpret_f32
  call $~lib/internal/hash/hash32
  return
 )
 (func $~lib/set/Set<f32>#find (; 113 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       f32.load
       local.get $1
       f32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<f32>#has (; 114 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<f32> (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.reinterpret_f32
   call $~lib/internal/hash/hash32
   br $__inlined_func$~lib/internal/hash/HASH<f32>
  end
  call $~lib/set/Set<f32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f32>#rehash (; 115 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 f32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  global.get $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $__inlined_func$~lib/set/ENTRY_SIZE<f32> (result i32)
   i32.const 0
   local.set $13
   i32.const 0
   local.set $14
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<f32> (result i32)
     i32.const 3
    end
    local.set $13
    i32.const 8
    local.get $13
    i32.add
    local.get $13
    i32.const -1
    i32.xor
    i32.and
    local.set $14
    local.get $14
   end
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $__inlined_func$~lib/set/ENTRY_SIZE<f32>0 (result i32)
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<f32>1 (result i32)
     i32.const 3
    end
    local.set $15
    i32.const 8
    local.get $15
    i32.add
    local.get $15
    i32.const -1
    i32.xor
    i32.and
    local.set $16
    local.get $16
   end
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=4
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       f32.load
       f32.store
       block $__inlined_func$~lib/internal/hash/HASH<f32> (result i32)
        local.get $9
        f32.load
        local.set $17
        local.get $17
        i32.reinterpret_f32
        call $~lib/internal/hash/hash32
        br $__inlined_func$~lib/internal/hash/HASH<f32>
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       global.get $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load offset=8
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store offset=8
       local.get $8
       block $__inlined_func$~lib/set/ENTRY_SIZE<f32>1 (result i32)
        i32.const 0
        local.set $18
        i32.const 0
        local.set $19
        block (result i32)
         block $__inlined_func$~lib/set/ENTRY_ALIGN<f32>2 (result i32)
          i32.const 3
         end
         local.set $18
         i32.const 8
         local.get $18
         i32.add
         local.get $18
         i32.const -1
         i32.xor
         i32.and
         local.set $19
         local.get $19
        end
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $__inlined_func$~lib/set/ENTRY_SIZE<f32>2 (result i32)
       i32.const 0
       local.set $20
       i32.const 0
       local.set $21
       block (result i32)
        block $__inlined_func$~lib/set/ENTRY_ALIGN<f32>3 (result i32)
         i32.const 3
        end
        local.set $20
        i32.const 8
        local.get $20
        i32.add
        local.get $20
        i32.const -1
        i32.xor
        i32.and
        local.set $21
        local.get $21
       end
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<f32>#add (; 116 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$~lib/internal/hash/HASH<f32> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i32.reinterpret_f32
   call $~lib/internal/hash/hash32
   br $__inlined_func$~lib/internal/hash/HASH<f32>
  end
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<f32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    global.get $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<f32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $4
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $__inlined_func$~lib/set/ENTRY_SIZE<f32> (result i32)
    i32.const 0
    local.set $7
    i32.const 0
    local.set $8
    block (result i32)
     block $__inlined_func$~lib/set/ENTRY_ALIGN<f32> (result i32)
      i32.const 3
     end
     local.set $7
     i32.const 8
     local.get $7
     i32.add
     local.get $7
     i32.const -1
     i32.xor
     i32.and
     local.set $8
     local.get $8
    end
   end
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   f32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   global.get $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   local.set $5
   local.get $3
   local.get $5
   i32.load offset=8
   i32.store offset=4
   local.get $5
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<f32>#get:size (; 117 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<f32>#delete (; 118 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<f32> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i32.reinterpret_f32
   call $~lib/internal/hash/hash32
   br $__inlined_func$~lib/internal/hash/HASH<f32>
  end
  call $~lib/set/Set<f32>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=4
  global.get $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  global.get $~lib/set/INITIAL_CAPACITY
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   global.get $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $4
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<f32>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<f32> (; 119 ;) (type $v)
  (local $0 i32)
  (local $1 f32)
  i32.const 0
  call $~lib/set/Set<f32>#constructor
  local.set $0
  block $break|0
   f32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   f32.const 50
   local.set $1
   loop $repeat|1
    local.get $1
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   f32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    f32.const 50
    f32.lt
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   f32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    f32.const 50
    f32.lt
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#clear
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/ENTRY_ALIGN<f64> (; 120 ;) (type $i) (result i32)
  i32.const 7
 )
 (func $~lib/set/ENTRY_SIZE<f64> (; 121 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/set/ENTRY_ALIGN<f64> (result i32)
   i32.const 7
  end
  local.set $0
  i32.const 12
  local.get $0
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.and
  local.set $1
  local.get $1
 )
 (func $~lib/set/Set<f64>#clear (; 122 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  i32.const 4
  block $__inlined_func$~lib/set/ENTRY_SIZE<f64> (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   local.set $3
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<f64> (result i32)
     i32.const 7
    end
    local.set $2
    i32.const 12
    local.get $2
    i32.add
    local.get $2
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $3
   end
  end
  i32.mul
  local.set $1
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  global.get $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<f64>#constructor (; 123 ;) (type $ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/set/Set<f64>#clear
  local.get $0
 )
 (func $~lib/internal/hash/HASH<f64> (; 124 ;) (type $Fi) (param $0 f64) (result i32)
  local.get $0
  i64.reinterpret_f64
  call $~lib/internal/hash/hash64
  return
 )
 (func $~lib/set/Set<f64>#find (; 125 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=8
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       f64.load
       local.get $1
       f64.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=8
      global.get $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<f64>#has (; 126 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<f64> (result i32)
   local.get $1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/internal/hash/hash64
   br $__inlined_func$~lib/internal/hash/HASH<f64>
  end
  call $~lib/set/Set<f64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f64>#rehash (; 127 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 f64)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  global.get $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  global.get $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $__inlined_func$~lib/set/ENTRY_SIZE<f64> (result i32)
   i32.const 0
   local.set $13
   i32.const 0
   local.set $14
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<f64> (result i32)
     i32.const 7
    end
    local.set $13
    i32.const 12
    local.get $13
    i32.add
    local.get $13
    i32.const -1
    i32.xor
    i32.and
    local.set $14
    local.get $14
   end
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $__inlined_func$~lib/set/ENTRY_SIZE<f64>0 (result i32)
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   block (result i32)
    block $__inlined_func$~lib/set/ENTRY_ALIGN<f64>1 (result i32)
     i32.const 7
    end
    local.set $15
    i32.const 12
    local.get $15
    i32.add
    local.get $15
    i32.const -1
    i32.xor
    i32.and
    local.set $16
    local.get $16
   end
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  global.get $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=8
      global.get $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       f64.load
       f64.store
       block $__inlined_func$~lib/internal/hash/HASH<f64> (result i32)
        local.get $9
        f64.load
        local.set $17
        local.get $17
        i64.reinterpret_f64
        call $~lib/internal/hash/hash64
        br $__inlined_func$~lib/internal/hash/HASH<f64>
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       global.get $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load offset=8
       i32.store offset=8
       local.get $12
       local.get $8
       i32.store offset=8
       local.get $8
       block $__inlined_func$~lib/set/ENTRY_SIZE<f64>1 (result i32)
        i32.const 0
        local.set $18
        i32.const 0
        local.set $19
        block (result i32)
         block $__inlined_func$~lib/set/ENTRY_ALIGN<f64>2 (result i32)
          i32.const 7
         end
         local.set $18
         i32.const 12
         local.get $18
         i32.add
         local.get $18
         i32.const -1
         i32.xor
         i32.and
         local.set $19
         local.get $19
        end
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $__inlined_func$~lib/set/ENTRY_SIZE<f64>2 (result i32)
       i32.const 0
       local.set $20
       i32.const 0
       local.set $21
       block (result i32)
        block $__inlined_func$~lib/set/ENTRY_ALIGN<f64>3 (result i32)
         i32.const 7
        end
        local.set $20
        i32.const 12
        local.get $20
        i32.add
        local.get $20
        i32.const -1
        i32.xor
        i32.and
        local.set $21
        local.get $21
       end
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<f64>#add (; 128 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$~lib/internal/hash/HASH<f64> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i64.reinterpret_f64
   call $~lib/internal/hash/hash64
   br $__inlined_func$~lib/internal/hash/HASH<f64>
  end
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<f64>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    global.get $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<f64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $4
   global.get $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $__inlined_func$~lib/set/ENTRY_SIZE<f64> (result i32)
    i32.const 0
    local.set $7
    i32.const 0
    local.set $8
    block (result i32)
     block $__inlined_func$~lib/set/ENTRY_ALIGN<f64> (result i32)
      i32.const 7
     end
     local.set $7
     i32.const 12
     local.get $7
     i32.add
     local.get $7
     i32.const -1
     i32.xor
     i32.and
     local.set $8
     local.get $8
    end
   end
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   f64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   global.get $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   local.set $5
   local.get $3
   local.get $5
   i32.load offset=8
   i32.store offset=8
   local.get $5
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<f64>#get:size (; 129 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<f64>#delete (; 130 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  local.get $0
  local.get $1
  block $__inlined_func$~lib/internal/hash/HASH<f64> (result i32)
   local.get $1
   local.set $6
   local.get $6
   i64.reinterpret_f64
   call $~lib/internal/hash/hash64
   br $__inlined_func$~lib/internal/hash/HASH<f64>
  end
  call $~lib/set/Set<f64>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=8
  global.get $~lib/set/EMPTY
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  global.get $~lib/set/INITIAL_CAPACITY
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   global.get $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $4
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<f64>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<f64> (; 131 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  i32.const 0
  call $~lib/set/Set<f64>#constructor
  local.set $0
  block $break|0
   f64.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   f64.const 50
   local.set $1
   loop $repeat|1
    local.get $1
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   f64.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    f64.const 50
    f64.lt
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   f64.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    f64.const 50
    f64.lt
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#clear
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 132 ;) (type $v)
  global.get $HEAP_BASE
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $std/set/test<i8>
  call $std/set/test<u8>
  call $std/set/test<i16>
  call $std/set/test<u16>
  call $std/set/test<i32>
  call $std/set/test<u32>
  call $std/set/test<i64>
  call $std/set/test<u64>
  call $std/set/test<f32>
  call $std/set/test<f64>
 )
 (func $null (; 133 ;) (type $v)
 )
)
