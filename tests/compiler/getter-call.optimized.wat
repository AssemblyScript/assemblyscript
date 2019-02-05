(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 2 funcref)
 (elem (i32.const 0) $null $getter-call/C#get:x~anonymous|1)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $getter-call/test))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
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
  local.tee $2
  current_memory
  local.tee $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $3
   local.get $2
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $3
   local.get $0
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $0
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $getter-call/C#get:x~anonymous|1 (; 1 ;) (type $i) (result i32)
  i32.const 42
 )
 (func $getter-call/test (; 2 ;) (type $i) (result i32)
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  drop
  i32.const 0
  global.set $~argc
  i32.const 1
  call_indirect (type $i)
 )
 (func $start (; 3 ;) (type $v)
  i32.const 8
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $null (; 4 ;) (type $v)
  nop
 )
)
