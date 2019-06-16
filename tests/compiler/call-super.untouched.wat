(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00c\00a\00l\00l\00-\00s\00u\00p\00e\00r\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 52))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/stub/__alloc (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
  local.get $2
  local.get $0
  local.tee $3
  i32.const 1
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  memory.size
  local.set $6
  local.get $5
  local.get $6
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $5
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
   local.get $6
   local.tee $4
   local.get $3
   local.tee $7
   local.get $4
   local.get $7
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
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.set $8
  local.get $8
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $call-super/A#constructor (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 6
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $call-super/B#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 8
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $call-super/A#constructor
  local.set $0
  local.get $0
  i32.const 2
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 15
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 16
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $call-super/test1 (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $call-super/B#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 22
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $call-super/C#constructor (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $call-super/D#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 8
   i32.const 6
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $call-super/C#constructor
  local.set $0
  local.get $0
  i32.const 2
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 38
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 39
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $call-super/test2 (; 9 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $call-super/D#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $call-super/E#constructor (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 7
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 56
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $call-super/F#constructor (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 8
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $call-super/E#constructor
  local.set $0
  local.get $0
  i32.const 2
  i32.store offset=4
  local.get $0
 )
 (func $call-super/test3 (; 12 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $call-super/F#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 66
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 67
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $call-super/G#constructor (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 9
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $call-super/H#constructor (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 10
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $call-super/G#constructor
  local.set $0
  local.get $0
  i32.const 2
  i32.store offset=4
  local.get $0
 )
 (func $call-super/test4 (; 15 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $call-super/H#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 84
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 85
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $call-super/I#constructor (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 11
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $call-super/J#constructor (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 12
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $call-super/I#constructor
  local.set $0
  local.get $0
  i32.const 2
  i32.store offset=4
  local.get $0
 )
 (func $call-super/test5 (; 18 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $call-super/J#constructor
  local.set $0
  local.get $0
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 104
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 105
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:call-super (; 19 ;) (type $FUNCSIG$v)
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
  call $call-super/test1
  call $call-super/test2
  call $call-super/test3
  call $call-super/test4
  call $call-super/test5
 )
 (func $start (; 20 ;) (type $FUNCSIG$v)
  call $start:call-super
 )
 (func $null (; 21 ;) (type $FUNCSIG$v)
 )
)
