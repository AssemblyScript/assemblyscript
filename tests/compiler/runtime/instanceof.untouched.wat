(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00(\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 64) "\10\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00g\00c\00.\00r\00e\00g\00i\00s\00t\00e\00r\00")
 (data (i32.const 104) "\10\00\00\00*\00\00\00\00\00\00\00\00\00\00\00r\00u\00n\00t\00i\00m\00e\00/\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s\00")
 (data (i32.const 168) "\10\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00g\00c\00.\00l\00i\00n\00k\00")
 (data (i32.const 200) "\10\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00g\00c\00.\00u\00n\00l\00i\00n\00k\00")
 (data (i32.const 240) "\10\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00g\00c\00.\00c\00o\00l\00l\00e\00c\00t\00")
 (data (i32.const 280) "\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\12\00\00\00!\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $gc/_dummy/collect_count (mut i32) (i32.const 0))
 (global $gc/_dummy/register_count (mut i32) (i32.const 0))
 (global $gc/_dummy/register_ref (mut i32) (i32.const 0))
 (global $gc/_dummy/link_count (mut i32) (i32.const 0))
 (global $gc/_dummy/link_ref (mut i32) (i32.const 0))
 (global $gc/_dummy/link_parentRef (mut i32) (i32.const 0))
 (global $gc/_dummy/unlink_count (mut i32) (i32.const 0))
 (global $gc/_dummy/unlink_ref (mut i32) (i32.const 0))
 (global $gc/_dummy/unlink_parentRef (mut i32) (i32.const 0))
 (global $gc/_dummy/mark_count (mut i32) (i32.const 0))
 (global $gc/_dummy/mark_ref (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $runtime/instanceof/animal (mut i32) (i32.const 0))
 (global $runtime/instanceof/cat (mut i32) (i32.const 0))
 (global $runtime/instanceof/blackcat (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullableAnimal (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullableCat (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullableBlackcat (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullAnimal (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullCat (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullBlackcat (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (global $~lib/runtime/RTTI_BASE i32 (i32.const 280))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 456))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "main" (func $runtime/instanceof/main))
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
 (func $~lib/util/runtime/adjust (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/allocator/arena/__mem_allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__mem_allocate
  return
 )
 (func $~lib/util/runtime/allocate (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $gc/_dummy/__ref_register (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 80
  i32.const 1
  local.get $0
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $gc/_dummy/register_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/register_count
  local.get $0
  global.set $gc/_dummy/register_ref
 )
 (func $~lib/util/runtime/register (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
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
   i32.const 24
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $gc/_dummy/__ref_register
  local.get $0
 )
 (func $runtime/instanceof/Animal#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 17
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $runtime/instanceof/Cat#constructor (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 18
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
  call $runtime/instanceof/Animal#constructor
  local.set $0
  local.get $0
 )
 (func $runtime/instanceof/BlackCat#constructor (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 19
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
  call $runtime/instanceof/Cat#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/runtime/runtime.instanceof (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:runtime/instanceof (; 12 ;) (type $FUNCSIG$v)
  (local $0 i32)
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
  i32.const 0
  call $runtime/instanceof/Animal#constructor
  global.set $runtime/instanceof/animal
  i32.const 0
  call $runtime/instanceof/Cat#constructor
  global.set $runtime/instanceof/cat
  i32.const 0
  call $runtime/instanceof/BlackCat#constructor
  global.set $runtime/instanceof/blackcat
  block (result i32)
   global.get $runtime/instanceof/animal
   drop
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/animal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/animal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  block (result i32)
   global.get $runtime/instanceof/cat
   drop
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/cat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/cat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  block (result i32)
   global.get $runtime/instanceof/blackcat
   drop
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/blackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/blackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $runtime/instanceof/Animal#constructor
  global.set $runtime/instanceof/nullableAnimal
  i32.const 0
  call $runtime/instanceof/Cat#constructor
  global.set $runtime/instanceof/nullableCat
  i32.const 0
  call $runtime/instanceof/BlackCat#constructor
  global.set $runtime/instanceof/nullableBlackcat
  global.get $runtime/instanceof/nullableAnimal
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableAnimal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableAnimal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 30
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableCat
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableCat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 33
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableCat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableBlackcat
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableBlackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 37
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableBlackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullAnimal
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 44
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullAnimal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 45
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullAnimal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullCat
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 48
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullCat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 49
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullCat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 50
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullBlackcat
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 52
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullBlackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 53
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullBlackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 54
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/instanceof/main (; 13 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $~lib/runtime/runtime.flags (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/runtime.newObject (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
 )
 (func $gc/_dummy/__ref_link (; 19 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 184
  i32.const 2
  local.get $0
  f64.convert_i32_u
  local.get $1
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $gc/_dummy/link_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/link_count
  local.get $0
  global.set $gc/_dummy/link_ref
  local.get $0
  global.set $gc/_dummy/link_parentRef
 )
 (func $gc/_dummy/__ref_unlink (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 216
  i32.const 2
  local.get $0
  f64.convert_i32_u
  local.get $1
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $gc/_dummy/unlink_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/unlink_count
  local.get $0
  global.set $gc/_dummy/unlink_ref
  local.get $1
  global.set $gc/_dummy/unlink_parentRef
 )
 (func $~lib/runtime/runtime.newArray (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    call $gc/_dummy/__ref_unlink
   end
   local.get $7
   local.get $6
   call $gc/_dummy/__ref_link
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
        call $gc/_dummy/__ref_link
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
 (func $~lib/runtime/Root#constructor (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 21
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.retain (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $gc/_dummy/__ref_link
 )
 (func $~lib/runtime/runtime.release (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $gc/_dummy/__ref_unlink
 )
 (func $gc/_dummy/__ref_collect (; 25 ;) (type $FUNCSIG$v)
  i32.const 256
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $gc/_dummy/collect_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/collect_count
 )
 (func $~lib/runtime/runtime.collect (; 26 ;) (type $FUNCSIG$v)
  call $gc/_dummy/__ref_collect
 )
 (func $~lib/runtime/runtime#constructor (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $start (; 28 ;) (type $FUNCSIG$v)
  call $start:runtime/instanceof
  i32.const 0
  call $~lib/runtime/Root#constructor
  global.set $~lib/runtime/ROOT
 )
 (func $null (; 29 ;) (type $FUNCSIG$v)
 )
)
