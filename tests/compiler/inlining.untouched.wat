(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $inlining/func_fe~anonymous|0)
 (global $inlining/constantGlobal i32 (i32.const 1))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 48))
 (export "memory" (memory $0))
 (export "test" (func $inlining/test))
 (start $start)
 (func $inlining/test (; 1 ;) (type $FUNCSIG$i) (result i32)
  global.get $inlining/constantGlobal
  i32.const 2
  i32.add
 )
 (func $inlining/func_fe~anonymous|0 (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__retain (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $inlining/test_funcs (; 5 ;) (type $FUNCSIG$v)
  (local $0 f32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  f32.const -1
  local.set $0
  f64.const -2
  local.set $1
  block $inlining/func_ii|inlined.0 (result i32)
   i32.const 42
   local.set $2
   local.get $2
   i32.const 42
   i32.eq
   if
    i32.const 1
    br $inlining/func_ii|inlined.0
   end
   local.get $2
   i32.const 42
   i32.lt_s
   if (result i32)
    i32.const 2
   else    
    i32.const 3
   end
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $inlining/func_ii|inlined.1 (result i32)
   i32.const 41
   local.set $2
   local.get $2
   i32.const 42
   i32.eq
   if
    i32.const 1
    br $inlining/func_ii|inlined.1
   end
   local.get $2
   i32.const 42
   i32.lt_s
   if (result i32)
    i32.const 2
   else    
    i32.const 3
   end
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 61
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $inlining/func_ii|inlined.2 (result i32)
   i32.const 43
   local.set $2
   local.get $2
   i32.const 42
   i32.eq
   if
    i32.const 1
    br $inlining/func_ii|inlined.2
   end
   local.get $2
   i32.const 42
   i32.lt_s
   if (result i32)
    i32.const 2
   else    
    i32.const 3
   end
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 62
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $2
  local.get $2
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 63
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 64
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  local.set $2
  local.get $2
  local.set $3
  local.get $3
  local.set $5
  local.get $5
  local.set $6
  local.get $6
  i32.const 1
  i32.add
  local.set $4
  local.get $4
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 65
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  local.set $5
  local.get $5
  local.set $4
  local.get $4
  local.set $2
  local.get $2
  local.set $6
  local.get $6
  i32.const 1
  i32.add
  local.set $3
  local.get $3
  i32.const 4
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
  i32.const 0
  local.set $2
  i32.const 1
  global.set $~lib/argc
  i32.const 2
  i32.const 1
  call_indirect (type $FUNCSIG$ii)
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 68
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 42
  local.set $6
  i32.const 2
  local.set $2
  local.get $6
  local.get $2
  i32.add
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 69
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 123
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $7
  local.set $4
  i32.const 43
  local.set $5
  i32.const 3
  local.set $2
  local.get $4
  call $~lib/rt/stub/__retain
  local.tee $2
  i32.const 123
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 71
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
 )
 (func $~lib/rt/stub/__alloc (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $inlining/test_ctor (; 7 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  local.set $1
  i32.const 4
  local.set $0
  local.get $1
  if (result i32)
   local.get $1
  else   
   i32.const 16
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.set $3
  i32.const 2
  local.set $2
  local.get $3
  i32.eqz
  if
   i32.const 8
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $3
  end
  local.get $3
  i32.const 1
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=4
  local.get $3
  local.set $1
  local.get $1
  i32.const 3
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
  local.set $4
  local.get $4
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 95
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 96
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=8
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 97
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=12
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 98
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/stub/__release
 )
 (func $start:inlining (; 8 ;) (type $FUNCSIG$v)
  call $inlining/test
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $inlining/test_funcs
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
  call $inlining/test_ctor
 )
 (func $start (; 9 ;) (type $FUNCSIG$v)
  call $start:inlining
 )
 (func $null (; 10 ;) (type $FUNCSIG$v)
 )
)
