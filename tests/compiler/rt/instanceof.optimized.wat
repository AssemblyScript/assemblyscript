(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00(")
 (data (i32.const 24) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 64) "\10\00\00\00\16")
 (data (i32.const 80) "g\00c\00.\00r\00e\00g\00i\00s\00t\00e\00r")
 (data (i32.const 104) "\10\00\00\00*")
 (data (i32.const 120) "r\00u\00n\00t\00i\00m\00e\00/\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s")
 (data (i32.const 168) "\10\00\00\00\0e")
 (data (i32.const 184) "g\00c\00.\00l\00i\00n\00k")
 (data (i32.const 200) "\10\00\00\00\12")
 (data (i32.const 216) "g\00c\00.\00u\00n\00l\00i\00n\00k")
 (data (i32.const 240) "\10\00\00\00\14")
 (data (i32.const 256) "g\00c\00.\00c\00o\00l\00l\00e\00c\00t")
 (data (i32.const 280) "\15\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\11\00\00\00\08\00\00\00\12\00\00\00I\00\00\00\0e\00\00\00\08")
 (global $gc/_dummy/collect_count (mut i32) (i32.const 0))
 (global $gc/_dummy/register_count (mut i32) (i32.const 0))
 (global $gc/_dummy/register_ref (mut i32) (i32.const 0))
 (global $gc/_dummy/link_count (mut i32) (i32.const 0))
 (global $gc/_dummy/link_ref (mut i32) (i32.const 0))
 (global $gc/_dummy/link_parentRef (mut i32) (i32.const 0))
 (global $gc/_dummy/unlink_count (mut i32) (i32.const 0))
 (global $gc/_dummy/unlink_ref (mut i32) (i32.const 0))
 (global $gc/_dummy/unlink_parentRef (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
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
 (func $~lib/allocator/arena/__mem_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/runtime/allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 15
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__mem_allocate
  local.tee $1
  i32.const -1520547049
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
  i32.const 16
  i32.add
 )
 (func $gc/_dummy/__ref_register (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/util/runtime/register (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 456
  i32.le_u
  if
   i32.const 0
   i32.const 24
   i32.const 129
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 131
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
 (func $runtime/instanceof/Animal#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 17
   call $~lib/util/runtime/register
  end
 )
 (func $runtime/instanceof/Cat#constructor (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 18
   call $~lib/util/runtime/register
  end
  call $runtime/instanceof/Animal#constructor
 )
 (func $runtime/instanceof/BlackCat#constructor (; 8 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 19
  call $~lib/util/runtime/register
  call $runtime/instanceof/Cat#constructor
 )
 (func $~lib/runtime/runtime.instanceof (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 280
   i32.load
   i32.le_u
  else   
   i32.const 0
  end
  if
   loop $continue|0
    local.get $0
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $0
    i32.const 3
    i32.shl
    i32.const 280
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $start:runtime/instanceof (; 10 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 456
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  call $runtime/instanceof/Animal#constructor
  global.set $runtime/instanceof/animal
  i32.const 0
  call $runtime/instanceof/Cat#constructor
  global.set $runtime/instanceof/cat
  call $runtime/instanceof/BlackCat#constructor
  global.set $runtime/instanceof/blackcat
  global.get $runtime/instanceof/animal
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
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
  if (result i32)
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 120
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/cat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
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
  if (result i32)
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 120
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/blackcat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
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
  if (result i32)
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
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
  call $runtime/instanceof/BlackCat#constructor
  global.set $runtime/instanceof/nullableBlackcat
  global.get $runtime/instanceof/nullableAnimal
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
  if (result i32)
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
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
  if (result i32)
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 120
   i32.const 30
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableCat
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
  if (result i32)
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
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
  if (result i32)
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 120
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableBlackcat
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
  if (result i32)
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
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
  if (result i32)
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
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
  if (result i32)
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
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
  if (result i32)
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullCat
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
  if (result i32)
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
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
  if (result i32)
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 120
   i32.const 50
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $runtime/instanceof/nullBlackcat
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
  if (result i32)
   local.get $0
   i32.const 18
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
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
  if (result i32)
   local.get $0
   i32.const 19
   call $~lib/runtime/runtime.instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 120
   i32.const 54
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/instanceof/main (; 11 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start:runtime/instanceof
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 21
   call $~lib/util/runtime/register
   global.set $~lib/runtime/ROOT
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $~lib/runtime/runtime.flags (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 280
   i32.load
   i32.gt_u
  else   
   i32.const 1
  end
  if (result i32)
   unreachable
  else   
   local.get $0
   i32.const 3
   i32.shl
   i32.const 280
   i32.add
   i32.load
  end
 )
 (func $~lib/runtime/runtime.newObject (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $gc/_dummy/__ref_link (; 16 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $gc/_dummy/__ref_unlink (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/runtime/runtime.newArray (; 18 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.tee $3
  if (result i32)
   local.get $3
   i32.const 280
   i32.load
   i32.gt_u
  else   
   i32.const 1
  end
  if (result i32)
   unreachable
  else   
   local.get $3
   i32.const 3
   i32.shl
   i32.const 280
   i32.add
   i32.load
  end
  local.tee $0
  i32.const 16
  i32.div_u
  i32.const 31
  i32.and
  local.set $6
  local.get $1
  if (result i32)
   local.get $1
   i32.const 16
   i32.sub
   i32.load offset=4
  else   
   i32.const 0
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
   i32.const 0
  end
  local.set $4
  local.get $3
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.tee $2
  local.set $5
  local.get $2
  i32.load
  local.tee $3
  local.get $1
  i32.ne
  if
   local.get $3
   if
    local.get $3
    local.get $5
    call $gc/_dummy/__ref_unlink
   end
   local.get $1
   local.get $5
   call $gc/_dummy/__ref_link
  end
  local.get $2
  local.get $1
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $4
  i32.store offset=8
  local.get $2
  local.get $4
  local.get $6
  i32.shr_u
  i32.store offset=12
  local.get $0
  i32.const 1024
  i32.and
  if
   local.get $1
   local.get $4
   i32.add
   local.set $4
   loop $continue|0
    local.get $1
    local.get $4
    i32.lt_u
    if
     local.get $1
     i32.load
     local.tee $0
     if
      local.get $0
      local.get $2
      call $gc/_dummy/__ref_link
     end
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/runtime/runtime.retain (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $gc/_dummy/__ref_link
 )
 (func $~lib/runtime/runtime.release (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $gc/_dummy/__ref_unlink
 )
 (func $~lib/runtime/runtime.collect (; 21 ;) (type $FUNCSIG$v)
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
 (func $null (; 22 ;) (type $FUNCSIG$v)
  nop
 )
)
