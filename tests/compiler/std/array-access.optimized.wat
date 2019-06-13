(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00E\00r\00r\00o\00r")
 (data (i32.const 44) "\01\00\00\00\01")
 (data (i32.const 56) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 168) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00R\00a\00n\00g\00e\00E\00r\00r\00o\00r")
 (data (i32.const 208) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 264) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (global $~lib/error (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "i32ArrayArrayElementAccess" (func $std/array-access/i32ArrayArrayElementAccess))
 (export "stringArrayPropertyAccess" (func $std/array-access/stringArrayPropertyAccess))
 (export "stringArrayMethodCall" (func $std/array-access/stringArrayMethodCall))
 (export "stringArrayArrayPropertyAccess" (func $std/array-access/stringArrayArrayPropertyAccess))
 (export "stringArrayArrayMethodCall" (func $std/array-access/stringArrayArrayMethodCall))
 (start $start)
 (func $~lib/rt/stub/__alloc (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $2
  i32.const 27
  i32.add
  i32.const -16
  i32.and
  local.tee $1
  memory.size
  local.tee $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $3
   local.get $1
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $4
   local.get $3
   local.get $4
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $4
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $1
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.tee $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 12
  i32.store offset=12
  local.get $2
 )
 (func $~lib/error/Error#constructor (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 5
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 24
  i32.store
  local.get $0
  i32.const 56
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/error/RangeError#constructor (; 2 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/rt/stub/__alloc
  i32.const 224
  call $~lib/error/Error#constructor
  local.tee $0
  local.get $0
  i32.load
  drop
  i32.const 184
  i32.store
  local.get $0
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   call $~lib/error/Error#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  i32.load
 )
 (func $std/array-access/i32ArrayArrayElementAccess (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  call $~lib/array/Array<i32>#__get
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/string/String#get:length (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $std/array-access/stringArrayPropertyAccess (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  call $~lib/string/String#get:length
 )
 (func $~lib/util/string/compareImpl (; 8 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 56
  local.set $3
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $1
  loop $continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.load16_u
    local.get $3
    i32.load16_u
    i32.sub
    local.tee $4
    i32.eqz
   else    
    i32.const 0
   end
   if
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    br $continue|0
   end
  end
  local.get $4
 )
 (func $~lib/string/String#startsWith (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  local.get $0
  call $~lib/string/String#get:length
  local.tee $1
  i32.const 0
  local.get $1
  i32.lt_s
  select
  local.tee $2
  i32.const 56
  call $~lib/string/String#get:length
  local.tee $3
  i32.add
  local.get $1
  i32.gt_s
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $2
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $std/array-access/stringArrayMethodCall (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  call $~lib/string/String#startsWith
 )
 (func $std/array-access/stringArrayArrayPropertyAccess (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  i32.const 1
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  call $~lib/string/String#get:length
 )
 (func $std/array-access/stringArrayArrayMethodCall (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  i32.const 1
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  call $~lib/string/String#startsWith
 )
 (func $start (; 13 ;) (type $FUNCSIG$v)
  i32.const 288
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $null (; 14 ;) (type $FUNCSIG$v)
  nop
 )
)
