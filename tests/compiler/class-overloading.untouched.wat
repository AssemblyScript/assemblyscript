(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
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
 (table $0 1 funcref)
 (global $class-overloading/which (mut i32) (i32.const 32))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $class-overloading/a (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $class-overloading/c (mut i32) (i32.const 0))
 (global $class-overloading/ia (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 244))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/rt/stub/__retain (; 3 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $class-overloading/A#constructor (; 4 ;) (param $0 i32) (result i32)
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
 (func $class-overloading/B#constructor (; 5 ;) (param $0 i32) (result i32)
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
 (func $~lib/rt/stub/__release (; 6 ;) (param $0 i32)
  nop
 )
 (func $class-overloading/A#a<i32> (; 7 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 48
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $~lib/string/String#get:length (; 8 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 9 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 10 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $class-overloading/C#constructor (; 11 ;) (param $0 i32) (result i32)
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
 (func $class-overloading/B#a<i32> (; 12 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 80
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/C#a<i32> (; 13 ;) (param $0 i32) (param $1 i32)
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
   i32.const 23
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
 (func $class-overloading/D#constructor (; 14 ;) (param $0 i32) (result i32)
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
 (func $class-overloading/E#constructor (; 15 ;) (param $0 i32) (result i32)
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
 (func $class-overloading/F#constructor (; 16 ;) (param $0 i32) (result i32)
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
 (func $class-overloading/IB#constructor (; 17 ;) (param $0 i32) (result i32)
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
 (func $class-overloading/IA#foo (; 18 ;) (param $0 i32)
  unreachable
 )
 (func $start:class-overloading (; 19 ;)
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
  call $class-overloading/A#a<i32>|virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/C#constructor
  global.set $class-overloading/c
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
   i32.const 31
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
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>|virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 40
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
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>|virtual
  global.get $class-overloading/which
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 49
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
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>|virtual
  global.get $class-overloading/which
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 60
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/IB#constructor
  global.set $class-overloading/ia
  global.get $class-overloading/ia
  call $class-overloading/IA#foo|virtual
  global.get $class-overloading/which
  i32.const 240
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
 )
 (func $~start (; 20 ;)
  call $start:class-overloading
 )
 (func $class-overloading/F#a<i32> (; 21 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 208
  local.set $2
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $2
  global.set $class-overloading/which
 )
 (func $class-overloading/A#a<i32>|virtual (; 22 ;) (param $0 i32) (param $1 i32)
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
 (func $class-overloading/IB#foo (; 23 ;) (param $0 i32)
  (local $1 i32)
  i32.const 240
  local.set $1
  global.get $class-overloading/which
  call $~lib/rt/stub/__release
  local.get $1
  global.set $class-overloading/which
 )
 (func $class-overloading/IA#foo|virtual (; 24 ;) (param $0 i32)
  (local $1 i32)
  block $default
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
    br $default
   end
   local.get $0
   call $class-overloading/IB#foo
   return
  end
  unreachable
 )
)
