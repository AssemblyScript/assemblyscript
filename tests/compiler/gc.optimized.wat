(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/env/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00\1e")
 (data (i32.const 24) "~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 56) "\02\00\00\00\16")
 (data (i32.const 72) "g\00c\00.\00r\00e\00g\00i\00s\00t\00e\00r")
 (data (i32.const 96) "\02\00\00\00\n")
 (data (i32.const 112) "g\00c\00.\00t\00s")
 (data (i32.const 128) "\02\00\00\00&")
 (data (i32.const 144) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 184) "\02\00\00\00\0e")
 (data (i32.const 200) "g\00c\00.\00l\00i\00n\00k")
 (data (i32.const 216) "\02\00\00\00\12")
 (data (i32.const 232) "g\00c\00.\00u\00n\00l\00i\00n\00k")
 (data (i32.const 256) "\02\00\00\00\14")
 (data (i32.const 272) "g\00c\00.\00c\00o\00l\00l\00e\00c\00t")
 (table $0 6 funcref)
 (elem (i32.const 0) $null $gc/Ref~iterate $gc/Ref~iterate $~lib/set/Set<usize>~iterate $~lib/set/Set<usize>~iterate $gc/Ref~iterate)
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
 (global $~lib/gc/gc.implemented i32 (i32.const 1))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/gc/GC_ROOT (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $gc/main))
 (export "gc.implemented" (global $~lib/gc/gc.implemented))
 (export "gc.collect" (func $~lib/gc/gc.collect))
 (export "gc.retain" (func $~lib/gc/gc.retain))
 (export "gc.release" (func $~lib/gc/gc.release))
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
 (func $~lib/runtime/allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $gc/Ref~iterate (; 4 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $gc/_dummy/__ref_register (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 72
  i32.const 1
  local.get $0
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  global.get $gc/_dummy/register_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/register_count
  local.get $0
  global.set $gc/_dummy/register_ref
 )
 (func $~lib/runtime/register (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 292
  i32.le_u
  if
   i32.const 0
   i32.const 24
   i32.const 153
   i32.const 4
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
   i32.const 24
   i32.const 155
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $gc/_dummy/__ref_register
  local.get $0
 )
 (func $~lib/set/Set<usize>~iterate (; 7 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
  local.get $0
  i32.load offset=8
  local.set $0
  i32.const 1
  global.set $~lib/argc
  local.get $0
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/memory/memory.fill (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 0
   i32.const 144
   i32.const 25
   i32.const 43
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/runtime/allocate
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 5
  call $~lib/runtime/register
 )
 (func $gc/_dummy/__ref_link (; 10 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 200
  i32.const 2
  local.get $0
  f64.convert_i32_u
  local.get $1
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  global.get $gc/_dummy/link_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/link_count
  local.get $0
  global.set $gc/_dummy/link_ref
  local.get $0
  global.set $gc/_dummy/link_parentRef
 )
 (func $gc/_dummy/__ref_unlink (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 232
  i32.const 2
  local.get $0
  f64.convert_i32_u
  local.get $1
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  global.get $gc/_dummy/unlink_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/unlink_count
  local.get $0
  global.set $gc/_dummy/unlink_ref
  local.get $1
  global.set $gc/_dummy/unlink_parentRef
 )
 (func $~lib/set/Set<usize>#clear (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $2
  local.set $1
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $3
   if
    local.get $3
    local.get $2
    call $gc/_dummy/__ref_unlink
   end
   local.get $0
   local.get $2
   call $gc/_dummy/__ref_link
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 3
  i32.store offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  local.get $1
  local.tee $2
  i32.load offset=8
  local.tee $3
  i32.ne
  if
   local.get $3
   if
    local.get $3
    local.get $2
    call $gc/_dummy/__ref_unlink
   end
   local.get $0
   local.get $2
   call $gc/_dummy/__ref_link
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<usize>#constructor (; 13 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 24
  call $~lib/runtime/allocate
  i32.const 3
  call $~lib/runtime/register
  local.tee $0
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
  call $~lib/set/Set<usize>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash32 (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/set/Set<usize>#find (; 15 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  loop $continue|0
   local.get $2
   if
    local.get $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    local.tee $0
    if
     local.get $2
     i32.load
     local.get $1
     i32.eq
     local.set $0
    end
    local.get $0
    if
     local.get $2
     return
    end
    local.get $2
    i32.load offset=4
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<usize>#has (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/set/Set<usize>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<usize>#rehash (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $6
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $5
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load
     i32.store
     local.get $3
     local.get $2
     i32.load
     call $~lib/util/hash/hash32
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.tee $8
     i32.load
     i32.store offset=4
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.tee $3
  local.set $2
  local.get $4
  local.tee $0
  local.get $2
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $4
   if
    local.get $4
    local.get $3
    call $gc/_dummy/__ref_unlink
   end
   local.get $0
   local.get $3
   call $gc/_dummy/__ref_link
  end
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $5
  local.tee $0
  local.get $2
  local.tee $1
  i32.load offset=8
  local.tee $3
  i32.ne
  if
   local.get $3
   if
    local.get $3
    local.get $2
    call $gc/_dummy/__ref_unlink
   end
   local.get $0
   local.get $2
   call $gc/_dummy/__ref_link
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $6
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<usize>#add (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  local.tee $3
  call $~lib/set/Set<usize>#find
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
    f64.const 0.75
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
    call $~lib/set/Set<usize>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 3
   i32.shl
   local.get $2
   i32.add
   local.tee $2
   local.get $1
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $3
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=4
   local.get $0
   local.get $2
   i32.store
  end
 )
 (func $~lib/gc/gc.retain (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/gc/GC_ROOT
  local.tee $1
  local.get $0
  call $~lib/set/Set<usize>#has
  i32.eqz
  if
   local.get $1
   local.get $0
   call $~lib/set/Set<usize>#add
   local.get $0
   local.get $1
   call $gc/_dummy/__ref_link
  end
 )
 (func $~lib/set/Set<usize>#delete (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/set/Set<usize>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
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
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  local.tee $1
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $1
  end
  if
   local.get $0
   local.get $2
   call $~lib/set/Set<usize>#rehash
  end
 )
 (func $~lib/gc/gc.release (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/gc/GC_ROOT
  local.tee $1
  local.get $0
  call $~lib/set/Set<usize>#has
  if
   local.get $1
   local.get $0
   call $~lib/set/Set<usize>#delete
   local.get $0
   local.get $1
   call $gc/_dummy/__ref_unlink
  end
 )
 (func $~lib/gc/gc.collect (; 22 ;) (type $FUNCSIG$v)
  i32.const 272
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  global.get $gc/_dummy/collect_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/collect_count
 )
 (func $gc/main (; 23 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/started
  i32.eqz
  if
   i32.const 296
   global.set $~lib/allocator/arena/startOffset
   global.get $~lib/allocator/arena/startOffset
   global.set $~lib/allocator/arena/offset
   call $~lib/set/Set<usize>#constructor
   global.set $~lib/gc/GC_ROOT
   i32.const 1
   global.set $~lib/started
  end
  i32.const 0
  call $~lib/runtime/allocate
  i32.const 1
  call $~lib/runtime/register
  local.set $2
  global.get $gc/_dummy/link_count
  local.set $3
  global.get $gc/_dummy/unlink_count
  local.set $0
  global.get $gc/_dummy/collect_count
  local.set $1
  local.get $2
  call $~lib/gc/gc.retain
  global.get $gc/_dummy/link_count
  local.get $3
  i32.const 1
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 112
   i32.const 17
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/_dummy/unlink_count
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 112
   i32.const 18
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/_dummy/collect_count
  local.get $1
  i32.ne
  if
   i32.const 0
   i32.const 112
   i32.const 19
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/_dummy/link_count
  local.set $3
  global.get $gc/_dummy/unlink_count
  local.set $0
  global.get $gc/_dummy/collect_count
  local.set $1
  local.get $2
  call $~lib/gc/gc.release
  global.get $gc/_dummy/link_count
  local.get $3
  i32.ne
  if
   i32.const 0
   i32.const 112
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/_dummy/unlink_count
  local.get $0
  i32.const 1
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 112
   i32.const 27
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/_dummy/collect_count
  local.get $1
  i32.ne
  if
   i32.const 0
   i32.const 112
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/_dummy/link_count
  local.set $0
  global.get $gc/_dummy/unlink_count
  local.set $1
  global.get $gc/_dummy/collect_count
  local.set $2
  call $~lib/gc/gc.collect
  global.get $gc/_dummy/link_count
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 112
   i32.const 35
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/_dummy/unlink_count
  local.get $1
  i32.ne
  if
   i32.const 0
   i32.const 112
   i32.const 36
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/_dummy/collect_count
  local.get $2
  i32.const 1
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 112
   i32.const 37
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 24 ;) (type $FUNCSIG$v)
  nop
 )
)
