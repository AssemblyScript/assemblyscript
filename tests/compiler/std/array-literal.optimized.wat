(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0f\00\00\00\03")
 (data (i32.const 25) "\01\02")
 (data (i32.const 32) "\11\00\00\00\10")
 (data (i32.const 48) "\18\00\00\00\18\00\00\00\03\00\00\00\03")
 (data (i32.const 64) "\10\00\00\00(")
 (data (i32.const 80) "s\00t\00d\00/\00a\00r\00r\00a\00y\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s")
 (data (i32.const 120) "\10\00\00\00\1a")
 (data (i32.const 136) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 168) "\0f\00\00\00\0c")
 (data (i32.const 188) "\01\00\00\00\02")
 (data (i32.const 200) "\12\00\00\00\10")
 (data (i32.const 216) "\b8\00\00\00\b8\00\00\00\0c\00\00\00\03")
 (data (i32.const 232) "\0f")
 (data (i32.const 248) "\12\00\00\00\10")
 (data (i32.const 264) "\f8\00\00\00\f8")
 (data (i32.const 280) "\10\00\00\00(")
 (data (i32.const 296) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 336) "\17\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\19\00\00\00\0e\00\00\00I\00\00\00\0e\00\00\00\08\00\00\00\00\00\00\00I\04\00\00\0e\00\00\00\08\00\00\00\00\00\00\00I\04\00\00\0e\00\00\00\08")
 (global $std/array-literal/emptyArrayI32 (mut i32) (i32.const 264))
 (global $std/array-literal/i (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayI8 (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayI32 (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayRef (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayRefWithCtor (mut i32) (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.retain))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (start $start)
 (func $~lib/array/Array<i8>#__get (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 136
   i32.const 99
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i32>#__get (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 136
   i32.const 99
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/allocator/arena/__mem_allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/runtime/allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/runtime/register (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 528
  i32.le_u
  if
   i32.const 0
   i32.const 296
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
   i32.const 296
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/util/runtime/makeArray (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
  local.set $1
  i32.const 3
  local.get $0
  i32.shl
  local.tee $0
  call $~lib/util/runtime/allocate
  i32.const 15
  call $~lib/util/runtime/register
  local.tee $2
  local.tee $3
  local.get $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 3
  i32.store offset=12
  local.get $1
 )
 (func $std/array-literal/Ref#constructor (; 7 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 19
  call $~lib/util/runtime/register
 )
 (func $std/array-literal/RefWithCtor#constructor (; 8 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 21
  call $~lib/util/runtime/register
 )
 (func $start:std/array-literal (; 9 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 60
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 4
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 48
  i32.const 0
  call $~lib/array/Array<i8>#__get
  if
   i32.const 0
   i32.const 80
   i32.const 5
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 48
  i32.const 1
  call $~lib/array/Array<i8>#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 48
  i32.const 2
  call $~lib/array/Array<i8>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 228
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 216
  i32.const 0
  call $~lib/array/Array<i32>#__get
  if
   i32.const 0
   i32.const 80
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 216
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 216
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array-literal/emptyArrayI32
  i32.load offset=12
  if
   i32.const 0
   i32.const 80
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 528
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  i32.const 17
  call $~lib/util/runtime/makeArray
  local.tee $2
  i32.load offset=4
  local.tee $0
  global.get $std/array-literal/i
  local.tee $1
  i32.store8
  local.get $1
  i32.const 1
  i32.add
  local.tee $1
  global.set $std/array-literal/i
  local.get $0
  local.get $1
  i32.store8 offset=1
  global.get $std/array-literal/i
  i32.const 1
  i32.add
  local.tee $1
  global.set $std/array-literal/i
  local.get $0
  local.get $1
  i32.store8 offset=2
  local.get $2
  global.set $std/array-literal/dynamicArrayI8
  global.get $std/array-literal/dynamicArrayI8
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI8
  i32.const 0
  call $~lib/array/Array<i8>#__get
  if
   i32.const 0
   i32.const 80
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI8
  i32.const 1
  call $~lib/array/Array<i8>#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI8
  i32.const 2
  call $~lib/array/Array<i8>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array-literal/i
  i32.const 2
  i32.const 18
  call $~lib/util/runtime/makeArray
  local.tee $2
  i32.load offset=4
  local.tee $0
  global.get $std/array-literal/i
  local.tee $1
  i32.store
  local.get $1
  i32.const 1
  i32.add
  local.tee $1
  global.set $std/array-literal/i
  local.get $0
  local.get $1
  i32.store offset=4
  global.get $std/array-literal/i
  i32.const 1
  i32.add
  local.tee $1
  global.set $std/array-literal/i
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $2
  global.set $std/array-literal/dynamicArrayI32
  global.get $std/array-literal/dynamicArrayI32
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI32
  i32.const 0
  call $~lib/array/Array<i32>#__get
  if
   i32.const 0
   i32.const 80
   i32.const 30
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI32
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI32
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 20
  call $~lib/util/runtime/makeArray
  local.tee $2
  i32.load offset=4
  local.tee $0
  call $std/array-literal/Ref#constructor
  i32.store
  local.get $0
  call $std/array-literal/Ref#constructor
  i32.store offset=4
  local.get $0
  call $std/array-literal/Ref#constructor
  i32.store offset=8
  local.get $2
  global.set $std/array-literal/dynamicArrayRef
  global.get $std/array-literal/dynamicArrayRef
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 22
  call $~lib/util/runtime/makeArray
  local.tee $2
  i32.load offset=4
  local.tee $0
  call $std/array-literal/RefWithCtor#constructor
  i32.store
  local.get $0
  call $std/array-literal/RefWithCtor#constructor
  i32.store offset=4
  local.get $0
  call $std/array-literal/RefWithCtor#constructor
  i32.store offset=8
  local.get $2
  global.set $std/array-literal/dynamicArrayRefWithCtor
  global.get $std/array-literal/dynamicArrayRefWithCtor
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 40
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/runtime/runtime.instanceof (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 336
   i32.load
   i32.le_u
  else   
   local.get $0
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
    i32.const 336
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/runtime/runtime.flags (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.const 336
   i32.load
   i32.gt_u
   local.set $1
  end
  local.get $1
  if (result i32)
   unreachable
  else   
   local.get $0
   i32.const 3
   i32.shl
   i32.const 336
   i32.add
   i32.load
  end
 )
 (func $~lib/runtime/runtime.newObject (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArray (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  i32.eqz
  local.tee $0
  if (result i32)
   local.get $0
  else   
   local.get $2
   i32.const 336
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $2
   i32.const 3
   i32.shl
   i32.const 336
   i32.add
   i32.load
  end
  local.tee $0
  i32.const 16
  i32.div_u
  i32.const 31
  i32.and
  local.set $4
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
  local.set $3
  local.get $2
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.tee $2
  i32.load
  drop
  local.get $2
  local.get $1
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $2
  local.get $3
  local.get $4
  i32.shr_u
  i32.store offset=12
  local.get $0
  i32.const 1024
  i32.and
  if
   local.get $1
   local.get $3
   i32.add
   local.set $0
   loop $continue|0
    local.get $1
    local.get $0
    i32.lt_u
    if
     local.get $1
     i32.load
     drop
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
 (func $~lib/runtime/runtime.retain (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/runtime/runtime.collect (; 17 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start (; 18 ;) (type $FUNCSIG$v)
  call $start:std/array-literal
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 23
  call $~lib/util/runtime/register
  global.set $~lib/runtime/ROOT
 )
)
