(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1028) "\01\00\00\00\01")
 (data (i32.const 1040) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A")
 (data (i32.const 1072) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00B")
 (data (i32.const 1104) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00c\00l\00a\00s\00s\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1168) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00C")
 (data (i32.const 1200) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00F")
 (data (i32.const 1232) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00I\00B")
 (data (i32.const 1264) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00I\00C")
 (global $class-overloading/which (mut i32) (i32.const 1040))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $class-overloading/a (mut i32) (i32.const 0))
 (global $class-overloading/ia (mut i32) (i32.const 0))
 (global $class-overloading/ic (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  i32.const 16
  i32.add
  local.tee $1
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  local.tee $2
  i32.gt_u
  if
   local.get $4
   local.get $1
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $4
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
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
  local.get $3
  i32.const 16
  i32.sub
  local.tee $1
  i32.const 16
  i32.store
  local.get $1
  i32.const 1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $3
 )
 (func $class-overloading/B#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 3
   call $~lib/rt/stub/__alloc
  else
   local.get $0
  end
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
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
    local.get $1
    i32.load16_u
    local.tee $3
    local.get $0
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $4
     local.get $3
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
 (func $class-overloading/C#a<i32>
  i32.const 1088
  global.set $class-overloading/which
  i32.const 1088
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 52
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1184
  global.set $class-overloading/which
 )
 (func $class-overloading/D#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 6
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  call $class-overloading/B#constructor
 )
 (func $class-overloading/E#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 7
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  call $class-overloading/D#constructor
 )
 (func $start:class-overloading
  i32.const 1296
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $class-overloading/B#constructor
  global.set $class-overloading/a
  global.get $class-overloading/a
  call $class-overloading/A#a<i32>|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 44
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  call $~lib/rt/stub/__alloc
  call $class-overloading/B#constructor
  drop
  i32.const 1040
  global.set $class-overloading/which
  call $class-overloading/C#a<i32>
  global.get $class-overloading/which
  i32.const 1184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 71
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  i32.const 1184
  global.set $class-overloading/which
  i32.const 1184
  i32.const 1184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  i32.const 1184
  global.set $class-overloading/which
  i32.const 1184
  i32.const 1184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1184
  global.set $class-overloading/which
  i32.const 1184
  i32.const 1184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/D#constructor
  global.set $class-overloading/a
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#a<i32>|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 97
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/E#constructor
  global.set $class-overloading/a
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#a<i32>|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 107
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 113
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 115
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  call $~lib/rt/stub/__alloc
  call $class-overloading/E#constructor
  global.set $class-overloading/a
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#a<i32>|virtual
  global.get $class-overloading/which
  i32.const 1216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 137
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 140
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 143
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b|virtual
  global.get $class-overloading/which
  i32.const 1216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 146
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 10
  call $~lib/rt/stub/__alloc
  global.set $class-overloading/ia
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/ia
  call $class-overloading/IA#foo|virtual
  global.get $class-overloading/which
  i32.const 1248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  call $~lib/rt/stub/__alloc
  global.set $class-overloading/ic
  i32.const 1040
  global.set $class-overloading/which
  global.get $class-overloading/ic
  call $class-overloading/IA#foo|virtual
  global.get $class-overloading/which
  i32.const 1280
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
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
 (func $class-overloading/A#a<i32>|virtual (param $0 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.tee $0
      i32.const 4
      i32.eq
      local.get $0
      i32.const 6
      i32.eq
      i32.or
      br_if $case0
      block $tablify|0
       local.get $0
       i32.const 5
       i32.sub
       br_table $case1 $tablify|0 $case0 $case2 $tablify|0
      end
      br $default
     end
     i32.const 1088
     global.set $class-overloading/which
     return
    end
    call $class-overloading/C#a<i32>
    return
   end
   i32.const 1216
   global.set $class-overloading/which
   return
  end
  i32.const 1056
  global.set $class-overloading/which
 )
 (func $class-overloading/A#b|virtual (param $0 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.tee $0
      i32.const 4
      i32.eq
      local.get $0
      i32.const 6
      i32.eq
      i32.or
      br_if $case0
      block $tablify|0
       local.get $0
       i32.const 5
       i32.sub
       br_table $case1 $tablify|0 $case0 $case2 $tablify|0
      end
      br $default
     end
     i32.const 1088
     global.set $class-overloading/which
     return
    end
    i32.const 1184
    global.set $class-overloading/which
    return
   end
   i32.const 1216
   global.set $class-overloading/which
   return
  end
  i32.const 1056
  global.set $class-overloading/which
 )
 (func $class-overloading/IA#foo|virtual (param $0 i32)
  block $default
   block $case1
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.tee $0
    i32.const 10
    i32.ne
    if
     local.get $0
     i32.const 12
     i32.eq
     br_if $case1
     br $default
    end
    i32.const 1248
    global.set $class-overloading/which
    return
   end
   i32.const 1280
   global.set $class-overloading/which
   return
  end
  unreachable
 )
)
