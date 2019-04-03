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
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/env/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00 ")
 (data (i32.const 24) "g\00c\00/\00i\00t\00c\00m\00/\00t\00r\00a\00c\00e\00.\00t\00s")
 (data (i32.const 56) "\01\00\00\00\"")
 (data (i32.const 72) "#\00 \00r\00e\00f\00 \00=\00 \00n\00e\00w\00 \00R\00e\00f\00(\00)")
 (data (i32.const 112) "\01\00\00\00\1e")
 (data (i32.const 128) "~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 160) "\01\00\00\00\1a")
 (data (i32.const 176) "i\00t\00c\00m\00.\00r\00e\00g\00i\00s\00t\00e\00r")
 (data (i32.const 208) "\01\00\00\00\12")
 (data (i32.const 224) "i\00t\00c\00m\00~\00i\00n\00i\00t")
 (data (i32.const 248) "\01\00\00\00 ")
 (data (i32.const 264) " \00 \00 \00 \00 \00f\00r\00o\00m\00S\00p\00a\00c\00e\00 \00=")
 (data (i32.const 296) "\01\00\00\00\14")
 (data (i32.const 312) " \00 \00 \00 \00 \00c\00l\00e\00a\00r")
 (data (i32.const 336) "\01\00\00\00\1c")
 (data (i32.const 352) " \00 \00 \00 \00 \00t\00o\00S\00p\00a\00c\00e\00 \00=")
 (data (i32.const 384) "\01\00\00\00\"")
 (data (i32.const 400) "i\00t\00c\00m\00~\00s\00t\00a\00t\00e\00 \00=\00 \00I\00D\00L\00E")
 (data (i32.const 440) "\01\00\00\006")
 (data (i32.const 456) " \00 \00 \00 \00 \00p\00u\00s\00h\00 \00[\00p\00r\00e\00v\00,\00 \00r\00e\00f\00,\00 \00n\00e\00x\00t\00]")
 (data (i32.const 512) "\01\00\00\00(")
 (data (i32.const 528) "#\00 \00a\00r\00r\00 \00=\00 \00n\00e\00w\00 \00A\00r\00r\00a\00y\00(\001\00)")
 (data (i32.const 568) "\01\00\00\00&")
 (data (i32.const 584) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 624) "\01\00\00\00\12")
 (data (i32.const 640) "i\00t\00c\00m\00.\00l\00i\00n\00k")
 (data (i32.const 664) "\01\00\00\00\1a")
 (data (i32.const 680) " \00 \00 \00 \00 \00m\00a\00k\00e\00G\00r\00a\00y")
 (data (i32.const 712) "\01\00\00\00:")
 (data (i32.const 728) " \00 \00 \00 \00 \00u\00n\00l\00i\00n\00k\00 \00[\00p\00r\00e\00f\00,\00 \00r\00e\00f\00,\00 \00n\00e\00x\00t\00]")
 (data (i32.const 792) "\01\00\00\00\1c")
 (data (i32.const 808) "#\00 \00a\00r\00r\00[\000\00]\00 \00=\00 \00r\00e\00f")
 (data (i32.const 840) "\01\00\00\00\1a")
 (data (i32.const 856) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 888) "\01\00\00\00\1e")
 (data (i32.const 904) "#\00 \00a\00r\00r\00[\000\00]\00 \00=\00 \00n\00u\00l\00l")
 (data (i32.const 936) "\01\00\00\00\16")
 (data (i32.const 952) "#\00 \00n\00e\00w\00 \00R\00e\00f\00(\00)")
 (data (i32.const 976) "\01\00\00\00\18")
 (data (i32.const 992) "i\00t\00c\00m\00.\00c\00o\00l\00l\00e\00c\00t")
 (data (i32.const 1016) "\01\00\00\00\1c")
 (data (i32.const 1032) "i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00I\00D\00L\00E")
 (data (i32.const 1064) "\01\00\00\00\"")
 (data (i32.const 1080) "i\00t\00c\00m\00~\00s\00t\00a\00t\00e\00 \00=\00 \00M\00A\00R\00K")
 (data (i32.const 1120) "\01\00\00\00\1c")
 (data (i32.const 1136) "i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00M\00A\00R\00K")
 (data (i32.const 1168) "\01\00\00\00*")
 (data (i32.const 1184) "i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00M\00A\00R\00K\00 \00f\00i\00n\00i\00s\00h")
 (data (i32.const 1232) "\01\00\00\00$")
 (data (i32.const 1248) "i\00t\00c\00m\00~\00s\00t\00a\00t\00e\00 \00=\00 \00S\00W\00E\00E\00P")
 (data (i32.const 1288) "\01\00\00\00(")
 (data (i32.const 1304) "i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00S\00W\00E\00E\00P\00 \00f\00r\00e\00e")
 (data (i32.const 1344) "\01\00\00\00,")
 (data (i32.const 1360) "i\00t\00c\00m\00~\00s\00t\00e\00p\00/\00S\00W\00E\00E\00P\00 \00f\00i\00n\00i\00s\00h")
 (data (i32.const 1408) "\01\00\00\00\12")
 (data (i32.const 1424) "i\00t\00c\00m\00.\00m\00a\00r\00k")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $gc/itcm/trace/main))
 (export ".capabilities" (global $~lib/capabilities))
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
 (func $~lib/runtime/runtime.allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 312
  i32.const 1
  local.get $0
  i32.const 16
  i32.add
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
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
   i32.const 224
   i32.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/env/trace
   i32.const 16
   call $~lib/allocator/arena/__mem_allocate
   global.set $~lib/collector/itcm/fromSpace
   i32.const 264
   i32.const 1
   global.get $~lib/collector/itcm/fromSpace
   i32.const 16
   i32.add
   f64.convert_i32_u
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/env/trace
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
   i32.const 352
   i32.const 1
   global.get $~lib/collector/itcm/toSpace
   i32.const 16
   i32.add
   f64.convert_i32_u
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/env/trace
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
   i32.const 400
   i32.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   f64.const 0
   call $~lib/env/trace
  end
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 456
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
  call $~lib/env/trace
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
  i32.const 176
  i32.const 1
  local.get $0
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
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
 (func $~lib/runtime/runtime.register (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1444
  i32.le_u
  if
   i32.const 0
   i32.const 128
   i32.const 117
   i32.const 6
   call $~lib/env/abort
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
   i32.const 119
   i32.const 6
   call $~lib/env/abort
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
  call $~lib/runtime/runtime.allocate
  i32.const 2
  call $~lib/runtime/runtime.register
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
  i32.const 728
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
  call $~lib/env/trace
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
  i32.const 680
  i32.const 1
  local.get $0
  i32.const 16
  i32.add
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
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
  i32.const 640
  i32.const 2
  local.get $0
  f64.convert_i32_u
  local.get $1
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
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
  call $~lib/runtime/runtime.allocate
  local.tee $1
  i32.const 4
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 3
  call $~lib/runtime/runtime.register
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/runtime/runtime.allocate
   i32.const 4
   call $~lib/runtime/runtime.register
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
 (func $~lib/util/memory/memcpy (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $continue|0
   local.get $1
   i32.const 3
   i32.and
   local.get $2
   local.get $2
   select
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
    br $continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $continue|1
    local.get $2
    i32.const 16
    i32.ge_u
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
     br $continue|1
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
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
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
      local.get $0
      i32.const 3
      i32.and
      local.tee $3
      i32.const 1
      i32.ne
      if
       local.get $3
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 4
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $0
        i32.const 12
        i32.add
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
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
        br $continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     i32.const 1
     i32.add
     local.tee $3
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $4
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
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
       br $continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
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
    loop $continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 4
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $0
      i32.const 12
      i32.add
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
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
      br $continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 16 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $2
   i32.add
   local.get $0
   i32.le_u
   local.tee $3
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.add
    local.get $1
    i32.le_u
    local.set $3
   end
   local.get $3
   if
    local.get $0
    local.get $1
    local.get $2
    call $~lib/util/memory/memcpy
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
 (func $~lib/runtime/runtime.reallocate (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 1444
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
     i32.const 1444
     i32.le_u
     if
      i32.const 0
      i32.const 128
      i32.const 77
      i32.const 10
      call $~lib/env/abort
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
 (func $~lib/array/ensureCapacity (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   call $~lib/runtime/runtime.reallocate
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
 (func $~lib/array/Array<gc/itcm/trace/Ref | null>#__unchecked_set (; 19 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<gc/itcm/trace/Ref | null>#__set (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $gc/itcm/trace/makeGarbage (; 21 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 72
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  call $gc/itcm/trace/Ref#constructor
  local.set $1
  i32.const 528
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  i32.const 16
  call $~lib/runtime/runtime.allocate
  i32.const 5
  call $~lib/runtime/runtime.register
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 1
  i32.store offset=12
  i32.const 808
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  local.get $0
  local.get $1
  call $~lib/array/Array<gc/itcm/trace/Ref | null>#__set
  i32.const 904
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  local.get $0
  i32.const 0
  call $~lib/array/Array<gc/itcm/trace/Ref | null>#__set
  i32.const 952
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  call $gc/itcm/trace/Ref#constructor
  drop
 )
 (func $~lib/collector/itcm/step (; 22 ;) (type $FUNCSIG$v)
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
     i32.const 1032
     i32.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     call $~lib/env/trace
     i32.const 2
     global.set $~lib/collector/itcm/state
     i32.const 1080
     i32.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     call $~lib/env/trace
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
     i32.const 1136
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
     call $~lib/env/trace
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
     call $~lib/gc/__gc_mark_members
    else     
     i32.const 1184
     i32.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     f64.const 0
     call $~lib/env/trace
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
      i32.const 1248
      i32.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      f64.const 0
      call $~lib/env/trace
     end
    end
    br $break|0
   end
   global.get $~lib/collector/itcm/iter
   local.tee $0
   global.get $~lib/collector/itcm/toSpace
   i32.ne
   if
    i32.const 1304
    i32.const 1
    local.get $0
    i32.const 16
    i32.add
    f64.convert_i32_u
    f64.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    call $~lib/env/trace
    local.get $0
    i32.load offset=8
    i32.const -4
    i32.and
    global.set $~lib/collector/itcm/iter
   else    
    i32.const 1360
    i32.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    call $~lib/env/trace
    global.get $~lib/collector/itcm/toSpace
    call $~lib/collector/itcm/ManagedObjectList#clear
    i32.const 1
    global.set $~lib/collector/itcm/state
    i32.const 400
    i32.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    call $~lib/env/trace
   end
  end
 )
 (func $~lib/collector/itcm/__ref_collect (; 23 ;) (type $FUNCSIG$v)
  i32.const 992
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
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
 (func $gc/itcm/trace/main (; 24 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   i32.const 1448
   global.set $~lib/allocator/arena/startOffset
   global.get $~lib/allocator/arena/startOffset
   global.set $~lib/allocator/arena/offset
   call $gc/itcm/trace/makeGarbage
   call $~lib/collector/itcm/__ref_collect
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $~lib/collector/itcm/__ref_mark (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 1424
  i32.const 1
  local.get $0
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
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
 (func $~lib/array/Array<gc/itcm/trace/Ref | null>#__traverse (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
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
     i32.const 2
     local.get $0
     call $~lib/gc/__gc_mark_members
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/gc/__gc_mark_members (; 27 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/array/Array<gc/itcm/trace/Ref | null>
    block $~lib/arraybuffer/ArrayBufferView
     block $~lib/arraybuffer/ArrayBuffer
      block $gc/itcm/trace/Ref
       block $~lib/string/String
        local.get $0
        i32.const 1
        i32.sub
        br_table $~lib/string/String $gc/itcm/trace/Ref $~lib/arraybuffer/ArrayBuffer $~lib/arraybuffer/ArrayBufferView $~lib/array/Array<gc/itcm/trace/Ref | null> $invalid
       end
       return
      end
      local.get $1
      i32.load
      local.tee $0
      if
       local.get $0
       call $~lib/collector/itcm/__ref_mark
       i32.const 2
       local.get $0
       call $~lib/gc/__gc_mark_members
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
     i32.const 3
     local.get $0
     call $~lib/gc/__gc_mark_members
    end
    return
   end
   local.get $1
   call $~lib/array/Array<gc/itcm/trace/Ref | null>#__traverse
   return
  end
  unreachable
 )
 (func $null (; 28 ;) (type $FUNCSIG$v)
  nop
 )
)
