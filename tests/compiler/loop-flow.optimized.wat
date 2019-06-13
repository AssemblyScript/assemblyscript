(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00l\00o\00o\00p\00-\00f\00l\00o\00w\00.\00t\00s")
 (data (i32.const 48) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00E\00r\00r\00o\00r")
 (data (i32.const 84) "\01\00\00\00\01")
 (data (i32.const 96) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00e\00r\00m")
 (data (i32.const 120) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00u\00n\00c\00a\00u\00g\00h\00t\00 \00e\00r\00r\00o\00r")
 (global $~lib/error (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "whileReturn" (func $loop-flow/whileReturn))
 (export "whileThrow" (func $loop-flow/whileThrow))
 (export "whileContinue" (func $loop-flow/whileContinue))
 (export "whileAny" (func $loop-flow/whileAny))
 (export "forReturn" (func $loop-flow/whileReturn))
 (export "forThrow" (func $loop-flow/whileThrow))
 (export "forContinue" (func $loop-flow/whileContinue))
 (export "forAny" (func $loop-flow/forAny))
 (export "doReturn" (func $loop-flow/whileReturn))
 (export "doThrow" (func $loop-flow/whileThrow))
 (export "doAny" (func $loop-flow/whileAny))
 (start $start)
 (func $loop-flow/whileReturn (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
 )
 (func $~lib/rt/stub/__alloc (; 2 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $1
  i32.const 27
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
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
   local.tee $3
   local.get $2
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
  local.get $0
  global.set $~lib/rt/stub/offset
  local.get $1
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 3
  i32.store offset=8
  local.get $0
  i32.const 12
  i32.store offset=12
  local.get $1
 )
 (func $~lib/error/Error#constructor (; 3 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 64
  i32.store
  local.get $0
  i32.const 96
  i32.store offset=4
  local.get $0
  i32.const 112
  i32.store offset=8
  local.get $0
 )
 (func $loop-flow/whileAny (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  loop $continue|0 (result i32)
   local.get $0
   i32.const 1
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $0
    i32.const 2
    i32.ne
    br_if $continue|0
    call $~lib/error/Error#constructor
    global.set $~lib/error
    i32.const 0
   end
  end
 )
 (func $loop-flow/forAny (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  loop $loop|0 (result i32)
   local.get $0
   i32.const 1
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $0
    i32.const 2
    i32.eq
    if
     call $~lib/error/Error#constructor
     global.set $~lib/error
     i32.const 0
     return
    end
    br $loop|0
   end
  end
 )
 (func $start:loop-flow (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 176
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 1
  call $loop-flow/whileAny
  local.set $0
  block $uncaughtError
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 29
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $loop-flow/forAny
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 59
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $loop-flow/whileAny
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 1
   i32.ne
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
 (func $loop-flow/whileThrow (; 7 ;) (type $FUNCSIG$i) (result i32)
  call $~lib/error/Error#constructor
  global.set $~lib/error
  i32.const 0
 )
 (func $loop-flow/whileContinue (; 8 ;) (type $FUNCSIG$i) (result i32)
  loop $continue|0
   br $continue|0
  end
  unreachable
 )
 (func $start (; 9 ;) (type $FUNCSIG$v)
  call $start:loop-flow
 )
 (func $null (; 10 ;) (type $FUNCSIG$v)
  nop
 )
)
