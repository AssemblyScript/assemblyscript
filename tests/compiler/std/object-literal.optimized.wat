(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d")
 (data (i32.const 1072) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00s\00t\00d\00/\00o\00b\00j\00e\00c\00t\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
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
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1040
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $0
    i64.load
    local.get $3
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $1
   local.tee $2
   i32.const 1
   i32.sub
   local.set $1
   local.get $2
   if
    local.get $0
    i32.load16_u
    local.tee $2
    local.get $3
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $2
     local.get $4
     i32.sub
     return
    end
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $start:std/object-literal
  (local $0 i32)
  (local $1 i32)
  i32.const 1136
  global.set $~lib/rt/stub/offset
  i32.const 8
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  i32.const 1040
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/string/String.__eq (result i32)
   i32.const 1
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.const 1040
   i32.eq
   br_if $__inlined_func$~lib/string/String.__eq
   drop
   block $folding-inner0
    i32.const 0
    i32.const 1
    local.get $1
    select
    br_if $folding-inner0
    local.get $1
    call $~lib/string/String#get:length
    local.tee $0
    i32.const 1040
    call $~lib/string/String#get:length
    i32.ne
    br_if $folding-inner0
    local.get $1
    local.get $0
    call $~lib/util/string/compareImpl
    i32.eqz
    br $__inlined_func$~lib/string/String.__eq
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 8
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 2
  i32.store
  local.get $0
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 24
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 3
  i32.store
  local.get $0
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 19
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/object-literal
 )
)
