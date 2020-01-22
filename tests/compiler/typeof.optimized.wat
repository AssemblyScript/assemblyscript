(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00n\00u\00m\00b\00e\00r")
 (data (i32.const 48) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00o\00b\00j\00e\00c\00t")
 (data (i32.const 80) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00t\00y\00p\00e\00o\00f\00.\00t\00s")
 (data (i32.const 128) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 160) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00b\00o\00o\00l\00e\00a\00n")
 (data (i32.const 192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001")
 (data (i32.const 224) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 256) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $typeof/c (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/string/String#get:length (; 1 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 2 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 3 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/rt/stub/maybeGrowMemory (; 4 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $1
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
   local.tee $1
   local.get $2
   local.get $1
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
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
 (func $~lib/rt/stub/__alloc (; 5 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $1
  i32.const 16
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $1
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 16
  i32.store
  local.get $0
  i32.const 1
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
 )
 (func $start:typeof (; 6 ;)
  i32.const 64
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 64
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 64
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 144
  i32.const 144
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 144
  i32.const 144
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 176
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 64
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 240
  i32.const 240
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 176
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 33
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 240
  i32.const 240
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 37
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 144
  i32.const 144
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 304
  global.set $~lib/rt/stub/startOffset
  i32.const 304
  global.set $~lib/rt/stub/offset
  call $~lib/rt/stub/__alloc
  global.set $typeof/c
  i32.const 64
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 144
  i32.const 144
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 272
  i32.const 272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 272
  i32.const 272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 47
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 272
  i32.const 272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 48
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 7 ;)
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:typeof
 )
)
