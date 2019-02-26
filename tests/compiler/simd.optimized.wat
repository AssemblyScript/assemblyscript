(module
 (type $_ (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\07\00\00\00s\00i\00m\00d\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/allocator/arena/offset
  local.tee $0
  i32.const 263
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
 (func $start (; 1 ;) (type $_)
  (local $0 i32)
  i32.const 32
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  local.get $0
  i32.const 16
  i32.add
  v128.load offset=32
  v128.store offset=64
 )
 (func $null (; 2 ;) (type $_)
  nop
 )
)
