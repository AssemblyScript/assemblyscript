(module
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00l\00o\00o\00p\00-\00f\00l\00o\00w\00.\00t\00s\00\00\00\00\00")
 (data (i32.const 60) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00t\00e\00r\00m\00\00\00\00\00")
 (table $0 1 funcref)
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
 (start $~start)
 (func $loop-flow/whileReturn (result i32)
  (local $0 i32)
  loop $while-continue|0
   i32.const 1
   local.set $0
   local.get $0
   if
    i32.const 1
    return
   end
  end
  unreachable
 )
 (func $loop-flow/whileAny (param $0 i32) (result i32)
  (local $1 i32)
  loop $while-continue|0
   i32.const 1
   local.set $1
   local.get $1
   if
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
      i32.const 80
      i32.const 32
      i32.const 24
      i32.const 22
      call $~lib/builtins/abort
      unreachable
     else
      br $while-continue|0
     end
     unreachable
    end
    unreachable
   end
  end
  unreachable
 )
 (func $loop-flow/forReturn (result i32)
  (local $0 i32)
  loop $for-loop|0
   i32.const 1
   local.set $0
   local.get $0
   if
    i32.const 1
    return
   end
  end
  unreachable
 )
 (func $loop-flow/forAny (param $0 i32) (result i32)
  (local $1 i32)
  loop $for-loop|0
   i32.const 1
   local.set $1
   local.get $1
   if
    block $for-continue|0
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
       i32.const 80
       i32.const 32
       i32.const 54
       i32.const 22
       call $~lib/builtins/abort
       unreachable
      else
       br $for-continue|0
      end
      unreachable
     end
     unreachable
    end
    br $for-loop|0
   end
  end
  unreachable
 )
 (func $loop-flow/doReturn (result i32)
  loop $do-continue|0
   i32.const 1
   return
  end
  unreachable
 )
 (func $loop-flow/doAny (param $0 i32) (result i32)
  loop $do-continue|0
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
     i32.const 80
     i32.const 32
     i32.const 78
     i32.const 22
     call $~lib/builtins/abort
     unreachable
    else
     br $do-continue|0
    end
    unreachable
   end
   unreachable
  end
  unreachable
 )
 (func $start:loop-flow
  call $loop-flow/whileReturn
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $loop-flow/whileAny
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $loop-flow/forReturn
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 37
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $loop-flow/forAny
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 59
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $loop-flow/doReturn
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 67
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $loop-flow/doAny
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 83
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $loop-flow/whileThrow (result i32)
  (local $0 i32)
  loop $while-continue|0
   i32.const 1
   local.set $0
   local.get $0
   if
    i32.const 80
    i32.const 32
    i32.const 11
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  unreachable
 )
 (func $loop-flow/whileContinue (result i32)
  (local $0 i32)
  loop $while-continue|0
   i32.const 1
   local.set $0
   local.get $0
   if
    br $while-continue|0
   end
  end
  unreachable
 )
 (func $loop-flow/forThrow (result i32)
  (local $0 i32)
  loop $for-loop|0
   i32.const 1
   local.set $0
   local.get $0
   if
    i32.const 80
    i32.const 32
    i32.const 41
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  unreachable
 )
 (func $loop-flow/forContinue (result i32)
  (local $0 i32)
  loop $for-loop|0
   i32.const 1
   local.set $0
   local.get $0
   if
    block $for-continue|0
     br $for-continue|0
    end
    br $for-loop|0
   end
  end
  unreachable
 )
 (func $loop-flow/doThrow (result i32)
  loop $do-continue|0
   i32.const 80
   i32.const 32
   i32.const 71
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  unreachable
 )
 (func $~start
  call $start:loop-flow
 )
)
