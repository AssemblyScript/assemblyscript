(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00 ")
 (data (i32.const 24) "g\00c\00/\00i\00t\00c\00m\00/\00t\00r\00a\00c\00e\00.\00t\00s")
 (data (i32.const 56) "\10\00\00\00\"")
 (data (i32.const 72) "#\00 \00r\00e\00f\00 \00=\00 \00n\00e\00w\00 \00R\00e\00f\00(\00)")
 (data (i32.const 112) "\10\00\00\00(")
 (data (i32.const 128) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 168) "\10\00\00\00\1a")
 (data (i32.const 184) "i\00t\00c\00m\00.\00r\00e\00g\00i\00s\00t\00e\00r")
 (data (i32.const 216) "\10\00\00\00\12")
 (data (i32.const 232) "i\00t\00c\00m\00~\00i\00n\00i\00t")
 (data (i32.const 256) "\10\00\00\00 ")
 (data (i32.const 272) " \00 \00 \00 \00 \00f\00r\00o\00m\00S\00p\00a\00c\00e\00 \00=")
 (data (i32.const 304) "\10\00\00\00\14")
 (data (i32.const 320) " \00 \00 \00 \00 \00c\00l\00e\00a\00r")
 (data (i32.const 344) "\10\00\00\00\1c")
 (data (i32.const 360) " \00 \00 \00 \00 \00t\00o\00S\00p\00a\00c\00e\00 \00=")
 (data (i32.const 392) "\10\00\00\00\"")
 (data (i32.const 408) "i\00t\00c\00m\00~\00s\00t\00a\00t\00e\00 \00=\00 \00I\00D\00L\00E")
 (data (i32.const 448) "\10\00\00\006")
 (data (i32.const 464) " \00 \00 \00 \00 \00p\00u\00s\00h\00 \00[\00p\00r\00e\00v\00,\00 \00r\00e\00f\00,\00 \00n\00e\00x\00t\00]")
 (data (i32.const 520) "\10\00\00\00(")
 (data (i32.const 536) "#\00 \00a\00r\00r\00 \00=\00 \00n\00e\00w\00 \00A\00r\00r\00a\00y\00(\001\00)")
 (data (i32.const 576) "\10\00\00\00&")
 (data (i32.const 592) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 632) "\10\00\00\00\12")
 (data (i32.const 648) "i\00t\00c\00m\00.\00l\00i\00n\00k")
 (data (i32.const 672) "\10\00\00\00\1a")
 (data (i32.const 688) " \00 \00 \00 \00 \00m\00a\00k\00e\00G\00r\00a\00y")
 (data (i32.const 720) "\10\00\00\00:")
 (data (i32.const 736) " \00 \00 \00 \00 \00u\00n\00l\00i\00n\00k\00 \00[\00p\00r\00e\00f\00,\00 \00r\00e\00f\00,\00 \00n\00e\00x\00t\00]")
 (data (i32.const 800) "\10\00\00\00\1c")
 (data (i32.const 816) "#\00 \00a\00r\00r\00[\000\00]\00 \00=\00 \00r\00e\00f")
 (data (i32.const 848) "\10\00\00\00\1a")
 (data (i32.const 864) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 896) "\10\00\00\00\1e")
 (data (i32.const 912) "#\00 \00a\00r\00r\00[\000\00]\00 \00=\00 \00n\00u\00l\00l")
 (data (i32.const 944) "\10\00\00\00\16")
 (data (i32.const 960) "#\00 \00n\00e\00w\00 \00R\00e\00f\00(\00)")
 (data (i32.const 984) "\10\00\00\00\18")
 (data (i32.const 1000) "i\00t\00c\00m\00.\00c\00o\00l\00l\00e\00c\00t")
 (data (i32.const 1024) "\10\00\00\00\1c")
 (data (i32.const 1040) "i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00I\00D\00L\00E")
 (data (i32.const 1072) "\10\00\00\00\"")
 (data (i32.const 1088) "i\00t\00c\00m\00~\00s\00t\00a\00t\00e\00 \00=\00 \00M\00A\00R\00K")
 (data (i32.const 1128) "\10\00\00\00\1c")
 (data (i32.const 1144) "i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00M\00A\00R\00K")
 (data (i32.const 1176) "\10\00\00\00*")
 (data (i32.const 1192) "i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00M\00A\00R\00K\00 \00f\00i\00n\00i\00s\00h")
 (data (i32.const 1240) "\10\00\00\00$")
 (data (i32.const 1256) "i\00t\00c\00m\00~\00s\00t\00a\00t\00e\00 \00=\00 \00S\00W\00E\00E\00P")
 (data (i32.const 1296) "\10\00\00\00(")
 (data (i32.const 1312) "i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00S\00W\00E\00E\00P\00 \00f\00r\00e\00e")
 (data (i32.const 1352) "\10\00\00\00,")
 (data (i32.const 1368) "i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00S\00W\00E\00E\00P\00 \00f\00i\00n\00i\00s\00h")
 (data (i32.const 1416) "\10\00\00\00\12")
 (data (i32.const 1432) "i\00t\00c\00m\00.\00m\00a\00r\00k")
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "main" (func $gc/itcm/trace/main))
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
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 320
  i32.const 1
  local.get $0
  i32.const 16
  i32.add
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
 (func $~lib/collector/itcm/maybeInit (; 5 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/collector/itcm/state
  i32.eqz
  if
   i32.const 232
   i32.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/builtins/trace
   i32.const 16
   call $~lib/allocator/arena/__mem_allocate
   global.set $~lib/collector/itcm/fromSpace
   i32.const 272
   i32.const 1
   global.get $~lib/collector/itcm/fromSpace
   i32.const 16
   i32.add
   f64.convert_i32_u
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/builtins/trace
   global.get $~lib/collector/itcm/fromSpace
   local.tee $0
   i32.const -1
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   call $~lib/collector/itcm/ManagedObjectList#clear
   i32.const 16
   call $~lib/allocator/arena/__mem_allocate
   global.set $~lib/collector/itcm/toSpace
   i32.const 360
   i32.const 1
   global.get $~lib/collector/itcm/toSpace
   i32.const 16
   i32.add
   f64.convert_i32_u
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/builtins/trace
   global.get $~lib/collector/itcm/toSpace
   local.tee $0
   i32.const -1
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
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
 (func $~lib/collector/itcm/ManagedObjectList#push (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 464
  i32.const 3
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 16
  i32.add
  f64.convert_i32_u
  local.get $1
  i32.const 16
  i32.add
  f64.convert_i32_u
  local.get $0
  i32.const 16
  i32.add
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store offset=8
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $2
  i32.load offset=8
  i32.const 3
  i32.and
  local.get $1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/collector/itcm/__ref_register (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  global.get $~lib/collector/itcm/white
  local.get $0
  i32.load offset=8
  i32.const -4
  i32.and
  i32.or
  i32.store offset=8
  global.get $~lib/collector/itcm/fromSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
 )
 (func $~lib/util/runtime/register (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1452
  i32.le_u
  if
   i32.const 0
   i32.const 128
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
 (func $gc/itcm/trace/Ref#constructor (; 9 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 4
  call $~lib/util/runtime/allocate
  i32.const 17
  call $~lib/util/runtime/register
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 10 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 1
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 3
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $1
   i32.sub
   local.set $2
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $2
   i32.const -4
   i32.and
   local.tee $1
   local.get $0
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 4
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 12
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 16
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 20
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   local.get $0
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i32.const 8
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 16
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 24
     i32.add
     i64.const 0
     i64.store
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $continue|0
    end
   end
  end
 )
 (func $~lib/collector/itcm/ManagedObject#unlink (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  i32.const 736
  i32.const 3
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 16
  i32.add
  f64.convert_i32_u
  local.get $0
  i32.const 16
  i32.add
  f64.convert_i32_u
  local.get $0
  i32.load offset=8
  i32.const -4
  i32.and
  local.tee $0
  i32.const 16
  i32.add
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 688
  i32.const 1
  local.get $0
  i32.const 16
  i32.add
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/collector/itcm/iter
  local.get $0
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
  i32.const -4
  i32.and
  i32.const 2
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/__ref_link (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
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
  global.get $~lib/collector/itcm/white
  i32.eqz
  local.get $1
  i32.const 16
  i32.sub
  local.tee $2
  i32.load offset=8
  i32.const 3
  i32.and
  i32.eq
  local.tee $1
  if (result i32)
   global.get $~lib/collector/itcm/white
   local.get $0
   i32.const 16
   i32.sub
   i32.load offset=8
   i32.const 3
   i32.and
   i32.eq
  else   
   local.get $1
  end
  if
   local.get $2
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  call $~lib/util/runtime/allocate
  local.tee $1
  i32.const 4
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 15
  call $~lib/util/runtime/register
  local.set $1
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
  i32.load
  local.get $1
  i32.ne
  if
   local.get $1
   local.get $0
   call $~lib/collector/itcm/__ref_link
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 4
  i32.store offset=8
  local.get $0
 )
 (func $~lib/memory/memory.copy (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
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
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.tee $3
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $3
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
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
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $2
     if
      local.get $0
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $continue|2
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
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $2
       i32.const 8
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $2
     if
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      local.get $0
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
 )
 (func $~lib/util/runtime/reallocate (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load offset=4
  local.tee $1
  i32.const 4
  i32.lt_u
  if
   i32.const 1
   i32.const 32
   local.get $1
   i32.const 15
   i32.add
   i32.clz
   i32.sub
   i32.shl
   i32.const 0
   local.get $0
   i32.const 1452
   i32.gt_u
   select
   i32.const 32
   i32.lt_u
   if
    i32.const 32
    call $~lib/allocator/arena/__mem_allocate
    local.tee $3
    local.get $2
    i32.load
    i32.store
    local.get $3
    i32.const 0
    i32.store offset=8
    local.get $3
    i32.const 0
    i32.store offset=12
    local.get $3
    i32.const 16
    i32.add
    local.tee $4
    local.get $0
    local.get $1
    call $~lib/memory/memory.copy
    local.get $1
    local.get $4
    i32.add
    i32.const 4
    local.get $1
    i32.sub
    call $~lib/memory/memory.fill
    local.get $2
    i32.load
    i32.const -1520547049
    i32.eq
    if
     local.get $0
     i32.const 1452
     i32.le_u
     if
      i32.const 0
      i32.const 128
      i32.const 89
      i32.const 8
      call $~lib/builtins/abort
      unreachable
     end
    else     
     local.get $0
     call $~lib/collector/itcm/__ref_register
    end
    local.get $3
    local.set $2
    local.get $4
    local.set $0
   else    
    local.get $0
    local.get $1
    i32.add
    i32.const 4
    local.get $1
    i32.sub
    call $~lib/memory/memory.fill
   end
  end
  local.get $2
  i32.const 4
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/ensureCapacity (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $0
   i32.load
   local.tee $2
   call $~lib/util/runtime/reallocate
   local.set $1
   local.get $1
   local.get $2
   i32.ne
   if
    local.get $0
    i32.load
    local.get $1
    i32.ne
    if
     local.get $1
     local.get $0
     call $~lib/collector/itcm/__ref_link
    end
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   i32.const 4
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<gc/itcm/trace/Ref | null>#__unchecked_set (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.load
  local.get $1
  i32.ne
  if
   local.get $2
   local.get $1
   i32.store
   local.get $1
   if
    local.get $1
    local.get $0
    call $~lib/collector/itcm/__ref_link
   end
  end
 )
 (func $~lib/array/Array<gc/itcm/trace/Ref | null>#__set (; 19 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  call $~lib/array/ensureCapacity
  local.get $0
  local.get $1
  call $~lib/array/Array<gc/itcm/trace/Ref | null>#__unchecked_set
  i32.const 0
  local.get $2
  i32.ge_s
  if
   local.get $0
   i32.const 1
   i32.store offset=12
  end
 )
 (func $gc/itcm/trace/makeGarbage (; 20 ;) (type $FUNCSIG$v)
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
  call $gc/itcm/trace/Ref#constructor
  local.set $1
  i32.const 536
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 16
  call $~lib/util/runtime/allocate
  i32.const 18
  call $~lib/util/runtime/register
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 1
  i32.store offset=12
  i32.const 816
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $0
  local.get $1
  call $~lib/array/Array<gc/itcm/trace/Ref | null>#__set
  i32.const 912
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $0
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
  call $gc/itcm/trace/Ref#constructor
  drop
 )
 (func $~lib/collector/itcm/step (; 21 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      global.get $~lib/collector/itcm/state
      local.tee $0
      if
       local.get $0
       i32.const 1
       i32.sub
       br_table $case1|0 $case2|0 $case3|0 $break|0
      end
      unreachable
     end
     i32.const 1040
     i32.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
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
    end
    global.get $~lib/collector/itcm/iter
    i32.load offset=8
    i32.const -4
    i32.and
    local.tee $0
    global.get $~lib/collector/itcm/toSpace
    i32.ne
    if
     i32.const 1144
     i32.const 1
     local.get $0
     i32.const 16
     i32.add
     local.tee $1
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
     local.get $0
     i32.load offset=8
     i32.const -4
     i32.and
     i32.or
     i32.store offset=8
     local.get $0
     i32.load
     local.get $1
     call $~lib/runtime/__gc_mark_members
    else     
     i32.const 1192
     i32.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     global.get $~lib/collector/itcm/toSpace
     global.get $~lib/collector/itcm/iter
     i32.load offset=8
     i32.const -4
     i32.and
     i32.eq
     if
      global.get $~lib/collector/itcm/fromSpace
      local.set $0
      global.get $~lib/collector/itcm/toSpace
      global.set $~lib/collector/itcm/fromSpace
      local.get $0
      global.set $~lib/collector/itcm/toSpace
      global.get $~lib/collector/itcm/white
      i32.eqz
      global.set $~lib/collector/itcm/white
      local.get $0
      i32.load offset=8
      i32.const -4
      i32.and
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
   end
   global.get $~lib/collector/itcm/iter
   local.tee $0
   global.get $~lib/collector/itcm/toSpace
   i32.ne
   if
    i32.const 1312
    i32.const 1
    local.get $0
    i32.const 16
    i32.add
    f64.convert_i32_u
    f64.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    call $~lib/builtins/trace
    local.get $0
    i32.load offset=8
    i32.const -4
    i32.and
    global.set $~lib/collector/itcm/iter
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
  end
 )
 (func $~lib/collector/itcm/__ref_collect (; 22 ;) (type $FUNCSIG$v)
  i32.const 1000
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  call $~lib/collector/itcm/maybeInit
  loop $continue|0
   global.get $~lib/collector/itcm/state
   i32.const 1
   i32.ne
   if
    call $~lib/collector/itcm/step
    br $continue|0
   end
  end
  loop $continue|1
   call $~lib/collector/itcm/step
   global.get $~lib/collector/itcm/state
   i32.const 1
   i32.ne
   br_if $continue|1
  end
 )
 (func $gc/itcm/trace/main (; 23 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   i32.const 1456
   global.set $~lib/allocator/arena/startOffset
   global.get $~lib/allocator/arena/startOffset
   global.set $~lib/allocator/arena/offset
   call $gc/itcm/trace/makeGarbage
   call $~lib/collector/itcm/__ref_collect
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $~lib/collector/itcm/__ref_mark (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  global.get $~lib/collector/itcm/white
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  i32.load offset=8
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/array/Array<gc/itcm/trace/Ref | null>#__traverse (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $0
    if
     local.get $0
     call $~lib/collector/itcm/__ref_mark
     i32.const 17
     local.get $0
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/runtime/__gc_mark_members (; 26 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
                     i32.const 1
                     i32.sub
                     br_table $~lib/number/I8 $~lib/number/I16 $~lib/number/I32 $~lib/number/I64 $~lib/number/Isize $~lib/number/U8 $~lib/number/U16 $~lib/number/U32 $~lib/number/U64 $~lib/number/Usize $~lib/number/Bool $~lib/number/F32 $~lib/number/F64 $~lib/arraybuffer/ArrayBufferView $~lib/arraybuffer/ArrayBuffer $~lib/string/String $gc/itcm/trace/Ref $~lib/array/Array<gc/itcm/trace/Ref | null> $invalid
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
       local.tee $0
       if
        local.get $0
        call $~lib/collector/itcm/__ref_mark
        i32.const 15
        local.get $0
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
    local.tee $0
    if
     local.get $0
     call $~lib/collector/itcm/__ref_mark
     i32.const 17
     local.get $0
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
 (func $null (; 27 ;) (type $FUNCSIG$v)
  nop
 )
)
