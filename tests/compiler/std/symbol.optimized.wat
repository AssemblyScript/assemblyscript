(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003")
 (data (i32.const 1056) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00s\00t\00d\00/\00s\00y\00m\00b\00o\00l\00.\00t\00s")
 (data (i32.const 1104) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1152) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1216) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1280) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 1332) "\01\00\00\00\01")
 (data (i32.const 1344) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00a\00s\00I\00n\00s\00t\00a\00n\00c\00e")
 (data (i32.const 1392) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00i\00s\00C\00o\00n\00c\00a\00t\00S\00p\00r\00e\00a\00d\00a\00b\00l\00e")
 (data (i32.const 1456) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00i\00s\00R\00e\00g\00E\00x\00p")
 (data (i32.const 1488) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00m\00a\00t\00c\00h")
 (data (i32.const 1520) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00r\00e\00p\00l\00a\00c\00e")
 (data (i32.const 1552) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00s\00e\00a\00r\00c\00h")
 (data (i32.const 1584) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00s\00p\00e\00c\00i\00e\00s")
 (data (i32.const 1616) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00s\00p\00l\00i\00t")
 (data (i32.const 1648) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00t\00o\00P\00r\00i\00m\00i\00t\00i\00v\00e")
 (data (i32.const 1696) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00T\00a\00g")
 (data (i32.const 1744) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00n\00s\00c\00o\00p\00a\00b\00l\00e\00s")
 (data (i32.const 1792) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00S\00y\00m\00b\00o\00l\00(")
 (data (i32.const 1824) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 1856) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00)")
 (data (i32.const 1888) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00S\00y\00m\00b\00o\00l\00(\00)")
 (data (i32.const 1920) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00S\00y\00m\00b\00o\00l\00(\001\002\003\00)")
 (data (i32.const 1968) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00S\00y\00m\00b\00o\00l\00(\00h\00a\00s\00I\00n\00s\00t\00a\00n\00c\00e\00)")
 (data (i32.const 2032) "4\00\00\00\01\00\00\00\01\00\00\004\00\00\00S\00y\00m\00b\00o\00l\00(\00i\00s\00C\00o\00n\00c\00a\00t\00S\00p\00r\00e\00a\00d\00a\00b\00l\00e\00)")
 (global $~lib/symbol/nextId (mut i32) (i32.const 12))
 (global $std/symbol/sym1 (mut i32) (i32.const 0))
 (global $std/symbol/sym2 (mut i32) (i32.const 0))
 (global $~lib/symbol/stringToId (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/symbol/idToString (mut i32) (i32.const 0))
 (global $std/symbol/sym3 (mut i32) (i32.const 0))
 (global $std/symbol/sym4 (mut i32) (i32.const 0))
 (global $std/symbol/key1 (mut i32) (i32.const 0))
 (global $std/symbol/key2 (mut i32) (i32.const 0))
 (global $std/symbol/key3 (mut i32) (i32.const 0))
 (global $std/symbol/key4 (mut i32) (i32.const 0))
 (global $std/symbol/isConcatSpreadable (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/symbol/Symbol (result i32)
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
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $4
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $6
  i32.add
  local.tee $2
  memory.size
  local.tee $5
  i32.const 16
  i32.shl
  local.tee $3
  i32.gt_u
  if
   local.get $5
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $5
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $4
  i32.const 16
  i32.sub
  local.tee $2
  local.get $6
  i32.store
  local.get $2
  i32.const 1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $4
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
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
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
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
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1120
   i32.const 1168
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,usize>#clear (param $0 i32)
  (local $1 i32)
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  drop
  local.get $0
  local.get $1
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
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/hash/hashStr (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $1
  local.get $0
  if
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $3
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_u
    if
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
     br $for-loop|0
    end
   end
  end
  local.get $1
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $2
   local.tee $3
   i32.const 1
   i32.sub
   local.set $2
   local.get $3
   if
    local.get $0
    i32.load16_u
    local.tee $3
    local.get $1
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $3
     local.get $4
     i32.sub
     return
    end
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,usize>#find (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load
     i32.const 1040
     call $~lib/string/String.__eq
    end
    if
     local.get $0
     return
    end
    local.get $0
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,usize>#rehash (param $0 i32) (param $1 i32)
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
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $4
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $7
   i32.ne
   if
    local.get $4
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i32.load
     i32.store
     local.get $2
     local.get $4
     i32.load offset=4
     i32.store offset=4
     local.get $2
     local.get $4
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
     local.get $2
     i32.store
     local.get $2
     i32.const 12
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 12
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $5
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.load offset=8
  drop
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,usize>#set (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1040
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
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
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
   i32.add
   local.tee $2
   i32.const 1040
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
   local.get $3
   local.get $0
   i32.load offset=4
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
 (func $~lib/util/hash/hash32 (param $0 i32) (result i32)
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
 (func $~lib/map/Map<usize,~lib/string/String>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i32.load
     i32.eq
    end
    if
     local.get $0
     return
    end
    local.get $0
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<usize,~lib/string/String>#rehash (param $0 i32) (param $1 i32)
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
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $4
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $7
   i32.ne
   if
    local.get $4
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i32.load
     i32.store
     local.get $2
     local.get $4
     i32.load offset=4
     i32.store offset=4
     local.get $2
     local.get $4
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
     local.get $2
     i32.store
     local.get $2
     i32.const 12
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 12
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $5
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.load offset=8
  drop
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<usize,~lib/string/String>#set (param $0 i32) (param $1 i32)
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
   i32.load offset=4
   i32.const 1040
   i32.ne
   if
    local.get $2
    i32.const 1040
    i32.store offset=4
   end
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
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
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
   i32.add
   local.tee $2
   local.get $1
   i32.store
   local.get $2
   i32.const 1040
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
   local.get $3
   local.get $0
   i32.load offset=4
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
 (func $~lib/symbol/_Symbol.for (result i32)
  (local $0 i32)
  global.get $~lib/symbol/stringToId
  if
   global.get $~lib/symbol/stringToId
   i32.const 1040
   call $~lib/util/hash/hashStr
   call $~lib/map/Map<~lib/string/String,usize>#find
   if
    global.get $~lib/symbol/stringToId
    i32.const 1040
    call $~lib/util/hash/hashStr
    call $~lib/map/Map<~lib/string/String,usize>#find
    local.tee $0
    i32.eqz
    if
     i32.const 1232
     i32.const 1296
     i32.const 111
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.load offset=4
    return
   end
  else
   i32.const 24
   i32.const 3
   call $~lib/rt/stub/__alloc
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
   global.set $~lib/symbol/stringToId
   i32.const 24
   i32.const 4
   call $~lib/rt/stub/__alloc
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
 (func $~lib/map/Map<usize,~lib/string/String>#has (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/map/Map<usize,~lib/string/String>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<usize,~lib/string/String>#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/map/Map<usize,~lib/string/String>#find
  local.tee $0
  i32.eqz
  if
   i32.const 1232
   i32.const 1296
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/symbol/_Symbol.keyFor (param $0 i32) (result i32)
  global.get $~lib/symbol/idToString
  if (result i32)
   global.get $~lib/symbol/idToString
   local.get $0
   call $~lib/map/Map<usize,~lib/string/String>#has
  else
   i32.const 0
  end
  if (result i32)
   global.get $~lib/symbol/idToString
   local.get $0
   call $~lib/map/Map<usize,~lib/string/String>#get
  else
   i32.const 0
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
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
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
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
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $__inlined_func$~lib/string/String#concat
   local.get $0
   i32.const 1840
   local.get $0
   select
   local.tee $3
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $2
   local.get $1
   i32.const 1840
   local.get $1
   select
   local.tee $1
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $4
   i32.add
   local.tee $0
   i32.eqz
   if
    i32.const 1344
    local.set $0
    br $__inlined_func$~lib/string/String#concat
   end
   local.get $0
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.tee $0
   local.get $3
   local.get $2
   call $~lib/memory/memory.copy
   local.get $0
   local.get $2
   i32.add
   local.get $1
   local.get $4
   call $~lib/memory/memory.copy
  end
  local.get $0
 )
 (func $~lib/symbol/_Symbol#toString (param $0 i32) (result i32)
  i32.const 1808
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
               i32.const 2
               i32.sub
               br_table $case1|0 $case2|0 $case3|0 $case4|0 $case5|0 $case6|0 $case7|0 $case8|0 $case9|0 $case10|0 $case11|0
              end
              i32.const 1360
              br $break|0
             end
             i32.const 1408
             br $break|0
            end
            i32.const 1472
            br $break|0
           end
           i32.const 1504
           br $break|0
          end
          i32.const 1536
          br $break|0
         end
         i32.const 1568
         br $break|0
        end
        i32.const 1600
        br $break|0
       end
       i32.const 1632
       br $break|0
      end
      i32.const 1664
      br $break|0
     end
     i32.const 1712
     br $break|0
    end
    i32.const 1760
    br $break|0
   end
   global.get $~lib/symbol/idToString
   if (result i32)
    global.get $~lib/symbol/idToString
    local.get $0
    call $~lib/map/Map<usize,~lib/string/String>#has
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/symbol/idToString
    local.get $0
    call $~lib/map/Map<usize,~lib/string/String>#get
   else
    i32.const 1344
   end
  end
  call $~lib/string/String.__concat
  i32.const 1872
  call $~lib/string/String.__concat
 )
 (func $start:std/symbol
  (local $0 i32)
  call $~lib/symbol/Symbol
  global.set $std/symbol/sym1
  call $~lib/symbol/Symbol
  global.set $std/symbol/sym2
  global.get $std/symbol/sym1
  global.get $std/symbol/sym2
  i32.eq
  if
   i32.const 0
   i32.const 1072
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2112
  global.set $~lib/rt/stub/offset
  call $~lib/symbol/_Symbol.for
  global.set $std/symbol/sym3
  call $~lib/symbol/_Symbol.for
  global.set $std/symbol/sym4
  global.get $std/symbol/sym3
  global.get $std/symbol/sym4
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 9
   i32.const 1
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
   i32.const 1072
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/key2
  if
   i32.const 0
   i32.const 1072
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/sym3
  call $~lib/symbol/_Symbol.keyFor
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 17
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.set $std/symbol/key3
  global.get $std/symbol/sym4
  call $~lib/symbol/_Symbol.keyFor
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 18
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.set $std/symbol/key4
  global.get $std/symbol/key3
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/key3
  global.get $std/symbol/key4
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/symbol/Symbol
  call $~lib/symbol/_Symbol#toString
  i32.const 1904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/sym3
  call $~lib/symbol/_Symbol#toString
  i32.const 1936
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $std/symbol/isConcatSpreadable
  i32.const 1
  call $~lib/symbol/_Symbol#toString
  i32.const 1984
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/symbol/isConcatSpreadable
  call $~lib/symbol/_Symbol#toString
  i32.const 2048
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/symbol
 )
)
