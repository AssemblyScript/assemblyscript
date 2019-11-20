(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00n\00u\00m\00b\00e\00r\00")
 (data (i32.const 40) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 72) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00t\00y\00p\00e\00o\00f\00.\00t\00s\00")
 (data (i32.const 112) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00")
 (data (i32.const 144) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00b\00o\00o\00l\00e\00a\00n\00")
 (data (i32.const 176) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001\00")
 (data (i32.const 200) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 232) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $start:typeof~anonymous|0)
 (global $typeof/SomeNamespace.a i32 (i32.const 1))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $typeof/b (mut i32) (i32.const 1))
 (global $typeof/i (mut i32) (i32.const 1))
 (global $typeof/f (mut f32) (f32.const 1))
 (global $typeof/I (mut i64) (i64.const 1))
 (global $typeof/F (mut f64) (f64.const 1))
 (global $typeof/s (mut i32) (i32.const 192))
 (global $typeof/fn (mut i32) (i32.const 1))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $typeof/c (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 268))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $~lib/rt/stub/__retain (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/string/String#get:length (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 4 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
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
   block $break|0
    loop $continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $break|0
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
     br_if $continue|0
    end
   end
  end
  block $break|1
   loop $continue|1
    local.get $4
    local.tee $7
    i32.const 1
    i32.sub
    local.set $4
    local.get $7
    i32.eqz
    br_if $break|1
    local.get $5
    i32.load16_u
    local.set $7
    local.get $6
    i32.load16_u
    local.set $8
    local.get $7
    local.get $8
    i32.ne
    if
     local.get $7
     local.get $8
     i32.sub
     local.set $9
     local.get $0
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $9
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
    br $continue|1
   end
   unreachable
  end
  i32.const 0
  local.set $8
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $8
 )
 (func $~lib/string/String.__eq (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:typeof~anonymous|0 (; 6 ;) (type $FUNCSIG$v)
  nop
 )
 (func $~lib/rt/stub/maybeGrowMemory (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const -1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $typeof/SomeClass#constructor (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $start:typeof (; 10 ;) (type $FUNCSIG$v)
  i32.const 56
  i32.const 56
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 56
  i32.const 56
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 56
  i32.const 56
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 128
  i32.const 128
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 128
  i32.const 128
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 160
  i32.const 160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 56
  i32.const 56
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 216
  i32.const 216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 160
  i32.const 160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 33
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 216
  i32.const 216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 37
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 128
  i32.const 128
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
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
  call $typeof/SomeClass#constructor
  global.set $typeof/c
  i32.const 56
  i32.const 56
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 128
  i32.const 128
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 248
  i32.const 248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 248
  i32.const 248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 47
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 248
  i32.const 248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 48
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 11 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else
   i32.const 1
   global.set $~lib/started
  end
  call $start:typeof
 )
 (func $null (; 12 ;) (type $FUNCSIG$v)
 )
)
