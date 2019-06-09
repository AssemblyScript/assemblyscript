(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00e\00r\00m")
 (data (i32.const 32) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00l\00o\00o\00p\00-\00f\00l\00o\00w\00.\00t\00s")
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
 (func $loop-flow/whileReturn (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
 )
 (func $loop-flow/whileThrow (; 2 ;) (type $FUNCSIG$i) (result i32)
  i32.const 24
  i32.const 48
  i32.const 9
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $loop-flow/whileContinue (; 3 ;) (type $FUNCSIG$i) (result i32)
  loop $continue|0
   br $continue|0
   unreachable
  end
  unreachable
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
    i32.const 24
    i32.const 48
    i32.const 22
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $loop-flow/forThrow (; 5 ;) (type $FUNCSIG$i) (result i32)
  i32.const 24
  i32.const 48
  i32.const 35
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $loop-flow/forAny (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
     i32.const 24
     i32.const 48
     i32.const 48
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    br $loop|0
   end
  end
 )
 (func $loop-flow/doThrow (; 7 ;) (type $FUNCSIG$i) (result i32)
  i32.const 24
  i32.const 48
  i32.const 61
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $loop-flow/doAny (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.const 24
    i32.const 48
    i32.const 68
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $null (; 9 ;) (type $FUNCSIG$v)
  nop
 )
)
