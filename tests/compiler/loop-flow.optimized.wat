(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00l\00o\00o\00p\00-\00f\00l\00o\00w\00.\00t\00s")
 (data (i32.const 48) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00e\00r\00m")
 (export "memory" (memory $0))
 (export "whileReturn" (func $loop-flow/whileReturn))
 (export "whileThrow" (func $loop-flow/whileThrow))
 (export "whileContinue" (func $loop-flow/whileContinue))
 (export "whileAny" (func $loop-flow/whileAny))
 (export "forReturn" (func $loop-flow/whileReturn))
 (export "forThrow" (func $loop-flow/forThrow))
 (export "forContinue" (func $loop-flow/whileContinue))
 (export "forAny" (func $loop-flow/forAny))
 (export "doReturn" (func $loop-flow/whileReturn))
 (export "doThrow" (func $loop-flow/doThrow))
 (export "doAny" (func $loop-flow/doAny))
 (start $start)
 (func $loop-flow/whileReturn (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
 )
 (func $loop-flow/whileAny (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.const 64
    i32.const 24
    i32.const 24
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $loop-flow/forAny (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
     i32.const 64
     i32.const 24
     i32.const 54
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    br $loop|0
   end
  end
 )
 (func $loop-flow/doAny (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.const 64
    i32.const 24
    i32.const 78
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $start:loop-flow (; 5 ;) (type $FUNCSIG$v)
  i32.const 1
  call $loop-flow/whileAny
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
  call $loop-flow/doAny
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
 )
 (func $loop-flow/whileThrow (; 6 ;) (type $FUNCSIG$i) (result i32)
  i32.const 64
  i32.const 24
  i32.const 11
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $loop-flow/whileContinue (; 7 ;) (type $FUNCSIG$i) (result i32)
  loop $continue|0
   br $continue|0
  end
  unreachable
 )
 (func $loop-flow/forThrow (; 8 ;) (type $FUNCSIG$i) (result i32)
  i32.const 64
  i32.const 24
  i32.const 41
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $loop-flow/doThrow (; 9 ;) (type $FUNCSIG$i) (result i32)
  i32.const 64
  i32.const 24
  i32.const 71
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 10 ;) (type $FUNCSIG$v)
  call $start:loop-flow
 )
 (func $null (; 11 ;) (type $FUNCSIG$v)
  nop
 )
)
