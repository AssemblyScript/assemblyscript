(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "L\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00.\00\00\00f\00i\00e\00l\00d\00-\00i\00n\00i\00t\00i\00a\00l\00i\00z\00a\00t\00i\00o\00n\00.\00t\00s")
 (data (i32.const 1116) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1164) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1228) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00b")
 (data (i32.const 1260) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00b\00b")
 (data (i32.const 1292) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00c")
 (data (i32.const 1324) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00b\00b\00b")
 (data (i32.const 1356) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00c\00c")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $4
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $7
  i32.add
  local.tee $2
  memory.size
  local.tee $5
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
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
   local.get $3
   local.get $5
   i32.lt_s
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
  local.get $7
  i32.store
  local.get $4
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $4
  i32.const 16
  i32.add
 )
 (func $field-initialization/Inherit_Base#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 18
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  i32.store
  local.get $0
 )
 (func $field-initialization/SomeObject#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 20
   call $~lib/rt/stub/__new
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
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $2
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   block $__inlined_func$~lib/util/string/compareImpl (result i32)
    local.get $0
    local.tee $3
    i32.const 7
    i32.and
    local.get $1
    i32.const 7
    i32.and
    i32.or
    i32.eqz
    i32.const 0
    local.get $2
    local.tee $0
    i32.const 4
    i32.ge_u
    select
    if
     loop $do-continue|0
      local.get $3
      i64.load
      local.get $1
      i64.load
      i64.eq
      if
       local.get $3
       i32.const 8
       i32.add
       local.set $3
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       local.get $0
       i32.const 4
       i32.sub
       local.tee $0
       i32.const 4
       i32.ge_u
       br_if $do-continue|0
      end
     end
    end
    loop $while-continue|1
     local.get $0
     local.tee $2
     i32.const 1
     i32.sub
     local.set $0
     local.get $2
     if
      local.get $3
      i32.load16_u
      local.tee $2
      local.get $1
      i32.load16_u
      local.tee $4
      i32.ne
      if
       local.get $2
       local.get $4
       i32.sub
       br $__inlined_func$~lib/util/string/compareImpl
      end
      local.get $3
      i32.const 2
      i32.add
      local.set $3
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    i32.const 0
   end
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $field-initialization/SomeOtherObject#constructor (result i32)
  (local $0 i32)
  i32.const 12
  i32.const 21
  call $~lib/rt/stub/__new
  call $field-initialization/SomeObject#constructor
  local.tee $0
  i32.const 0
  i32.store offset=8
  local.get $0
 )
 (func $start:field-initialization
  (local $0 i32)
  (local $1 i32)
  i32.const 1388
  global.set $~lib/rt/stub/offset
  i32.const 4
  i32.const 3
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 8
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1056
   i32.const 16
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 5
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 24
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 6
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 7
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1056
   i32.const 40
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 8
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1056
   i32.const 52
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 10
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 73
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 11
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 12
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 94
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $0
  i32.const 4
  i32.const 13
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.load
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 104
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 14
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1056
   i32.const 114
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 15
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 124
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 16
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 135
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 17
  call $~lib/rt/stub/__new
  call $field-initialization/Inherit_Base#constructor
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 147
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 19
  call $~lib/rt/stub/__new
  call $field-initialization/Inherit_Base#constructor
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 153
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $field-initialization/SomeObject#constructor
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1056
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
   i32.const 1056
   i32.const 165
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $field-initialization/SomeObject#constructor
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 167
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
   i32.const 1056
   i32.const 168
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $field-initialization/SomeObject#constructor
  local.tee $0
  i32.const 1248
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1056
   i32.const 170
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 171
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $field-initialization/SomeObject#constructor
  local.tee $0
  i32.const 2
  i32.store
  local.get $0
  i32.const 1280
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 173
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1280
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 174
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  call $field-initialization/SomeOtherObject#constructor
  local.tee $0
  i32.const 1312
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1056
   i32.const 182
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
   i32.const 1056
   i32.const 183
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  i32.const 1312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 184
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  call $field-initialization/SomeOtherObject#constructor
  local.tee $0
  i32.const 3
  i32.store
  local.get $0
  i32.const 1344
  i32.store offset=4
  local.get $0
  i32.const 1376
  i32.store offset=8
  local.get $0
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 186
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 187
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  i32.const 1376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 188
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 22
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 205
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 23
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 218
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 24
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 230
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:field-initialization
 )
)
