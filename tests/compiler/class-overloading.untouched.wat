(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 32) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A\00")
 (data (i32.const 64) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00B\00")
 (data (i32.const 96) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00c\00l\00a\00s\00s\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 160) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00C\00")
 (data (i32.const 192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00F\00")
 (data (i32.const 224) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00I\00B\00")
 (data (i32.const 256) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00I\00C\00")
 (table $0 1 funcref)
 (global $class-overloading/which (mut i32) (i32.const 32))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $class-overloading/a (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $class-overloading/c (mut i32) (i32.const 0))
 (global $class-overloading/ia (mut i32) (i32.const 0))
 (global $class-overloading/ic (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 276))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
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
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  i32.const 1
  drop
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $class-overloading/A#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $class-overloading/B#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $class-overloading/A#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $class-overloading/A#a<i32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 48
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
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
 (func $class-overloading/A#b (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 48
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/A#get:c (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 48
  local.set $1
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $1
  global.set $class-overloading/which
  i32.const 0
 )
 (func $class-overloading/A#set:c (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 48
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/C#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $class-overloading/B#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/B#a<i32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 80
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/C#a<i32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $class-overloading/B#a<i32>
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 52
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 176
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/C#b (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 176
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/C#get:c (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 176
  local.set $1
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $1
  global.set $class-overloading/which
  i32.const 0
 )
 (func $class-overloading/C#set:c (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 176
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/D#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 6
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $class-overloading/B#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/E#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $class-overloading/D#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/F#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $class-overloading/E#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/CA#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 10
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $class-overloading/IA#foo (param $0 i32)
  unreachable
 )
 (func $class-overloading/CC#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 12
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:class-overloading
  (local $0 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $class-overloading/B#constructor
  global.set $class-overloading/a
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#get:c@virtual
  drop
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 44
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#set:c@virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/C#constructor
  global.set $class-overloading/c
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/c
  i32.const 1
  call $class-overloading/C#a<i32>
  global.get $class-overloading/which
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 71
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/c
  i32.const 1
  call $class-overloading/C#b
  global.get $class-overloading/which
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/c
  call $class-overloading/C#get:c
  drop
  global.get $class-overloading/which
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class-overloading/c
  i32.const 1
  call $class-overloading/C#set:c
  global.get $class-overloading/which
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/D#constructor
  local.set $0
  global.get $class-overloading/a
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/a
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#get:c@virtual
  drop
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#set:c@virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 97
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/E#constructor
  local.set $0
  global.get $class-overloading/a
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/a
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 107
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#get:c@virtual
  drop
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 113
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#set:c@virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 115
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/F#constructor
  local.set $0
  global.get $class-overloading/a
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/a
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 137
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 140
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#get:c@virtual
  drop
  global.get $class-overloading/which
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 143
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#set:c@virtual
  global.get $class-overloading/which
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 146
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/CA#constructor
  global.set $class-overloading/ia
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/ia
  call $class-overloading/IA#foo@virtual
  global.get $class-overloading/which
  i32.const 240
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/CC#constructor
  global.set $class-overloading/ic
  i32.const 32
  local.set $0
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $0
  global.set $class-overloading/which
  global.get $class-overloading/ic
  call $class-overloading/IA#foo@virtual
  global.get $class-overloading/which
  i32.const 272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 177
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:class-overloading
 )
 (func $class-overloading/F#a<i32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 208
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/A#a<i32>@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.set $2
      local.get $2
      i32.const 4
      i32.eq
      br_if $case0
      local.get $2
      i32.const 6
      i32.eq
      br_if $case0
      local.get $2
      i32.const 7
      i32.eq
      br_if $case0
      local.get $2
      i32.const 5
      i32.eq
      br_if $case1
      local.get $2
      i32.const 8
      i32.eq
      br_if $case2
      br $default
     end
     local.get $0
     local.get $1
     call $class-overloading/B#a<i32>
     return
    end
    local.get $0
    local.get $1
    call $class-overloading/C#a<i32>
    return
   end
   local.get $0
   local.get $1
   call $class-overloading/F#a<i32>
   return
  end
  local.get $0
  local.get $1
  call $class-overloading/A#a<i32>
 )
 (func $class-overloading/B#b (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 80
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/F#b (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 208
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/A#b@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.set $2
      local.get $2
      i32.const 4
      i32.eq
      br_if $case0
      local.get $2
      i32.const 6
      i32.eq
      br_if $case0
      local.get $2
      i32.const 7
      i32.eq
      br_if $case0
      local.get $2
      i32.const 5
      i32.eq
      br_if $case1
      local.get $2
      i32.const 8
      i32.eq
      br_if $case2
      br $default
     end
     local.get $0
     local.get $1
     call $class-overloading/B#b
     return
    end
    local.get $0
    local.get $1
    call $class-overloading/C#b
    return
   end
   local.get $0
   local.get $1
   call $class-overloading/F#b
   return
  end
  local.get $0
  local.get $1
  call $class-overloading/A#b
 )
 (func $class-overloading/B#get:c (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 80
  local.set $1
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $1
  global.set $class-overloading/which
  i32.const 0
 )
 (func $class-overloading/F#get:c (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 208
  local.set $1
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $1
  global.set $class-overloading/which
  i32.const 0
 )
 (func $class-overloading/A#get:c@virtual (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.set $1
      local.get $1
      i32.const 4
      i32.eq
      br_if $case0
      local.get $1
      i32.const 6
      i32.eq
      br_if $case0
      local.get $1
      i32.const 7
      i32.eq
      br_if $case0
      local.get $1
      i32.const 5
      i32.eq
      br_if $case1
      local.get $1
      i32.const 8
      i32.eq
      br_if $case2
      br $default
     end
     local.get $0
     call $class-overloading/B#get:c
     return
    end
    local.get $0
    call $class-overloading/C#get:c
    return
   end
   local.get $0
   call $class-overloading/F#get:c
   return
  end
  local.get $0
  call $class-overloading/A#get:c
 )
 (func $class-overloading/B#set:c (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 80
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/F#set:c (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 208
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/A#set:c@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.set $2
      local.get $2
      i32.const 4
      i32.eq
      br_if $case0
      local.get $2
      i32.const 6
      i32.eq
      br_if $case0
      local.get $2
      i32.const 7
      i32.eq
      br_if $case0
      local.get $2
      i32.const 5
      i32.eq
      br_if $case1
      local.get $2
      i32.const 8
      i32.eq
      br_if $case2
      br $default
     end
     local.get $0
     local.get $1
     call $class-overloading/B#set:c
     return
    end
    local.get $0
    local.get $1
    call $class-overloading/C#set:c
    return
   end
   local.get $0
   local.get $1
   call $class-overloading/F#set:c
   return
  end
  local.get $0
  local.get $1
  call $class-overloading/A#set:c
 )
 (func $class-overloading/CA#foo (param $0 i32)
  (local $1 i32)
  i32.const 240
  local.set $1
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $1
  global.set $class-overloading/which
 )
 (func $class-overloading/CC#foo (param $0 i32)
  (local $1 i32)
  i32.const 272
  local.set $1
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $1
  global.set $class-overloading/which
 )
 (func $class-overloading/IA#foo@virtual (param $0 i32)
  (local $1 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $1
     local.get $1
     i32.const 10
     i32.eq
     br_if $case0
     local.get $1
     i32.const 12
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    call $class-overloading/CA#foo
    return
   end
   local.get $0
   call $class-overloading/CC#foo
   return
  end
  unreachable
 )
)
