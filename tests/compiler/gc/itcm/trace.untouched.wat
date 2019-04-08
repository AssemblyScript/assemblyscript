(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00 \00\00\00\00\00\00\00\00\00\00\00g\00c\00/\00i\00t\00c\00m\00/\00t\00r\00a\00c\00e\00.\00t\00s\00")
 (data (i32.const 56) "\10\00\00\00\"\00\00\00\00\00\00\00\00\00\00\00#\00 \00r\00e\00f\00 \00=\00 \00n\00e\00w\00 \00R\00e\00f\00(\00)\00")
 (data (i32.const 112) "\10\00\00\00(\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 168) "\10\00\00\00\1a\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00.\00r\00e\00g\00i\00s\00t\00e\00r\00")
 (data (i32.const 216) "\10\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00~\00i\00n\00i\00t\00")
 (data (i32.const 256) "\10\00\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00 \00 \00 \00 \00f\00r\00o\00m\00S\00p\00a\00c\00e\00 \00=\00")
 (data (i32.const 304) "\10\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00 \00 \00 \00 \00 \00c\00l\00e\00a\00r\00")
 (data (i32.const 344) "\10\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00 \00 \00 \00 \00 \00t\00o\00S\00p\00a\00c\00e\00 \00=\00")
 (data (i32.const 392) "\10\00\00\00\"\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00~\00s\00t\00a\00t\00e\00 \00=\00 \00I\00D\00L\00E\00")
 (data (i32.const 448) "\10\00\00\006\00\00\00\00\00\00\00\00\00\00\00 \00 \00 \00 \00 \00p\00u\00s\00h\00 \00[\00p\00r\00e\00v\00,\00 \00r\00e\00f\00,\00 \00n\00e\00x\00t\00]\00")
 (data (i32.const 520) "\10\00\00\00(\00\00\00\00\00\00\00\00\00\00\00#\00 \00a\00r\00r\00 \00=\00 \00n\00e\00w\00 \00A\00r\00r\00a\00y\00(\001\00)\00")
 (data (i32.const 576) "\10\00\00\00&\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 632) "\10\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00.\00l\00i\00n\00k\00")
 (data (i32.const 672) "\10\00\00\00\1a\00\00\00\00\00\00\00\00\00\00\00 \00 \00 \00 \00 \00m\00a\00k\00e\00G\00r\00a\00y\00")
 (data (i32.const 720) "\10\00\00\00:\00\00\00\00\00\00\00\00\00\00\00 \00 \00 \00 \00 \00u\00n\00l\00i\00n\00k\00 \00[\00p\00r\00e\00f\00,\00 \00r\00e\00f\00,\00 \00n\00e\00x\00t\00]\00")
 (data (i32.const 800) "\10\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00#\00 \00a\00r\00r\00[\000\00]\00 \00=\00 \00r\00e\00f\00")
 (data (i32.const 848) "\10\00\00\00\1a\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 896) "\10\00\00\00\1e\00\00\00\00\00\00\00\00\00\00\00#\00 \00a\00r\00r\00[\000\00]\00 \00=\00 \00n\00u\00l\00l\00")
 (data (i32.const 944) "\10\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00#\00 \00n\00e\00w\00 \00R\00e\00f\00(\00)\00")
 (data (i32.const 984) "\10\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00.\00c\00o\00l\00l\00e\00c\00t\00")
 (data (i32.const 1024) "\10\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00I\00D\00L\00E\00")
 (data (i32.const 1072) "\10\00\00\00\"\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00~\00s\00t\00a\00t\00e\00 \00=\00 \00M\00A\00R\00K\00")
 (data (i32.const 1128) "\10\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00M\00A\00R\00K\00")
 (data (i32.const 1176) "\10\00\00\00*\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00M\00A\00R\00K\00 \00f\00i\00n\00i\00s\00h\00")
 (data (i32.const 1240) "\10\00\00\00$\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00~\00s\00t\00a\00t\00e\00 \00=\00 \00S\00W\00E\00E\00P\00")
 (data (i32.const 1296) "\10\00\00\00(\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00S\00W\00E\00E\00P\00 \00f\00r\00e\00e\00")
 (data (i32.const 1352) "\10\00\00\00,\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00S\00W\00E\00E\00P\00 \00f\00i\00n\00i\00s\00h\00")
 (data (i32.const 1416) "\10\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00i\00t\00c\00m\00.\00m\00a\00r\00k\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $gc/itcm/trace/GC_TRACE i32 (i32.const 1))
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/util/runtime/MAX_BYTELENGTH i32 (i32.const 1073741808))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 1452))
 (export "memory" (memory $0))
 (export "main" (func $gc/itcm/trace/main))
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
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  i32.const 320
  i32.const 1
  block $~lib/collector/itcm/objToRef|inlined.1 (result i32)
   local.get $0
   local.set $1
   local.get $1
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.add
  end
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $0
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.store offset=12
 )
 (func $~lib/collector/itcm/maybeInit (; 7 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/collector/itcm/state
  i32.const 0
  i32.eq
  if
   i32.const 232
   i32.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/builtins/trace
   global.get $~lib/util/runtime/HEADER_SIZE
   call $~lib/memory/memory.allocate
   global.set $~lib/collector/itcm/fromSpace
   i32.const 272
   i32.const 1
   block $~lib/collector/itcm/objToRef|inlined.0 (result i32)
    global.get $~lib/collector/itcm/fromSpace
    local.set $0
    local.get $0
    global.get $~lib/util/runtime/HEADER_SIZE
    i32.add
   end
   f64.convert_i32_u
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/builtins/trace
   global.get $~lib/collector/itcm/fromSpace
   i32.const -1
   i32.store
   global.get $~lib/collector/itcm/fromSpace
   i32.const 0
   i32.store offset=4
   global.get $~lib/collector/itcm/fromSpace
   call $~lib/collector/itcm/ManagedObjectList#clear
   global.get $~lib/util/runtime/HEADER_SIZE
   call $~lib/memory/memory.allocate
   global.set $~lib/collector/itcm/toSpace
   i32.const 360
   i32.const 1
   block $~lib/collector/itcm/objToRef|inlined.2 (result i32)
    global.get $~lib/collector/itcm/toSpace
    local.set $0
    local.get $0
    global.get $~lib/util/runtime/HEADER_SIZE
    i32.add
   end
   f64.convert_i32_u
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/builtins/trace
   global.get $~lib/collector/itcm/toSpace
   i32.const -1
   i32.store
   global.get $~lib/collector/itcm/toSpace
   i32.const 0
   i32.store offset=4
   global.get $~lib/collector/itcm/toSpace
   call $~lib/collector/itcm/ManagedObjectList#clear
   global.get $~lib/collector/itcm/toSpace
   global.set $~lib/collector/itcm/iter
   i32.const 1
   global.set $~lib/collector/itcm/state
   i32.const 408
   i32.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/builtins/trace
  end
 )
 (func $~lib/collector/itcm/ManagedObject#set:color (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/ManagedObject#set:next (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.and
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 10 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  i32.const 464
  i32.const 3
  block $~lib/collector/itcm/objToRef|inlined.3 (result i32)
   local.get $2
   local.set $3
   local.get $3
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.add
  end
  f64.convert_i32_u
  block $~lib/collector/itcm/objToRef|inlined.4 (result i32)
   local.get $1
   local.set $3
   local.get $3
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.add
  end
  f64.convert_i32_u
  block $~lib/collector/itcm/objToRef|inlined.5 (result i32)
   local.get $0
   local.set $3
   local.get $3
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.add
  end
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $1
  local.get $0
  call $~lib/collector/itcm/ManagedObject#set:next
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/collector/itcm/ManagedObject#set:next
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/collector/itcm/__ref_register (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 184
  i32.const 1
  local.get $0
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $2
  local.get $2
  global.get $~lib/collector/itcm/white
  call $~lib/collector/itcm/ManagedObject#set:color
  global.get $~lib/collector/itcm/fromSpace
  local.get $2
  call $~lib/collector/itcm/ManagedObjectList#push
 )
 (func $~lib/util/runtime/register (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 129
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
   i32.const 128
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $~lib/collector/itcm/__ref_register
  local.get $0
 )
 (func $gc/itcm/trace/Ref#constructor (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/util/runtime/allocate
   i32.const 17
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
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
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
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
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
   i32.sub
   local.set $2
   local.get $4
   i64.extend_i32_u
   local.get $4
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $6
   block $break|0
    loop $continue|0
     local.get $2
     i32.const 32
     i32.ge_u
     if
      block
       local.get $0
       local.get $6
       i64.store
       local.get $0
       i32.const 8
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 16
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 24
       i32.add
       local.get $6
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
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 592
   i32.const 54
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/util/runtime/allocate
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  i32.const 15
  call $~lib/util/runtime/register
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#unlink (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/collector/itcm/ManagedObject#get:next
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  i32.const 736
  i32.const 3
  block $~lib/collector/itcm/objToRef|inlined.7 (result i32)
   local.get $2
   local.set $3
   local.get $3
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.add
  end
  f64.convert_i32_u
  block $~lib/collector/itcm/objToRef|inlined.8 (result i32)
   local.get $0
   local.set $3
   local.get $3
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.add
  end
  f64.convert_i32_u
  block $~lib/collector/itcm/objToRef|inlined.9 (result i32)
   local.get $1
   local.set $3
   local.get $3
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.add
  end
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/collector/itcm/ManagedObject#set:next
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  i32.const 688
  i32.const 1
  block $~lib/collector/itcm/objToRef|inlined.6 (result i32)
   local.get $0
   local.set $1
   local.get $1
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.add
  end
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $0
  global.get $~lib/collector/itcm/iter
  i32.eq
  if
   local.get $0
   i32.load offset=12
   global.set $~lib/collector/itcm/iter
  end
  local.get $0
  call $~lib/collector/itcm/ManagedObject#unlink
  global.get $~lib/collector/itcm/toSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 2
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/__ref_link (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 648
  i32.const 2
  local.get $0
  f64.convert_i32_u
  local.get $1
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $3
  local.get $3
  call $~lib/collector/itcm/ManagedObject#get:color
  global.get $~lib/collector/itcm/white
  i32.eqz
  i32.eq
  local.tee $2
  if (result i32)
   block $~lib/collector/itcm/refToObj|inlined.3 (result i32)
    local.get $0
    local.set $2
    local.get $2
    global.get $~lib/util/runtime/HEADER_SIZE
    i32.sub
   end
   call $~lib/collector/itcm/ManagedObject#get:color
   global.get $~lib/collector/itcm/white
   i32.eq
  else   
   local.get $2
  end
  if
   local.get $3
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 21 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 592
   i32.const 12
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/util/runtime/allocate
    i32.const 14
    call $~lib/util/runtime/register
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
  end
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if (result i32)
   nop
   local.get $5
   local.get $4
   call $~lib/collector/itcm/__ref_link
   local.get $5
  else   
   local.get $5
  end
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<gc/itcm/trace/Ref | null>#constructor (; 22 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   call $~lib/util/runtime/allocate
   i32.const 18
   call $~lib/util/runtime/register
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/memory/memory.copy (; 23 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
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
     block $break|0
      loop $continue|0
       local.get $0
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $2
         i32.const 1
         i32.sub
         local.set $2
         block (result i32)
          local.get $0
          local.tee $5
          i32.const 1
          i32.add
          local.set $0
          local.get $5
         end
         block (result i32)
          local.get $1
          local.tee $5
          i32.const 1
          i32.add
          local.set $1
          local.get $5
         end
         i32.load8_u
         i32.store8
        end
        br $continue|0
       end
      end
     end
     block $break|1
      loop $continue|1
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $0
         local.get $1
         i64.load
         i64.store
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         i32.const 8
         i32.add
         local.set $0
         local.get $1
         i32.const 8
         i32.add
         local.set $1
        end
        br $continue|1
       end
      end
     end
    end
    block $break|2
     loop $continue|2
      local.get $2
      if
       block
        block (result i32)
         local.get $0
         local.tee $5
         i32.const 1
         i32.add
         local.set $0
         local.get $5
        end
        block (result i32)
         local.get $1
         local.tee $5
         i32.const 1
         i32.add
         local.set $1
         local.get $5
        end
        i32.load8_u
        i32.store8
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
       end
       br $continue|2
      end
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
     block $break|3
      loop $continue|3
       local.get $0
       local.get $2
       i32.add
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $0
         local.get $2
         i32.const 1
         i32.sub
         local.tee $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i32.load8_u
         i32.store8
        end
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         local.get $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i64.load
         i64.store
        end
        br $continue|4
       end
      end
     end
    end
    block $break|5
     loop $continue|5
      local.get $2
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|5
      end
     end
    end
   end
  end
 )
 (func $~lib/allocator/arena/__mem_free (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/memory/memory.free (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/allocator/arena/__mem_free
 )
 (func $~lib/util/runtime/reallocate (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load offset=4
  local.set $3
  local.get $3
  local.get $1
  i32.lt_u
  if
   local.get $1
   call $~lib/util/runtime/adjust
   local.set $4
   local.get $3
   call $~lib/util/runtime/adjust
   i32.const 0
   local.get $0
   global.get $~lib/memory/HEAP_BASE
   i32.gt_u
   select
   local.get $4
   i32.lt_u
   if
    local.get $4
    call $~lib/memory/memory.allocate
    local.set $5
    local.get $5
    local.get $2
    i32.load
    i32.store
    local.get $5
    i32.const 0
    i32.store offset=8
    local.get $5
    i32.const 0
    i32.store offset=12
    local.get $5
    global.get $~lib/util/runtime/HEADER_SIZE
    i32.add
    local.set $6
    local.get $6
    local.get $0
    local.get $3
    call $~lib/memory/memory.copy
    local.get $6
    local.get $3
    i32.add
    i32.const 0
    local.get $1
    local.get $3
    i32.sub
    call $~lib/memory/memory.fill
    local.get $2
    i32.load
    global.get $~lib/util/runtime/HEADER_MAGIC
    i32.eq
    if
     local.get $0
     global.get $~lib/memory/HEAP_BASE
     i32.gt_u
     i32.eqz
     if
      i32.const 0
      i32.const 128
      i32.const 89
      i32.const 8
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     call $~lib/memory/memory.free
    else     
     local.get $0
     call $~lib/collector/itcm/__ref_register
    end
    local.get $5
    local.set $2
    local.get $6
    local.set $0
   else    
    local.get $0
    local.get $3
    i32.add
    i32.const 0
    local.get $1
    local.get $3
    i32.sub
    call $~lib/memory/memory.fill
   end
  else   
   nop
  end
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/ensureCapacity (; 27 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   global.get $~lib/util/runtime/MAX_BYTELENGTH
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 0
    i32.const 864
    i32.const 14
    i32.const 64
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.get $2
   i32.shl
   local.set $4
   local.get $3
   local.get $4
   call $~lib/util/runtime/reallocate
   local.set $5
   local.get $5
   local.get $3
   i32.ne
   if
    local.get $0
    local.tee $6
    local.get $5
    local.tee $7
    local.get $6
    i32.load
    local.tee $8
    i32.ne
    if (result i32)
     nop
     local.get $7
     local.get $6
     call $~lib/collector/itcm/__ref_link
     local.get $7
    else     
     local.get $7
    end
    i32.store
    local.get $0
    local.get $5
    i32.store offset=4
   end
   local.get $0
   local.get $4
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<gc/itcm/trace/Ref | null>#__unchecked_set (; 28 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $2
  local.get $4
  i32.ne
  if
   local.get $3
   local.get $2
   i32.store
   local.get $2
   i32.const 0
   i32.ne
   if
    local.get $2
    local.get $0
    call $~lib/collector/itcm/__ref_link
   end
  end
 )
 (func $~lib/array/Array<gc/itcm/trace/Ref | null>#__set (; 29 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureCapacity
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<gc/itcm/trace/Ref | null>#__unchecked_set
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $gc/itcm/trace/makeGarbage (; 30 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 72
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 0
  call $gc/itcm/trace/Ref#constructor
  local.set $0
  i32.const 536
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 0
  i32.const 1
  call $~lib/array/Array<gc/itcm/trace/Ref | null>#constructor
  local.set $1
  i32.const 816
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/array/Array<gc/itcm/trace/Ref | null>#__set
  i32.const 912
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<gc/itcm/trace/Ref | null>#__set
  i32.const 960
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 0
  call $gc/itcm/trace/Ref#constructor
  drop
 )
 (func $~lib/collector/itcm/step (; 31 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/collector/itcm/state
       local.set $1
       local.get $1
       i32.const 0
       i32.eq
       br_if $case0|0
       local.get $1
       i32.const 1
       i32.eq
       br_if $case1|0
       local.get $1
       i32.const 2
       i32.eq
       br_if $case2|0
       local.get $1
       i32.const 3
       i32.eq
       br_if $case3|0
       br $break|0
      end
      unreachable
     end
     block
      i32.const 1040
      i32.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      call $~lib/builtins/trace
      call $~lib/runtime/__gc_mark_roots
      i32.const 2
      global.set $~lib/collector/itcm/state
      i32.const 1088
      i32.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      call $~lib/builtins/trace
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     global.get $~lib/collector/itcm/iter
     call $~lib/collector/itcm/ManagedObject#get:next
     local.set $0
     local.get $0
     global.get $~lib/collector/itcm/toSpace
     i32.ne
     if
      i32.const 1144
      i32.const 1
      block $~lib/collector/itcm/objToRef|inlined.10 (result i32)
       local.get $0
       local.set $1
       local.get $1
       global.get $~lib/util/runtime/HEADER_SIZE
       i32.add
      end
      f64.convert_i32_u
      f64.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      call $~lib/builtins/trace
      local.get $0
      global.set $~lib/collector/itcm/iter
      local.get $0
      global.get $~lib/collector/itcm/white
      i32.eqz
      call $~lib/collector/itcm/ManagedObject#set:color
      local.get $0
      i32.load
      block $~lib/collector/itcm/objToRef|inlined.11 (result i32)
       local.get $0
       local.set $1
       local.get $1
       global.get $~lib/util/runtime/HEADER_SIZE
       i32.add
      end
      call $~lib/runtime/__gc_mark_members
     else      
      call $~lib/runtime/__gc_mark_roots
      i32.const 1192
      i32.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      call $~lib/builtins/trace
      global.get $~lib/collector/itcm/iter
      call $~lib/collector/itcm/ManagedObject#get:next
      local.set $0
      local.get $0
      global.get $~lib/collector/itcm/toSpace
      i32.eq
      if
       global.get $~lib/collector/itcm/fromSpace
       local.set $1
       global.get $~lib/collector/itcm/toSpace
       global.set $~lib/collector/itcm/fromSpace
       local.get $1
       global.set $~lib/collector/itcm/toSpace
       global.get $~lib/collector/itcm/white
       i32.eqz
       global.set $~lib/collector/itcm/white
       local.get $1
       call $~lib/collector/itcm/ManagedObject#get:next
       global.set $~lib/collector/itcm/iter
       i32.const 3
       global.set $~lib/collector/itcm/state
       i32.const 1256
       i32.const 0
       f64.const 0
       f64.const 0
       f64.const 0
       f64.const 0
       f64.const 0
       call $~lib/builtins/trace
      end
     end
     br $break|0
     unreachable
    end
    unreachable
   end
   block
    global.get $~lib/collector/itcm/iter
    local.set $0
    local.get $0
    global.get $~lib/collector/itcm/toSpace
    i32.ne
    if
     i32.const 1312
     i32.const 1
     block $~lib/collector/itcm/objToRef|inlined.12 (result i32)
      local.get $0
      local.set $1
      local.get $1
      global.get $~lib/util/runtime/HEADER_SIZE
      i32.add
     end
     f64.convert_i32_u
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     local.get $0
     call $~lib/collector/itcm/ManagedObject#get:next
     global.set $~lib/collector/itcm/iter
     local.get $0
     global.get $~lib/memory/HEAP_BASE
     i32.ge_u
     if
      local.get $0
      call $~lib/memory/memory.free
     end
    else     
     i32.const 1368
     i32.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     global.get $~lib/collector/itcm/toSpace
     call $~lib/collector/itcm/ManagedObjectList#clear
     i32.const 1
     global.set $~lib/collector/itcm/state
     i32.const 408
     i32.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
    end
    br $break|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/collector/itcm/__ref_collect (; 32 ;) (type $FUNCSIG$v)
  i32.const 1000
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  call $~lib/collector/itcm/maybeInit
  block $break|0
   loop $continue|0
    global.get $~lib/collector/itcm/state
    i32.const 1
    i32.ne
    if
     call $~lib/collector/itcm/step
     br $continue|0
    end
   end
  end
  block $break|1
   loop $continue|1
    call $~lib/collector/itcm/step
    global.get $~lib/collector/itcm/state
    i32.const 1
    i32.ne
    br_if $continue|1
   end
  end
 )
 (func $~lib/runtime/runtime.collect (; 33 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/__ref_collect
 )
 (func $start:gc/itcm/trace (; 34 ;) (type $FUNCSIG$v)
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
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
  call $gc/itcm/trace/makeGarbage
  call $~lib/runtime/runtime.collect
 )
 (func $gc/itcm/trace/main (; 35 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $start (; 36 ;) (type $FUNCSIG$v)
  call $start:gc/itcm/trace
 )
 (func $~lib/collector/itcm/__ref_mark (; 37 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1432
  i32.const 1
  local.get $0
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.4 (result i32)
   local.get $0
   local.set $1
   local.get $1
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $2
  local.get $2
  call $~lib/collector/itcm/ManagedObject#get:color
  global.get $~lib/collector/itcm/white
  i32.eq
  if
   local.get $2
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/runtime/__gc_mark_roots (; 38 ;) (type $FUNCSIG$v)
  (local $0 i32)
  nop
 )
 (func $~lib/array/Array<gc/itcm/trace/Ref | null>#__traverse (; 39 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $2
  block $break|0
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_u
    if
     block
      local.get $1
      i32.load
      local.set $3
      local.get $3
      if
       local.get $3
       call $~lib/collector/itcm/__ref_mark
       i32.const 17
       local.get $3
       call $~lib/runtime/__gc_mark_members
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/runtime/__gc_mark_members (; 40 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $invalid
   block $~lib/array/Array<gc/itcm/trace/Ref | null>
    block $gc/itcm/trace/Ref
     block $~lib/string/String
      block $~lib/arraybuffer/ArrayBuffer
       block $~lib/arraybuffer/ArrayBufferView
        block $~lib/number/F64
         block $~lib/number/F32
          block $~lib/number/Bool
           block $~lib/number/Usize
            block $~lib/number/U64
             block $~lib/number/U32
              block $~lib/number/U16
               block $~lib/number/U8
                block $~lib/number/Isize
                 block $~lib/number/I64
                  block $~lib/number/I32
                   block $~lib/number/I16
                    block $~lib/number/I8
                     local.get $0
                     br_table $invalid $~lib/number/I8 $~lib/number/I16 $~lib/number/I32 $~lib/number/I64 $~lib/number/Isize $~lib/number/U8 $~lib/number/U16 $~lib/number/U32 $~lib/number/U64 $~lib/number/Usize $~lib/number/Bool $~lib/number/F32 $~lib/number/F64 $~lib/arraybuffer/ArrayBufferView $~lib/arraybuffer/ArrayBuffer $~lib/string/String $gc/itcm/trace/Ref $~lib/array/Array<gc/itcm/trace/Ref | null> $invalid
                    end
                    return
                   end
                   return
                  end
                  return
                 end
                 return
                end
                return
               end
               return
              end
              return
             end
             return
            end
            return
           end
           return
          end
          return
         end
         return
        end
        return
       end
       local.get $1
       i32.load
       local.tee $2
       if
        local.get $2
        call $~lib/collector/itcm/__ref_mark
        i32.const 15
        local.get $2
        call $~lib/runtime/__gc_mark_members
       end
       return
      end
      return
     end
     return
    end
    local.get $1
    i32.load
    local.tee $2
    if
     local.get $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 17
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    return
   end
   local.get $1
   call $~lib/array/Array<gc/itcm/trace/Ref | null>#__traverse
   return
  end
  unreachable
 )
 (func $null (; 41 ;) (type $FUNCSIG$v)
 )
)
