(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "L\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00.\00\00\00f\00i\00e\00l\00d\00-\00i\00n\00i\00t\00i\00a\00l\00i\00z\00a\00t\00i\00o\00n\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 92) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 140) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 204) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00b\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 236) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00b\00b\00\00\00\00\00\00\00\00\00")
 (data (i32.const 268) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00c\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 300) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00b\00b\00b\00\00\00\00\00\00\00")
 (data (i32.const 332) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00c\00c\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/memory/__heap_base i32 (i32.const 364))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
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
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.set $1
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/stub/computeSize
  local.set $3
  local.get $2
  local.get $3
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $1
  local.get $3
  i32.store
  local.get $2
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   unreachable
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  i32.const 4
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $3
  local.get $0
  i32.store offset=16
  local.get $2
  i32.const 16
  i32.add
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $field-initialization/Value_Init#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 3
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $field-initialization/Value#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 4
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   i32.const 0
   i32.const 1
   i32.gt_s
   drop
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   local.get $4
   i32.store8 offset=3
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=1
   local.get $5
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=1
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=3
   local.get $6
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $8
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=24
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=4
   local.get $5
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=16
   local.get $6
   local.get $8
   i32.store offset=20
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=12
   local.get $5
   local.get $8
   i32.store offset=16
   local.get $5
   local.get $8
   i32.store offset=20
   local.get $5
   local.get $8
   i32.store offset=24
   local.get $6
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=4
   local.get $6
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=12
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $8
   i64.extend_i32_u
   local.get $8
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $9
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $10
    local.get $10
    if
     local.get $5
     local.get $9
     i64.store
     local.get $5
     local.get $9
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $9
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 112
   i32.const 160
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $field-initialization/Ref_Init#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 5
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
 )
 (func $field-initialization/Nullable_Init#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 6
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
 )
 (func $field-initialization/Nullable#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 7
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $field-initialization/Value_Ctor#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 8
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $field-initialization/Value_Init_Ctor#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 9
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $field-initialization/Value_Ctor_Init#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 10
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $field-initialization/Ref_Init_Ctor#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 11
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
 )
 (func $field-initialization/Ref_Ctor_Init#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 12
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
 )
 (func $field-initialization/Ref_Ctor_Param#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 13
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $field-initialization/Nullable_Ctor#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 14
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $field-initialization/Nullable_Init_Ctor#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 15
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
 )
 (func $field-initialization/Nullable_Ctor_Init#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 16
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
 )
 (func $field-initialization/Inherit_Base#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 18
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
 )
 (func $field-initialization/Inherit#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 17
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $field-initialization/Inherit_Base#constructor
  local.set $0
  local.get $0
 )
 (func $field-initialization/Inherit_Ctor#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 19
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $field-initialization/Inherit_Base#constructor
  local.set $0
  local.get $0
 )
 (func $field-initialization/SomeObject#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 20
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     local.set $7
     local.get $7
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $7
   i32.const 1
   i32.sub
   local.set $4
   local.get $7
   local.set $7
   local.get $7
   if
    local.get $5
    i32.load16_u
    local.set $8
    local.get $6
    i32.load16_u
    local.set $9
    local.get $8
    local.get $9
    i32.ne
    if
     local.get $8
     local.get $9
     i32.sub
     local.set $10
     local.get $0
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $10
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $while-continue|1
   end
  end
  i32.const 0
  local.set $7
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $7
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $field-initialization/SomeOtherObject#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 21
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $field-initialization/SomeObject#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
 )
 (func $field-initialization/Flow_Balanced#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 22
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $1
  if
   local.get $0
   local.tee $2
   i32.const 0
   i32.const 0
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $3
   local.get $2
   i32.load
   call $~lib/rt/stub/__release
   local.get $3
   i32.store
  else
   local.get $0
   local.tee $3
   i32.const 0
   i32.const 0
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $2
   local.get $3
   i32.load
   call $~lib/rt/stub/__release
   local.get $2
   i32.store
  end
  local.get $0
 )
 (func $start:field-initialization
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__heap_base
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $field-initialization/Value_Init#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Value#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 16
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Ref_Init#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 24
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Nullable_Init#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Nullable#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 40
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Value_Ctor#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 52
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Value_Init_Ctor#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Value_Ctor_Init#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 73
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Ref_Init_Ctor#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Ref_Ctor_Init#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 94
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $0
  i32.const 0
  local.get $0
  call $field-initialization/Ref_Ctor_Param#constructor
  local.set $1
  local.get $1
  i32.load
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 104
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Nullable_Ctor#constructor
  local.set $1
  local.get $1
  i32.load
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 114
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Nullable_Init_Ctor#constructor
  local.set $1
  local.get $1
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 124
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Nullable_Ctor_Init#constructor
  local.set $1
  local.get $1
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 135
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Inherit#constructor
  local.set $1
  local.get $1
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 147
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/Inherit_Ctor#constructor
  local.set $1
  local.get $1
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 153
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/SomeObject#constructor
  local.set $1
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.load
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 164
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 165
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $field-initialization/SomeObject#constructor
  local.set $2
  local.get $2
  i32.const 1
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 167
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 168
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $field-initialization/SomeObject#constructor
  local.set $4
  local.get $4
  i32.const 224
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.store
  local.get $4
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $5
  i32.load
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 170
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.load offset=4
  i32.const 224
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 171
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $field-initialization/SomeObject#constructor
  local.set $6
  local.get $6
  i32.const 2
  i32.store
  local.get $6
  i32.const 256
  i32.store offset=4
  local.get $6
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $7
  i32.load
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 173
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load offset=4
  i32.const 256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 174
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  i32.const 0
  call $field-initialization/SomeOtherObject#constructor
  local.set $7
  local.get $7
  i32.const 288
  i32.store offset=8
  local.get $7
  i32.const 0
  i32.store
  local.get $7
  i32.const 0
  i32.store offset=4
  local.get $7
  call $~lib/rt/stub/__retain
  local.set $6
  local.get $6
  i32.load
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 182
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=4
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 183
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=8
  i32.const 288
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 184
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $field-initialization/SomeOtherObject#constructor
  local.set $5
  local.get $5
  i32.const 3
  i32.store
  local.get $5
  i32.const 320
  i32.store offset=4
  local.get $5
  i32.const 352
  i32.store offset=8
  local.get $5
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $4
  i32.load
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 186
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=4
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 187
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=8
  i32.const 352
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 188
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  i32.const 0
  i32.const 1
  call $field-initialization/Flow_Balanced#constructor
  local.set $4
  local.get $4
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 205
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/stub/__release
  i32.const 0
  local.set $1
  local.get $1
  i32.eqz
  if
   i32.const 4
   i32.const 23
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $1
  end
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $1
  local.set $1
  local.get $1
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 218
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  i32.const 0
  local.set $0
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 24
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/stub/__release
  local.get $3
  i32.store
  local.get $0
  local.set $0
  local.get $0
  i32.load
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 230
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $~start
  call $start:field-initialization
 )
)
