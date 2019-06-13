(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00l\00o\00o\00p\00-\00f\00l\00o\00w\00.\00t\00s\00")
 (data (i32.const 48) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00E\00r\00r\00o\00r\00")
 (data (i32.const 80) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 96) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00e\00r\00m\00")
 (data (i32.const 120) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00u\00n\00c\00a\00u\00g\00h\00t\00 \00e\00r\00r\00o\00r\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/error (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 164))
 (export "memory" (memory $0))
 (export "whileReturn" (func $loop-flow/whileReturn))
 (export "whileThrow" (func $loop-flow/whileThrow))
 (export "whileContinue" (func $loop-flow/whileContinue))
 (export "whileAny" (func $loop-flow/whileAny))
 (export "forReturn" (func $loop-flow/forReturn))
 (export "forThrow" (func $loop-flow/forThrow))
 (export "forContinue" (func $loop-flow/forContinue))
 (export "forAny" (func $loop-flow/forAny))
 (export "doReturn" (func $loop-flow/doReturn))
 (export "doThrow" (func $loop-flow/doThrow))
 (export "doAny" (func $loop-flow/doAny))
 (start $start)
 (func $loop-flow/whileReturn (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  return
 )
 (func $~lib/rt/stub/__retain (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__alloc (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/rt/stub/__release (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/error/Error#constructor (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 64
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  i32.const 96
  call $~lib/rt/stub/__retain
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $loop-flow/whileAny (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  loop $continue|0
   local.get $0
   i32.const 1
   i32.eq
   if
    i32.const 1
    return
   else    
    local.get $0
    i32.const 2
    i32.eq
    if
     i32.const 0
     i32.const 112
     call $~lib/error/Error#constructor
     global.set $~lib/error
     i32.const 0
     return
    else     
     br $continue|0
    end
    unreachable
   end
   unreachable
  end
  unreachable
 )
 (func $loop-flow/forReturn (; 7 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  return
 )
 (func $loop-flow/forAny (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  loop $loop|0
   block $continue|0
    local.get $0
    i32.const 1
    i32.eq
    if
     i32.const 1
     return
    else     
     local.get $0
     i32.const 2
     i32.eq
     if
      i32.const 0
      i32.const 112
      call $~lib/error/Error#constructor
      global.set $~lib/error
      i32.const 0
      return
     else      
      br $continue|0
     end
     unreachable
    end
    unreachable
   end
   br $loop|0
  end
  unreachable
 )
 (func $loop-flow/doReturn (; 9 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  return
 )
 (func $loop-flow/doAny (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  loop $continue|0
   local.get $0
   i32.const 1
   i32.eq
   if
    i32.const 1
    return
   else    
    local.get $0
    i32.const 2
    i32.eq
    if
     i32.const 0
     i32.const 112
     call $~lib/error/Error#constructor
     global.set $~lib/error
     i32.const 0
     return
    else     
     br $continue|0
    end
    unreachable
   end
   unreachable
  end
  unreachable
 )
 (func $start:loop-flow (; 11 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $uncaughtError
   call $loop-flow/whileReturn
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 7
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
   i32.const 1
   call $loop-flow/whileAny
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 29
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   call $loop-flow/forReturn
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 37
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $loop-flow/forAny
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 59
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   call $loop-flow/doReturn
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 67
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $loop-flow/doAny
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 83
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  i32.const 136
  i32.const 24
  i32.const 1
  i32.const 0
  call $~lib/builtins/abort
  unreachable
 )
 (func $loop-flow/whileThrow (; 12 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  i32.const 112
  call $~lib/error/Error#constructor
  global.set $~lib/error
  i32.const 0
  return
 )
 (func $loop-flow/whileContinue (; 13 ;) (type $FUNCSIG$i) (result i32)
  loop $continue|0
   br $continue|0
  end
  unreachable
 )
 (func $loop-flow/forThrow (; 14 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  i32.const 112
  call $~lib/error/Error#constructor
  global.set $~lib/error
  i32.const 0
  return
 )
 (func $loop-flow/forContinue (; 15 ;) (type $FUNCSIG$i) (result i32)
  loop $loop|0
   br $loop|0
  end
  unreachable
 )
 (func $loop-flow/doThrow (; 16 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  i32.const 112
  call $~lib/error/Error#constructor
  global.set $~lib/error
  i32.const 0
  return
 )
 (func $start (; 17 ;) (type $FUNCSIG$v)
  call $start:loop-flow
 )
 (func $null (; 18 ;) (type $FUNCSIG$v)
 )
)
