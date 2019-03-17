(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\00\00\00\00")
 (data (i32.const 16) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 56) "\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/runtime/GC_IMPLEMENTED i32 (i32.const 0))
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 72))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "i32ArrayArrayElementAccess" (func $std/array-access/i32ArrayArrayElementAccess))
 (export "stringArrayPropertyAccess" (func $std/array-access/stringArrayPropertyAccess))
 (export "stringArrayMethodCall" (func $std/array-access/stringArrayMethodCall))
 (export "stringArrayArrayPropertyAccess" (func $std/array-access/stringArrayArrayPropertyAccess))
 (export "stringArrayArrayMethodCall" (func $std/array-access/stringArrayArrayMethodCall))
 (func $std/array-access/i32ArrayArrayElementAccess (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.load offset=4
  i32.const 0
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
  local.tee $1
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
 )
 (func $~lib/string/String#get:length (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
 )
 (func $std/array-access/stringArrayPropertyAccess (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.load offset=4
  i32.const 0
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
  call $~lib/string/String#get:length
 )
 (func $~lib/util/string/compareImpl (; 4 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
 (func $~lib/string/String#startsWith (; 5 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 165
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 64
   local.set $1
  end
  local.get $2
  local.set $3
  local.get $0
  call $~lib/string/String#get:length
  local.set $4
  local.get $3
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $5
  local.get $4
  local.tee $6
  local.get $5
  local.get $6
  i32.lt_s
  select
  local.set $7
  local.get $1
  call $~lib/string/String#get:length
  local.set $8
  local.get $8
  local.get $7
  i32.add
  local.get $4
  i32.gt_s
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $7
  local.get $1
  i32.const 0
  local.get $8
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $std/array-access/stringArrayMethodCall (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.load offset=4
  i32.const 0
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
  i32.const 16
  i32.const 0
  call $~lib/string/String#startsWith
 )
 (func $std/array-access/stringArrayArrayPropertyAccess (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.load offset=4
  i32.const 0
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
  local.tee $1
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
  call $~lib/string/String#get:length
 )
 (func $std/array-access/stringArrayArrayMethodCall (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.load offset=4
  i32.const 0
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
  local.tee $1
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
  i32.const 16
  i32.const 0
  call $~lib/string/String#startsWith
 )
 (func $null (; 9 ;) (type $FUNCSIG$v)
 )
)
