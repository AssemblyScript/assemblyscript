(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\06\00\00\001\002\003")
 (data (i32.const 24) "\10\00\00\00\1a\00\00\00s\00t\00d\00/\00s\00y\00m\00b\00o\00l\00.\00t\00s")
 (data (i32.const 64) "\10\00\00\00(\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 112) "\10\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 160) "\10")
 (data (i32.const 168) "\10\00\00\00\16\00\00\00h\00a\00s\00I\00n\00s\00t\00a\00n\00c\00e")
 (data (i32.const 200) "\10\00\00\00$\00\00\00i\00s\00C\00o\00n\00c\00a\00t\00S\00p\00r\00e\00a\00d\00a\00b\00l\00e")
 (data (i32.const 248) "\10\00\00\00\10\00\00\00i\00s\00R\00e\00g\00E\00x\00p")
 (data (i32.const 272) "\10\00\00\00\n\00\00\00m\00a\00t\00c\00h")
 (data (i32.const 296) "\10\00\00\00\0e\00\00\00r\00e\00p\00l\00a\00c\00e")
 (data (i32.const 320) "\10\00\00\00\0c\00\00\00s\00e\00a\00r\00c\00h")
 (data (i32.const 344) "\10\00\00\00\0e\00\00\00s\00p\00e\00c\00i\00e\00s")
 (data (i32.const 368) "\10\00\00\00\n\00\00\00s\00p\00l\00i\00t")
 (data (i32.const 392) "\10\00\00\00\16\00\00\00t\00o\00P\00r\00i\00m\00i\00t\00i\00v\00e")
 (data (i32.const 424) "\10\00\00\00\16\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00T\00a\00g")
 (data (i32.const 456) "\10\00\00\00\16\00\00\00u\00n\00s\00c\00o\00p\00a\00b\00l\00e\00s")
 (data (i32.const 488) "\10\00\00\00\0e\00\00\00S\00y\00m\00b\00o\00l\00(")
 (data (i32.const 512) "\10\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 528) "\10\00\00\00\02\00\00\00)")
 (data (i32.const 544) "\10\00\00\00\10\00\00\00S\00y\00m\00b\00o\00l\00(\00)")
 (data (i32.const 568) "\10\00\00\00\16\00\00\00S\00y\00m\00b\00o\00l\00(\001\002\003\00)")
 (data (i32.const 600) "\10\00\00\00&\00\00\00S\00y\00m\00b\00o\00l\00(\00h\00a\00s\00I\00n\00s\00t\00a\00n\00c\00e\00)")
 (data (i32.const 648) "\10\00\00\004\00\00\00S\00y\00m\00b\00o\00l\00(\00i\00s\00C\00o\00n\00c\00a\00t\00S\00p\00r\00e\00a\00d\00a\00b\00l\00e\00)")
 (data (i32.const 712) "\10\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 752) "\13")
 (data (i32.const 888) "$\10\00\00\00\00\00\00$\10\00\00\00\00\00\00!\00\00\00\0e")
 (global $~lib/symbol/nextId (mut i32) (i32.const 12))
 (global $std/symbol/sym1 (mut i32) (i32.const 0))
 (global $std/symbol/sym2 (mut i32) (i32.const 0))
 (global $~lib/symbol/stringToId (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/symbol/idToString (mut i32) (i32.const 0))
 (global $std/symbol/sym3 (mut i32) (i32.const 0))
 (global $std/symbol/sym4 (mut i32) (i32.const 0))
 (global $std/symbol/key1 (mut i32) (i32.const 0))
 (global $std/symbol/key2 (mut i32) (i32.const 0))
 (global $std/symbol/key3 (mut i32) (i32.const 0))
 (global $std/symbol/key4 (mut i32) (i32.const 0))
 (global $std/symbol/hasInstance (mut i32) (i32.const 0))
 (global $std/symbol/isConcatSpreadable (mut i32) (i32.const 0))
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
 (func $~lib/allocator/arena/__mem_allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/runtime/allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
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
  i32.const 8
  i32.add
 )
 (func $~lib/util/runtime/register (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 912
  i32.le_u
  if
   i32.const 0
   i32.const 72
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 72
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 4 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 120
   i32.const 54
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/util/runtime/allocate
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 15
  call $~lib/util/runtime/register
 )
 (func $~lib/map/Map<~lib/string/String,usize>#clear (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<~lib/string/String,usize>#constructor (; 7 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 24
  call $~lib/util/runtime/allocate
  i32.const 17
  call $~lib/util/runtime/register
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
  call $~lib/map/Map<~lib/string/String,usize>#clear
  local.get $0
 )
 (func $~lib/map/Map<usize,~lib/string/String>#constructor (; 8 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 24
  call $~lib/util/runtime/allocate
  i32.const 18
  call $~lib/util/runtime/register
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
  call $~lib/map/Map<~lib/string/String,usize>#clear
  local.get $0
 )
 (func $~lib/util/hash/hashStr (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $1
  local.get $0
  if
   block $break|0
    local.get $0
    i32.const 8
    i32.sub
    i32.load offset=4
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.set $3
    loop $repeat|0
     local.get $2
     local.get $3
     i32.ge_u
     br_if $break|0
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     local.get $1
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/util/string/compareImpl (; 10 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  loop $continue|0
   local.get $2
   if (result i32)
    local.get $0
    i32.load16_u
    local.get $1
    i32.load16_u
    i32.sub
    local.tee $3
    i32.eqz
   else    
    local.get $2
   end
   if
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $continue|0
   end
  end
  local.get $3
 )
 (func $~lib/string/String.__eq (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.eqz
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.eqz
  end
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  local.get $1
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/map/Map<~lib/string/String,usize>#find (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $1
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $1
  loop $continue|0
   local.get $1
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    local.tee $0
    if (result i32)
     local.get $1
     i32.load
     i32.const 16
     call $~lib/string/String.__eq
    else     
     local.get $0
    end
    if
     local.get $1
     return
    end
    local.get $1
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $1
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,usize>#rehash (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
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
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $2
     i32.load
     call $~lib/util/hash/hashStr
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.get $5
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $4
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,usize>#set (; 14 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 16
  call $~lib/util/hash/hashStr
  local.tee $3
  call $~lib/map/Map<~lib/string/String,usize>#find
  local.tee $2
  if
   local.get $2
   local.get $1
   i32.store offset=4
  else   
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
    call $~lib/map/Map<~lib/string/String,usize>#rehash
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
   i32.const 12
   i32.mul
   local.get $2
   i32.add
   local.tee $2
   i32.const 16
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
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
   i32.store offset=8
   local.get $0
   local.get $2
   i32.store
  end
 )
 (func $~lib/util/hash/hash32 (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<usize,~lib/string/String>#find (; 16 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.load offset=8
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
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<usize,~lib/string/String>#rehash (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
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
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $2
     i32.load
     call $~lib/util/hash/hash32
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.get $5
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $4
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<usize,~lib/string/String>#set (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  local.tee $3
  call $~lib/map/Map<usize,~lib/string/String>#find
  local.tee $2
  if
   local.get $2
   i32.const 16
   i32.store offset=4
  else   
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
    call $~lib/map/Map<usize,~lib/string/String>#rehash
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
   i32.const 12
   i32.mul
   local.get $2
   i32.add
   local.tee $2
   local.get $1
   i32.store
   local.get $2
   i32.const 16
   i32.store offset=4
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
   i32.store offset=8
   local.get $0
   local.get $2
   i32.store
  end
 )
 (func $~lib/symbol/_Symbol.for (; 19 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  global.get $~lib/symbol/stringToId
  if
   global.get $~lib/symbol/stringToId
   i32.const 16
   call $~lib/util/hash/hashStr
   call $~lib/map/Map<~lib/string/String,usize>#find
   if
    global.get $~lib/symbol/stringToId
    i32.const 16
    call $~lib/util/hash/hashStr
    call $~lib/map/Map<~lib/string/String,usize>#find
    local.tee $0
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     unreachable
    end
    return
   end
  else   
   call $~lib/map/Map<~lib/string/String,usize>#constructor
   global.set $~lib/symbol/stringToId
   call $~lib/map/Map<usize,~lib/string/String>#constructor
   global.set $~lib/symbol/idToString
  end
  global.get $~lib/symbol/nextId
  local.tee $0
  i32.const 1
  i32.add
  global.set $~lib/symbol/nextId
  local.get $0
  i32.eqz
  if
   unreachable
  end
  global.get $~lib/symbol/stringToId
  local.get $0
  call $~lib/map/Map<~lib/string/String,usize>#set
  global.get $~lib/symbol/idToString
  local.get $0
  call $~lib/map/Map<usize,~lib/string/String>#set
  local.get $0
 )
 (func $~lib/map/Map<usize,~lib/string/String>#has (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/map/Map<usize,~lib/string/String>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<usize,~lib/string/String>#get (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/map/Map<usize,~lib/string/String>#find
  local.tee $0
  if (result i32)
   local.get $0
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/symbol/_Symbol.keyFor (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/symbol/idToString
  i32.const 0
  i32.ne
  local.tee $1
  if
   global.get $~lib/symbol/idToString
   local.get $0
   call $~lib/map/Map<usize,~lib/string/String>#has
   local.set $1
  end
  local.get $1
  if (result i32)
   global.get $~lib/symbol/idToString
   local.get $0
   call $~lib/map/Map<usize,~lib/string/String>#get
  else   
   i32.const 0
  end
 )
 (func $~lib/memory/memory.copy (; 23 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/string/String#concat (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 520
  local.get $1
  select
  local.tee $3
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $4
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $1
  i32.add
  local.tee $2
  i32.eqz
  if
   i32.const 168
   return
  end
  local.get $2
  call $~lib/util/runtime/allocate
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.get $3
  local.get $4
  call $~lib/memory/memory.copy
  local.get $2
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/string/String.__concat (; 25 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 520
  local.get $0
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $~lib/symbol/_Symbol#toString (; 26 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 168
  local.set $2
  i32.const 496
  block $break|0 (result i32)
   block $case11|0
    block $case10|0
     block $case9|0
      block $case8|0
       block $case7|0
        block $case6|0
         block $case5|0
          block $case4|0
           block $case3|0
            block $case2|0
             block $case1|0
              local.get $0
              i32.const 1
              i32.ne
              if
               local.get $0
               local.tee $1
               i32.const 2
               i32.eq
               br_if $case1|0
               block $tablify|0
                local.get $1
                i32.const 3
                i32.sub
                br_table $case2|0 $case3|0 $case4|0 $case5|0 $case6|0 $case7|0 $case8|0 $case9|0 $case10|0 $tablify|0
               end
               br $case11|0
              end
              i32.const 176
              br $break|0
             end
             i32.const 208
             br $break|0
            end
            i32.const 256
            br $break|0
           end
           i32.const 280
           br $break|0
          end
          i32.const 304
          br $break|0
         end
         i32.const 328
         br $break|0
        end
        i32.const 352
        br $break|0
       end
       i32.const 376
       br $break|0
      end
      i32.const 400
      br $break|0
     end
     i32.const 432
     br $break|0
    end
    i32.const 464
    br $break|0
   end
   global.get $~lib/symbol/idToString
   i32.const 0
   i32.ne
   local.tee $1
   if
    global.get $~lib/symbol/idToString
    local.get $0
    call $~lib/map/Map<usize,~lib/string/String>#has
    local.set $1
   end
   local.get $1
   if (result i32)
    global.get $~lib/symbol/idToString
    local.get $0
    call $~lib/map/Map<usize,~lib/string/String>#get
   else    
    i32.const 168
   end
  end
  call $~lib/string/String.__concat
  i32.const 536
  call $~lib/string/String.__concat
 )
 (func $start:std/symbol (; 27 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/symbol/nextId
  local.tee $0
  i32.const 1
  i32.add
  global.set $~lib/symbol/nextId
  local.get $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  global.set $std/symbol/sym1
  global.get $~lib/symbol/nextId
  local.tee $0
  i32.const 1
  i32.add
  global.set $~lib/symbol/nextId
  local.get $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  global.set $std/symbol/sym2
  global.get $std/symbol/sym1
  global.get $std/symbol/sym2
  i32.eq
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 912
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $~lib/symbol/_Symbol.for
  global.set $std/symbol/sym3
  call $~lib/symbol/_Symbol.for
  global.set $std/symbol/sym4
  global.get $std/symbol/sym3
  global.get $std/symbol/sym4
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/sym1
  call $~lib/symbol/_Symbol.keyFor
  global.set $std/symbol/key1
  global.get $std/symbol/sym2
  call $~lib/symbol/_Symbol.keyFor
  global.set $std/symbol/key2
  global.get $std/symbol/key1
  if
   i32.const 0
   i32.const 32
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/key2
  if
   i32.const 0
   i32.const 32
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/sym3
  call $~lib/symbol/_Symbol.keyFor
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  global.set $std/symbol/key3
  global.get $std/symbol/sym4
  call $~lib/symbol/_Symbol.keyFor
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  global.set $std/symbol/key4
  global.get $std/symbol/key3
  i32.const 16
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/key3
  global.get $std/symbol/key4
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/symbol/nextId
  local.tee $0
  i32.const 1
  i32.add
  global.set $~lib/symbol/nextId
  local.get $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  call $~lib/symbol/_Symbol#toString
  i32.const 552
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/sym3
  call $~lib/symbol/_Symbol#toString
  i32.const 576
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $std/symbol/hasInstance
  i32.const 2
  global.set $std/symbol/isConcatSpreadable
  global.get $std/symbol/hasInstance
  call $~lib/symbol/_Symbol#toString
  i32.const 608
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/isConcatSpreadable
  call $~lib/symbol/_Symbol#toString
  i32.const 656
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/runtime/runtime.instanceof (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 752
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
    i32.const 752
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/runtime/runtime.flags (; 29 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.const 752
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
   i32.const 752
   i32.add
   i32.load
  end
 )
 (func $~lib/runtime/runtime.newObject (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArray (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   i32.const 752
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $0
   i32.const 3
   i32.shl
   i32.const 752
   i32.add
   i32.load
  end
  local.tee $3
  i32.const 8
  i32.div_u
  i32.const 31
  i32.and
  local.set $4
  local.get $1
  if (result i32)
   local.get $1
   i32.const 8
   i32.sub
   i32.load offset=4
  else   
   i32.const 0
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
   i32.const 0
  end
  local.set $2
  local.get $0
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.tee $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  local.get $4
  i32.shr_u
  i32.store offset=12
  local.get $3
  i32.const 512
  i32.and
  if
   local.get $1
   local.get $2
   i32.add
   local.set $2
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_u
    if
     local.get $1
     i32.load
     if
      i32.const 0
      i32.const 720
      i32.const 97
      i32.const 15
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $continue|0
    end
   end
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.retain (; 34 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/runtime/runtime.collect (; 35 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.const 720
  i32.const 139
  i32.const 9
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 36 ;) (type $FUNCSIG$v)
  call $start:std/symbol
 )
 (func $null (; 37 ;) (type $FUNCSIG$v)
  nop
 )
)
