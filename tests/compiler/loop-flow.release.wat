(module
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $none_=>_none (func_subtype func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\02\00\00\00\18\00\00\00l\00o\00o\00p\00-\00f\00l\00o\00w\00.\00t\00s")
 (data (i32.const 1084) "\1c")
 (data (i32.const 1096) "\02\00\00\00\08\00\00\00t\00e\00r\00m")
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
 (export "memory" (memory $0))
 (start $~start)
 (func $loop-flow/whileReturn (type $none_=>_i32) (result i32)
  i32.const 1
 )
 (func $loop-flow/whileAny (type $i32_=>_i32) (param $0 i32) (result i32)
  loop $while-continue|0 (result i32)
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
     i32.const 1104
     i32.const 1056
     i32.const 24
     i32.const 22
     call $~lib/builtins/abort
     unreachable
    else
     br $while-continue|0
    end
    unreachable
   end
  end
 )
 (func $loop-flow/forAny (type $i32_=>_i32) (param $0 i32) (result i32)
  loop $for-loop|0 (result i32)
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
     i32.const 1104
     i32.const 1056
     i32.const 54
     i32.const 22
     call $~lib/builtins/abort
     unreachable
    end
    br $for-loop|0
   end
  end
 )
 (func $loop-flow/doAny (type $i32_=>_i32) (param $0 i32) (result i32)
  loop $do-loop|0
   local.get $0
   i32.const 1
   i32.ne
   if
    local.get $0
    i32.const 2
    i32.eq
    if
     i32.const 1104
     i32.const 1056
     i32.const 78
     i32.const 22
     call $~lib/builtins/abort
     unreachable
    end
    br $do-loop|0
   end
  end
  i32.const 1
 )
 (func $loop-flow/whileThrow (type $none_=>_i32) (result i32)
  i32.const 1104
  i32.const 1056
  i32.const 11
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $loop-flow/whileContinue (type $none_=>_i32) (result i32)
  loop $while-continue|0
   br $while-continue|0
  end
  unreachable
 )
 (func $loop-flow/forThrow (type $none_=>_i32) (result i32)
  i32.const 1104
  i32.const 1056
  i32.const 41
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $loop-flow/doThrow (type $none_=>_i32) (result i32)
  i32.const 1104
  i32.const 1056
  i32.const 71
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start (type $none_=>_none)
  i32.const 1
  call $loop-flow/whileAny
  drop
  i32.const 1
  call $loop-flow/forAny
  drop
  i32.const 1
  call $loop-flow/doAny
  drop
 )
)
