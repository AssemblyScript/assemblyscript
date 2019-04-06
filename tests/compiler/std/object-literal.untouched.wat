(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00")
 (data (i32.const 48) "\10\00\00\00(\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 104) "\10\00\00\00*\00\00\00\00\00\00\00\00\00\00\00s\00t\00d\00/\00o\00b\00j\00e\00c\00t\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s\00")
 (data (i32.const 168) "\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (global $~lib/runtime/RTTI_BASE i32 (i32.const 168))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 336))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.release))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (export "$.capabilities" (global $~lib/capabilities))
 (start $start)
 (func $~lib/util/runtime/adjust (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__mem_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
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
  i32.const 7
  i32.add
  i32.const 7
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
 (func $~lib/memory/memory.allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__mem_allocate
  return
 )
 (func $~lib/util/runtime/allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/runtime/adjust
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/collector/dummy/__ref_register (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/util/runtime/register (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $~lib/collector/dummy/__ref_register
  local.get $0
 )
 (func $~lib/string/String#get:length (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 8 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  local.set $5
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $7
  block $break|0
   loop $continue|0
    local.get $4
    if (result i32)
     local.get $6
     i32.load16_u
     local.get $7
     i32.load16_u
     i32.sub
     local.tee $5
     i32.eqz
    else     
     local.get $4
    end
    if
     block
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      local.get $6
      i32.const 2
      i32.add
      local.set $6
      local.get $7
      i32.const 2
      i32.add
      local.set $7
     end
     br $continue|0
    end
   end
  end
  local.get $5
 )
 (func $~lib/string/String.__eq (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $std/object-literal/bar (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 9
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $std/object-literal/bar2 (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 26
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $std/object-literal/Foo2#test (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 21
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:std/object-literal (; 13 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  block (result i32)
   i32.const 8
   call $~lib/util/runtime/allocate
   i32.const 17
   call $~lib/util/runtime/register
   local.set $0
   local.get $0
   i32.const 1
   i32.store
   local.get $0
   i32.const 24
   i32.store offset=4
   local.get $0
  end
  call $std/object-literal/bar
  block (result i32)
   i32.const 4
   call $~lib/util/runtime/allocate
   i32.const 18
   call $~lib/util/runtime/register
   local.set $1
   local.get $1
   i32.const 2
   i32.store
   local.get $1
  end
  call $std/object-literal/bar2
  block (result i32)
   i32.const 4
   call $~lib/util/runtime/allocate
   i32.const 18
   call $~lib/util/runtime/register
   local.set $2
   local.get $2
   i32.const 3
   i32.store
   local.get $2
  end
  call $std/object-literal/Foo2#test
 )
 (func $~lib/runtime/runtime.instanceof (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load
  local.set $2
  global.get $~lib/runtime/RTTI_BASE
  local.set $3
  local.get $2
  if (result i32)
   local.get $2
   local.get $3
   i32.load
   i32.le_u
  else   
   local.get $2
  end
  if
   loop $continue|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/runtime/runtime.flags (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/runtime/RTTI_BASE
  local.set $1
  local.get $0
  i32.eqz
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   local.get $1
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $1
   local.get $0
   i32.const 8
   i32.mul
   i32.add
   i32.load
  end
 )
 (func $~lib/runtime/runtime.newObject (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
 )
 (func $~lib/collector/dummy/__ref_link (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/collector/dummy/__ref_unlink (; 21 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/runtime/runtime.newArray (; 22 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/runtime/runtime.flags
  local.set $2
  local.get $2
  i32.const 8
  i32.div_u
  i32.const 31
  i32.and
  local.set $3
  local.get $1
  i32.eqz
  if
   i32.const 0
   local.tee $4
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
  else   
   local.get $1
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $4
  end
  local.get $0
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.set $5
  local.get $5
  local.tee $6
  local.get $1
  local.tee $7
  local.get $6
  i32.load
  local.tee $8
  i32.ne
  if (result i32)
   local.get $8
   if
    local.get $8
    local.get $6
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $7
   local.get $6
   call $~lib/collector/dummy/__ref_link
   local.get $7
  else   
   local.get $7
  end
  i32.store
  local.get $5
  local.get $1
  i32.store offset=4
  local.get $5
  local.get $4
  i32.store offset=8
  local.get $5
  local.get $4
  local.get $3
  i32.shr_u
  i32.store offset=12
  local.get $2
  i32.const 512
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   local.get $4
   i32.add
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $8
     i32.lt_u
     if
      block
       local.get $6
       i32.load
       local.set $7
       local.get $7
       if
        local.get $7
        local.get $5
        call $~lib/collector/dummy/__ref_link
       end
       local.get $6
       i32.const 4
       i32.add
       local.set $6
      end
      br $continue|0
     end
    end
   end
  end
  local.get $5
 )
 (func $~lib/runtime/Root#constructor (; 23 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 20
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.retain (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $~lib/collector/dummy/__ref_link
 )
 (func $~lib/runtime/runtime.release (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $~lib/collector/dummy/__ref_unlink
 )
 (func $~lib/collector/dummy/__ref_collect (; 26 ;) (type $FUNCSIG$v)
  nop
 )
 (func $~lib/runtime/runtime.collect (; 27 ;) (type $FUNCSIG$v)
  call $~lib/collector/dummy/__ref_collect
 )
 (func $~lib/runtime/runtime#constructor (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $start (; 29 ;) (type $FUNCSIG$v)
  call $start:std/object-literal
  i32.const 0
  call $~lib/runtime/Root#constructor
  global.set $~lib/runtime/ROOT
 )
 (func $null (; 30 ;) (type $FUNCSIG$v)
 )
)
